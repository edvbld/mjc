package se.helino.mjc.parser;

public class MJBooleanType implements MJType {
    public void accept(Visitor v) {
        v.visit(this);
    }

    public String toString() {
        return "boolean";
    }
    
    public int accept(IntVisitor v) {
        return v.visit(this);
    }
}
