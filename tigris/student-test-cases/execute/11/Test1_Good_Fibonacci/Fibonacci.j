.class 'Fibonacci'
.super java/lang/Object
.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method
.method public fibonacci(I)I
.limit locals 3
.limit stack 5
.var 0 is <this> LFibonacci;
.var 1 is 'n' I
.var 2 is 'f' I
iload 1
iconst_3
if_icmpge L0
iconst_1
istore 2
goto L1
L0:
aload 0
iload 1
iconst_1
isub
invokevirtual Fibonacci/fibonacci(I)I
aload 0
iload 1
iconst_2
isub
invokevirtual Fibonacci/fibonacci(I)I
iadd
istore 2
L1:
iload 2
ireturn
.end method
