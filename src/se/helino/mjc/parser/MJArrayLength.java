package se.helino.mjc.parser;

public class MJArrayLength extends MJExpression implements Acceptable {
    private MJExpression exp;

    public MJArrayLength(MJExpression exp) {
        this.exp = exp;
    }

    public MJExpression getExpression() {
        return exp;
    }

    public void accept(Visitor v) {
        v.visit(this);
    }
}
