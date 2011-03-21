package se.helino.mjc.parser;

public class MJTrue extends MJExpression implements Acceptable {
    public void accept(Visitor v) {
        v.visit(this);
    }
}
