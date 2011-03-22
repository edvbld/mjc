package se.helino.mjc.parser;

public class MJArrayLookup extends MJBinaryExpression {
    
    public MJArrayLookup(MJExpression left, MJExpression right) {
        super(left, right);
    }

    public void accept(Visitor v) {
        v.visit(this);
    }

    public MJType accept(TypeVisitor v) {
        return v.visit(this);
    }
}
