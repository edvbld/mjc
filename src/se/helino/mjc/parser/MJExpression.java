package se.helino.mjc.parser;

public interface MJExpression extends Acceptable {
    public MJType accept(TypeVisitor v);
    public int accept(IntVisitor v);
}
