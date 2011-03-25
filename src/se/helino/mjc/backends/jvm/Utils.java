package se.helino.mjc.backends.jvm;

import se.helino.mjc.parser.MJType;
import se.helino.mjc.parser.MJIntType;
import se.helino.mjc.parser.MJIntArrayType;
import se.helino.mjc.parser.MJBooleanType;
import se.helino.mjc.parser.MJIdentifierType;

public class Utils {
    public static String convertType(MJType t) {
        if(t instanceof MJIntType)
            return "I";
        if(t instanceof MJIntArrayType)
            return "[I";
        if(t instanceof MJBooleanType)
            return "B";
        if(t instanceof MJIdentifierType)
            return "L" + t.toString();
        throw new IllegalStateException("Can't convert type " + t.toString());
    }
}
