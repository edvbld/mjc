package se.helino.mjc.parser;

public interface TypeVisitor {
    public void visit(MJProgram n);
    public void visit(MJMainClass n);
    public void visit(MJClass n);
    public void visit(MJMethodDecl n);
    public void visit(MJPrint n);
    public void visit(MJIf n);
    public void visit(MJAssign n);
    public void visit(MJArrayAssign n);
    public void visit(MJBlock n);
    public void visit(MJWhile n);

    public MJType visit(MJIdentifier n);
    public MJType visit(MJIdentifierExp n);
    public MJType visit(MJAnd n);
    public MJType visit(MJLess n);
    public MJType visit(MJPlus n);
    public MJType visit(MJMinus n);
    public MJType visit(MJTimes n);
    public MJType visit(MJNot n);
    public MJType visit(MJArrayLength n);
    public MJType visit(MJArrayLookup n);
    public MJType visit(MJCall n);
    public MJType visit(MJNewObject n);
    public MJType visit(MJNewArray n);
    public MJType visit(MJTrue n);
    public MJType visit(MJFalse n);
    public MJType visit(MJIntegerLiteral n);
    public MJType visit(MJThis n);
}
