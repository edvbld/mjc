package se.helino.mjc;

public class MJFalse extends MJExpression implements Acceptable {
    public void accept(Visitor v) {
        v.visit(this);
    }
}

