package se.helino.mjc.frame.vm;

import se.helino.mjc.parser.MJType;

public interface Record {
    public Access allocField(String id, MJType type);
    public int numberOfFields();
}
