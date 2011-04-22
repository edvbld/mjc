package se.helino.mjc.parser;

public class MJIntArrayType implements MJType {
    public void accept(Visitor v) {
        v.visit(this);
    }

    public String toString() {
        return "int[]"; 
    }

    public boolean equals(Object o) {
        if(o instanceof MJIntArrayType) {
            return true;
        }
        return false;
    }
    
    public int hashCode() {
        return toString().hashCode();
    }
}
