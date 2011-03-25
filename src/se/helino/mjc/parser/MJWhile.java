package se.helino.mjc.parser;

public class MJWhile implements MJStatement {
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
    
    public void accept(TypeVisitor v) {
        v.visit(this);
    }
    
    public int accept(IntVisitor v) {
        return v.visit(this);
    }
}
