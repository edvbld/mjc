package se.helino.mjc.backends.jvm;

import java.io.PrintWriter;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.File;

import se.helino.mjc.frame.vm.*;
import se.helino.mjc.parser.*;
import se.helino.mjc.symbol.*;

public class JasminFormatter implements Visitor {

    PrintWriter out;
    String basePath;
    ProgramTable symbolTable;
    ClassTable currentClass;
    MethodTable currentMethod;

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
        } catch (java.io.IOException e) { }
        return null;
    }

    private VMAccess getAccess(String name) {
        VMAccess a;
        if(currentMethod != null) {
            a = currentMethod.getVMFrame().getAccess(name);
            if(a != null)
                return a;
        }
        if(currentClass != null) {
            a = currentClass.getVMRecord().getAccess(name);
            if(a != null)
                return a;
        }
        throw new IllegalStateException();
    }

    private void beginClass(String name) {
        out = newFile(name);
        out.println(".class " + name);
        out.println(".super java/lang/Object");
        out.println(".method public <init>()V");
        out.println("aload_0");
        out.println("invokespecial java/lang/Object/<init>()V");
        out.println("return");
        out.println(".end method");
    }

    public void visit(MJProgram n) { 
        n.getMJMainClass().accept(this);
        for(MJClass c : n.getMJClasses()) {
            c.accept(this);
        }
    }

    public void visit(MJMainClass n) {
        String name = n.getClassId().getName();
        beginClass(name);

        // Main method
        out.println(".method public static main([Ljava/lang/String;)V");
        out.println(".limit locals 1");
        out.println(".limit stack " + symbolTable.getMainStackLimit());
        for(MJStatement s : n.getStatements()) {
            s.accept(this);
        }
        out.println(".end method");
        out.close();
    }

    public void visit(MJClass n) {
        String name = n.getId().getName();
        beginClass(name);

        currentClass = symbolTable.getClassTable(name);
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
        String name = n.getId().getName();
        currentMethod = currentClass.getMethodTable(name);
        VMFrame frame = currentMethod.getVMFrame();
        out.print(".method public " + name + "("); 
        out.print(".limit locals " + frame.getLocalLimit());
        out.print(".limit stack " + frame.getStackLimit());
        for(MJMethodArg arg : n.getArguments()) {
        }
        for(MJVarDecl vd : n.getBody().getMJVariableDeclarations()) {
        }
        for(MJStatement s : n.getBody().getMJStatements()) {
        }
    }
    
    public void visit(MJCall n) {
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
