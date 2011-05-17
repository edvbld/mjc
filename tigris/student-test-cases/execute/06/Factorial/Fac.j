.class 'Fac'
.super java/lang/Object
.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method
.method public ComputeFac(I)I
.limit locals 3
.limit stack 5
.var 0 is <this> LFac;
.var 1 is 'num' I
.var 2 is 'num_aux' I
iload 1
iconst_1
if_icmpge L0
iconst_1
istore 2
goto L1
L0:
iload 1
aload 0
iload 1
iconst_1
isub
invokevirtual Fac/ComputeFac(I)I
imul
istore 2
L1:
iload 2
ireturn
.end method
