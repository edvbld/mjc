class Main
{
    public static void main(String[] s) 
    {
	System.out.println(1);
    }
}


class A { 
}

class B 
{
    public int f1(A a) 
    {
	B b;
	b = a;	
	return 0;
    }
    
    public int f2(B b) 
    {
	A a;	
	int i;
	i = this.f1(b);
	a = new B();	
	return 0;
    }
    
}


