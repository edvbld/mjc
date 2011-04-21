package se.helino.mjc.symbol;

import java.util.ArrayList;
import java.util.Set;
import se.helino.mjc.parser.*;

public class SymbolTableBuilder implements Visitor {
    
    private ProgramTable table;
    private ClassTable current;
    private ArrayList<String> errors = new ArrayList<String>();

    public ProgramTable build(MJProgram program) throws MJTypeException {
        String mcName = program.getMJMainClass().getClassId().getName();
        table = new ProgramTable(mcName);
        program.accept(this);
        if(errors.size() != 0)
            throw new MJTypeException(errors);
        return table;
    }

    public void visit(MJProgram n) {
        for(MJClass c : n.getMJClasses()) {
            c.accept(this);
        }
    }

    public void visit(MJClass n) {
        current = new ClassTable(n.getId().getName());
        for(MJVarDecl vd : n.getVariableDeclarations()) {
            String name = vd.getId().getName();
            if(current.hasFieldWithName(name)) {
                errors.add("Field " + name + " has already been declared");
            }
            else {
                current.addField(new TypeNamePair(vd.getMJType(), 
                                                  vd.getId().getName()));
            }
        }
        for(MJMethodDecl m : n.getMethods()) {
            m.accept(this);
        }
        table.addClassTable(current);
    }

    public void visit(MJMethodDecl n) {
        MethodTable mt = new MethodTable(n.getReturnType(), 
                                         n.getId().getName());
        for(MJMethodArg a : n.getArguments()) {
            mt.addParam(new TypeNamePair(a.getMJType(),
                                         a.getId().getName()));
        }
        for(MJVarDecl vd : n.getBody().getMJVariableDeclarations()) {
            String name = vd.getId().getName();
            if(mt.hasParamWithName(name)) {
                errors.add("Local " + name + 
                           " is already defined as a parameter");
            } else if(mt.hasLocalWithName(name)) {
                errors.add("Local " + name + " has already been declared");
            }
            else {
                mt.addLocal(new TypeNamePair(vd.getMJType(),
                                             name));
            }
        }
        current.addMethod(mt);
    }

    public void visit(MJMainClass n) { }
    public void visit(MJIdentifier n) { }
    public void visit(MJVarDecl n) { }
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
    public void visit(MJArrayLength n) { }
    public void visit(MJArrayLookup n) { }
    public void visit(MJCall n) { }
    public void visit(MJNewObject n) { }
    public void visit(MJNewArray n) { }
    public void visit(MJTrue n) { }
    public void visit(MJFalse n) { }
    public void visit(MJIntegerLiteral n) { }
    public void visit(MJThis n) { }
}
