package se.helino.mjc.parser;

import java.util.ArrayList;

public class MJMainClass implements Acceptable {
    private MJIdentifier classId;
    private MJIdentifier argId;
    private ArrayList<MJStatement> statements = new ArrayList<MJStatement>();

    public MJMainClass(MJIdentifier classId, MJIdentifier argId) {
        this.classId = classId;
        this.argId = argId;
    }

    public MJIdentifier getClassId() {
        return classId;
    }

    public MJIdentifier getArgId() {
        return argId;
    }

    public void addMJStatement(MJStatement s) {
        statements.add(s);
    }

    public ArrayList<MJStatement> getStatements() {
        return statements;
    }

    public void accept(Visitor v) {
        v.visit(this);
    }

    public void accept(TypeVisitor v) {
        v.visit(this);
    }
}
