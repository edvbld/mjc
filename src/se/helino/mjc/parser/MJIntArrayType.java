package se.helino.mjc.parser;

public class MJIntArrayType implements MJType {
    public void accept(Visitor v) {
        v.visit(this);
    }
}
