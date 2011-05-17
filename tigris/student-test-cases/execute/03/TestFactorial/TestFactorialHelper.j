.class 'TestFactorialHelper'
.super java/lang/Object
.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method
.method public run()Z
.limit locals 6
.limit stack 3
.var 0 is <this> LTestFactorialHelper;
.var 1 is 'fac' LFactorial;
.var 2 is 'i' I
.var 3 is 'j' I
.var 4 is 'recResult' I
.var 5 is 'itResult' I
iconst_0
istore 4
iconst_0
istore 5
iconst_1
istore 2
new 'Factorial'
dup
invokespecial Factorial/<init>()V
astore 1
L2:
iload 2
bipush 14
if_icmpge L3
iconst_0
istore 3
L4:
iload 3
ldc 2000000
if_icmpge L5
aload 1
iload 2
invokevirtual Factorial/recFac(I)I
istore 4
aload 1
iload 2
invokevirtual Factorial/itFac(I)I
istore 5
iload 3
iconst_1
iadd
istore 3
goto L4
L5:
getstatic java/lang/System/out Ljava/io/PrintStream;
iload 4
invokevirtual java/io/PrintStream/println(I)V
getstatic java/lang/System/out Ljava/io/PrintStream;
iload 5
invokevirtual java/io/PrintStream/println(I)V
iload 2
iconst_1
iadd
istore 2
goto L2
L3:
iconst_1
ireturn
.end method
