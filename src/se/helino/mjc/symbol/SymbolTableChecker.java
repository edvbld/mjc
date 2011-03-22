package se.helino.mjc.symbol;

import java.util.ArrayList;
import se.helino.mjc.parser.*;

public class SymbolTableChecker implements TypeVisitor {
    private ProgramTable table;
    private ClassTable currentClass;
    private MethodTable currentMethod;
    private ArrayList<String> errors = new ArrayList<String>();

    public boolean hasErrors() {
        return errors.size() != 0;
    }

    public ArrayList<String> getErrors() {
        return errors;
    }

    public void visit(MJProgram n) { 
        n.getMJMainClass().accept(this);
        for(MJClass c : n.getMJClasses()) {
            n.accept(this);
        }
    }

    public void visit(MJMainClass n) { 
        for(MJStatement s : n.getStatements()) {
            s.accept(this);
        }
    }

    public void visit(MJClass n) {
        currentClass = table.getClassTable(n.getId().getName());
        for(MJMethodDecl m : n.getMethods()) {
            m.accept(this);
        }
    }

    public void visit(MJMethodDecl n) {
        currentMethod = currentClass.getMethodTable(n.getId().getName());
        for(MJStatement s : n.getBody().getMJStatements()) {
            s.accept(this);
        }
    }
    
    public void visit(MJPrint n) {
        n.getExpression().accept(this);
    }
    
    public void visit(MJIf n) {
        if(!(n.getCondition().accept(this) instanceof MJBooleanType))
            errors.add("The condifiton of an if statement must have type bool");

        n.getIfStatement().accept(this);
        n.getElseStatement().accept(this);
    }

    public void visit(MJAssign n) {
        MJType lhs = n.getId().accept(this);
        MJType rhs = n.getExpression().accept(this);
        if(rhs.getClass() != lhs.getClass())
            errors.add("Left and right side in assignment differed");
    }

    public void visit(MJArrayAssign n) {
        MJType lhs = n.getId().accept(this);
        if(!(lhs instanceof MJIntArrayType))
            errors.add("Can only do array assignment with integer arrays");

        MJType bracket = n.getBracketExpression().accept(this);
        if(!(bracket instanceof MJIntType))
            errors.add("Can only index an array with an integer");

        MJType rhs = n.getExpression().accept(this);
        if(!(rhs instanceof MJIntType))
            errors.add("Can only assign integers to an integer array");
    }

    public void visit(MJBlock n) {
        for(MJStatement s : n.getStatements()) {
            s.accept(this);
        }
    }

    public void visit(MJWhile n) {
        MJType cond = n.getCondition().accept(this);
        if(!(cond instanceof MJBooleanType))
            errors.add("Condition in while loop must be of type boolean");
        n.getStatement().accept(this);
    }
    
    public MJType visit(MJIdentifier n) {
        // TODO: look it up
        return null;
    }

    public MJType visit(MJIdentifierExp n) { 
        // TODO: look it up
        return null;
    }
    
    public MJType visit(MJCall n) { 
        // TODO: look it up
        return null;
    }

    public MJType visit(MJAnd n) { 
        MJType lhs = n.getLeft().accept(this);
        if(!(lhs instanceof MJBooleanType))
            errors.add("Left hand side of && must have type boolean");

        MJType rhs = n.getRight().accept(this);
        if(!(rhs instanceof MJBooleanType))
            errors.add("Right hand side of && must have type boolean");

        return new MJBooleanType();
    }

    public MJType visit(MJLess n) { 
        MJType lhs = n.getLeft().accept(this);
        if(!(lhs instanceof MJIntType))
            errors.add("Left hand side of < must have integer type");

        MJType rhs = n.getRight().accept(this);
        if(!(rhs instanceof MJIntType))
            errors.add("Right hand side of < must have integer type");

        return new MJBooleanType();
    }

    public MJType visit(MJPlus n) { 
        MJType lhs = n.getLeft().accept(this);
        if(!(lhs instanceof MJIntType))
            errors.add("Left hand side of + must have integer type");

        MJType rhs = n.getRight().accept(this);
        if(!(rhs instanceof MJIntType))
            errors.add("Right hand side of + must have integer type");

        return new MJIntType();
    }

    public MJType visit(MJMinus n) { 
        MJType lhs = n.getLeft().accept(this);
        if(!(lhs instanceof MJIntType))
            errors.add("Left hand side of - must have integer type");

        MJType rhs = n.getRight().accept(this);
        if(!(rhs instanceof MJIntType))
            errors.add("Right hand side of - must have integer type");

        return new MJIntType();
    }

    public MJType visit(MJTimes n) { 
        MJType lhs = n.getLeft().accept(this);
        if(!(lhs instanceof MJIntType))
            errors.add("Left hand side of * must have integer type");

        MJType rhs = n.getRight().accept(this);
        if(!(rhs instanceof MJIntType))
            errors.add("Right hand side of * must have integer type");

        return new MJIntType();
    }

    public MJType visit(MJNot n) { 
        MJType exp = n.getExpression().accept(this);
        if(!(exp instanceof MJBooleanType)) 
            errors.add("Can only apply ! operator to boolean types");
        return new MJBooleanType();
    }

    public MJType visit(MJArrayLength n) {
        MJType exp = n.getExpression().accept(this);
        if(!(exp instanceof MJIntArrayType))
            errors.add("Only integer arrays have the property length");

        return new MJIntType();
    }

    public MJType visit(MJArrayLookup n) { 
        MJType lhs = n.getLeft().accept(this);
        if(!(lhs instanceof MJIntArrayType))
            errors.add("Can only do array lookup on integer arrays");

        MJType rhs = n.getRight().accept(this);
        if(!(rhs instanceof MJIntType))
            errors.add("Can only use integer types as index in array lookup");

        return new MJIntType();
    }


    public MJType visit(MJNewObject n) { 
        MJType mjClass = n.getId().accept(this);
        return mjClass;
    }

    public MJType visit(MJNewArray n) { 
        MJType exp = n.getExpression().accept(this);
        if(!(exp instanceof MJIntType))
            errors.add("Can only use integer types to specify length of array");

        return new MJIntArrayType();
    }

    public MJType visit(MJTrue n) { 
        return new MJBooleanType();
    }

    public MJType visit(MJFalse n) {
        return new MJBooleanType();
    }

    public MJType visit(MJIntegerLiteral n) { 
        return new MJIntType();
    }

    public MJType visit(MJThis n) { 
        return new MJIdentifierType(currentClass.getName());
    }
}
