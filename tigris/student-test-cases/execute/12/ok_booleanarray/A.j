.class 'A'
.super java/lang/Object
.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method
.method public doStuff()Z
.limit locals 5
.limit stack 5
.var 0 is <this> LA;
.var 1 is 'i' I
.var 2 is 'ba' Lbooleanarray;
.var 3 is 'start' Z
.var 4 is 'junk' Z
iconst_0
istore 1
new 'booleanarray'
dup
invokespecial booleanarray/<init>()V
astore 2
iconst_1
istore 3
aload 2
bipush 10
invokevirtual booleanarray/create(I)Z
istore 4
L16:
iload 1
aload 2
invokevirtual booleanarray/getLength()I
if_icmplt L20
iconst_0
goto L21
L20:
iconst_1
L21:
ifeq L17
aload 2
iload 1
iload 3
invokevirtual booleanarray/set(IZ)Z
ifeq L17
iload 3
ifeq L22
iconst_0
goto L23
L22:
iconst_1
L23:
istore 3
iload 1
iconst_1
iadd
istore 1
goto L16
L17:
aload 2
iconst_2
invokevirtual booleanarray/get(I)Z
istore 4
aload 2
iconst_2
iconst_0
invokevirtual booleanarray/set(IZ)Z
ifeq L24
aload 2
iconst_2
invokevirtual booleanarray/get(I)Z
istore 4
goto L25
L24:
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc 43110
invokevirtual java/io/PrintStream/println(I)V
L25:
aload 2
bipush 8
invokevirtual booleanarray/get(I)Z
ireturn
.end method
