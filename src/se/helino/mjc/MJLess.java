package se.helino.mjc;

public class MJLess extends MJBinaryExpression implements Acceptable {

    public MJLess(MJExpression left, MJExpression right) {
        super(left, right);
    }

    public void accept(Visitor v) {
        v.visit(this);
    }

}
