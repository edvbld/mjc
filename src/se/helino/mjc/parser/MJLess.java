package se.helino.mjc.parser;

public class MJLess extends MJBinaryExpression implements Acceptable {

    public MJLess(MJExpression left, MJExpression right) {
        super(left, right);
    }

    public void accept(Visitor v) {
        v.visit(this);
    }

    public MJType accept(TypeVisitor v) {
        return v.visit(this);
    }
    
    public int accept(IntVisitor v) {
        return v.visit(this);
    }

}
