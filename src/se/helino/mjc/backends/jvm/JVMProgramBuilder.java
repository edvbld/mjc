package se.helino.mjc.backends.jvm;

import se.helino.mjc.parser.*;
import se.helino.mjc.symbol.*;
import se.helino.mjc.frame.vm.*;

public class JVMProgramBuilder implements Visitor {
    private ProgramTable symbolTable;
    private JVMRecord currentRecord;
    private JVMFrame currentFrame;
    private int stackLimit;

    public JVMProgramBuilder(ProgramTable symbolTable) {
        this.symbolTable = symbolTable;
    }

    public void visit(MJProgram n) { 
        n.getMJMainClass().accept(this);
        for(MJClass c : n.getMJClasses()) {
            c.accept(this);
        }
    }

    public void visit(MJMainClass n) {
        for(MJStatement s : n.getStatements()) {
            n.accept(this);
        }
        symbolTable.setMainStackLimit(stackLimit);
    }

    public void visit(MJClass n) {
        JVMRecord rec = new JVMRecord();
        for(MJVarDecl vd : n.getVariableDeclarations()) {
            String name = vd.getId().getName();
            rec.addAccess(name, new JVMField(name, vd.getMJType()));
        }
        for(MJMethodDecl m : n.getMethods()) {
            m.accept(this);
        }

    }
    
    public void visit(MJMethodDecl n) {
    }

    public void visit(MJIdentifier n) { 
    }
    public void visit(MJVarDecl n){}
    public void visit(MJIntType n){}
    public void visit(MJIntArrayType n){}
    public void visit(MJBooleanType n){}
    public void visit(MJIdentifierType n){}
    public void visit(MJMethodArg n){}
    public void visit(MJAssign n){}
    public void visit(MJArrayAssign n){}
    public void visit(MJIf n){}
    public void visit(MJBlock n){}
    public void visit(MJWhile n){}
    public void visit(MJPrint n){}
    public void visit(MJIdentifierExp n){}
    public void visit(MJAnd n){}
    public void visit(MJLess n){}
    public void visit(MJPlus n){}
    public void visit(MJMinus n){}
    public void visit(MJTimes n){}
    public void visit(MJNot n){}
    public void visit(MJArrayLength n){}
    public void visit(MJArrayLookup n){}
    public void visit(MJCall n){}
    public void visit(MJNewObject n){}
    public void visit(MJNewArray n){}
    public void visit(MJTrue n){}
    public void visit(MJFalse n){}
    public void visit(MJIntegerLiteral n){}
    public void visit(MJThis n){}
}
