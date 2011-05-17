.class 'Main'
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
new 'our_primtal'
dup
invokespecial our_primtal/<init>()V
invokevirtual our_primtal/run()I
invokevirtual java/io/PrintStream/println(I)V
return
.end method
