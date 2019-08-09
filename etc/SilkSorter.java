
public final class SilkSorter implements Runnable {
    
    private static final int SILK_SORTER_INVALID = 0x0;
    private static final int SILK_SORTER_BEGIN = 0x1;
    private static final int SILK_SORTER_END = 0x2;
    
    /*@NotNull*/ /*@NonNls*/ private static final String SILK_SORTER_COMMENT = "//SILK_SORTING: ";
    /*@NotNull*/ /*@NonNls*/ private static final String SILK_SORTER_COMMENT_BEGIN = "//SILK_SORTING: BEGIN@";
    /*@NotNull*/ /*@NonNls*/ private static final String SILK_SORTER_COMMENT_END = "//SILK_SORTING: END@";
    
    /*@NotNull*/ private final java.util.List<java.io.File> filesToActOn = new java.util.ArrayList<>();
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
        
        if (!file.exists()) {
            System.out.println("File " + file + " does not exist; skipping");
            return;
        }
        
        System.out.println("Beginning operation on file " + file.toPath());
        
        /*@Nullable*/ /*mutable*/ SectionHolder holder = null;
        final java.util.List<String> fileLines = new java.util.ArrayList<String>();
        
        try (final java.io.BufferedReader reader = java.nio.file.Files.newBufferedReader(file.toPath(), java.nio.charset.StandardCharsets.UTF_8)) {
            /*mutable*/ String line = null;
            while ((line = reader.readLine()) != null) {
                final int silkSorterMarker = this.trySilkSorterMarker(line);
                if (silkSorterMarker == SILK_SORTER_INVALID) {
                    if (holder != null) {
                        holder.swallowedLines.add(line);
                    } else {
                        fileLines.add(line);
                    }
                } else if (silkSorterMarker == SILK_SORTER_BEGIN) {
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
                    fileLines.add(line.trim());
                    holder = new SectionHolder(sectionName);
                } else if (silkSorterMarker == SILK_SORTER_END) {
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
                    holder = null;
                    this.sortSwallowedLines(swallowedLines);
                    swallowedLines.forEach(fileLines::add);
                    fileLines.add(line.trim());
                } else {
                    throw new IllegalStateException("" + silkSorterMarker);
                }
            }
        } catch (final java.io.IOException e) {
            System.err.println("The following error occurred while processing the current file. Aborting");
            e.printStackTrace();
        }
        
        final java.io.File outputFile = (this.dryRun)? new java.io.File(file.getName() + ".__.sorted") : file;
        
        if (outputFile.exists() && !outputFile.delete()) {
            System.err.println("Unable to delete file; process aborted");
            return;
        }
        
        try (final java.io.BufferedWriter writer = java.nio.file.Files.newBufferedWriter(outputFile.toPath(), java.nio.charset.StandardCharsets.UTF_8, java.nio.file.StandardOpenOption.WRITE, java.nio.file.StandardOpenOption.CREATE)) {
            fileLines.forEach(it -> {
                try {
                    writer.write(it);
                    writer.write('\n');
                } catch (final java.io.IOException e) {
                    throw new RuntimeException(e);
                }
            });
            writer.flush();
        } catch (final java.io.IOException e) {
            System.err.println("The following error occurred while processing the current file. Aborting");
            e.printStackTrace();
        }
        
        System.out.println("Processing completed successfully");
    }
    
    private int trySilkSorterMarker(/*@NotNull*/ final String line) {
        final String realLine = line.trim();
        if (!realLine.startsWith(SILK_SORTER_COMMENT)) return SILK_SORTER_INVALID;
        if (realLine.startsWith(SILK_SORTER_COMMENT_BEGIN)) return SILK_SORTER_BEGIN;
        if (realLine.startsWith(SILK_SORTER_COMMENT_END)) return SILK_SORTER_END;
        throw new IllegalArgumentException("Wrong SILK_SORTER_COMMENT");
    }
    
    /*@Nullable*/
    private String trySectionName(final int marker, /*@NotNull*/ final String line) {
        if (marker == SILK_SORTER_INVALID) throw new IllegalArgumentException(line);
        if (marker == SILK_SORTER_BEGIN) {
            final String sect = line.substring(SILK_SORTER_COMMENT_BEGIN.length());
            if (sect.length() <= 0) {
                return null;
            }
            return sect;
        }
        if (marker == SILK_SORTER_END) {
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
            return a.trim().toLowerCase(java.util.Locale.ENGLISH).compareTo(b.trim().toLowerCase(java.util.Locale.ENGLISH));
        });
    }
    
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
                System.err.println("Illegal command " + arg);
                throw new IllegalArgumentException();
            }
            sorter.addFile(new java.io.File(arg));
        }
        new Thread(sorter).start();
    }
}
