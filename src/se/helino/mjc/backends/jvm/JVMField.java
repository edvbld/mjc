package se.helino.mjc.backends.jvm;

import se.helino.mjc.frame.vm.*;
import se.helino.mjc.parser.MJType;

public class JVMField implements VMAccess {
    private String name;
    private MJType type;

    public JVMField(String name, MJType type) {
        this.name = name;
        this.type = type;
    }

    public String load() {
        return "";
    }

    public String store() {
        return "";
    }

    public String declare() {
        return "";
    }
}
