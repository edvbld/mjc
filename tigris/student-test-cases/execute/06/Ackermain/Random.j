.class 'Random'
.super java/lang/Object
.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method
.method public getArray(I)[I
.limit locals 3
.limit stack 7
.var 0 is <this> LRandom;
.var 1 is 'value' I
.var 2 is 'ret' [I
iconst_5
newarray int
astore 2
aload 2
iconst_0
iconst_3
iastore
aload 2
iconst_1
iconst_1
iastore
aload 2
iconst_2
iconst_4
iastore
aload 2
iconst_3
aload 2
aload 2
aload 2
aload 2
iconst_1
iaload
iaload
iaload
iaload
aload 2
iconst_1
iaload
imul
iconst_0
iadd
iastore
aload 2
iconst_4
aload 2
arraylength
iastore
aload 2
areturn
.end method
