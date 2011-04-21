package se.helino.mjc.ir;

import se.helino.mjc.frame.cpu.Frame;
import se.helino.mjc.ir.IRExpression;

public class Fragment {
    private Frame frame;
    private IRStatement body;

    public Fragment(Frame frame, IRStatement body) {
        this.frame = frame;
        this.body = body;
    }

    public Frame getFrame() {
        return frame;
    }

    public IRStatement getBody() {
        return body;
    }
}
