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
    
    public boolean equals(Object o) {
        if(o instanceof MJIdentifierType) {
            MJIdentifierType other = (MJIdentifierType) o;
            if(other.getName().equals(getName())) {
                return true;
            }
        }
        return false;
    }
    
    public int hashCode() {
        return getName().hashCode();
    }
    
    public int accept(IntVisitor v) {
        return v.visit(this);
    }
}
