package se.helino.mjc.parser;

public class MJIntegerLiteral implements MJExpression {
    private int value;

    public MJIntegerLiteral(int value) {
        this.value = value;
    }

    public int getValue() {
        return value;
    }

    public void accept(Visitor v) {
        v.visit(this);
    }

    public MJType accept(TypeVisitor v) {
        return v.visit(this);
    }
}
