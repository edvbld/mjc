package se.helino.mjc;

import java.io.*;
import se.helino.mjc.parser.MJParser;
import se.helino.mjc.parser.ParseException;
import se.helino.mjc.parser.SyntaxPrinter;
import se.helino.mjc.parser.MJProgram;

import se.helino.mjc.symbol.SymbolTableBuilder;
import se.helino.mjc.symbol.SymbolTableChecker;
import se.helino.mjc.symbol.ProgramTable;
import se.helino.mjc.symbol.SymbolTablePrinter;

public class Main {
    public static void main(String[] args) {
        if(args.length == 0 || args.length > 1) {
            System.err.println("Usage: java -jar mjc.jar <file>");
            System.exit(1);
        }
        try {
            File input = new File(args[0]);
            MJParser parser = new MJParser(new BufferedReader(
                        new FileReader(input)));
            SyntaxPrinter sp = new SyntaxPrinter();
            MJProgram p = parser.ProgramProd();
            p.accept(sp);
            SymbolTableBuilder builder = new SymbolTableBuilder();
            ProgramTable pt = builder.build(p);
            if(builder.hasErrors()) {
                for(String error : builder.getErrors()) {
                    System.out.println("Error: " + error);
                }
            }
            else {
                new SymbolTablePrinter().print(pt);
                SymbolTableChecker checker = new SymbolTableChecker(pt);
                checker.check(p);
                if(checker.hasErrors()) {
                    for(String error : checker.getErrors()) {
                        System.out.println("Error: " + error);
                    }
                } else {
                    System.out.println("Compilation done!");
                }
            }
        } catch(ParseException e) {
            System.out.println("Syntax error:");
            System.out.println(e.toString());
        } catch(FileNotFoundException e) {
            System.out.println("Could not find file " + args[0]);
        } catch(IOException e) {
            System.out.println("Could not open file " + args[0]);
        }
    }
}
