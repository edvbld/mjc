package se.helino.mjc.symbol;

import se.helino.mjc.parser.MJType;

public class TypeNamePair {
    private MJType type;
    private String name;

    public TypeNamePair(MJType type, String name) {
        this.type = type;
        this.name = name;
    }

    public MJType getType() {
        return type;
    }

    public String getName() {
        return name;
    }
}
