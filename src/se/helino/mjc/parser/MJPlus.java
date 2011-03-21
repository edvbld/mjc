package se.helino.mjc.parser;

public class MJPlus extends MJBinaryExpression implements Acceptable {

    public MJPlus(MJExpression left, MJExpression right) {
        super(left, right);
    }

    public void accept(Visitor v) {
        v.visit(this);
    }
}
