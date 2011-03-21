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
    public void visit(MJMethodDecl n);
    public void visit(MJMethodArg n);
    public void visit(MJAssign n);
    public void visit(MJArrayAssign n);
}
