.class 'Abc'
.super java/lang/Object
.field private 'a' I
.field private 'b' I
.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method
.method public add(II)I
.limit locals 4
.limit stack 4
.var 0 is <this> LAbc;
.var 1 is 'x' I
.var 2 is 'y' I
.var 3 is 'result' I
aload 0
iload 1
putfield Abc/a I
aload 0
iload 2
putfield Abc/b I
aload 0
getfield Abc/a I
aload 0
getfield Abc/b I
iadd
istore 3
iload 3
ireturn
.end method
