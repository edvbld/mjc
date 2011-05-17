.class 'TestSymbolTable'
.super java/lang/Object
.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method
.method public static main([Ljava/lang/String;)V
.limit locals 1
.limit stack 2
new 'TestSymbolTableMain'
dup
invokespecial TestSymbolTableMain/<init>()V
invokevirtual TestSymbolTableMain/runTest()Z
ifeq L0
goto L1
L0:
L1:
return
.end method
