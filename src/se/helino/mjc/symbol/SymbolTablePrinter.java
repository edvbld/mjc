package se.helino.mjc.symbol;

import java.io.PrintWriter;

public class SymbolTablePrinter {
    private int indentation = 0;
    private PrintWriter out;

    public SymbolTablePrinter(PrintWriter out) {
        this.out = out;
    }

    private String indent() {
        StringBuilder sb = new StringBuilder();
        for(int i = 0; i < indentation; i++) { 
            sb.append(' ');
            sb.append(' ');
            sb.append(' ');
            sb.append(' ');
        }
        return sb.toString();
    }

    private void indentPrintLn(String s) {
        out.println(indent() + s);
    }
    
    private void indentPrint(String s) {
        out.print(indent() + s);
    }

    public void print(ProgramTable table) {
        out.println("Main class: " + table.getMainClassName());
        out.println();
        indentation++;
        for(ClassTable ct : table.getClasses()) {
            printClassTable(ct);
        }
        indentation--;
    }

    private void printClassTable(ClassTable ct) {
        indentPrintLn("Class: " + ct.getName());
        indentation++;
        indentPrintLn("Fields:");
        indentation++;
        for(TypeNamePair tp : ct.getFields()) {
            indentPrint(tp.getType().toString());
            out.println(" " + tp.getName());
        }
        indentation--;
        indentPrintLn("Methods:");
        indentation++;
        for(MethodTable mt : ct.getMethods()) {
            printMethodTable(mt);
        }
        indentation--;
        indentation--;
    }

    private void printMethodTable(MethodTable mt) { 
        indentPrint(mt.getReturnType().toString());
        out.println(" " + mt.getName());
        indentation++;
        indentPrintLn("Parameters:");
        indentation++;
        for(TypeNamePair tp : mt.getParams()) {
            indentPrint(tp.getType().toString());
            out.println(" " + tp.getName());
        }
        indentation--;
        indentPrintLn("Locals:");
        indentation++;
        for(TypeNamePair tp : mt.getLocals()) {
            indentPrint(tp.getType().toString());
            out.println(" " + tp.getName());
        }
        indentation--;
        indentation--;
    }
}
