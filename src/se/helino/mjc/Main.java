package se.helino.mjc;

import java.io.*;

public class Main {
    public static void main(String[] args) {
        StringReader sr = new StringReader(
                "class Main { \n" +
                "   public static void main(String[] args) {\n" +
                "   }\n" +
                "}\n" +
                "class Foo {\n" +
                "   int num;\n" + 
                "   int[] nums;\n" +
                "   boolean b;\n" +
                "   Foo f;\n" +
                "   public Foo func() {\n" +
                "   }\n" +
                "   public int fun2(int x) {\n" +
                "       boolean b;\n" +
                "   }\n" +
                "   public boolean fun3(int y, boolean b) { \n" +
                "       Foo fx;\n" +
                "       int[] as;\n" +
                "   }\n" +
                "}");
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
