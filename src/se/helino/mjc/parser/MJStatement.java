package se.helino.mjc.parser;

public interface MJStatement extends Acceptable {
    public void accept(TypeVisitor v);
    public int accept(IntVisitor v);
}
