package se.helino.mjc.parser;

import java.lang.IllegalStateException;

public class MJStatement implements Acceptable {
    public void accept(Visitor v) {
        throw new IllegalStateException();
    }
}
