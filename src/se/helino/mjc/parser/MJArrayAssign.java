package se.helino.mjc.parser;

public class MJArrayAssign extends MJStatement {
    private MJIdentifier id;
    private MJExpression bracketExp;
    private MJExpression exp;

    public MJArrayAssign(MJIdentifier id, MJExpression e1, MJExpression e2) {
        this.id = id;
        bracketExp = e1;
        exp = e2;
    }

    public MJIdentifier getId() {
        return id;
    }

    public MJExpression getBracketExpression() {
        return bracketExp;
    }

    public MJExpression getExpression() {
        return exp;
    }

    public void accept(Visitor v) {
        v.visit(this);
    }
}
