package se.helino.mjc.frame.vm;

import se.helino.mjc.parser.MJType;

public interface Record {
    public void addField(String id, MJType type);
    public Frame getFrame(String name);
    public Frame newFrame(String name);
    public Access getAccess(String name);
}
