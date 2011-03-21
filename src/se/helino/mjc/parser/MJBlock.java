package se.helino.mjc.parser;

import java.util.ArrayList;

public class MJBlock extends MJStatement implements Acceptable {
    private ArrayList<MJStatement> statements = new ArrayList<MJStatement>();

    public void addMJStatement(MJStatement s) {
        statements.add(s);
    }

    public ArrayList<MJStatement> getStatements() {
        return statements;
    }

    public void accept(Visitor v) {
        v.visit(this);
    }
}
