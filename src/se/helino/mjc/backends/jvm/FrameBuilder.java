package se.helino.mjc.backends.jvm;

import se.helino.mjc.parser.*;
import se.helino.mjc.symbol.*;
import se.helino.mjc.frame.vm.*;

public class FrameBuilder implements Visitor {
    private ProgramTable table;
    private ProgramData data;
    private Frame currentFrame;
    private Record currentRecord;

    public void visit(MJProgram n) { 
        n.getMJMainClass().accept(this);
        for(MJClass c : n.getMJClasses()) {
            c.accept(this);
        }
    }

    public void visit(MJMainClass n) {
        currentFrame = data.newRecord(
                n.getClassId().getName()).newFrame("main");
        for(MJStatement s : n.getStatements()) {
            s.accept(this);
        }
    }

    public void visit(MJClass n) {
        currentRecord = data.newRecord(n.getId().getName());
        for(MJVarDecl vd : n.getVariableDeclarations()) {
            currentRecord.addField(vd.getId().getName(), vd.getMJType());
        }
        for(MJMethodDecl m : n.getMethods()) {
            m.accept(this);
        }
    }
    
    public void visit(MJMethodDecl n) {
        currentFrame = currentRecord.newFrame(n.getId().getName());
        for(MJMethodArg a : n.getArguments()) {
            currentFrame.addArgument(a.getId().getName(), a.getMJType());
        }
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
