package se.helino.mjc;

public class MJPrint extends MJStatement implements Acceptable {
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
}
