package se.helino.mjc.parser;

public class MJNewArray implements MJExpression {
    private MJExpression exp;
    
    public MJNewArray(MJExpression exp) {
        this.exp = exp;
    }

    public MJExpression getExpression() {
        return exp;
    }

    public void accept(Visitor v) {
        v.visit(this);
    }
}
