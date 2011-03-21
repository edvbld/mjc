package se.helino.mjc;

public class MJTrue extends MJExpression implements Acceptable {
    public void accept(Visitor v) {
        v.visit(this);
    }
}
