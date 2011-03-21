package se.helino.mjc.parser;

public class MJFalse implements MJExpression {
    public void accept(Visitor v) {
        v.visit(this);
    }
}

