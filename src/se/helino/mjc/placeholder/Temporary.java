package se.helino.mjc.placeholder;

public class Temporary {
    private static int count;
    private int num;

    public String toString() {
        return "t" + num;
    }

    public Temporary() {
        num = count;
        count++;
    }
}
