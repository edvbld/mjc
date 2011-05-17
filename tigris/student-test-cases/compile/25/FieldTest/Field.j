.class 'Field'
.super java/lang/Object
.field private 'i' I
.field private 'f' LField;
.field private 'a' [I
.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method
.method public test()I
.limit locals 3
.limit stack 3
.var 0 is <this> LField;
.var 1 is 'f' LField;
.var 2 is 'r' I
new 'Field'
dup
invokespecial Field/<init>()V
astore 1
aload 1
invokevirtual Field/init()I
istore 2
aload 1
iconst_2
invokevirtual Field/hej(I)I
istore 2
iconst_0
ireturn
.end method
.method public getI()I
.limit locals 1
.limit stack 2
.var 0 is <this> LField;
aload 0
getfield Field/i I
ireturn
.end method
.method public setI(I)I
.limit locals 2
.limit stack 2
.var 0 is <this> LField;
.var 1 is 'v' I
aload 0
iload 1
putfield Field/i I
iconst_0
ireturn
.end method
.method public init()I
.limit locals 1
.limit stack 3
.var 0 is <this> LField;
aload 0
new 'Field'
dup
invokespecial Field/<init>()V
putfield Field/f LField;
aload 0
bipush 10
newarray int
putfield Field/a [I
iconst_0
ireturn
.end method
.method public hej(I)I
.limit locals 2
.limit stack 3
.var 0 is <this> LField;
.var 1 is 'j' I
aload 0
getfield Field/f LField;
bipush 101
invokevirtual Field/setI(I)I
istore 1
aload 0
getfield Field/f LField;
invokevirtual Field/getI()I
istore 1
iload 1
ireturn
.end method
