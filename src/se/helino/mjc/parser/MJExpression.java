package se.helino.mjc.parser;

import java.lang.IllegalStateException;

public class MJExpression implements Acceptable {
    public void accept(Visitor v) {
        throw new IllegalStateException();
    }
}
