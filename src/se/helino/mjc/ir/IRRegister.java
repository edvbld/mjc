package se.helino.mjc.ir;

import se.helino.mjc.placeholder.Temporary;

public class IRRegister implements IRExpression {
    private Temporary t;

    public IRRegister(Temporary t) {
        this.t = t;
    }

    public Temporary getTemp() {
        return t;
    }
}
