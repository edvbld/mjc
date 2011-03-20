package se.helino.mjc;

import java.io.*;

public class Main {
    public static void main(String[] args) {
        StringReader sr = new StringReader(
                "class Main { public static void main(String[] args) {} }");
        MJParser parser = new MJParser(new BufferedReader(sr));
        try {
            Visitor v = new SyntaxPrinter();
            Acceptable a = parser.ProgramProd();
            a.accept(v);
        } catch(ParseException e) {
            System.out.println("Syntax error:");
            System.out.println(e.toString());
        }
    }
}
