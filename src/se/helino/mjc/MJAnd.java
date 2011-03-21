package se.helino.mjc;

public class MJAnd extends MJExpression implements Acceptable {
    private MJExpression left;
    private MJExpression right;

    public MJAnd(MJExpression left, MJExpression right) {
        this.left = left;
        this.right = right;
    }

    public MJExpression getLeft() {
        return left;
    }

    public MJExpression getRight() {
        return right;
    }

    public void accept(Visitor v) {
        v.visit(this);
    }
}
