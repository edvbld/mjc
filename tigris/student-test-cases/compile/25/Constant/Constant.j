.class 'Constant'
.super java/lang/Object
.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method
.method public static main([Ljava/lang/String;)V
.limit locals 1
.limit stack 3
getstatic java/lang/System/out Ljava/io/PrintStream;
iconst_0
ldc 1000000000
isub
iconst_4
imul
invokevirtual java/io/PrintStream/println(I)V
return
.end method
