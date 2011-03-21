package se.helino.mjc.parser;

public class MJIntType extends  MJType implements Acceptable {
    public void accept(Visitor v) {
        v.visit(this);
    }
}
