package se.helino.mjc.frame.vm;

import se.helino.mjc.parser.MJType;

public interface Frame {
    public void allocArgument(String id, MJType type);
    public void allocLocal(String id, MJType type);
    public int numberOfLocals();
    public Access getLocal(String name);
    public Access getArgument(String name);
}
