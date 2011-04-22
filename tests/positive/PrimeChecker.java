class PrimeChecker {
    public static void main(String[] args) {
        System.out.println(new Checker().isPrime(17));    // true
        System.out.println(new Checker().isPrime(1));     // true
        System.out.println(new Checker().isPrime(2));     // true
        System.out.println(new Checker().isPrime(3));     // true
        System.out.println(new Checker().isPrime(1187));  // true
        System.out.println(new Checker().isPrime(1185));  // false
        System.out.println(new Checker().isPrime(1181));  // true
        System.out.println(new Checker().isPrime(1183));  // false
    }
}

class Checker {
    public boolean isPrime(int n) {
        int i;
        boolean res;
        i = 2;
        res = true;
        while(i < n) {
            if(new Utils().divides(n, i))
                res = false;
            else {}
            i = i + 1;
        }
        return res;
    }
}

class Utils {
    public boolean divides(int d, int n) {
        int res;
        res = d;
        while(0 < res) {
            res = res - n;
        }
        return this.eq(0, res);
    }

    public boolean eq(int a, int b) {
        return (!(a < b)) && (!(b < a));
    }
}
