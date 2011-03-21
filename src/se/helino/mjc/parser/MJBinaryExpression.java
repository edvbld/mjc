package se.helino.mjc.parser;

import java.lang.IllegalStateException;

public class MJBinaryExpression extends MJExpression implements Acceptable {
    private MJExpression left;
    private MJExpression right;

    public MJBinaryExpression(MJExpression left, MJExpression right) {
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
        throw new IllegalStateException();
    }
}
