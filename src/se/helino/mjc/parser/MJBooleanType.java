package se.helino.mjc.parser;

public class MJBooleanType implements MJType {
    public void accept(Visitor v) {
        v.visit(this);
    }
}
