package se.helino.mjc;

import java.lang.StringBuilder;

public class SyntaxPrinter implements Visitor {
    private int indentation = 0;
    
    private String indent() {
        StringBuilder sb = new StringBuilder();
        for(int i = 0; i < indentation; i++) {
            sb.append(' ');
        }
        return sb.toString();
    }

    private void println(String s) {
        System.out.println(indent() + s);
    }

    private void print(String s) {
        System.out.print(indent() + s);
    }

    public void visit(MJProgram n) {
        println("(Program");
        indentation++;
        n.getMJMainClass().accept(this);
        for(MJClass c : n.getMJClasses()) {
            c.accept(this);
        }
        indentation--;
        print(")");
    }

    public void visit(MJMainClass n) {
        println("(MainClass");
        indentation++;
        n.getClassId().accept(this);
        n.getArgId().accept(this);
        indentation--;
        println(")");
    }

    public void visit(MJClass n) {
        println("(Class");
        indentation++;
        n.getId().accept(this);
        indentation--;
        println(")");
    }

    public void visit(MJIdentifier n) {
        print("(Identifier [ ");
        System.out.print(n.getName());
        System.out.println(" ]");
        println(")");
    }
}
