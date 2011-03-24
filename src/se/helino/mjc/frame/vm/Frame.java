package se.helino.mjc.frame.vm;

import se.helino.mjc.parser.MJType;

public interface Frame {
    public void addArgument(String id, MJType type);
    public void addLocal(String id, MJType type);
    public int numberOfLocals();
    public Access getLocal(String name);
    public Access getArgument(String name);
    public int getStackSize();
    public int setStackSize();
    public Access getAccess(String name);
}
