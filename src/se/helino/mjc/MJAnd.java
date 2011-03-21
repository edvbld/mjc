package se.helino.mjc;

public class MJAnd extends MJBinaryExpression implements Acceptable {

    public MJAnd(MJExpression left, MJExpression right) {
        super(left, right);
    }

    public void accept(Visitor v) {
        v.visit(this);
    }
}
