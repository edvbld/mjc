class Error5 {
    public static void main(String[] args) {}
}

class A {
    int b;
    boolean b; // Error, can't have a variable with the same name

    public int a() {
        int b;
        boolean b; // Error, can't have a variable with the same name
        return 0;
    }
}
