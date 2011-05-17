.class 'Bogus1'
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
new 'Test'
dup
invokespecial Test/<init>()V
invokevirtual Test/testing()I
invokevirtual java/io/PrintStream/println(I)V
return
.end method
