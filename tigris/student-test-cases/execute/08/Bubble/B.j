.class 'B'
.super java/lang/Object
.var 1 is 'a' LA;
.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method
.method public a()LA;
.limit locals 1
.limit stack 6
.var 0 is <this> LB;
new 'A'
dup
invokespecial A/<init>()V
new 'A'
dup
invokespecial A/<init>()V
aload 0
getfield B/a Z
invokevirtual A/a(LA;Z)LA;
new 'A'
dup
invokespecial A/<init>()V
iconst_0
invokevirtual A/b(LA;Z)LB;
invokevirtual B/a()LA;
areturn
.end method
.method public bsort()LBSort;
.limit locals 1
.limit stack 2
.var 0 is <this> LB;
new 'BSort'
dup
invokespecial BSort/<init>()V
areturn
.end method
