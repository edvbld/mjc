.class 'DFS'
.super java/lang/Object
.field private 'start' LNode;
.field private 'currNode' LNode;
.field private 'currVal' I
.field private 'value' I
.field private 'stack' LStack;
.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method
.method public find(LNode;I)LNode;
.limit locals 4
.limit stack 3
.var 0 is <this> LDFS;
.var 1 is 'startNode' LNode;
.var 2 is 'val' I
.var 3 is 'tmp' I
aload 0
aload 1
putfield DFS/start LNode;
aload 0
aload 0
getfield DFS/start LNode;
putfield DFS/currNode LNode;
aload 0
iload 2
putfield DFS/value I
aload 0
new 'Stack'
dup
invokespecial Stack/<init>()V
putfield DFS/stack LStack;
aload 0
getfield DFS/stack LStack;
invokevirtual Stack/init()I
istore 3
aload 0
invokevirtual DFS/DFS()LNode;
areturn
.end method
.method public DFS()LNode;
.limit locals 4
.limit stack 7
.var 0 is <this> LDFS;
.var 1 is 'found' Z
.var 2 is 'math' LMath;
.var 3 is 'tmp' I
new 'Math'
dup
invokespecial Math/<init>()V
astore 2
iconst_0
istore 1
aload 0
iconst_0
putfield DFS/currVal I
L26:
iload 1
ifne L27
getstatic java/lang/System/out Ljava/io/PrintStream;
aload 0
getfield DFS/currNode LNode;
invokevirtual Node/getId()I
invokevirtual java/io/PrintStream/println(I)V
aload 2
aload 0
getfield DFS/currNode LNode;
invokevirtual Node/getVal()I
aload 0
getfield DFS/value I
invokevirtual Math/equal(II)Z
ifeq L28
iconst_1
istore 1
goto L29
L28:
L29:
iload 1
ifeq L34
iconst_0
goto L35
L34:
iconst_1
L35:
ifeq L30
aload 2
aload 0
getfield DFS/currVal I
aload 0
getfield DFS/currNode LNode;
invokevirtual Node/getNumChilds()I
invokevirtual Math/equal(II)Z
ifeq L30
aload 0
getfield DFS/stack LStack;
invokevirtual Stack/isEmpty()Z
ifeq L36
iconst_1
istore 1
goto L37
L36:
aload 0
aload 0
getfield DFS/currNode LNode;
invokevirtual Node/getParent()LNode;
putfield DFS/currNode LNode;
aload 0
aload 0
getfield DFS/stack LStack;
invokevirtual Stack/pop()I
putfield DFS/currVal I
L37:
goto L31
L30:
iload 1
ifne L38
aload 0
getfield DFS/currNode LNode;
aload 0
getfield DFS/currVal I
invokevirtual Node/getNode(I)LNode;
aload 0
getfield DFS/currNode LNode;
invokevirtual Node/setParent(LNode;)I
istore 3
aload 0
aload 0
getfield DFS/currNode LNode;
aload 0
getfield DFS/currVal I
invokevirtual Node/getNode(I)LNode;
putfield DFS/currNode LNode;
aload 0
aload 0
getfield DFS/currVal I
iconst_1
iadd
putfield DFS/currVal I
aload 0
getfield DFS/stack LStack;
aload 0
getfield DFS/currVal I
invokevirtual Stack/push(I)I
istore 3
aload 0
iconst_0
putfield DFS/currVal I
goto L39
L38:
L39:
L31:
goto L26
L27:
aload 0
getfield DFS/currNode LNode;
areturn
.end method
