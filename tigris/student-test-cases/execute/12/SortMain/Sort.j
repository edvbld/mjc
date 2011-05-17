.class 'Sort'
.super java/lang/Object
.field private 'sortVar' LSort;
.field private 'data' [I
.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method
.method public init(I)[I
.limit locals 6
.limit stack 6
.var 0 is <this> LSort;
.var 1 is 'ett' I
.var 2 is 'i' I
.var 3 is 'j' I
.var 4 is 'temp' I
.var 5 is 'special_pos' I
bipush 55
istore 5
aload 0
bipush 100
newarray int
putfield Sort/data [I
iconst_0
istore 2
L0:
iload 2
aload 0
getfield Sort/data [I
arraylength
if_icmpge L1
iload 2
iload 5
if_icmplt L4
iconst_0
goto L5
L4:
iconst_1
L5:
ifne L2
aload 0
getfield Sort/data [I
iload 2
iload 2
ldc 5235234
newarray int
arraylength
ldc 5235234
iload 2
imul
isub
imul
iconst_1
iadd
iastore
goto L3
L2:
aload 0
getfield Sort/data [I
iload 2
ldc 2147483647
iastore
L3:
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
aload 0
getfield Sort/data [I
bipush 22
ldc 2147483647
iconst_1
iadd
iastore
iconst_0
istore 2
iconst_0
istore 3
L6:
iload 2
aload 0
getfield Sort/data [I
arraylength
if_icmpge L7
iconst_0
istore 3
L8:
iload 3
aload 0
getfield Sort/data [I
arraylength
iconst_1
isub
if_icmpge L9
aload 0
getfield Sort/data [I
iload 3
iaload
aload 0
getfield Sort/data [I
iload 3
iaload
if_icmpge L10
aload 0
getfield Sort/data [I
iload 3
iaload
istore 4
aload 0
getfield Sort/data [I
iload 3
aload 0
getfield Sort/data [I
iload 3
iconst_1
iadd
iaload
iastore
aload 0
getfield Sort/data [I
iload 3
iconst_1
iadd
iload 4
iastore
goto L11
L10:
L11:
iload 3
iconst_1
iadd
istore 3
goto L8
L9:
iload 2
iconst_1
iadd
istore 2
goto L6
L7:
getstatic java/lang/System/out Ljava/io/PrintStream;
aload 0
getfield Sort/data [I
iconst_0
iaload
ldc 2147483647
iadd
iconst_1
iadd
invokevirtual java/io/PrintStream/println(I)V
aload 0
getfield Sort/data [I
areturn
.end method
.method public bool()Z
.limit locals 1
.limit stack 1
.var 0 is <this> LSort;
iconst_1
ireturn
.end method
