.class 'TestSymbolTableMain'
.super java/lang/Object
.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method
.method public runTest()Z
.limit locals 2
.limit stack 3
.var 0 is <this> LTestSymbolTableMain;
.var 1 is 'tester' LTestSymbolTableHelper;
new 'TestSymbolTableHelper'
dup
invokespecial TestSymbolTableHelper/<init>()V
astore 1
getstatic java/lang/System/out Ljava/io/PrintStream;
aload 1
invokevirtual TestSymbolTableHelper/testLocal()I
invokevirtual java/io/PrintStream/println(I)V
getstatic java/lang/System/out Ljava/io/PrintStream;
aload 1
invokevirtual TestSymbolTableHelper/setField()I
invokevirtual java/io/PrintStream/println(I)V
getstatic java/lang/System/out Ljava/io/PrintStream;
aload 1
invokevirtual TestSymbolTableHelper/testField()I
invokevirtual java/io/PrintStream/println(I)V
iconst_1
ireturn
.end method
