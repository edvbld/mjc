.class 'Good1Sorter'
.super java/lang/Object
.field private 'refr' I
.field private 'lb' I
.field private 'hb' I
.field private 'tmp' I
.field private 'dump' I
.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method
.method public testing()I
.limit locals 3
.limit stack 9
.var 0 is <this> LGood1Sorter;
.var 1 is 'a' [I
.var 2 is 'waste' I
iconst_5
newarray int
astore 1
aload 1
iconst_0
bipush 7
iastore
aload 1
iconst_1
iconst_2
iastore
aload 1
iconst_2
iconst_1
iastore
aload 1
iconst_3
iconst_3
iastore
aload 1
iconst_4
bipush 10
iastore
aload 0
aload 1
invokevirtual Good1Sorter/printArray([I)I
istore 2
aload 0
aload 1
iconst_0
iconst_4
invokevirtual Good1Sorter/quickSort([III)I
istore 2
aload 0
aload 1
invokevirtual Good1Sorter/printArray([I)I
istore 2
aload 0
aload 1
iconst_0
aload 1
arraylength
iconst_1
isub
invokevirtual Good1Sorter/quickSort([III)I
istore 2
aload 0
aload 1
invokevirtual Good1Sorter/printArray([I)I
istore 2
iload 2
ireturn
.end method
.method public printArray([I)I
.limit locals 3
.limit stack 3
.var 0 is <this> LGood1Sorter;
.var 1 is 'a' [I
.var 2 is 'i' I
iconst_0
istore 2
L0:
iload 2
aload 1
arraylength
if_icmpge L1
getstatic java/lang/System/out Ljava/io/PrintStream;
aload 1
iload 2
iaload
invokevirtual java/io/PrintStream/println(I)V
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
iload 2
ireturn
.end method
.method public quickSort([III)I
.limit locals 5
.limit stack 9
.var 0 is <this> LGood1Sorter;
.var 1 is 'array' [I
.var 2 is 'start' I
.var 3 is 'end' I
.var 4 is 'ret' I
iconst_0
istore 4
iload 3
iload 2
isub
iconst_1
if_icmpge L2
iconst_0
istore 4
goto L3
L2:
aload 0
aload 1
iload 2
iaload
putfield Good1Sorter/refr I
aload 0
iload 2
putfield Good1Sorter/lb I
aload 0
iload 3
iconst_1
iadd
putfield Good1Sorter/hb I
L4:
aload 0
getfield Good1Sorter/lb I
iconst_1
iadd
aload 0
getfield Good1Sorter/hb I
if_icmpge L5
aload 1
aload 0
getfield Good1Sorter/lb I
iconst_1
iadd
iaload
aload 0
getfield Good1Sorter/refr I
isub
iconst_0
if_icmpge L6
aload 0
aload 0
getfield Good1Sorter/lb I
iconst_1
iadd
putfield Good1Sorter/lb I
goto L7
L6:
aload 0
aload 0
getfield Good1Sorter/hb I
iconst_1
isub
putfield Good1Sorter/hb I
aload 0
aload 1
aload 0
getfield Good1Sorter/hb I
iaload
putfield Good1Sorter/tmp I
aload 1
aload 0
getfield Good1Sorter/hb I
aload 1
aload 0
getfield Good1Sorter/lb I
iconst_1
iadd
iaload
iastore
aload 1
aload 0
getfield Good1Sorter/lb I
iconst_1
iadd
aload 0
getfield Good1Sorter/tmp I
iastore
L7:
goto L4
L5:
aload 1
iload 2
aload 1
aload 0
getfield Good1Sorter/lb I
iaload
iastore
aload 1
aload 0
getfield Good1Sorter/lb I
aload 0
getfield Good1Sorter/refr I
iastore
aload 0
aload 0
aload 1
iload 2
aload 0
getfield Good1Sorter/lb I
iconst_1
isub
invokevirtual Good1Sorter/quickSort([III)I
putfield Good1Sorter/dump I
aload 0
aload 0
aload 1
aload 0
getfield Good1Sorter/lb I
iconst_1
iadd
iload 3
invokevirtual Good1Sorter/quickSort([III)I
putfield Good1Sorter/dump I
iconst_0
istore 4
L3:
iload 4
ireturn
.end method
