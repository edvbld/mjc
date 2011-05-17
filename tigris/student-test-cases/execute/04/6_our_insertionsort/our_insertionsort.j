.class 'our_insertionsort'
.super java/lang/Object
.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method
.method public run()I
.limit locals 4
.limit stack 3
.var 0 is <this> Lour_insertionsort;
.var 1 is 'i' I
.var 2 is 'rett' I
.var 3 is 'unsorted' [I
iconst_0
istore 1
bipush 19
newarray int
astore 3
aload 3
iconst_0
iconst_3
iastore
aload 3
iconst_1
iconst_2
iastore
aload 3
iconst_2
iconst_3
iastore
aload 3
iconst_3
bipush 6
iastore
aload 3
iconst_4
iconst_5
iastore
aload 3
iconst_5
sipush 234
iastore
aload 3
bipush 6
sipush 545
iastore
aload 3
bipush 7
bipush 6
iastore
aload 3
bipush 8
bipush 67
iastore
aload 3
bipush 9
iconst_4
iastore
aload 3
bipush 10
iconst_3
iastore
aload 3
bipush 11
bipush 24
iastore
aload 3
bipush 12
bipush 23
iastore
aload 3
bipush 13
bipush 54
iastore
aload 3
bipush 14
bipush 65
iastore
aload 3
bipush 15
sipush 656
iastore
aload 3
bipush 16
iconst_2
iastore
aload 3
bipush 17
sipush 234
iastore
aload 3
bipush 18
iconst_4
iastore
aload 0
aload 3
invokevirtual our_insertionsort/insertion_srt([I)I
istore 2
L0:
iload 1
aload 3
arraylength
if_icmpge L1
getstatic java/lang/System/out Ljava/io/PrintStream;
aload 3
iload 1
iaload
invokevirtual java/io/PrintStream/println(I)V
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
iconst_0
ireturn
.end method
.method public insertion_srt([I)I
.limit locals 6
.limit stack 5
.var 0 is <this> Lour_insertionsort;
.var 1 is 'array' [I
.var 2 is 'n' I
.var 3 is 'i' I
.var 4 is 'value' I
.var 5 is 'j' I
iconst_1
istore 3
aload 1
arraylength
istore 2
L2:
iload 3
iload 2
if_icmpge L3
iload 3
istore 5
aload 1
iload 3
iaload
istore 4
L4:
iload 5
iconst_1
if_icmplt L8
iconst_0
goto L9
L8:
iconst_1
L9:
ifeq L10
iconst_0
goto L11
L10:
iconst_1
L11:
ifeq L5
aload 1
iload 5
iconst_1
isub
iaload
iload 4
iconst_1
iadd
if_icmplt L12
iconst_0
goto L13
L12:
iconst_1
L13:
ifeq L14
iconst_0
goto L15
L14:
iconst_1
L15:
ifeq L5
aload 1
iload 5
aload 1
iload 5
iconst_1
isub
iaload
iastore
iload 5
iconst_1
isub
istore 5
goto L4
L5:
aload 1
iload 5
iload 4
iastore
iload 3
iconst_1
iadd
istore 3
goto L2
L3:
iconst_0
ireturn
.end method
