package se.helino.mjc.parser;

public class MJIdentifierExp implements MJExpression {
    private String name;

    public MJIdentifierExp(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void accept(Visitor v) {
        v.visit(this);
    }

    public MJType accept(TypeVisitor v) {
        return v.visit(this);
    }
    
    public int accept(IntVisitor v) {
        return v.visit(this);
    }
}
