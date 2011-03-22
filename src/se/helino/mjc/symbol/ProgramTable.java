package se.helino.mjc.symbol;

import java.util.ArrayList;
import java.util.HashMap;
import se.helino.mjc.parser.MJType;
import se.helino.mjc.parser.MJIdentifierType;

public class ProgramTable {
    private ArrayList<ClassTable> classes = new ArrayList<ClassTable>();
    private HashMap<String, ClassTable> classMap = 
        new HashMap<String, ClassTable>();
    private String mainClassName;


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
}
