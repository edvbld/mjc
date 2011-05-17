.class 'DD'
.super java/lang/Object
.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method
.method public DD()I
.limit locals 5
.limit stack 6
.var 0 is <this> LDD;
.var 1 is 'array' [I
.var 2 is 'k' I
.var 3 is 'i' I
.var 4 is 'bsort' LBSort;
bipush 10
newarray int
astore 1
iconst_5
istore 2
iconst_0
istore 3
L2:
iload 3
aload 1
arraylength
if_icmpge L3
aload 1
iload 3
iload 2
iastore
iload 2
iconst_1
isub
istore 2
iload 3
iconst_1
iadd
istore 3
goto L2
L3:
new 'A'
dup
invokespecial A/<init>()V
new 'A'
dup
invokespecial A/<init>()V
iconst_0
invokevirtual A/a(LA;Z)LA;
new 'A'
dup
invokespecial A/<init>()V
iconst_0
invokevirtual A/b(LA;Z)LB;
invokevirtual B/bsort()LBSort;
astore 4
new 'BSort'
dup
invokespecial BSort/<init>()V
aload 4
new 'BSort'
dup
invokespecial BSort/<init>()V
aload 4
aload 1
invokevirtual BSort/sort([I)[I
invokevirtual BSort/rSort([I)[I
invokevirtual BSort/sort([I)[I
invokevirtual BSort/rSort([I)[I
astore 1
iconst_0
istore 3
L4:
iload 3
aload 1
arraylength
if_icmplt L8
iconst_0
goto L9
L8:
iconst_1
L9:
ifeq L5
aload 1
iload 3
iaload
sipush 1000
if_icmplt L10
iconst_0
goto L11
L10:
iconst_1
L11:
ifeq L5
getstatic java/lang/System/out Ljava/io/PrintStream;
aload 1
iload 3
iaload
invokevirtual java/io/PrintStream/println(I)V
iload 3
iconst_1
iadd
istore 3
goto L4
L5:
iconst_0
ireturn
.end method
