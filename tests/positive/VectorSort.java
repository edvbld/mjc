class VectorSort {
    public static void main(String[] args) {
        System.out.println(
                new Vector().
                    init(1).
                    append(3).
                    append(4).
                    append(2).
                    append(5).
                    append(1).
                    append(6).
                    append(4).
                    append(8).
                    append(5).
                    append(10).
                    append(11).
                    append(29).
                    append(13).
                    append(18).
                    append(12).
                    append(15).
                    append(25).
                    append(28).
                    append(16).
                    append(22).
                    append(28).
                    append(38).
                    append(49).
                    append(324).
                    append(12349).
                    append(230).
                    append(992).
                    append(11).
                    append(1294).
                    append(1973).
                    append(131).
                    append(193).
                    append(104).
                    append(84).
                    append(55).
                    append(66).
                    append(91).
                    append(288).
                    append(196).
                    append(2122).
                    sort().
                    print());
    }
}
class Vector {
    int[] data;
    int end;
    int max;
    Comp cmp;

    public Vector init(int n) {
        if(n < 1)
            n = 1;
        else {}
        data = new int[n];
        max = n;
        end = 0; 
        cmp = new Comp();
        return this;
    }

    public Vector append(int n) {
        int[] copy;
        int i;
        if(cmp.eq(end, (max - 1))) {
            copy = new int[2*max];
            i = 0;
            while(i < end) {
                copy[i] = data[i];
                i = i + 1;
            }
            max = 2*max;
            data = copy;
        } else {}
        data[end] = n;
        end = end + 1;
        return this;
    }

    public int get(int i) {
        return data[i];
    }

    public Vector set(int i, int n) {
        data[i] = n;
        return this;
    }

    public int len() {
        return end + 1;
    }

    public int print() {
        int i;
        i = 0;
        while(i < end) {
            System.out.println(data[i]);
            i = i + 1;
        }
        return 0;
    }
    
    // insertion sort
    public Vector sort() {
        int i;
        int j;
        int val;
        j = 1;
        while(j < this.len() - 1) {
            val = this.get(j);
            i = j - 1;
            while(cmp.ge(i, 0) && cmp.gt(this.get(i), val)) {
                data[i+1] = this.get(i);
                i = i - 1;
            }
            data[i+1] = val;
            j = j + 1;
        }
        return this;
    }
}

class Comp {
    public boolean eq(int a, int b) {
        return !(a < b) && !(b < a);
    }

    public boolean ge(int a, int b) {
        return !(a < b);
    }

    public boolean gt(int a, int b) {
        return this.ge(a, b) && !this.eq(a,b);
    }
}
