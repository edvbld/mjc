package se.helino.mjc.parser;

public class MJIntType implements  MJType {
    public void accept(Visitor v) {
        v.visit(this);
    }

    public String toString() {
        return "int";
    }
}
