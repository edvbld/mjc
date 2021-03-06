package se.helino.mjc;

import java.io.*;
import java.util.ArrayList; 

import se.helino.mjc.parser.MJParser;
import se.helino.mjc.parser.ParseException;
import se.helino.mjc.parser.SyntaxPrinter;
import se.helino.mjc.parser.MJProgram;

import se.helino.mjc.symbol.SymbolTableBuilder;
import se.helino.mjc.symbol.SymbolTableChecker;
import se.helino.mjc.symbol.ProgramTable;
import se.helino.mjc.symbol.SymbolTablePrinter;
import se.helino.mjc.symbol.MJTypeException;

import se.helino.mjc.backends.jvm.JVMProgramBuilder;
import se.helino.mjc.backends.jvm.JasminFormatter;

public class Main {
    private static String path(String name, String extension) { 
        return name + File.separator + name + extension;
    }

    private static PrintWriter out(String name, String extension) 
        throws IOException 
    {
        return new PrintWriter(
                new BufferedWriter(
                    new FileWriter(path(name, extension))));
    }

    private static BufferedReader in(String name) 
        throws FileNotFoundException
    {
        return new BufferedReader(new FileReader(new File(name)));
    }
    
    private static String strip(String fname) {
        String woExt = fname.substring(0, fname.lastIndexOf('.'));
        String name = woExt.substring(fname.lastIndexOf(File.separator) + 1, 
                                       woExt.length());
        return name;
    }

    private static MJProgram parse(String fname) 
        throws IOException, ParseException 
    {
        BufferedReader reader = in(fname);
        MJParser parser = new MJParser(reader);
        MJProgram p = parser.ProgramProd();
        reader.close();
        return p;
    }
    
    private static void printSyntax(MJProgram p, String name) 
        throws IOException
    {
        PrintWriter syntax = out(name, ".syntax");
        new SyntaxPrinter(syntax).print(p);
        syntax.close();
    }

    private static ProgramTable typeCheck(MJProgram p)
        throws MJTypeException
    {
        SymbolTableBuilder builder = new SymbolTableBuilder();
        ProgramTable pt = builder.build(p);
        SymbolTableChecker checker = new SymbolTableChecker(pt);
        checker.check(p);
        return pt;
    }

    private static void printSymbolTable(ProgramTable pt, String name) 
        throws IOException
    {
        PrintWriter symtab = out(name, ".symtab");
        new SymbolTablePrinter(symtab).print(pt);
        symtab.close();
    }

    private static ArrayList<String> generateJasminAssembler(
            ProgramTable pt, MJProgram p, String name)
        throws IOException
    {
        new JVMProgramBuilder(pt).visit(p);
        ArrayList<String> files = new JasminFormatter(name, pt).generate(p);
        return files;
    }

    private static void generateClassFile(String dir, String fname)
        throws IOException, jas.jasError, Exception
    {
        jasmin.ClassFile cf = new jasmin.ClassFile();
        Reader in = in(fname);
        cf.readJasmin(in, fname, true);
        in.close();
        
        if(cf.errorCount() > 0) {
            System.err.println(fname + ": Found " + cf.errorCount() + 
                               " errors");
            return;
        }

        FileOutputStream out = new FileOutputStream(
                new File(fname.substring(0, fname.length() - 2) + ".class"));
        cf.write(out);
        out.close();
    }

    private static boolean quiet = false;
    private static boolean tigris = false;
    private static void println(String s) {
        if(!quiet)
            System.out.println(s);
    }

    public static void main(String[] args) {
        if(args.length == 0) {
            System.err.println("Usage: java -jar mjc.jar [-q] <file>");
            System.exit(1);
        }
        try {
            String fname = "";
            for(int i = 0; i < args.length; i++) {
                if(args[i].equals("-q")) {
                    quiet = true;
                }
                else if(args[i].equals("-S")) {
                    tigris = true;
                    quiet = true;
                }
                else {
                    fname = args[i];
                }
            }
            String name = strip(fname);
            if(!tigris) {
                new File(name).mkdir();
            }
            println("Compiling input file " + fname + 
                    " into directory " + name + "/"); 
            MJProgram p = parse(fname);
            println("- Syntax analysis");
            println("  ...abstract syntax tree: " + 
                     name + "/" + name + ".syntax");
            if(!tigris) {
                printSyntax(p, name);
            }
            ProgramTable pt = typeCheck(p);
            println("- Semantic analysis");
            println("  ...symbol table: " + 
                     name + "/" + name + ".symtab");
            if(!tigris) {
                printSymbolTable(pt, name);
            }
            println("- Jasmin assembler");

            ArrayList<String> jasminAssemblies = new ArrayList<String>();
            if(tigris) {
                generateJasminAssembler(pt, p, ".");
            } else {
                jasminAssemblies = generateJasminAssembler(pt, p, name);
            }

            if(!tigris) {
                for(String s : jasminAssemblies)
                println("  ... " + s);
                println("- Class files");
                for(String s : jasminAssemblies) {
                    generateClassFile(name, s);
                    println("  ... " + s.substring(0, s.length() - 2) + ".class");
                }
            }
        } catch(ParseException e) {
            System.out.println("Syntax error:");
            System.out.println(e.toString());
            System.exit(1);
        } catch(MJTypeException e) {
            for(String error : e.getErrors())
                System.out.println(error);
            System.exit(1);
        } catch(FileNotFoundException e) {
            System.out.println("Could not find file " + e.toString());
            System.exit(1);
        } catch(IOException e) {
            System.out.println("Could not open file " + e.toString());
            System.exit(1);
        } catch(jas.jasError e) {
            System.err.println("JAS Error: " + e.getMessage());
            System.exit(1);
        } catch(Exception e) {
            System.err.println("Exception in " + 
                               e.getClass().getName() + ": " +
                               e.getMessage());
            System.exit(1);
        }
    }
}
