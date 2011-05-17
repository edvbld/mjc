.class 'MainClass'
.super java/lang/Object
.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method
.method public static main([Ljava/lang/String;)V
.limit locals 1
.limit stack 3
new 'A'
dup
invokespecial A/<init>()V
invokevirtual A/doStuff()Z
ifeq L0
getstatic java/lang/System/out Ljava/io/PrintStream;
sipush 1337
invokevirtual java/io/PrintStream/println(I)V
goto L1
L0:
getstatic java/lang/System/out Ljava/io/PrintStream;
sipush -1337
invokevirtual java/io/PrintStream/println(I)V
L1:
new 'A'
dup
invokespecial A/<init>()V
invokevirtual A/doStuff()Z
ifne L2
getstatic java/lang/System/out Ljava/io/PrintStream;
sipush 1337
invokevirtual java/io/PrintStream/println(I)V
goto L3
L2:
getstatic java/lang/System/out Ljava/io/PrintStream;
sipush -1337
invokevirtual java/io/PrintStream/println(I)V
L3:
return
.end method
