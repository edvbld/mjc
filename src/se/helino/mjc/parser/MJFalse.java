package se.helino.mjc.parser;

public class MJFalse extends MJExpression implements Acceptable {
    public void accept(Visitor v) {
        v.visit(this);
    }
}

