package se.helino.mjc.frame.cpu;

import java.util.List;

import se.helino.mjc.ir.IRExpression;
import se.helino.mjc.placeholder.Temporary;
import se.helino.mjc.placeholder.Label;

public interface Frame {
    public Label name();
    public IRExpression externalCall(String name, List<IRExpression> args);
    public Temporary framePointer();
    public Temporary returnRegister();
    public Access getVariable(String name);
}
