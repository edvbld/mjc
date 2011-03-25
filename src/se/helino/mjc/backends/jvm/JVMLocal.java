package se.helino.mjc.backends.jvm;

import se.helino.mjc.frame.vm.*;
import se.helino.mjc.parser.MJType;

public class JVMLocal implements VMAccess {
    private String name;
    private int num;
    private MJType type;
    private boolean isThis;

    public JVMLocal(String name, MJType type, int num, boolean isThis) {
        this.name = name;
        this.type = type;
        this.num = num;
        this.isThis = isThis;
    }

    public String load() {
        return "";
    }

    public String store() {
        return "";
    }

    public String declare() {
        StringBuffer sb = new StringBuffer();
        sb.append(".var ").append(num).append(" is ").append(name).append(" ");
        if(isThis)
            sb.append("<this> ");
        sb.append(Utils.convertType(type));
        sb.append(";");
        return sb.toString();
    }
}
