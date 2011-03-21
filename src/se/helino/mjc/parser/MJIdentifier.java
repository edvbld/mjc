package se.helino.mjc.parser;

public class MJIdentifier implements Acceptable {
    private String name;

    public MJIdentifier(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void accept(Visitor v) {
        v.visit(this);
    }
}
