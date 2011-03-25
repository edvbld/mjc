package se.helino.mjc.parser;

public abstract class MJBinaryExpression implements MJExpression {
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

    public abstract void accept(Visitor v);

    public abstract MJType accept(TypeVisitor v);
    
    public abstract int accept(IntVisitor v);
}
