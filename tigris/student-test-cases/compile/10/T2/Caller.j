.class 'Caller'
.super java/lang/Object
.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method
.method public call()I
.limit locals 3
.limit stack 7
.var 0 is <this> LCaller;
.var 1 is 'i' I
.var 2 is 'u' LUtils;
new 'Utils'
dup
invokespecial Utils/<init>()V
astore 2
iconst_1
istore 1
getstatic java/lang/System/out Ljava/io/PrintStream;
aload 2
bipush 6
iconst_3
invokevirtual Utils/sub(II)I
invokevirtual java/io/PrintStream/println(I)V
L0:
iload 1
ldc 100000
if_icmpge L1
getstatic java/lang/System/out Ljava/io/PrintStream;
aload 2
aload 2
iconst_0
iload 1
iconst_2
imul
invokevirtual Utils/range(II)[I
invokevirtual Utils/sum([I)I
invokevirtual java/io/PrintStream/println(I)V
iload 1
bipush 10
imul
istore 1
goto L0
L1:
iconst_1
ifeq L6
iconst_0
goto L7
L6:
iconst_1
L7:
ifeq L8
iconst_0
goto L9
L8:
iconst_1
L9:
ifeq L2
iconst_1
iconst_0
if_icmplt L10
iconst_0
goto L11
L10:
iconst_1
L11:
ifeq L2
getstatic java/lang/System/out Ljava/io/PrintStream;
iconst_1
invokevirtual java/io/PrintStream/println(I)V
goto L3
L2:
getstatic java/lang/System/out Ljava/io/PrintStream;
iconst_0
invokevirtual java/io/PrintStream/println(I)V
L3:
iconst_0
ireturn
.end method
