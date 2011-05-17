.class 'Ackermain'
.super java/lang/Object
.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method
.method public static main([Ljava/lang/String;)V
.limit locals 1
.limit stack 5
getstatic java/lang/System/out Ljava/io/PrintStream;
new 'Ackermann'
dup
invokespecial Ackermann/<init>()V
iconst_3
bipush 11
invokevirtual Ackermann/calculate(II)I
invokevirtual java/io/PrintStream/println(I)V
return
.end method
