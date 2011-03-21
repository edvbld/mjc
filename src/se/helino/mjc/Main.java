package se.helino.mjc;

import java.io.*;

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
            Visitor v = new SyntaxPrinter();
            Acceptable a = parser.ProgramProd();
            a.accept(v);
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
