.class 'Mergesort'
.super java/lang/Object
.var 2 is 'a' [I
.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method
.method public mergesort([I)[I
.limit locals 3
.limit stack 6
.var 0 is <this> LMergesort;
.var 1 is 'ar' [I
.var 2 is 'tmp' I
aload 0
aload 1
putfield Mergesort/a [I
aload 0
iconst_0
aload 0
getfield Mergesort/a [I
arraylength
invokevirtual Mergesort/sort(II)I
istore 2
aload 0
aload 0
getfield Mergesort/a [I
invokevirtual Mergesort/print([I)I
istore 2
aload 0
getfield Mergesort/a [I
areturn
.end method
.method public sort(II)I
.limit locals 6
.limit stack 8
.var 0 is <this> LMergesort;
.var 1 is 's' I
.var 2 is 't' I
.var 3 is 'len' I
.var 4 is 'av' I
.var 5 is 'tmp' I
iload 2
iload 1
isub
istore 3
iload 3
iconst_2
if_icmpge L0
iload 3
istore 3
goto L1
L0:
aload 0
iload 1
iload 2
invokevirtual Mergesort/avg(II)I
istore 4
aload 0
iload 1
iload 4
invokevirtual Mergesort/sort(II)I
istore 5
aload 0
iload 4
iload 2
invokevirtual Mergesort/sort(II)I
istore 5
aload 0
iload 1
iload 4
iload 2
invokevirtual Mergesort/merge(III)I
istore 5
L1:
iconst_0
ireturn
.end method
.method public merge(III)I
.limit locals 9
.limit stack 4
.var 0 is <this> LMergesort;
.var 1 is 's' I
.var 2 is 'm' I
.var 3 is 't' I
.var 4 is 'tmp' I
.var 5 is 'i' I
.var 6 is 'j' I
.var 7 is 'c' I
.var 8 is 'ta' [I
iload 3
iload 1
isub
newarray int
astore 8
iconst_0
istore 7
iload 1
istore 5
iload 2
istore 6
L2:
iload 5
iload 2
if_icmplt L6
iconst_0
goto L7
L6:
iconst_1
L7:
ifeq L3
iload 6
iload 3
if_icmplt L8
iconst_0
goto L9
L8:
iconst_1
L9:
ifeq L3
aload 0
getfield Mergesort/a [I
iload 5
iaload
aload 0
getfield Mergesort/a [I
iload 6
iaload
if_icmpge L10
aload 8
iload 7
aload 0
getfield Mergesort/a [I
iload 5
iaload
iastore
iload 5
iconst_1
iadd
istore 5
iload 7
iconst_1
iadd
istore 7
goto L11
L10:
aload 8
iload 7
aload 0
getfield Mergesort/a [I
iload 6
iaload
iastore
iload 6
iconst_1
iadd
istore 6
iload 7
iconst_1
iadd
istore 7
L11:
goto L2
L3:
iload 5
iload 2
if_icmpge L12
L14:
iload 7
iload 3
iload 1
isub
if_icmpge L15
aload 8
iload 7
aload 0
getfield Mergesort/a [I
iload 5
iaload
iastore
iload 5
iconst_1
iadd
istore 5
iload 7
iconst_1
iadd
istore 7
goto L14
L15:
goto L13
L12:
L16:
iload 7
iload 3
iload 1
isub
if_icmpge L17
aload 8
iload 7
aload 0
getfield Mergesort/a [I
iload 6
iaload
iastore
iload 6
iconst_1
iadd
istore 6
iload 7
iconst_1
iadd
istore 7
goto L16
L17:
L13:
iconst_0
istore 7
L18:
iload 7
iload 3
iload 1
isub
if_icmpge L19
aload 0
getfield Mergesort/a [I
iload 1
iload 7
iadd
aload 8
iload 7
iaload
iastore
iload 7
iconst_1
iadd
istore 7
goto L18
L19:
iconst_0
ireturn
.end method
.method public avg(II)I
.limit locals 3
.limit stack 3
.var 0 is <this> LMergesort;
.var 1 is 'a' I
.var 2 is 'b' I
L20:
iload 1
iconst_1
iadd
iload 2
if_icmpge L21
iload 1
iconst_1
iadd
istore 1
iload 2
iconst_1
isub
istore 2
goto L20
L21:
iload 2
ireturn
.end method
.method public print([I)I
.limit locals 3
.limit stack 3
.var 0 is <this> LMergesort;
.var 1 is 'a' [I
.var 2 is 'i' I
iconst_0
istore 2
L22:
iload 2
aload 1
arraylength
if_icmpge L23
getstatic java/lang/System/out Ljava/io/PrintStream;
aload 1
iload 2
iaload
invokevirtual java/io/PrintStream/println(I)V
iload 2
iconst_1
iadd
istore 2
goto L22
L23:
iconst_0
ireturn
.end method
