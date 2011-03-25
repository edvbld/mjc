package se.helino.mjc.parser;

public class MJIdentifierType implements MJType {
    private String name;

    public MJIdentifierType(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void accept(Visitor v) {
        v.visit(this);
    }

    public String toString() {
        return name;
    }
    
    public int accept(IntVisitor v) {
        return v.visit(this);
    }
}
