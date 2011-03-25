package se.helino.mjc.backends.jvm;

import se.helino.mjc.frame.vm.*;
import se.helino.mjc.parser.MJType;

public class JVMLocal implements VMAccess {
    private String name;
    private int num;
    private MJType type;
    private boolean isThis;
   
    // For the this variable
    public JVMLocal(MJType type) {
        this.type = type;
        isThis = true;
        num = 0;
    }

    // For all other variables
    public JVMLocal(String name, MJType type, int num) {
        this.name = name;
        this.type = type;
        this.num = num;
        this.isThis = false;
    }

    public String load() {
        return "";
    }

    public String store() {
        return "";
    }

    public String declare() {
        StringBuffer sb = new StringBuffer();
        sb.append(".var ").append(num).append(" is ");
        if(isThis)
            sb.append("<this> ");
        else
            sb.append(name).append(" ");
        sb.append(Utils.convertType(type));
        sb.append(";");
        return sb.toString();
    }
}
