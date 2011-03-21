package se.helino.mjc.symbol;

import java.util.ArrayList;
import se.helino.mjc.parser.MJType;

public class MethodTable {
    private ArrayList<TypeNamePair> params = new ArrayList<TypeNamePair>();
    private ArrayList<TypeNamePair> locals = new ArrayList<TypeNamePair>();
    private MJType returnType;
    private String name;

    public MethodTable(MJType returnType, String name) {
        this.returnType = returnType;
        this.name = name;
    }

    public void addParam(TypeNamePair p) {
        params.add(p);
    }

    public void addLocal(TypeNamePair l) {
        locals.add(l);
    }

    public ArrayList<TypeNamePair> getLocals() {
        return locals;
    }

    public ArrayList<TypeNamePair> getParams() {
        return params;
    }

    public String getName() {
        return name;
    }

    public MJType getReturnType() {
        return returnType;
    }

}
