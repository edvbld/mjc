.class 'Stack'
.super java/lang/Object
.field private 'stack' [I
.field private 'size' I
.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method
.method public init()I
.limit locals 1
.limit stack 2
.var 0 is <this> LStack;
aload 0
iconst_1
newarray int
putfield Stack/stack [I
aload 0
iconst_0
putfield Stack/size I
iconst_0
ireturn
.end method
.method public isEmpty()Z
.limit locals 2
.limit stack 5
.var 0 is <this> LStack;
.var 1 is 'i' Z
new 'Math'
dup
invokespecial Math/<init>()V
iconst_0
aload 0
getfield Stack/size I
invokevirtual Math/equal(II)Z
ifeq L0
iconst_1
istore 1
goto L1
L0:
iconst_0
istore 1
L1:
iload 1
ireturn
.end method
.method public push(I)I
.limit locals 4
.limit stack 6
.var 0 is <this> LStack;
.var 1 is 'push' I
.var 2 is 'i' I
.var 3 is 'tmp' [I
iconst_0
istore 2
new 'Math'
dup
invokespecial Math/<init>()V
aload 0
getfield Stack/size I
aload 0
getfield Stack/stack [I
arraylength
invokevirtual Math/equal(II)Z
ifeq L2
iconst_2
aload 0
getfield Stack/stack [I
arraylength
imul
newarray int
astore 3
L4:
iload 2
aload 0
getfield Stack/stack [I
arraylength
if_icmpge L5
aload 3
iload 2
aload 0
getfield Stack/stack [I
iload 2
iaload
iastore
iload 2
iconst_1
iadd
istore 2
goto L4
L5:
aload 0
aload 3
putfield Stack/stack [I
goto L3
L2:
L3:
aload 0
getfield Stack/stack [I
aload 0
getfield Stack/size I
iload 1
iastore
aload 0
aload 0
getfield Stack/size I
iconst_1
iadd
putfield Stack/size I
iload 1
ireturn
.end method
.method public pop()I
.limit locals 1
.limit stack 3
.var 0 is <this> LStack;
aload 0
aload 0
getfield Stack/size I
iconst_m1
iadd
putfield Stack/size I
aload 0
getfield Stack/stack [I
aload 0
getfield Stack/size I
iaload
ireturn
.end method
.method public peek()I
.limit locals 1
.limit stack 3
.var 0 is <this> LStack;
aload 0
getfield Stack/stack [I
aload 0
getfield Stack/size I
iconst_1
isub
iaload
ireturn
.end method
