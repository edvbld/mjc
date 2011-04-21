package se.helino.mjc.ir;

import java.util.List;
import java.util.ArrayList;

import se.helino.mjc.parser.*;
import se.helino.mjc.symbol.*;
import se.helino.mjc.frame.cpu.*;

public class IRBuilder implements Visitor {
    private ProgramTable symbolTable;
    private List<Fragment> fragments; 
    private Frame currentFrame;
    private ClassTable currentClass;

    public IRBuilder(ProgramTable symTable) {
        symbolTable = symTable;
    }

    private Frame getFrame(String methodName) {
        return null;
    }

    public List<Fragment> build(MJProgram p) {
        fragments = new ArrayList<Fragment>();
        return fragments;
    }

    public void visit(MJProgram n) {
        n.getMJMainClass().accept(this);
        for(MJClass c : n.getMJClasses()) {
            c.accept(this);
        }
    }

    public void visit(MJMainClass n) {
        //currentFrame = symbolTable.getMainFrame();
        
        //boolean moreThanOneStatement = false;
        //IRStatement body = null;
        //for(MJStatement s : n.getStatements()) {
            //IRStatement stm = s.accept(this);
            //if(moreThanOneStatement)
                //body = new IRSequence(body, stm); 
            //else
                //body = stm;
            //moreThanOneStatement = true;
        //}
        //fragments.add(new Fragment(currentFrame, body));
    }

    public void visit(MJClass n) {
        currentClass = symbolTable.getClassTable(n.getId().getName());
        for(MJMethodDecl md : n.getMethods()) {
            md.accept(this);
        }
    }
    
    public void visit(MJMethodDecl n) {
        //currentFrame = currentClass.getMethodTable(n.getId().getName()).
                                     //getFrame();
        //boolean moreThanOneStatement = false;
        //IRStatement body = null;
        //for(MJStatement s : n.getBody().getMJStatements()) {
            //IRStatement stm = s.accept(this);
            //if(moreThanOneStatement)
                //body = new IRSequence(body, stm);
            //else
                //body = stm;
            //moreThanOneStatement = true;
        //}
        //fragments.add(new Fragment(currentFrame, body));
    }

    public void visit(MJIdentifier n){}
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
