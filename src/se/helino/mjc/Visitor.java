package se.helino.mjc;

public interface Visitor {
    public void visit(MJProgram n);
    public void visit(MJMainClass n);
    public void visit(MJClass n);
    public void visit(MJIdentifier n);
    public void visit(MJVarDecl n);
    public void visit(MJIntType n);
    public void visit(MJIntArrayType n);
    public void visit(MJBooleanType n);
    public void visit(MJIdentifierType n);
}
