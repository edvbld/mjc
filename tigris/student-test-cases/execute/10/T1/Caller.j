.class 'Caller'
.super java/lang/Object
.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method
.method public call()I
.limit locals 3
.limit stack 5
.var 0 is <this> LCaller;
.var 1 is 'm' LMergesort;
.var 2 is 'a' [I
bipush 20
newarray int
astore 2
new 'Mergesort'
dup
invokespecial Mergesort/<init>()V
astore 1
aload 2
iconst_0
bipush 11
iastore
aload 2
iconst_1
bipush 52
iastore
aload 2
iconst_2
bipush 39
iastore
aload 2
iconst_3
bipush 11
iastore
aload 2
iconst_4
bipush 66
iastore
aload 2
iconst_5
bipush 64
iastore
aload 2
bipush 6
bipush 60
iastore
aload 2
bipush 7
iconst_5
iastore
aload 2
bipush 8
bipush 53
iastore
aload 2
bipush 9
bipush 53
iastore
aload 2
bipush 10
bipush 17
iastore
aload 2
bipush 11
bipush 93
iastore
aload 2
bipush 12
bipush 59
iastore
aload 2
bipush 13
bipush 51
iastore
aload 2
bipush 14
bipush 62
iastore
aload 2
bipush 15
bipush 12
iastore
aload 2
bipush 16
bipush 64
iastore
aload 2
bipush 17
bipush 11
iastore
aload 2
bipush 18
bipush 67
iastore
aload 2
bipush 19
bipush 63
iastore
aload 1
aload 2
invokevirtual Mergesort/mergesort([I)[I
astore 2
getstatic java/lang/System/out Ljava/io/PrintStream;
aload 1
iconst_1
iconst_2
invokevirtual Mergesort/avg(II)I
invokevirtual java/io/PrintStream/println(I)V
getstatic java/lang/System/out Ljava/io/PrintStream;
aload 1
iconst_1
iconst_3
invokevirtual Mergesort/avg(II)I
invokevirtual java/io/PrintStream/println(I)V
getstatic java/lang/System/out Ljava/io/PrintStream;
aload 1
iconst_1
iconst_4
invokevirtual Mergesort/avg(II)I
invokevirtual java/io/PrintStream/println(I)V
getstatic java/lang/System/out Ljava/io/PrintStream;
iconst_0
invokevirtual java/io/PrintStream/println(I)V
iconst_0
ireturn
.end method
