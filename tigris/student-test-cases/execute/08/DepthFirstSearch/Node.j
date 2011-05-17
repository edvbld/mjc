.class 'Node'
.super java/lang/Object
.field private '_a_0' LNode;
.field private '_a_1' LNode;
.field private '_a_2' LNode;
.field private '_a_3' LNode;
.field private 'parent' LNode;
.field private 'numChilds' I
.field private 'value' I
.field private 'id' I
.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method
.method public init4(LNode;LNode;LNode;LNode;II)LNode;
.limit locals 7
.limit stack 2
.var 0 is <this> LNode;
.var 1 is 'a_0' LNode;
.var 2 is 'a_1' LNode;
.var 3 is 'a_2' LNode;
.var 4 is 'a_3' LNode;
.var 5 is 'val' I
.var 6 is 'iid' I
aload 0
aload 1
putfield Node/_a_0 LNode;
aload 0
aload 2
putfield Node/_a_1 LNode;
aload 0
aload 3
putfield Node/_a_2 LNode;
aload 0
aload 4
putfield Node/_a_3 LNode;
aload 0
iload 5
putfield Node/value I
aload 0
iload 6
putfield Node/id I
aload 0
iconst_4
putfield Node/numChilds I
aload 0
areturn
.end method
.method public init3(LNode;LNode;LNode;II)LNode;
.limit locals 6
.limit stack 2
.var 0 is <this> LNode;
.var 1 is 'a_0' LNode;
.var 2 is 'a_1' LNode;
.var 3 is 'a_2' LNode;
.var 4 is 'val' I
.var 5 is 'iid' I
aload 0
aload 1
putfield Node/_a_0 LNode;
aload 0
aload 2
putfield Node/_a_1 LNode;
aload 0
aload 3
putfield Node/_a_2 LNode;
aload 0
iload 4
putfield Node/value I
aload 0
iload 5
putfield Node/id I
aload 0
iconst_3
putfield Node/numChilds I
aload 0
areturn
.end method
.method public init2(LNode;LNode;II)LNode;
.limit locals 5
.limit stack 2
.var 0 is <this> LNode;
.var 1 is 'a_0' LNode;
.var 2 is 'a_1' LNode;
.var 3 is 'val' I
.var 4 is 'iid' I
aload 0
aload 1
putfield Node/_a_0 LNode;
aload 0
aload 2
putfield Node/_a_1 LNode;
aload 0
iload 3
putfield Node/value I
aload 0
iload 4
putfield Node/id I
aload 0
iconst_2
putfield Node/numChilds I
aload 0
areturn
.end method
.method public init1(LNode;II)LNode;
.limit locals 4
.limit stack 2
.var 0 is <this> LNode;
.var 1 is 'a_0' LNode;
.var 2 is 'val' I
.var 3 is 'iid' I
aload 0
aload 1
putfield Node/_a_0 LNode;
aload 0
iload 2
putfield Node/value I
aload 0
iload 3
putfield Node/id I
aload 0
iconst_1
putfield Node/numChilds I
aload 0
areturn
.end method
.method public init0(II)LNode;
.limit locals 3
.limit stack 2
.var 0 is <this> LNode;
.var 1 is 'val' I
.var 2 is 'iid' I
aload 0
iload 1
putfield Node/value I
aload 0
iload 2
putfield Node/id I
aload 0
iconst_0
putfield Node/numChilds I
aload 0
areturn
.end method
.method public getVal()I
.limit locals 1
.limit stack 2
.var 0 is <this> LNode;
aload 0
getfield Node/value I
ireturn
.end method
.method public getNode(I)LNode;
.limit locals 4
.limit stack 4
.var 0 is <this> LNode;
.var 1 is 'i' I
.var 2 is 'math' LMath;
.var 3 is 'node' LNode;
new 'Math'
dup
invokespecial Math/<init>()V
astore 2
aload 2
iload 1
iconst_0
invokevirtual Math/equal(II)Z
ifeq L6
aload 0
getfield Node/_a_0 LNode;
astore 3
goto L7
L6:
aload 2
iload 1
iconst_1
invokevirtual Math/equal(II)Z
ifeq L8
aload 0
getfield Node/_a_1 LNode;
astore 3
goto L9
L8:
aload 2
iload 1
iconst_2
invokevirtual Math/equal(II)Z
ifeq L10
aload 0
getfield Node/_a_2 LNode;
astore 3
goto L11
L10:
aload 2
iload 1
iconst_3
invokevirtual Math/equal(II)Z
ifeq L12
aload 0
getfield Node/_a_3 LNode;
astore 3
goto L13
L12:
aload 0
astore 3
L13:
L11:
L9:
L7:
aload 3
areturn
.end method
.method public setParent(LNode;)I
.limit locals 2
.limit stack 2
.var 0 is <this> LNode;
.var 1 is 'par' LNode;
aload 0
aload 1
putfield Node/parent LNode;
iconst_0
ireturn
.end method
.method public getParent()LNode;
.limit locals 1
.limit stack 2
.var 0 is <this> LNode;
aload 0
getfield Node/parent LNode;
areturn
.end method
.method public getNumChilds()I
.limit locals 1
.limit stack 2
.var 0 is <this> LNode;
aload 0
getfield Node/numChilds I
ireturn
.end method
.method public getId()I
.limit locals 1
.limit stack 2
.var 0 is <this> LNode;
aload 0
getfield Node/id I
ireturn
.end method
