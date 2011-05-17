.class 'Klass1'
.super java/lang/Object
.field private 'a' I
.field private 'k' LKlass2;
.field private 'k2' [I
.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method
.method public intMetod(LKlass1;LKlass2;)I
.limit locals 3
.limit stack 3
.var 0 is <this> LKlass1;
.var 1 is 'f' LKlass1;
.var 2 is 'f2' LKlass2;
aload 0
aload 0
getfield Klass1/k2 [I
arraylength
putfield Klass1/a I
aload 0
getfield Klass1/a I
ireturn
.end method
