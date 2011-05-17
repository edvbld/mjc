.class 'SortMain'
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
new 'Sort'
dup
invokespecial Sort/<init>()V
bipush 33
invokevirtual Sort/init(I)[I
bipush 99
iaload
invokevirtual java/io/PrintStream/println(I)V
return
.end method
