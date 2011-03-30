package se.helino.mjc.ir;

public interface IRMultiExpression {
    public IRExpression asExpression();
    public IRStatement asConditional();
}
