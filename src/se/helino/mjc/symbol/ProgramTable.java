package se.helino.mjc.symbol;

import java.util.ArrayList;

public class ProgramTable {
    private ArrayList<ClassTable> classes = new ArrayList<ClassTable>();

    public void addClassTable(ClassTable ct) {
        classes.add(ct);
    }

    public ArrayList<ClassTable> getClasses() {
        return classes;
    }
}
