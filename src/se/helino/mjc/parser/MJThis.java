package se.helino.mjc.parser;

public class MJThis implements MJExpression {
    public void accept(Visitor v) {
        v.visit(this);
    }
}
