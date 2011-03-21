package se.helino.mjc.parser;

public class MJTimes extends MJBinaryExpression {

    public MJTimes(MJExpression left, MJExpression right) {
        super(left, right);
    }

    public void accept(Visitor v) {
        v.visit(this);
    }
}
