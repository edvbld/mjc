package se.helino.mjc.parser;

import java.util.ArrayList;

public class MJMethodDecl implements Acceptable {
    private MJType returnType;
    private MJIdentifier id;
    private ArrayList<MJMethodArg> args = new ArrayList<MJMethodArg>();
    private MJMethodBody body;
    private MJExpression retExp;

    public MJMethodDecl(MJType returnType, MJIdentifier id) {
        this.returnType = returnType;
        this.id = id;
        body = new MJMethodBody();
    }

    public MJType getReturnType() {
        return returnType;
    }

    public MJIdentifier getId() {
        return id;
    }

    public void addMJMethodArg(MJMethodArg a) {
        if(a != null)
            args.add(a);
    }

    public ArrayList<MJMethodArg> getArguments() {
        return args;
    }

    public void addMJMethodBody(MJMethodBody b) {
        if(b != null)
            body = b;
    }

    public MJMethodBody getBody() {
        return body;
    }

    public void setReturnExpression(MJExpression exp) {
        retExp = exp;
    }

    public MJExpression getReturnExpression() {
        return retExp;
    }

    public void accept(Visitor v) {
        v.visit(this);
    }
}
