package se.helino.mjc.backends.jvm;

import java.io.PrintWriter;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.File;

import se.helino.mjc.frame.vm.*;
import se.helino.mjc.parser.*;

public class Formatter implements Visitor {

    PrintWriter out;
    ProgramData data;
    Record currentRecord;
    Frame currentFrame;
    String basePath;

    private String path(String name) {
        return basePath + File.separator + name;
    }

    private PrintWriter newFile(String name) {
        PrintWriter ret;
        try{
            ret = new PrintWriter(
                    new BufferedWriter(
                        new FileWriter(path(name))));
            return ret;
        } catch (java.io.IOException e) {
            // TODO: Handle this!
            
        }
        return null;
    }

    private Access getAccess(String var) {
        Access a;
        if(currentFrame != null) { 
            a = currentFrame.getAccess(var);
            if(a != null) 
                return a;
        }
        if(currentRecord != null) {
            a = currentRecord.getAccess(var);
            if(a != null)
                return a;
        }
        throw new IllegalStateException("Could not find variable with name " 
                                        + var);
    }

    public void visit(MJProgram n) { 
        n.getMJMainClass().accept(this);
    }

    public void visit(MJMainClass n) {
        String name = n.getClassId().getName();
        out = newFile(name);
        out.println(".class " + name);
        out.println(".super java/lang/Object");
        out.println(".method public static main([Ljava/lang/String;)V");
        out.println(".limit locals 1");
        currentFrame = data.getRecord(name).getFrame("main");
        out.println(".limit stack " + currentFrame.getStackSize());
        for(MJStatement s : n.getStatements()) {
            s.accept(this);
        }
        out.println(".end method");
        out.close();
    }

    public void visit(MJClass n) {
        String name = n.getId().getName();
        out = newFile(name);
        out.println(".class " + name);
        out.println(".super java/lang/Object");
        currentRecord = data.getRecord(name);
        for(MJVarDecl vd : n.getVariableDeclarations()) {
            vd.accept(this);
        }
        for(MJMethodDecl m : n.getMethods()) {
            n.accept(this);
        }
        out.close();
    }

    public void visit(MJVarDecl n) {
        out.println(getAccess(n.getId().getName()).declare());
    }
    
    public void visit(MJMethodDecl n) {
        out.println(".method public "); 

    }
    
    public void visit(MJCall n) {
        // FIND OUT CLASS OF n.getExpression()!
    }

    public void visit(MJIdentifier n) { 
    }
    public void visit(MJIntType n) { }
    public void visit(MJIntArrayType n) { }
    public void visit(MJBooleanType n) { }
    public void visit(MJIdentifierType n) { }
    public void visit(MJMethodArg n) { }
    public void visit(MJAssign n) { }
    public void visit(MJArrayAssign n) { }
    public void visit(MJIf n) { }
    public void visit(MJBlock n) { }
    public void visit(MJWhile n) { }
    public void visit(MJPrint n) { }
    public void visit(MJIdentifierExp n) { }
    public void visit(MJAnd n) { }
    public void visit(MJLess n) { }
    public void visit(MJPlus n) { }
    public void visit(MJMinus n) { }
    public void visit(MJTimes n) { }
    public void visit(MJNot n) { }
    public void visit(MJArrayLength n){}
    public void visit(MJArrayLookup n){}
    public void visit(MJNewObject n){}
    public void visit(MJNewArray n){}
    public void visit(MJTrue n){}
    public void visit(MJFalse n){}
    public void visit(MJIntegerLiteral n){}
    public void visit(MJThis n){}
}
