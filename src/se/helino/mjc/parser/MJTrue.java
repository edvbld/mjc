package se.helino.mjc.parser;

public class MJTrue implements MJExpression {
    public void accept(Visitor v) {
        v.visit(this);
    }
}
