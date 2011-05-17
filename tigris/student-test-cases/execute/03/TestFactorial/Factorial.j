.class 'Factorial'
.super java/lang/Object
.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method
.method public recFac(I)I
.limit locals 3
.limit stack 5
.var 0 is <this> LFactorial;
.var 1 is 'n' I
.var 2 is 'ret' I
iconst_1
istore 2
iconst_0
iload 1
if_icmplt L10
iconst_0
goto L11
L10:
iconst_1
L11:
ifeq L6
iload 1
iconst_2
if_icmplt L12
iconst_0
goto L13
L12:
iconst_1
L13:
ifeq L6
iconst_1
istore 2
goto L7
L6:
iload 1
aload 0
iload 1
iconst_1
isub
invokevirtual Factorial/recFac(I)I
imul
istore 2
L7:
iload 2
ireturn
.end method
.method public itFac(I)I
.limit locals 4
.limit stack 3
.var 0 is <this> LFactorial;
.var 1 is 'n' I
.var 2 is 'res' I
.var 3 is 'i' I
iconst_1
istore 2
iconst_1
istore 3
L14:
iload 3
iload 1
iconst_1
iadd
if_icmpge L15
iload 2
iload 3
imul
istore 2
iload 3
iconst_1
iadd
istore 3
goto L14
L15:
iload 2
ireturn
.end method
