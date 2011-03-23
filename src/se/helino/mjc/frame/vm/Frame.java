package se.helino.mjc.frame.vm;

import se.helino.mjc.parser.MJType;

public interface Frame {
    public Access allocArgument(String id, MJType type);
    public Access allocLocal(String id, MJType type);
    public int numberOfArguments();
    public int numberOfLocals();
    public String procEntry();
}
