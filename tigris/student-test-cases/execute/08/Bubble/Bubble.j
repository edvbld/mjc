.class 'Bubble'
.super java/lang/Object
.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method
.method public static main([Ljava/lang/String;)V
.limit locals 1
.limit stack 3
new 'bool'
dup
invokespecial bool/<init>()V
iconst_0
invokevirtual bool/bool(Z)Z
ifne L0
getstatic java/lang/System/out Ljava/io/PrintStream;
new 'DD'
dup
invokespecial DD/<init>()V
invokevirtual DD/DD()I
invokevirtual java/io/PrintStream/println(I)V
goto L1
L0:
getstatic java/lang/System/out Ljava/io/PrintStream;
new 'DD'
dup
invokespecial DD/<init>()V
invokevirtual DD/DD()I
ldc -2147483648
iadd
invokevirtual java/io/PrintStream/println(I)V
L1:
return
.end method
