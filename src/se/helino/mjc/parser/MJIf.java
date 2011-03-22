package se.helino.mjc.parser;

public class MJIf implements MJStatement {
    private MJExpression condition;
    private MJStatement ifStatement;
    private MJStatement elseStatement;

    public MJIf(MJExpression condition, MJStatement ifStatement, 
                MJStatement elseStatement) {
        this.condition = condition;
        this.ifStatement = ifStatement;
        this.elseStatement = elseStatement;
    }

    public MJExpression getCondition() {
        return condition;
    }

    public MJStatement getIfStatement() {
        return ifStatement;
    }

    public MJStatement getElseStatement() {
        return elseStatement;
    }

    public void accept(Visitor v) {
        v.visit(this);
    }

    public void accept(TypeVisitor v) {
        v.visit(this);
    }
}
