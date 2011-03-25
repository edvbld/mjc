package se.helino.mjc.parser;

public interface IntVisitor {
    public int visit(MJProgram n);
    public int visit(MJMainClass n);
    public int visit(MJClass n);
    public int visit(MJIdentifier n);
    public int visit(MJVarDecl n);
    public int visit(MJIntType n);
    public int visit(MJIntArrayType n);
    public int visit(MJBooleanType n);
    public int visit(MJIdentifierType n);
    public int visit(MJMethodDecl n);
    public int visit(MJMethodArg n);
    public int visit(MJAssign n);
    public int visit(MJArrayAssign n);
    public int visit(MJIf n);
    public int visit(MJBlock n);
    public int visit(MJWhile n);
    public int visit(MJPrint n);
    public int visit(MJIdentifierExp n);
    public int visit(MJAnd n);
    public int visit(MJLess n);
    public int visit(MJPlus n);
    public int visit(MJMinus n);
    public int visit(MJTimes n);
    public int visit(MJNot n);
    public int visit(MJArrayLength n);
    public int visit(MJArrayLookup n);
    public int visit(MJCall n);
    public int visit(MJNewObject n);
    public int visit(MJNewArray n);
    public int visit(MJTrue n);
    public int visit(MJFalse n);
    public int visit(MJIntegerLiteral n);
    public int visit(MJThis n);
}
