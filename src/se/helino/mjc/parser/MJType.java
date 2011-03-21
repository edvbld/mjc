package se.helino.mjc.parser;

import java.lang.IllegalStateException;

public class MJType {
    public void accept(Visitor v) {
        throw new IllegalStateException();
    }
}
