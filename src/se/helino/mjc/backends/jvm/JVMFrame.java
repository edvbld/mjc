package se.helino.mjc.backends.jvm;

import java.util.HashMap;
import se.helino.mjc.frame.vm.*;

public class JVMFrame implements VMFrame {
    private int stackLimit;

    private HashMap<String, VMAccess> params = 
        new HashMap<String, VMAccess>();
    private HashMap<String, VMAccess> locals =
        new HashMap<String, VMAccess>();

    public VMAccess getAccess(String name) {
        if(params.containsKey(name))
            return params.get(name);
        if(locals.containsKey(name))
            return locals.get(name);
        return null;
    }

    public void addParameter(String name, VMAccess access) {
        params.put(name, access);
    }

    public void addLocal(String name, VMAccess access) {
        locals.put(name, access);
    }

    public int getLocalLimit() {
        return params.size() + locals.size();
    }

    public void setStackLimit(int l) {
        stackLimit = l;
    }

    public int getStackLimit() {
        return stackLimit;
    }
}
