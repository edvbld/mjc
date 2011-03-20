package se.helino.mjc;

public class MJIntType extends  MJType implements Acceptable {
    public void accept(Visitor v) {
        v.visit(this);
    }
}
