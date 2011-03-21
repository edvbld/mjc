package se.helino.mjc;

import java.io.*;

public class Main {
    public static void main(String[] args) {
        StringReader sr = new StringReader(
                "class Main { \n" +
                "   public static void main(String[] args) {\n" +
                "       if(foo) {\n" +
                "           boo = foo; \n" +
                "       }\n" +
                "       else\n" +
                "           while(boo) \n" +
                "               System.out.println(foo); \n" +
                "   }\n" +
                "}\n" +
                "class Foo {\n" +
                "   int num;\n" + 
                "   int[] nums;\n" +
                "   boolean b;\n" +
                "   Foo f;\n" +
                "   public Foo FUN1() {\n" +
                "       return x;\n" +
                "   }\n" +
                "   public int FUN2(int x) {\n" +
                "       boolean b;\n" +
                "       return x;\n" +
                "   }\n" +
                "   public boolean FUN3(int y, boolean b) { \n" +
                "       Foo fx;\n" +
                "       int[] as;\n" +
                "       return x;\n" +
                "   }\n" +
                "   public int[] FUN4(Foo f, int a, boolean b, int[] as) {\n" +
                "       a = f;\n" +
                "       return x;\n" +
                "   }\n" +
                "   public int FUN5() {\n" +
                "       Foo f;\n" +
                "       Foo = y;\n" +
                "       Foo[x] = y;\n" +
                "       return x;\n" +
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
