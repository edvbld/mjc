.class 'PQ'
.super java/lang/Object
.field private 'dummy' I
.field private 'pq' [I
.field private 'N' I
.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method
.method public init(I)I
.limit locals 2
.limit stack 2
.var 0 is <this> LPQ;
.var 1 is 'size' I
aload 0
iload 1
iconst_1
iadd
newarray int
putfield PQ/pq [I
aload 0
iconst_0
putfield PQ/N I
iconst_0
ireturn
.end method
.method public isEmpty()Z
.limit locals 1
.limit stack 4
.var 0 is <this> LPQ;
iconst_0
aload 0
getfield PQ/N I
if_icmplt L0
iconst_0
goto L1
L0:
iconst_1
L1:
ifeq L2
iconst_0
goto L3
L2:
iconst_1
L3:
ireturn
.end method
.method public size()I
.limit locals 1
.limit stack 2
.var 0 is <this> LPQ;
aload 0
getfield PQ/N I
ireturn
.end method
.method public arrayCopy([I[II)I
.limit locals 5
.limit stack 4
.var 0 is <this> LPQ;
.var 1 is 'src' [I
.var 2 is 'dst' [I
.var 3 is 'n' I
.var 4 is 'i' I
iconst_0
istore 4
L4:
iload 4
iload 3
if_icmpge L5
aload 2
iload 4
aload 1
iload 4
iaload
iastore
iload 4
iconst_1
iadd
istore 4
goto L4
L5:
iconst_0
ireturn
.end method
.method public insert(I)I
.limit locals 3
.limit stack 10
.var 0 is <this> LPQ;
.var 1 is 'item' I
.var 2 is 'newPq' [I
aload 0
getfield PQ/pq [I
arraylength
iconst_2
isub
aload 0
getfield PQ/N I
if_icmpge L6
iconst_2
aload 0
getfield PQ/N I
iconst_1
iadd
imul
newarray int
astore 2
aload 0
aload 0
aload 0
getfield PQ/pq [I
aload 2
aload 0
getfield PQ/N I
iconst_1
iadd
invokevirtual PQ/arrayCopy([I[II)I
putfield PQ/dummy I
aload 0
aload 2
putfield PQ/pq [I
goto L7
L6:
L7:
aload 0
aload 0
getfield PQ/N I
iconst_1
iadd
putfield PQ/N I
aload 0
getfield PQ/pq [I
aload 0
getfield PQ/N I
iload 1
iastore
aload 0
aload 0
aload 0
getfield PQ/N I
invokevirtual PQ/swim(I)I
putfield PQ/dummy I
iconst_0
ireturn
.end method
.method public delMax()I
.limit locals 1
.limit stack 6
.var 0 is <this> LPQ;
aload 0
aload 0
iconst_1
aload 0
getfield PQ/N I
invokevirtual PQ/exch(II)I
putfield PQ/dummy I
aload 0
aload 0
iconst_1
aload 0
getfield PQ/N I
iconst_1
isub
invokevirtual PQ/sink(II)I
putfield PQ/dummy I
aload 0
aload 0
getfield PQ/N I
iconst_1
isub
putfield PQ/N I
aload 0
getfield PQ/pq [I
aload 0
getfield PQ/N I
iconst_1
iadd
iaload
ireturn
.end method
.method public swim(I)I
.limit locals 2
.limit stack 8
.var 0 is <this> LPQ;
.var 1 is 'k' I
L8:
iconst_1
iload 1
if_icmplt L12
iconst_0
goto L13
L12:
iconst_1
L13:
ifeq L9
aload 0
aload 0
iload 1
iconst_2
invokevirtual PQ/div(II)I
iload 1
invokevirtual PQ/less(II)Z
ifeq L9
aload 0
aload 0
iload 1
aload 0
iload 1
iconst_2
invokevirtual PQ/div(II)I
invokevirtual PQ/exch(II)I
putfield PQ/dummy I
aload 0
iload 1
iconst_2
invokevirtual PQ/div(II)I
istore 1
goto L8
L9:
iconst_0
ireturn
.end method
.method public sink(II)I
.limit locals 5
.limit stack 6
.var 0 is <this> LPQ;
.var 1 is 'k' I
.var 2 is 'N' I
.var 3 is 'done' Z
.var 4 is 'j' I
iconst_0
istore 3
L14:
iload 3
ifeq L18
iconst_0
goto L19
L18:
iconst_1
L19:
ifeq L15
iconst_2
iload 1
imul
iload 2
iconst_1
iadd
if_icmplt L20
iconst_0
goto L21
L20:
iconst_1
L21:
ifeq L15
iconst_2
iload 1
imul
istore 4
iload 4
iload 2
if_icmplt L26
iconst_0
goto L27
L26:
iconst_1
L27:
ifeq L22
aload 0
iload 4
iload 4
iconst_1
iadd
invokevirtual PQ/less(II)Z
ifeq L22
iload 4
iconst_1
iadd
istore 4
goto L23
L22:
L23:
aload 0
iload 1
iload 4
invokevirtual PQ/less(II)Z
ifne L28
iconst_1
istore 3
goto L29
L28:
aload 0
aload 0
iload 1
iload 4
invokevirtual PQ/exch(II)I
putfield PQ/dummy I
iload 4
istore 1
L29:
goto L14
L15:
iconst_0
ireturn
.end method
.method public less(II)Z
.limit locals 3
.limit stack 3
.var 0 is <this> LPQ;
.var 1 is 'i' I
.var 2 is 'j' I
aload 0
getfield PQ/pq [I
iload 1
iaload
aload 0
getfield PQ/pq [I
iload 2
iaload
if_icmplt L30
iconst_0
goto L31
L30:
iconst_1
L31:
ireturn
.end method
.method public exch(II)I
.limit locals 4
.limit stack 4
.var 0 is <this> LPQ;
.var 1 is 'i' I
.var 2 is 'j' I
.var 3 is 'tmp' I
aload 0
getfield PQ/pq [I
iload 1
iaload
istore 3
aload 0
getfield PQ/pq [I
iload 1
aload 0
getfield PQ/pq [I
iload 2
iaload
iastore
aload 0
getfield PQ/pq [I
iload 2
iload 3
iastore
iconst_0
ireturn
.end method
.method public div(II)I
.limit locals 5
.limit stack 4
.var 0 is <this> LPQ;
.var 1 is 'nominator' I
.var 2 is 'denominator' I
.var 3 is 'changeSign' I
.var 4 is 'current' I
iconst_1
istore 3
iload 1
iconst_0
if_icmpge L32
iload 3
iconst_0
iconst_1
isub
imul
istore 3
iconst_0
iload 1
isub
istore 1
goto L33
L32:
L33:
iload 2
iconst_0
if_icmpge L34
iload 3
iconst_0
iconst_1
isub
imul
istore 3
iconst_0
iload 2
isub
istore 2
goto L35
L34:
L35:
iconst_1
istore 4
L36:
iload 4
iload 2
imul
iconst_1
isub
iload 1
if_icmpge L37
iload 4
iconst_1
iadd
istore 4
goto L36
L37:
iload 3
iload 4
iconst_1
isub
imul
ireturn
.end method
.method public test()I
.limit locals 3
.limit stack 5
.var 0 is <this> LPQ;
.var 1 is 'c' I
.var 2 is 'i' I
aload 0
aload 0
bipush 10
invokevirtual PQ/init(I)I
putfield PQ/dummy I
iconst_0
istore 1
L38:
iload 1
iconst_3
if_icmpge L39
iconst_0
istore 2
L40:
iload 2
sipush 10000
if_icmpge L41
aload 0
aload 0
iload 2
iload 1
bipush 17
iadd
iconst_3
imul
imul
iload 2
isub
invokevirtual PQ/insert(I)I
putfield PQ/dummy I
iload 2
iconst_1
iadd
istore 2
goto L40
L41:
L42:
aload 0
invokevirtual PQ/isEmpty()Z
ifne L43
getstatic java/lang/System/out Ljava/io/PrintStream;
aload 0
invokevirtual PQ/delMax()I
invokevirtual java/io/PrintStream/println(I)V
goto L42
L43:
iload 1
iconst_1
iadd
istore 1
goto L38
L39:
iconst_0
iconst_1
isub
ireturn
.end method
