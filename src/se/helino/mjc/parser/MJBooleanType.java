package se.helino.mjc.parser;

public class MJBooleanType extends MJType implements Acceptable {
    public void accept(Visitor v) {
        v.visit(this);
    }
}
