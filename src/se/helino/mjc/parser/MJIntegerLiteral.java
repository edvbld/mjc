package se.helino.mjc.parser;

public class MJIntegerLiteral extends MJExpression implements Acceptable {
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
}
