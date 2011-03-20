package se.helino.mjc;

public class MJBooleanType extends MJType implements Acceptable {
    public void accept(Visitor v) {
        v.visit(this);
    }
}
