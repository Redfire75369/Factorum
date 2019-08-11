
public final class SilkSorter implements Runnable {
    
    private enum SorterMarkerFlags {
        INVALID, BEGIN, END;
    }
    
    private interface Sorter {
        int sort(/*@NotNull*/ final String a, /*@NotNull*/ final String b);
    }
    
    static class DefaultSorter implements Sorter {
        @Override
        public int sort(/*@NotNull*/ final String a, /*@NotNull*/ final String b) {
            return a.trim().toLowerCase(java.util.Locale.ENGLISH).compareTo(b.trim().toLowerCase(java.util.Locale.ENGLISH));
        }
    }
    
    static class QuotedStringSorter implements Sorter {
        private static final Sorter DEFAULT = new DefaultSorter();
        @Override
        public int sort(/*@NotNull*/ final String a, /*@NotNull*/ final String b) {
            final String trimmedA = a.trim().substring(1, a.trim().length() - 2);
            final String trimmedB = b.trim().substring(1, b.trim().length() - 2);
            return DEFAULT.sort(trimmedA, trimmedB);
        }
    }
    
    static class BracketItemHandlerSorter implements Sorter {
        private static final Sorter DEFAULT = new DefaultSorter();
        @Override
        public int sort(/*@NotNull*/ final String a, /*@NotNull*/ final String b) {
            final String[] splitA = this.splitString(a);
            final String[] splitB = this.splitString(b);
            if (!((splitA.length == 2 || splitA.length == 3) && (splitB.length == 2 || splitB.length == 3))) {
                throw new IllegalStateException("banana");
            }
            /*mutable*/ int sortCount = 0;
            sortCount = DEFAULT.sort(splitA[0], splitB[0]);
            if (sortCount != 0) return sortCount;
            
            sortCount = DEFAULT.sort(splitA[1], splitB[1]);
            if (sortCount != 0) return sortCount;
            
            if (splitA.length == 2 && splitB.length == 3) sortCount = DEFAULT.sort("a", "b");
            else if (splitA.length == 3 && splitB.length == 2) sortCount = DEFAULT.sort("b", "a");
            else sortCount = 0;
            if (sortCount != 0) return sortCount;
            
            try {
                final String valA = splitA[2];
                final String valB = splitB[2];
                
                final int numA = Integer.parseInt(valA, 10);
                final int numB = Integer.parseInt(valB, 10);
                
                sortCount = Integer.compare(numA, numB);
            } catch (final NumberFormatException | ArrayIndexOutOfBoundsException e) {
                System.err.println(" " + e.getMessage() + " while sorting: no-op");
                sortCount = 0;
            }
            
            return sortCount;
        }
        
        private /*@NotNull*/ String[] splitString(/*@NotNull*/ final String s) {
            final String trimmed = s.trim();
            final String noBrackets = s.replace("<", "").replace(">", "");
            final String noCommas = noBrackets.replace(",", "");
            return noCommas.split(":");
        }
    }
    
    private interface Transformer {
        /*@NotNull*/ String transform(/*@NotNull*/ final String string, final boolean wasSorted);
    }
    
    static class DefaultTransformer implements Transformer {
        private static final Transformer DEFAULT = new NewLineTransformer();
        @Override
        public /*@NotNull*/ String transform(/*@NotNull*/ final String string, final boolean wasSorted) {
            return DEFAULT.transform(string, wasSorted);
        }
    }
    
    static class NewLineTransformer implements Transformer {
        @Override
        public /*@NotNull*/ String transform(/*@NotNull*/ final String string, final boolean wasSorted) {
            return string + "\n";
        }
    }
    
    static class CommaArrayTransformer implements Transformer {
        private boolean isFirst = true;
        private boolean wasPrevSorted = false;
        // |3€[[@(_)$€ |>]-[(_)[[]]< ``//*(_)
        @Override
        public /*@NotNull*/ String transform(/*@NotNull*/ final String string, final boolean wasSorted) {
            if (this.isFirst) {
                this.isFirst = false;
                return string;
            }
            final String noCommaString = string.replace(",", "");
            final String booleanTransformPass;
            if (this.wasPrevSorted && wasSorted) {
                booleanTransformPass = ",\n" + noCommaString;
            } else if (this.wasPrevSorted && !wasSorted) {
                booleanTransformPass = "\n" + noCommaString;
            } else if (!this.wasPrevSorted && wasSorted) {
                booleanTransformPass = "\n" + noCommaString;
            } else {
                booleanTransformPass = "\n" + string;
            }
            this.wasPrevSorted = wasSorted;
            return booleanTransformPass;
        }
    }
    
