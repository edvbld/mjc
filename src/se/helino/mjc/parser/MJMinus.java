package se.helino.mjc.parser;

public class MJMinus extends MJBinaryExpression implements Acceptable {

    public MJMinus(MJExpression left, MJExpression right) {
        super(left, right);
    }
    
    public void accept(Visitor v) {
        v.visit(this);
    }
}
