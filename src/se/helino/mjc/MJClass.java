package se.helino.mjc;

import java.util.ArrayList;

public class MJClass implements Acceptable {
    private MJIdentifier id;
    private ArrayList<MJVarDecl> varDeclarations = new ArrayList<MJVarDecl>();

    public MJClass(MJIdentifier id) {
        this.id = id;
    }

    public MJIdentifier getId() {
        return id;
    }
    
    public void addMJVarDecl(MJVarDecl vd) {
        varDeclarations.add(vd);
    }

    public ArrayList<MJVarDecl> getMJVarDeclarations() {
        return varDeclarations;
    }

    public void accept(Visitor v) {
        v.visit(this);
    }
}