    /*@NotNull*/ /*@NonNls*/ private static final String SILK_SORTER_COMMENT = "//SILK_SORTING: ";
    /*@NotNull*/ /*@NonNls*/ private static final String SILK_SORTER_COMMENT_BEGIN = "//SILK_SORTING: BEGIN@";
    /*@NotNull*/ /*@NonNls*/ private static final String SILK_SORTER_COMMENT_END = "//SILK_SORTING: END@";
    
    /*@NotNull*/ private final java.util.List<java.io.File> filesToActOn = new java.util.ArrayList<>();
    /*@Nullable*/ private /*mutable*/ Sorter sorter = null;
    /*@NotNull*/ private final java.util.List<Transformer> transformers = new java.util.ArrayList<>();
    private /*mutable*/ boolean dryRun = false;
    
    private SilkSorter() {}
    
    private void addFile(/*@NotNull*/ final java.io.File file) {
        if (this.filesToActOn.contains(file)) {
            System.err.println("File " + file.toPath().toString() + " is already added");
            return;
        }
        this.filesToActOn.add(file);
    }
    
    private void dryRun() {
        this.dryRun = true;
    }
    
    private void sorter(/*@NotNull*/ final Sorter sorter) {
        this.sorter = sorter;
    }
    
    private void addTransformer(/*@NotNull*/ final Transformer transformer) {
        this.transformers.add(transformer);
    }
    
    @Override
    public final void run() {
        this.filesToActOn.forEach(this::roll);
    }
    
    private void roll(/*@NotNull*/ final java.io.File file) {
        class SectionHolder {
            /*@NotNull*/ final String sectionName;
            /*@NotNull*/ final java.util.List<String> swallowedLines = new java.util.ArrayList<String>();
            
            SectionHolder(/*@NotNull*/ final String s) {
                this.sectionName = s;
            }
        }
        
        class LineHolder {
            /*@NotNull*/ final String string;
            final boolean sorted;
            
            LineHolder(/*@NotNull*/ final String s, final boolean t) {
                this.string = s;
                this.sorted = t;
            }
        }
        
        class TransformerHolder {
            /*@NotNull*/ /*mutable*/ String s;
        }
        
        if (!file.exists()) {
            System.out.println("File " + file + " does not exist; skipping");
            return;
        }
        
        if (this.sorter == null) {
            System.out.println("Null sorter: replacing with default");
            this.sorter = new DefaultSorter();
        }
        
        System.out.println("Beginning operation on file " + file.toPath());
        System.out.println(" Using sorter " + this.sorter + " with dry run on " + this.dryRun);
        
        /*@Nullable*/ /*mutable*/ SectionHolder holder = null;
        final java.util.List<LineHolder> fileLines = new java.util.ArrayList<>();
        
        try (final java.io.BufferedReader reader = java.nio.file.Files.newBufferedReader(file.toPath(), java.nio.charset.StandardCharsets.UTF_8)) {
            /*mutable*/ String line = null;
            while ((line = reader.readLine()) != null) {
                final SorterMarkerFlags silkSorterMarker = this.trySilkSorterMarker(line);
                if (silkSorterMarker == SorterMarkerFlags.INVALID) {
                    if (holder != null) {
                        holder.swallowedLines.add(line);
                    } else {
                        fileLines.add(new LineHolder(line, false));
                    }
                } else if (silkSorterMarker == SorterMarkerFlags.BEGIN) {
                    if (holder != null) {
                        System.err.println("Unable to start a section when already in a section. Current section: " + holder.sectionName);
                        System.err.println("Unable to continue; aborting processing of file");
                        return;
                    }
                    final String sectionName = this.trySectionName(silkSorterMarker, line);
                    if (sectionName == null) {
                        System.err.println("Malformed section name; aborting processing of file");
                        return;
                    }
                    fileLines.add(new LineHolder(line.trim(), false));
                    holder = new SectionHolder(sectionName);
                    System.out.println(" Found section beginning for section " + sectionName);
                } else if (silkSorterMarker == SorterMarkerFlags.END) {
                    if (holder == null) {
                        System.err.println("Unable to end a section when it hasn't been started.");
                        System.err.println("Cannot continue: processing aborted");
                        return;
                    }
                    final String sect = this.trySectionName(silkSorterMarker, line);
                    if (sect == null) {
                        System.err.println("Malformed section name; processing aborted");
                        return;
                    }
                    if (!sect.equals(holder.sectionName)) {
                        System.err.println("Start and end tags do not match! Aborting");
                        return;
                    }
                    final java.util.List<String> swallowedLines = new java.util.ArrayList<String>(holder.swallowedLines);
                    System.out.println(" Found section end for section " + sect + " with " + swallowedLines.size() + " lines");
                    holder = null;
                    this.sortSwallowedLines(swallowedLines);
                    swallowedLines.forEach(it -> fileLines.add(new LineHolder(it, true)));
                    fileLines.add(new LineHolder(line.trim(), false));
                } else {
                    throw new IllegalStateException("" + silkSorterMarker);
                }
            }
        } catch (final java.io.IOException e) {
            System.err.println("The following error occurred while processing the current file. Aborting");
            e.printStackTrace();
        }
        
        final java.io.File outputFile = (this.dryRun)? new java.io.File(file + ".__.sorted") : file;
        
        if (outputFile.exists() && !outputFile.delete()) {
            System.err.println("Unable to delete file; process aborted");
            return;
        }
        
        System.out.println(" Writing file to " + outputFile);
        System.out.println(" Transforming files with transformers " + this.transformers);
        
        try (final java.io.BufferedWriter writer = java.nio.file.Files.newBufferedWriter(outputFile.toPath(), java.nio.charset.StandardCharsets.UTF_8, java.nio.file.StandardOpenOption.WRITE, java.nio.file.StandardOpenOption.CREATE)) {
            fileLines.forEach(it -> {
                final TransformerHolder transfHolder = new TransformerHolder();
                transfHolder.s = it.string;
                this.transformers.forEach(transformer -> {
                    final String transformed = transformer.transform(transfHolder.s, it.sorted);
                    transfHolder.s = transformed;
                });
                try {
                    writer.write(transfHolder.s);
                } catch (final java.io.IOException e) {
                    throw new RuntimeException(e);
                }
            });
            writer.write("\n");
            writer.flush();
        } catch (final java.io.IOException e) {
            System.err.println("The following error occurred while processing the current file. Aborting");
            e.printStackTrace();
        }
        
        System.out.println("Processing completed successfully");
    }
    
