package se.helino.mjc;

public class MJTimes extends MJBinaryExpression implements Acceptable {

    public MJTimes(MJExpression left, MJExpression right) {
        super(left, right);
    }

    public void accept(Visitor v) {
        v.visit(this);
    }
}
