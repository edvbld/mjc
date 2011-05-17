.class 'Ackermann'
.super java/lang/Object
.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method
.method public calculate(II)I
.limit locals 5
.limit stack 10
.var 0 is <this> LAckermann;
.var 1 is 'm' I
.var 2 is 'n' I
.var 3 is 'ret' I
.var 4 is 'unused' Z
iload 1
iconst_1
if_icmpge L0
iload 2
iconst_1
iadd
istore 3
goto L1
L0:
iconst_0
iload 1
if_icmplt L6
iconst_0
goto L7
L6:
iconst_1
L7:
ifeq L2
iload 2
iconst_1
if_icmplt L8
iconst_0
goto L9
L8:
iconst_1
L9:
ifeq L2
aload 0
iload 1
iconst_1
isub
iconst_1
invokevirtual Ackermann/calculate(II)I
istore 3
goto L3
L2:
aload 0
iload 1
iconst_1
isub
aload 0
iload 1
iload 2
iconst_1
isub
invokevirtual Ackermann/calculate(II)I
invokevirtual Ackermann/calculate(II)I
istore 3
L3:
L1:
iload 3
ireturn
.end method
