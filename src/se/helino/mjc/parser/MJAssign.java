package se.helino.mjc.parser;

public class MJAssign extends MJStatement implements Acceptable {
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
}
