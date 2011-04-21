package se.helino.mjc.frame.cpu;

import se.helino.mjc.ir.IRExpression;

public interface Access { 
    public IRExpression access(IRExpression pointer);
}
