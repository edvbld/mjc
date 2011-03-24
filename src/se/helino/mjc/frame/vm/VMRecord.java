package se.helino.mjc.frame.vm;

import se.helino.mjc.parser.MJType;

public interface VMRecord {
    public VMFrame getFrame(String name);
    public VMAccess getAccess(String name);
}
