.class 'A'
.super java/lang/Object
.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method
.method public a(LA;Z)LA;
.limit locals 3
.limit stack 3
.var 0 is <this> LA;
.var 1 is 'a' LA;
.var 2 is 'i' Z
iload 2
ifeq L26
new 'A'
dup
invokespecial A/<init>()V
astore 1
goto L27
L26:
aload 0
astore 1
L27:
aload 1
areturn
.end method
.method public b(LA;Z)LB;
.limit locals 4
.limit stack 3
.var 0 is <this> LA;
.var 1 is 'a' LA;
.var 2 is 'i' Z
.var 3 is 'b' LB;
new 'B'
dup
invokespecial B/<init>()V
astore 3
iload 2
ifeq L28
new 'B'
dup
invokespecial B/<init>()V
astore 3
goto L29
L28:
aload 3
astore 3
L29:
aload 3
areturn
.end method
