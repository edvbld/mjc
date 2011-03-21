package se.helino.mjc.symbol;

import java.util.ArrayList;

public class ProgramTable {
    private ArrayList<ClassTable> classes = new ArrayList<ClassTable>();
    private String mainClassName;

    public ProgramTable(String mainClassName) {
        this.mainClassName = mainClassName;
    }

    public void addClassTable(ClassTable ct) {
        classes.add(ct);
    }

    public ArrayList<ClassTable> getClasses() {
        return classes;
    }

    public String getMainClassName() {
        return mainClassName;
    }
}
