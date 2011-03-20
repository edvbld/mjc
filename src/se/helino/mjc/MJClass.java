package se.helino.mjc;

public class MJClass implements Acceptable {
    private MJIdentifier id;

    public MJClass(MJIdentifier id) {
        this.id = id;
    }

    public MJIdentifier getId() {
        return id;
    }

    public void accept(Visitor v) {
        v.visit(this);
    }
}
