package se.helino.mjc.parser;

import java.util.ArrayList;

public class MJProgram implements Acceptable {
    private MJMainClass mc;
    private ArrayList<MJClass> classes = new ArrayList<MJClass>();

    public MJProgram() {
    }

    public void setMJMainClass(MJMainClass mc) {
        this.mc = mc;
    }
    
    public MJMainClass getMJMainClass() {
        return mc;
    }

    public void addMJClass(MJClass c) {
        classes.add(c);
    }

    public ArrayList<MJClass> getMJClasses() {
        return classes;
    }

    public void accept(Visitor v) {
        v.visit(this);
    }
}
