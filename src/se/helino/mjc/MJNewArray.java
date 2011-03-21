package se.helino.mjc;

public class MJNewArray extends MJExpression implements Acceptable {
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
