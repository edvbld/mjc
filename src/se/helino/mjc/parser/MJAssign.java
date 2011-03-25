package se.helino.mjc.parser;

public class MJAssign implements MJStatement {
    private MJIdentifier id;
    private MJExpression exp;
    
    public MJAssign(MJIdentifier id, MJExpression exp) {
        this.id = id;
        this.exp = exp;
    }
    
    public MJIdentifier getId() {
        return id;
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
