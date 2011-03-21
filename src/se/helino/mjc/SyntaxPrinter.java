package se.helino.mjc;

import java.lang.StringBuilder;

public class SyntaxPrinter implements Visitor {
    private int indentation = 0;
    
    private String indent() {
        StringBuilder sb = new StringBuilder();
        for(int i = 0; i < indentation; i++) {
            sb.append(' ');
        }
        return sb.toString();
    }

    private void println(String s) {
        System.out.println(indent() + s);
    }

    private void print(String s) {
        System.out.print(indent() + s);
    }

    public void visit(MJProgram n) {
        println("(Program");
        indentation++;
        n.getMJMainClass().accept(this);
        for(MJClass c : n.getMJClasses()) {
            c.accept(this);
        }
        indentation--;
        println(")");
    }

    public void visit(MJMainClass n) {
        println("(MainClass");
        indentation++;
        n.getClassId().accept(this);
        n.getArgId().accept(this);
        for(MJStatement s : n.getStatements()) {
            s.accept(this);
        }
        indentation--;
        println(")");
    }

    public void visit(MJClass n) {
        println("(Class");
        indentation++;
        n.getId().accept(this);
        for(MJVarDecl vd : n.getVariableDeclarations()) {
            vd.accept(this);
        }
        for(MJMethodDecl m : n.getMethods()) {
            m.accept(this);
        }
        indentation--;
        println(")");
    }

    public void visit(MJIdentifier n) {
        print("(Identifier [ ");
        System.out.print(n.getName());
        System.out.println(" ]");
        println(")");
    }
    
    public void visit(MJVarDecl n) {
        println("(VarDecl");
        indentation++;
        n.getMJType().accept(this);
        n.getId().accept(this);
        indentation--;
        println(")");
    }

    public void visit(MJIntType n) {
        println("(IntegerType");
        println(")");
    }

    public void visit(MJIntArrayType n) {
        println("(IntArrayType");
        println(")");
    }

    public void visit(MJBooleanType n) {
        println("(BooleanType");
        println(")");
    }

    public void visit(MJIdentifierType n) {
        print("(IdentifierType [ ");
        System.out.print(n.getName());
        System.out.println(" ]");
        println(")");
    }

    public void visit(MJMethodDecl n) {
        println("(MethodDecl");
        indentation++;
        n.getReturnType().accept(this);
        n.getId().accept(this);
        for(MJMethodArg a : n.getArguments()) {
            a.accept(this);
        }
        for(MJVarDecl vd : n.getBody().getMJVariableDeclarations()) {
            vd.accept(this);
        }
        for(MJStatement s : n.getBody().getMJStatements()) {
            s.accept(this);
        }
        n.getReturnExpression().accept(this);
        indentation--;
        println(")");
    }

    public void visit(MJMethodArg n) {
        println("(Formal");
        indentation++;
        n.getMJType().accept(this);
        n.getId().accept(this);
        indentation--;
        println(")");
    }

    public void visit(MJAssign n) {
        println("(Assign");
        indentation++;
        n.getId().accept(this);
        n.getExpression().accept(this);
        indentation--;
        println(")");
    }
    
    public void visit(MJArrayAssign n) {
        println("(ArrayAssign");
        indentation++;
        n.getId().accept(this);
        n.getBracketExpression().accept(this);
        n.getExpression().accept(this);
        indentation--;
        println(")");
    }

    public void visit(MJIf n) {
        println("(If");
        indentation++;
        n.getCondition().accept(this);
        n.getIfStatement().accept(this);
        n.getElseStatement().accept(this);
        indentation--;
        println(")");
    }

    public void visit(MJBlock n) {
        println("(Block");
        indentation++;
        for(MJStatement s : n.getStatements()) {
            s.accept(this);
        }
        indentation--;
    }

    public void visit(MJWhile n) {
        println("(While");
        indentation++;
        n.getCondition().accept(this);
        n.getStatement().accept(this);
        indentation--;
        println(")");
    }

    public void visit(MJPrint n) {
        println("(Print");
        indentation++;
        n.getExpression().accept(this);
        indentation--;
        println(")");
    }
    
    public void visit(MJIdentifierExp n) {
        print("(IdentifierExp [ ");
        System.out.print(n.getName());
        System.out.println(" ]");
        println(")");
    }
    
    private void printBinaryExp(String name, MJBinaryExpression n) {
        println("(" + name);
        indentation++;
        n.getLeft().accept(this);
        n.getRight().accept(this);
        indentation--;
        println(")");
    }

    public void visit(MJAnd n) {
        printBinaryExp("And", n);
    }

    public void visit(MJLess n) {
        printBinaryExp("Less", n);
    }

    public void visit(MJPlus n) {
        printBinaryExp("Plus", n);
    }
    
    public void visit(MJMinus n) {
        printBinaryExp("Minus", n);
    }

    public void visit(MJTimes n) {
        printBinaryExp("Times", n);
    }

    public void visit(MJNot n) {
        println("(Not");
        indentation++;
        n.getExpression().accept(this);
        indentation--;
        println(")");
    }

    public void visit(MJArrayLength n) {
        println("(ArrayLength");
        indentation++;
        n.getExpression().accept(this);
        indentation--;
        println(")");
    }

    public void visit(MJArrayLookup n) {
        printBinaryExp("ArrayLookup", n);
    }

    public void visit(MJCall n) {
        print("(Call [ ");
        System.out.print(n.getMethodId().getName());
        System.out.println(" ]");
        indentation++;
        n.getExpression().accept(this);
        n.getMethodId().accept(this);
        for(MJExpression e : n.getParameters()) {
            e.accept(this);
        }
        indentation--;
        println(")");
    }

    public void visit(MJNewObject n) {
        println("(NewObject");
        indentation++;
        n.getId().accept(this);
        indentation--;
        println(")");
    }

    public void visit(MJNewArray n) {
        println("(NewArray");
        indentation++;
        n.getExpression().accept(this);
        indentation--;
        println(")");
    }

    public void visit(MJTrue n) {
        println("(True");
        println(")");
    }
    
    public void visit(MJFalse n) {
        println("(False");
        println(")");
    }

    public void visit(MJIntegerLiteral n) {
        print("(IntegerLiteral [ ");
        System.out.print(n.getValue());
        System.out.println(" ]");
        println(")");
    }

    public void visit(MJThis n) {
        println("(This");
        println(")");
    }
}
