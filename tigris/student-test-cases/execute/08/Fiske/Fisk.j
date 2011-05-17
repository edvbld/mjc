.class 'Fisk'
.super java/lang/Object
.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method
.method public start()I
.limit locals 8
.limit stack 10
.var 0 is <this> LFisk;
.var 1 is 'z' I
.var 2 is '_k_' I
.var 3 is 'y' I
.var 4 is 'tmp' I
.var 5 is 'm' LMatrix;
.var 6 is 'list' [I
.var 7 is 'a' I
bipush 15
istore 1
iconst_3
istore 3
new 'Matrix'
dup
invokespecial Matrix/<init>()V
astore 5
aload 5
invokevirtual Matrix/start()I
istore 4
aload 0
aload 5
iload 1
iconst_1
isub
iload 3
iconst_1
isub
invokevirtual Fisk/fiske2(LMatrix;II)[I
astore 6
iconst_0
istore 7
L0:
iload 7
iload 3
if_icmpge L1
getstatic java/lang/System/out Ljava/io/PrintStream;
aload 6
iload 7
iaload
invokevirtual java/io/PrintStream/println(I)V
iload 7
iconst_1
iadd
istore 7
goto L0
L1:
iconst_0
ireturn
.end method
.method public fiske2(LMatrix;II)[I
.limit locals 14
.limit stack 16
.var 0 is <this> LFisk;
.var 1 is 'm' LMatrix;
.var 2 is 'n' I
.var 3 is 'k' I
.var 4 is 'z' I
.var 5 is 'y' I
.var 6 is 'jamfor' I
.var 7 is 'j' I
.var 8 is 'i' I
.var 9 is 'carp' I
.var 10 is 'list' [I
.var 11 is 'plats' I
.var 12 is 'b' I
.var 13 is 'a' I
bipush 15
istore 4
iconst_3
istore 5
aload 1
iload 2
iload 3
invokevirtual Matrix/get(II)I
istore 6
iload 3
istore 7
L2:
iconst_0
iload 7
if_icmpge L3
iload 2
istore 8
L4:
iconst_0
iload 8
iload 3
iload 7
isub
isub
if_icmpge L5
aload 1
aload 1
iload 8
iload 7
invokevirtual Matrix/get(II)I
iload 6
invokevirtual Matrix/max(II)I
istore 6
aload 1
iload 8
iconst_1
isub
iload 7
iconst_1
isub
iload 6
aload 1
iload 8
iconst_1
isub
iload 7
iconst_1
isub
invokevirtual Matrix/get(II)I
iadd
invokevirtual Matrix/set(III)I
istore 9
iload 8
iconst_1
isub
istore 8
goto L4
L5:
iload 7
iconst_1
isub
istore 7
goto L2
L3:
iload 3
iconst_1
iadd
newarray int
astore 10
iconst_0
istore 11
iconst_0
istore 12
L6:
iload 12
iload 3
iconst_1
iadd
if_icmpge L7
aload 1
iload 11
iconst_1
iadd
iload 12
invokevirtual Matrix/get(II)I
istore 6
iload 11
iconst_1
iadd
istore 13
L8:
iload 13
iload 2
iload 3
iload 12
isub
iconst_1
isub
isub
if_icmpge L9
aload 1
aload 1
iload 13
iload 12
invokevirtual Matrix/get(II)I
iload 6
invokevirtual Matrix/max(II)I
istore 6
iload 6
aload 1
iload 13
iload 12
invokevirtual Matrix/get(II)I
if_icmplt L14
iconst_0
goto L15
L14:
iconst_1
L15:
ifeq L16
iconst_0
goto L17
L16:
iconst_1
L17:
ifeq L10
aload 1
iload 13
iload 12
invokevirtual Matrix/get(II)I
iload 6
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
ifeq L10
iload 13
istore 11
goto L11
L10:
L11:
iload 13
iconst_1
iadd
istore 13
goto L8
L9:
aload 10
iload 12
iload 11
iconst_1
iadd
iastore
iload 12
iconst_1
iadd
istore 12
goto L6
L7:
aload 10
areturn
.end method
