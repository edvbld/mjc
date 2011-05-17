.class 'PrimeSieveHelper'
.super java/lang/Object
.field private 'slask' I
.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method
.method public initPrimeSieve()I
.limit locals 3
.limit stack 3
.var 0 is <this> LPrimeSieveHelper;
.var 1 is 'i' I
.var 2 is 'ps' LPrimeSieve;
new 'PrimeSieve'
dup
invokespecial PrimeSieve/<init>()V
astore 2
aload 0
aload 2
invokevirtual PrimeSieve/run()I
putfield PrimeSieveHelper/slask I
iconst_0
istore 1
L0:
iload 1
aload 2
invokevirtual PrimeSieve/getSize()I
if_icmpge L1
aload 2
iload 1
invokevirtual PrimeSieve/isPrime(I)Z
ifeq L2
getstatic java/lang/System/out Ljava/io/PrintStream;
iload 1
invokevirtual java/io/PrintStream/println(I)V
goto L3
L2:
L3:
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
iconst_1
ireturn
.end method
