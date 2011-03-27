package se.helino.mjc.symbol;

import java.util.List;

public class MJTypeException extends Exception {
    List<String> errors;

    public MJTypeException(List<String> errors) {
        this.errors = errors;
    }

    public List<String> getErrors() {
        return errors;
    }
}
