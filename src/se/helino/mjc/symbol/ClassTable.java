package se.helino.mjc.symbol;

import java.util.ArrayList;
import java.util.HashMap;

public class ClassTable {
    private ArrayList<TypeNamePair> fields = new ArrayList<TypeNamePair>();
    private ArrayList<MethodTable> methods = new ArrayList<MethodTable>();
    private HashMap<String, MethodTable> methodMap = 
        new HashMap<String, MethodTable>();
    private String name;
    
    public ClassTable(String name) {
        this.name = name;
    }

    public void addField(TypeNamePair f) {
        fields.add(f);
    }

    public void addMethod(MethodTable m) {
        methods.add(m);
        methodMap.put(m.getName(), m);
    }

    public ArrayList<TypeNamePair> getFields() {
        return fields;
    }

    public ArrayList<MethodTable> getMethods() {
        return methods;
    }

    public String getName() {
        return name;
    }
    
    public MethodTable getMethodTable(String name) {
        return methodMap.get(name);
    }
}
