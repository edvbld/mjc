package se.helino.mjc.parser;

import java.util.ArrayList;

public class MJClass implements Acceptable {
    private MJIdentifier id;
    private ArrayList<MJVarDecl> vars = new ArrayList<MJVarDecl>();
    private ArrayList<MJMethodDecl> methods = new ArrayList<MJMethodDecl>();

    public MJClass(MJIdentifier id) {
        this.id = id;
    }

    public MJIdentifier getId() {
        return id;
    }
    
    public void addMJVarDecl(MJVarDecl vd) {
        vars.add(vd);
    }

    public ArrayList<MJVarDecl> getVariableDeclarations() {
        return vars;
    }

    public void addMJMethod(MJMethodDecl m) {
        methods.add(m);
    }

    public ArrayList<MJMethodDecl> getMethods() {
        return methods;
    }

    public void accept(Visitor v) {
        v.visit(this);
    }

    public void accept(TypeVisitor v) {
        v.visit(this);
    }

    public int accept(IntVisitor v) {
        return v.visit(this);
    }
}
