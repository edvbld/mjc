.class 'Utils'
.super java/lang/Object
.field private 'a' I
.field private 'b' I
.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method
.method public add(II)I
.limit locals 4
.limit stack 4
.var 0 is <this> LUtils;
.var 1 is 'x' I
.var 2 is 'y' I
.var 3 is 'result' I
aload 0
iload 1
putfield Utils/a I
aload 0
iload 2
putfield Utils/b I
L12:
iconst_0
aload 0
getfield Utils/b I
if_icmpge L13
aload 0
aload 0
getfield Utils/b I
iconst_1
isub
putfield Utils/b I
aload 0
aload 0
getfield Utils/a I
iconst_1
iadd
putfield Utils/a I
goto L12
L13:
aload 0
getfield Utils/a I
aload 0
getfield Utils/b I
iadd
istore 3
iload 3
ireturn
.end method
.method public sub(II)I
.limit locals 4
.limit stack 4
.var 0 is <this> LUtils;
.var 1 is 'x' I
.var 2 is 'y' I
.var 3 is 'result' I
aload 0
iload 1
putfield Utils/a I
aload 0
iload 2
putfield Utils/b I
L14:
iconst_0
aload 0
getfield Utils/b I
if_icmpge L15
aload 0
aload 0
getfield Utils/b I
iconst_1
isub
putfield Utils/b I
aload 0
aload 0
getfield Utils/a I
iconst_1
isub
putfield Utils/a I
goto L14
L15:
aload 0
getfield Utils/a I
aload 0
getfield Utils/b I
isub
istore 3
iload 3
ireturn
.end method
.method public sum([I)I
.limit locals 5
.limit stack 6
.var 0 is <this> LUtils;
.var 1 is 'a' [I
.var 2 is 'len' I
.var 3 is 'i' I
.var 4 is 's' I
aload 1
arraylength
istore 2
iconst_0
istore 3
iconst_0
istore 4
L16:
iload 3
iload 2
if_icmpge L17
aload 0
iload 4
aload 1
iload 3
iaload
invokevirtual Utils/add(II)I
istore 4
iload 3
iconst_1
iadd
istore 3
goto L16
L17:
iload 4
ireturn
.end method
.method public range(II)[I
.limit locals 6
.limit stack 4
.var 0 is <this> LUtils;
.var 1 is 'start' I
.var 2 is 'stop' I
.var 3 is 'a' [I
.var 4 is 'len' I
.var 5 is 'i' I
iload 2
iload 1
isub
istore 4
iload 4
newarray int
astore 3
iconst_0
istore 5
L18:
iload 5
iload 4
if_icmpge L19
aload 3
iload 5
iload 5
iload 1
iadd
iastore
iload 5
iconst_1
iadd
istore 5
goto L18
L19:
aload 3
areturn
.end method
