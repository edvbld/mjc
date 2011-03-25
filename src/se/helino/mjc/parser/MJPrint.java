package se.helino.mjc.parser;

public class MJPrint implements MJStatement {
    private MJExpression exp;

    public MJPrint(MJExpression exp) {
        this.exp = exp;
    }

    public MJExpression getExpression() {
        return exp;
    }

    public void accept(Visitor v) {
        v.visit(this);
    }
    
    public void accept(TypeVisitor v) {
        v.visit(this);
    }
    
    public int accept(IntVisitor v) {
        return v.visit(this);
    }
}
