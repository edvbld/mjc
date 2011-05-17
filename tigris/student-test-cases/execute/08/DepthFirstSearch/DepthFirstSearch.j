.class 'DepthFirstSearch'
.super java/lang/Object
.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method
.method public static main([Ljava/lang/String;)V
.limit locals 1
.limit stack 194
getstatic java/lang/System/out Ljava/io/PrintStream;
new 'DFS'
dup
invokespecial DFS/<init>()V
new 'Node'
dup
invokespecial Node/<init>()V
new 'Node'
dup
invokespecial Node/<init>()V
new 'Node'
dup
invokespecial Node/<init>()V
new 'Node'
dup
invokespecial Node/<init>()V
bipush 17
bipush 13
invokevirtual Node/init0(II)LNode;
new 'Node'
dup
invokespecial Node/<init>()V
new 'Node'
dup
invokespecial Node/<init>()V
new 'Node'
dup
invokespecial Node/<init>()V
bipush 6
bipush 14
invokevirtual Node/init0(II)LNode;
new 'Node'
dup
invokespecial Node/<init>()V
bipush 89
bipush 15
invokevirtual Node/init0(II)LNode;
new 'Node'
dup
invokespecial Node/<init>()V
sipush 3904
bipush 16
invokevirtual Node/init0(II)LNode;
new 'Node'
dup
invokespecial Node/<init>()V
new 'Node'
dup
invokespecial Node/<init>()V
ldc -2147483648
bipush 17
invokevirtual Node/init0(II)LNode;
sipush 1994
bipush 12
invokevirtual Node/init1(LNode;II)LNode;
bipush 13
bipush 11
invokevirtual Node/init4(LNode;LNode;LNode;LNode;II)LNode;
sipush 1337
bipush 10
invokevirtual Node/init1(LNode;II)LNode;
bipush 19
bipush 9
invokevirtual Node/init2(LNode;LNode;II)LNode;
new 'Node'
dup
invokespecial Node/<init>()V
new 'Node'
dup
invokespecial Node/<init>()V
iconst_1
bipush 18
invokevirtual Node/init0(II)LNode;
bipush 12
bipush 8
invokevirtual Node/init1(LNode;II)LNode;
ldc 47701
bipush 7
invokevirtual Node/init2(LNode;LNode;II)LNode;
new 'Node'
dup
invokespecial Node/<init>()V
new 'Node'
dup
invokespecial Node/<init>()V
new 'Node'
dup
invokespecial Node/<init>()V
iconst_0
bipush 19
invokevirtual Node/init0(II)LNode;
new 'Node'
dup
invokespecial Node/<init>()V
ldc 51557
newarray int
arraylength
bipush 26
invokevirtual Node/init0(II)LNode;
bipush 7
bipush 12
imul
bipush 6
invokevirtual Node/init2(LNode;LNode;II)LNode;
new 'Node'
dup
invokespecial Node/<init>()V
bipush 99
bipush 87
isub
bipush 20
invokevirtual Node/init0(II)LNode;
new 'Node'
dup
invokespecial Node/<init>()V
new 'Node'
dup
invokespecial Node/<init>()V
iconst_4
bipush 21
invokevirtual Node/init0(II)LNode;
new 'Node'
dup
invokespecial Node/<init>()V
sipush 177
bipush 22
invokevirtual Node/init0(II)LNode;
iconst_1
sipush 4711
isub
iconst_5
invokevirtual Node/init2(LNode;LNode;II)LNode;
bipush 14
iconst_4
invokevirtual Node/init3(LNode;LNode;LNode;II)LNode;
new 'Node'
dup
invokespecial Node/<init>()V
sipush 4711
bipush 23
invokevirtual Node/init0(II)LNode;
new 'Node'
dup
invokespecial Node/<init>()V
new 'Node'
dup
invokespecial Node/<init>()V
ldc 67111
bipush 24
invokevirtual Node/init0(II)LNode;
new 'Node'
dup
invokespecial Node/<init>()V
new 'Node'
dup
invokespecial Node/<init>()V
bipush 17
bipush 25
invokevirtual Node/init0(II)LNode;
new 'Node'
dup
invokespecial Node/<init>()V
new 'Node'
dup
invokespecial Node/<init>()V
sipush 1337
bipush 26
invokevirtual Node/init0(II)LNode;
sipush 1337
iconst_3
invokevirtual Node/init1(LNode;II)LNode;
ldc 77777
iconst_2
invokevirtual Node/init2(LNode;LNode;II)LNode;
iconst_0
iconst_1
invokevirtual Node/init2(LNode;LNode;II)LNode;
bipush 12
iconst_0
invokevirtual Node/init4(LNode;LNode;LNode;LNode;II)LNode;
ldc 67111
invokevirtual DFS/find(LNode;I)LNode;
invokevirtual Node/getId()I
invokevirtual java/io/PrintStream/println(I)V
return
.end method
