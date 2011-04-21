package se.helino.mjc.symbol;

import java.util.ArrayList;
import java.util.HashMap;
import se.helino.mjc.parser.MJType;
import se.helino.mjc.parser.MJCall;
import se.helino.mjc.parser.MJPrint;
import se.helino.mjc.parser.MJIdentifierType;
import se.helino.mjc.frame.cpu.Frame;

public class ProgramTable {
    private ArrayList<ClassTable> classes = new ArrayList<ClassTable>();
    private HashMap<String, ClassTable> classMap = 
        new HashMap<String, ClassTable>();
    private HashMap<MJCall, MJIdentifierType> calleeTypes = 
        new HashMap<MJCall, MJIdentifierType>();
    private HashMap<MJPrint, MJType> printParams = 
        new HashMap<MJPrint, MJType>();
    private String mainClassName;
    private int mainStackLimit;

    public ProgramTable(String mainClassName) {
        this.mainClassName = mainClassName;
    }

    public void addClassTable(ClassTable ct) {
        classes.add(ct);
        classMap.put(ct.getName(), ct);
    }

    public ArrayList<ClassTable> getClasses() {
        return classes;
    }

    public String getMainClassName() {
        return mainClassName;
    }

    public ClassTable getClassTable(String name) {
        return classMap.get(name);
    }

    public boolean isNameOfClass(String name) {
        return classMap.containsKey(name);
    }

    public MJType getType(String name) {
        if(classMap.containsKey(name)) {
            return new MJIdentifierType(name);
        }
        return null;
    }

    public void addCalleeType(MJCall n, MJIdentifierType type) {
        calleeTypes.put(n, type);
    }

    public MJIdentifierType getCalleeType(MJCall n) {
        return calleeTypes.get(n);
    }

    public void addPrintParameterType(MJPrint n, MJType t) {
        printParams.put(n, t);
    }

    public MJType getPrintParameterType(MJPrint n) {
        return printParams.get(n);
    }

    public void setMainStackLimit(int n) {
        mainStackLimit = n;
    }

    public int getMainStackLimit() {
        return mainStackLimit;
    }

    public Frame getMainFrame() {
        return null;
    }
}
