package se.helino.mjc;

import java.lang.IllegalStateException;

public class MJExpression implements Acceptable {
    public void accept(Visitor v) {
        throw new IllegalStateException();
    }
}