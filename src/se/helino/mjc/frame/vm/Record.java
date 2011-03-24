package se.helino.mjc.frame.vm;

import se.helino.mjc.parser.MJType;

public interface Record {
    public void allocField(String id, MJType type);
    public Frame getMethod(String name);
    public Access getField(String name);
}
