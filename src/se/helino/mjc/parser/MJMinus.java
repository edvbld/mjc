package se.helino.mjc.parser;

public class MJMinus extends MJBinaryExpression {

    public MJMinus(MJExpression left, MJExpression right) {
        super(left, right);
    }
    
    public void accept(Visitor v) {
        v.visit(this);
    }

    public MJType accept(TypeVisitor v) {
        return v.visit(this);
    }
}
