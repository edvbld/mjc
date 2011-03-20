package se.helino.mjc;

public class MJIdentifierType extends MJType implements Acceptable {
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
}
