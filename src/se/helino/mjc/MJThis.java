package se.helino.mjc;

public class MJThis extends MJExpression implements Acceptable {
    public void accept(Visitor v) {
        v.visit(this);
    }
}
