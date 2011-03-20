package se.helino.mjc;

public class MJMainClass implements Acceptable {
    private MJIdentifier classId;
    private MJIdentifier argId;

    public MJMainClass(MJIdentifier classId, MJIdentifier argId) {
        this.classId = classId;
        this.argId = argId;
    }

    public MJIdentifier getClassId() {
        return classId;
    }

    public MJIdentifier getArgId() {
        return argId;
    }

    public void accept(Visitor v) {
        v.visit(this);
    }
}
