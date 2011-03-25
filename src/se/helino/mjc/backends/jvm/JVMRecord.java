package se.helino.mjc.backends.jvm;

import java.util.HashMap;
import se.helino.mjc.frame.vm.*;
import se.helino.mjc.frame.vm.*;

public class JVMRecord implements VMRecord { 
    private HashMap<String, VMAccess> fields =
        new HashMap<String, VMAccess>();

    public void addAccess(String name, VMAccess access) {
        fields.put(name, access);
    }

    public VMAccess getAccess(String name) {
        return fields.get(name);
    }
}
