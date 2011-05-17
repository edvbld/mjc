.class 'booleanarray'
.super java/lang/Object
.field private 'array' [I
.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method
.method public create(I)Z
.limit locals 2
.limit stack 2
.var 0 is <this> Lbooleanarray;
.var 1 is 'len' I
aload 0
iload 1
newarray int
putfield booleanarray/array [I
iconst_1
ireturn
.end method
.method public getLength()I
.limit locals 1
.limit stack 2
.var 0 is <this> Lbooleanarray;
aload 0
getfield booleanarray/array [I
arraylength
ireturn
.end method
.method public set(IZ)Z
.limit locals 4
.limit stack 3
.var 0 is <this> Lbooleanarray;
.var 1 is 'pos' I
.var 2 is 'value' Z
.var 3 is 'success' Z
iconst_0
iload 1
iconst_1
iadd
if_icmplt L8
iconst_0
goto L9
L8:
iconst_1
L9:
ifeq L4
iload 1
aload 0
invokevirtual booleanarray/getLength()I
if_icmplt L10
iconst_0
goto L11
L10:
iconst_1
L11:
ifeq L4
iload 2
ifeq L12
aload 0
getfield booleanarray/array [I
iload 1
iconst_1
iastore
goto L13
L12:
aload 0
getfield booleanarray/array [I
iload 1
iconst_0
iastore
L13:
iconst_1
istore 3
goto L5
L4:
iconst_0
istore 3
L5:
iload 3
ireturn
.end method
.method public get(I)Z
.limit locals 3
.limit stack 2
.var 0 is <this> Lbooleanarray;
.var 1 is 'pos' I
.var 2 is 'retval' Z
aload 0
getfield booleanarray/array [I
iload 1
iaload
iconst_1
if_icmpge L14
iconst_0
istore 2
goto L15
L14:
iconst_1
istore 2
L15:
iload 2
ireturn
.end method
.method public getArray()[I
.limit locals 1
.limit stack 2
.var 0 is <this> Lbooleanarray;
aload 0
getfield booleanarray/array [I
areturn
.end method
