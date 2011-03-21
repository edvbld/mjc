package se.helino.mjc;

public class MJWhile extends MJStatement implements Acceptable {
    private MJExpression condition;
    private MJStatement statement;

    public MJWhile(MJExpression condition, MJStatement statement) {
        this.condition = condition;
        this.statement = statement;
    }

    public MJExpression getCondition() {
        return condition;
    }

    public MJStatement getStatement() {
        return statement;
    }

    public void accept(Visitor v) {
        v.visit(this);
    }
}
