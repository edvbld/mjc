package se.helino.mjc.backends.jvm;

import se.helino.mjc.frame.vm.*;
import se.helino.mjc.parser.MJType;

public class JVMField implements VMAccess {
    private String name;
    private String className;
    private MJType type;

    public JVMField(String name, String className, MJType type) {
        this.name = name;
        this.type = type;
        this.className = className;
    }

    public String load() {
        return "aload 0\n" + "getfield " + className + "/!" + name + " " +
               Utils.convertType(type);
    }

    public String store() {
        return "putfield " + className + "/!" + name + " " + 
               Utils.convertType(type);
    }

    public String declare() {
        return ".field private !" + name + " " + Utils.convertType(type);
    }
}
