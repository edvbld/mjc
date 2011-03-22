package se.helino.mjc.symbol;

import se.helino.mjc.parser.MJType;
import se.helino.mjc.parser.Visitor;

public class MJUnknownType implements MJType {
    public void accept(Visitor v) { }
    public String toString() {
        return "MJUnknownType";
    }
}
