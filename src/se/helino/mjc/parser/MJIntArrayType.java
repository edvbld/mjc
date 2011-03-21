package se.helino.mjc.parser;

public class MJIntArrayType extends MJType implements Acceptable {
    public void accept(Visitor v) {
        v.visit(this);
    }
}