    private SorterMarkerFlags trySilkSorterMarker(/*@NotNull*/ final String line) {
        final String realLine = line.trim();
        if (!realLine.startsWith(SILK_SORTER_COMMENT)) return SorterMarkerFlags.INVALID;
        if (realLine.startsWith(SILK_SORTER_COMMENT_BEGIN)) return SorterMarkerFlags.BEGIN;
        if (realLine.startsWith(SILK_SORTER_COMMENT_END)) return SorterMarkerFlags.END;
        throw new IllegalArgumentException("Wrong SILK_SORTER_COMMENT");
    }
    
    /*@Nullable*/
    private String trySectionName(final SorterMarkerFlags marker, /*@NotNull*/ final String line) {
        if (marker == SorterMarkerFlags.INVALID) throw new IllegalArgumentException(line);
        if (marker == SorterMarkerFlags.BEGIN) {
            final String sect = line.substring(SILK_SORTER_COMMENT_BEGIN.length());
            if (sect.length() <= 0) {
                return null;
            }
            return sect;
        }
        if (marker == SorterMarkerFlags.END) {
            final String sect = line.substring(SILK_SORTER_COMMENT_END.length());
            if (sect.length() <= 0) {
                return null;
            }
            return sect;
        }
        throw new IllegalArgumentException("" + marker);
    }
    
    private void sortSwallowedLines(/*@NotNull*/ final java.util.List<String> lines) {
        java.util.Collections.sort(lines, (c, d) -> {
            final String a = (String) c;
            final String b = (String) d;
            return this.sorter.sort(a, b);
        });
    }
    
    @SuppressWarnings("unchecked")
    public static void main(/*@NotNull*/ final String... args) {
        final SilkSorter sorter = new SilkSorter();
        if (args.length <= 0) {
            System.err.println("You need to specify the file or files to act on");
            throw new IllegalArgumentException();
        }
        for (final String arg : args) {
            if (arg.startsWith("--")) {
                if ("--dry".equals(arg)) {
                    sorter.dryRun();
                    continue;
                }
                if ("--help".equals(arg)) {
                    throw new RuntimeException("Not yet");
                }
                if (arg.startsWith("--sorter=")) {
                    try {
                        final String className = arg.substring("--sorter=".length());
                        final Class<? extends Sorter> sorterClass = (Class<? extends Sorter>) Class.forName(className);
                        sorter.sorter((Sorter) sorterClass.newInstance());
                        continue;
                    } catch (final ReflectiveOperationException e) {
                        throw new RuntimeException(arg, e);
                    }
                }
                if (arg.startsWith("--transformer=")) {
                    try {
                        final String className = arg.substring("--transformer=".length());
                        final Class<? extends Transformer> transformerClass = (Class<? extends Transformer>) Class.forName(className);
                        sorter.addTransformer((Transformer) transformerClass.newInstance());
                        continue;
                    } catch (final ReflectiveOperationException e) {
                        throw new RuntimeException(arg, e);
                    }
                }
                System.err.println("Illegal command " + arg);
                throw new IllegalArgumentException();
            }
            sorter.addFile(new java.io.File(arg));
        }
        new Thread(sorter).start();
    }
}
