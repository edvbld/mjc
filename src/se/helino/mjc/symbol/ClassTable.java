package se.helino.mjc.symbol;

import java.util.ArrayList;

public class ClassTable {
    private ArrayList<Field> fields = new ArrayList<Field>();
    private ArrayList<MethodTable> methods = new ArrayList<MethodTable>();

    public void addField(Field f) {
        fields.add(f);
    }

    public void addMethod(MethodTable m) {
        methods.add(m);
    }

    public ArrayList<Field> getFields() {
        return fields;
    }

    public ArrayList<MethodTable> getMethods() {
        return methods;
    }
}
