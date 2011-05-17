.class 'BSort'
.super java/lang/Object
.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method
.method public sort([I)[I
.limit locals 5
.limit stack 5
.var 0 is <this> LBSort;
.var 1 is 'array' [I
.var 2 is 'i' I
.var 3 is 'done' Z
.var 4 is 'tmp' I
iconst_0
istore 3
L12:
iload 3
ifne L13
iconst_1
istore 3
iconst_0
istore 2
L14:
iload 2
aload 1
arraylength
iconst_1
isub
if_icmplt L18
iconst_0
goto L19
L18:
iconst_1
L19:
ifeq L15
aload 1
iload 2
iconst_1
iadd
iaload
sipush 1000
if_icmplt L20
iconst_0
goto L21
L20:
iconst_1
L21:
ifeq L15
aload 1
iload 2
iaload
aload 1
iload 2
iconst_1
iadd
iaload
if_icmpge L22
goto L23
L22:
aload 1
iload 2
iaload
istore 4
aload 1
iload 2
aload 1
iload 2
iconst_1
iadd
iaload
iastore
aload 1
iload 2
iconst_1
iadd
iload 4
iastore
iconst_0
istore 3
L23:
iload 2
iconst_1
iadd
istore 2
goto L14
L15:
goto L12
L13:
aload 1
areturn
.end method
.method public rSort([I)[I
.limit locals 4
.limit stack 5
.var 0 is <this> LBSort;
.var 1 is 'array' [I
.var 2 is 'i' I
.var 3 is 'tmp' I
aload 0
aload 1
invokevirtual BSort/sort([I)[I
astore 1
iconst_0
istore 2
L24:
iload 2
iconst_2
imul
aload 1
arraylength
if_icmpge L25
aload 1
iload 2
iaload
istore 3
aload 1
iload 2
aload 1
aload 1
arraylength
iconst_1
isub
iload 2
isub
iaload
iastore
aload 1
aload 1
arraylength
iconst_1
isub
iload 2
isub
iload 3
iastore
iload 2
iconst_1
iadd
istore 2
goto L24
L25:
aload 1
areturn
.end method
