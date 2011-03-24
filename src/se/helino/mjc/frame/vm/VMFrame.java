package se.helino.mjc.frame.vm;

import se.helino.mjc.parser.MJType;

public interface VMFrame {
    public int getStackLimit();
    public int getLocalLimit();
    public VMAccess getAccess(String name);
}
