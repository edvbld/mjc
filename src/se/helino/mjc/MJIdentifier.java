package se.helino.mjc;

public class MJIdentifier extends MJExpression implements Acceptable {
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
