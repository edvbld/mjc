.class 'Test'
.super java/lang/Object
.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method
.method public testing()I
.limit locals 2
.limit stack 3
.var 0 is <this> LTest;
.var 1 is 'b' I
aload 0
iconst_0
invokevirtual Test/t(I)I
istore 1
iload 1
ireturn
.end method
.method public t(I)I
.limit locals 5
.limit stack 3
.var 0 is <this> LTest;
.var 1 is 'i' I
.var 2 is 'a' I
.var 3 is 'b' I
.var 4 is 'c' I
iconst_0
istore 2
iconst_1
istore 3
iload 2
iload 3
iadd
istore 2
getstatic java/lang/System/out Ljava/io/PrintStream;
iload 2
invokevirtual java/io/PrintStream/println(I)V
iconst_1
ireturn
.end method
