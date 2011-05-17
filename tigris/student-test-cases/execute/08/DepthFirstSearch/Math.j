.class 'Math'
.super java/lang/Object
.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method
.method public equal(II)Z
.limit locals 4
.limit stack 4
.var 0 is <this> LMath;
.var 1 is 'i' I
.var 2 is 'j' I
.var 3 is 'kase' Z
iload 1
iload 2
if_icmplt L18
iconst_0
goto L19
L18:
iconst_1
L19:
ifeq L20
iconst_0
goto L21
L20:
iconst_1
L21:
ifeq L14
iload 2
iload 1
if_icmplt L22
iconst_0
goto L23
L22:
iconst_1
L23:
ifeq L24
iconst_0
goto L25
L24:
iconst_1
L25:
ifeq L14
iconst_1
istore 3
goto L15
L14:
iconst_0
istore 3
L15:
iload 3
ireturn
.end method
