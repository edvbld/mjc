package se.helino.mjc.parser;

public class MJArrayLength implements MJExpression {
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

    public MJType accept(TypeVisitor v) {
        return v.visit(this);
    }
}
