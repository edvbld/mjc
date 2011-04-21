package se.helino.mjc.symbol;

import java.util.ArrayList;
import java.util.HashMap;
import se.helino.mjc.parser.MJType;
import se.helino.mjc.frame.vm.VMFrame;
import se.helino.mjc.frame.cpu.Frame;

public class MethodTable {
    private ArrayList<TypeNamePair> params = new ArrayList<TypeNamePair>();
    private ArrayList<TypeNamePair> locals = new ArrayList<TypeNamePair>();
    private HashMap<String, MJType> paramsMap = 
        new HashMap<String, MJType>();
    private HashMap<String, MJType> localsMap =
        new HashMap<String, MJType>();
    private MJType returnType;
    private String name;
    private VMFrame vmFrame;

    public MethodTable(MJType returnType, String name) {
        this.returnType = returnType;
        this.name = name;
    }

    public void addParam(TypeNamePair p) {
        params.add(p);
        paramsMap.put(p.getName(), p.getType());
    }

    public boolean hasParamWithName(String name) {
        return paramsMap.containsKey(name);
    }

    public void addLocal(TypeNamePair l) {
        locals.add(l);
        localsMap.put(l.getName(), l.getType());
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

    public MJType getType(String name) {
        if(localsMap.containsKey(name)) {
            return localsMap.get(name);
        }
        return paramsMap.get(name);
    }

    public VMFrame getVMFrame() {
        return vmFrame;
    }

    public void setVMFrame(VMFrame f) {
        vmFrame = f;
    }

    public Frame getFrame() {
        return null;
    }
}
