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
    public void visit(MJIf n);
    public void visit(MJBlock n);
    public void visit(MJWhile n);
    public void visit(MJPrint n);
    public void visit(MJIdentifierExp n);
    public void visit(MJAnd n);
    public void visit(MJLess n);
    public void visit(MJPlus n);
    public void visit(MJMinus n);
    public void visit(MJTimes n);
    public void visit(MJNot n);
    public void visit(MJArrayLength n);
    public void visit(MJArrayLookup n);
    public void visit(MJCall n);
}
