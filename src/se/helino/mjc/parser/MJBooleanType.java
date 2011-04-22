package se.helino.mjc.parser;

public class MJBooleanType implements MJType {
    public void accept(Visitor v) {
        v.visit(this);
    }

    public String toString() {
        return "boolean";
    }

    public boolean equals(Object o) {
        if(o instanceof MJBooleanType) {
            return true;
        }
        return false;
    }
    
    public int hashCode() {
        return toString().hashCode();
    }
    
    public int accept(IntVisitor v) {
        return v.visit(this);
    }
}
