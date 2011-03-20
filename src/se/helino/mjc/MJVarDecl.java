package se.helino.mjc;

public class MJVarDecl implements Acceptable {
    private MJType t;
    private MJIdentifier id;

    public MJVarDecl(MJType t, MJIdentifier id) {
        this.t = t;
        this.id = id;
    }

    public MJType getMJType() {
        return t;
    }

    public MJIdentifier getId() {
        return id;
    }

    public void accept(Visitor v) {
        v.visit(this);
    }
}
