.class 'makeList'
.super java/lang/Object
.field private 'a' [I
.field private 'k' I
.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method
.method public f(I)I
.limit locals 2
.limit stack 3
.var 0 is <this> LmakeList;
.var 1 is 'x' I
aload 0
bipush 20
newarray int
putfield makeList/a [I
aload 0
getfield makeList/a [I
iconst_0
bipush 20
iastore
aload 0
getfield makeList/a [I
iconst_1
bipush 19
iastore
aload 0
getfield makeList/a [I
iconst_2
bipush 18
iastore
aload 0
getfield makeList/a [I
iconst_3
bipush 17
iastore
aload 0
getfield makeList/a [I
iconst_4
bipush 16
iastore
aload 0
getfield makeList/a [I
iconst_5
bipush 15
iastore
aload 0
getfield makeList/a [I
bipush 6
bipush 14
iastore
aload 0
getfield makeList/a [I
bipush 7
bipush 13
iastore
aload 0
getfield makeList/a [I
bipush 8
bipush 12
iastore
aload 0
getfield makeList/a [I
bipush 9
bipush 11
iastore
aload 0
getfield makeList/a [I
bipush 10
bipush 10
iastore
aload 0
getfield makeList/a [I
bipush 11
bipush 9
iastore
aload 0
getfield makeList/a [I
bipush 12
bipush 8
iastore
aload 0
getfield makeList/a [I
bipush 13
bipush 7
iastore
aload 0
getfield makeList/a [I
bipush 14
bipush 6
iastore
aload 0
getfield makeList/a [I
bipush 15
iconst_5
iastore
aload 0
getfield makeList/a [I
bipush 16
iconst_4
iastore
aload 0
getfield makeList/a [I
bipush 17
iconst_3
iastore
aload 0
getfield makeList/a [I
bipush 18
iconst_2
iastore
aload 0
getfield makeList/a [I
bipush 19
iconst_1
iastore
aload 0
aload 0
invokevirtual makeList/print()I
putfield makeList/k I
aload 0
aload 0
invokevirtual makeList/sort()I
putfield makeList/k I
aload 0
aload 0
invokevirtual makeList/print()I
putfield makeList/k I
iconst_1
ireturn
.end method
.method public sort()I
.limit locals 4
.limit stack 4
.var 0 is <this> LmakeList;
.var 1 is 'x' I
.var 2 is 'y' I
.var 3 is 't' I
iconst_0
istore 1
iconst_0
istore 2
iconst_0
istore 3
L0:
iload 1
aload 0
getfield makeList/a [I
arraylength
if_icmpge L1
L2:
iload 2
aload 0
getfield makeList/a [I
arraylength
if_icmpge L3
aload 0
getfield makeList/a [I
iload 1
iaload
aload 0
getfield makeList/a [I
iload 2
iaload
if_icmpge L4
aload 0
getfield makeList/a [I
iload 1
iaload
istore 3
aload 0
getfield makeList/a [I
iload 1
aload 0
getfield makeList/a [I
iload 2
iaload
iastore
aload 0
getfield makeList/a [I
iload 2
iload 3
iastore
goto L5
L4:
iconst_0
istore 3
L5:
iload 2
iconst_1
iadd
istore 2
goto L2
L3:
iconst_0
istore 2
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
iconst_1
ireturn
.end method
.method public print()I
.limit locals 2
.limit stack 3
.var 0 is <this> LmakeList;
.var 1 is 'counter' I
iconst_0
istore 1
L6:
iload 1
aload 0
getfield makeList/a [I
arraylength
if_icmpge L7
getstatic java/lang/System/out Ljava/io/PrintStream;
aload 0
getfield makeList/a [I
iload 1
iaload
invokevirtual java/io/PrintStream/println(I)V
iload 1
iconst_1
iadd
istore 1
goto L6
L7:
iconst_1
ireturn
.end method
