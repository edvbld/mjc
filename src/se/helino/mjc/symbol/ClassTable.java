package se.helino.mjc.symbol;

import java.util.ArrayList;
import java.util.HashMap;
import se.helino.mjc.parser.MJType;
import se.helino.mjc.frame.vm.VMRecord;

public class ClassTable {
    private ArrayList<TypeNamePair> fields = new ArrayList<TypeNamePair>();
    private HashMap<String, MJType> fieldsMap =
        new HashMap<String, MJType>();
    private ArrayList<MethodTable> methods = new ArrayList<MethodTable>();
    private HashMap<String, MethodTable> methodMap = 
        new HashMap<String, MethodTable>();
    private String name;
    private VMRecord vmRec;
    
    public ClassTable(String name) {
        this.name = name;
    }

    public void addField(TypeNamePair f) {
        fields.add(f);
        fieldsMap.put(f.getName(), f.getType());
    }

    public void addMethod(MethodTable m) {
        methods.add(m);
        methodMap.put(m.getName(), m);
    }

    public boolean hasFieldWithName(String name) {
        return fieldsMap.containsKey(name);
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

    public MJType getType(String name) {
        return fieldsMap.get(name);
    }

    public VMRecord getVMRecord() {
        return vmRec;
    }

    public void setVMRecord(VMRecord r) {
        vmRec = r;
    }
}
