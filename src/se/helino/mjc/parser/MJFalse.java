package se.helino.mjc.parser;

public class MJFalse implements MJExpression {
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

