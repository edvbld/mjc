package se.helino.mjc;

import java.lang.IllegalStateException;

public class MJType {
    public void accept(Visitor v) {
        throw new IllegalStateException();
    }
}