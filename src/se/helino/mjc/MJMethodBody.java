package se.helino.mjc;

import java.util.ArrayList;

public class MJMethodBody {
    private ArrayList<MJVarDecl> vars = new ArrayList<MJVarDecl>();
    private ArrayList<MJStatement> statements = new ArrayList<MJStatement>();

    public void addMJVarDecl(MJVarDecl vd) {
        vars.add(vd);
    }
    
    public ArrayList<MJVarDecl> getMJVariableDeclarations() {
        return vars;
    }

    public void addMJStatement(MJStatement s) {
        statements.add(s);
    }

    public ArrayList<MJStatement> getMJStatements() {
        return statements;
    }
}
