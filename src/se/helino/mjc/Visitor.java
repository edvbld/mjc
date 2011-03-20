package se.helino.mjc;

public interface Visitor {
    public void visit(MJProgram n);
    public void visit(MJMainClass n);
    public void visit(MJClass n);
    public void visit(MJIdentifier n);
}
