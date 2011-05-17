.class 'TestSymbolTableHelper'
.super java/lang/Object
.field private 'b' I
.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method
.method public testLocal()I
.limit locals 3
.limit stack 2
.var 0 is <this> LTestSymbolTableHelper;
.var 1 is 'ret' I
.var 2 is 'b' Z
iconst_0
istore 2
iload 2
ifeq L2
iconst_0
istore 1
goto L3
L2:
iconst_1
istore 1
L3:
iload 1
ireturn
.end method
.method public setField()I
.limit locals 1
.limit stack 2
.var 0 is <this> LTestSymbolTableHelper;
aload 0
iconst_1
putfield TestSymbolTableHelper/b I
aload 0
getfield TestSymbolTableHelper/b I
ireturn
.end method
.method public testField()I
.limit locals 1
.limit stack 2
.var 0 is <this> LTestSymbolTableHelper;
aload 0
getfield TestSymbolTableHelper/b I
ireturn
.end method
