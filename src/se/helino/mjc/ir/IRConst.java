package se.helino.mjc.ir;

public class IRConst implements IRExpression {
    int value;

    public IRConst(int value) {
        this.value = value;
    }

    public int getValue() {
        return value;
    }
}
