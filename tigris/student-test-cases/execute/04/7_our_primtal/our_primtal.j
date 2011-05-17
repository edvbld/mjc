.class 'our_primtal'
.super java/lang/Object
.field private 'primes' [I
.field private 'count' I
.field private 'number' I
.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method
.method public print()I
.limit locals 2
.limit stack 3
.var 0 is <this> Lour_primtal;
.var 1 is 'i' I
iconst_0
istore 1
L0:
iload 1
aload 0
getfield our_primtal/number I
if_icmpge L1
getstatic java/lang/System/out Ljava/io/PrintStream;
aload 0
getfield our_primtal/primes [I
iload 1
iaload
invokevirtual java/io/PrintStream/println(I)V
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
iconst_0
ireturn
.end method
.method public run()I
.limit locals 4
.limit stack 3
.var 0 is <this> Lour_primtal;
.var 1 is 'test' I
.var 2 is 'retbool' Z
.var 3 is 'retint' I
iconst_3
istore 1
aload 0
bipush 100
putfield our_primtal/number I
aload 0
aload 0
getfield our_primtal/number I
newarray int
putfield our_primtal/primes [I
aload 0
iconst_0
putfield our_primtal/count I
aload 0
iconst_2
invokevirtual our_primtal/add_prime(I)Z
istore 2
L2:
aload 0
getfield our_primtal/count I
aload 0
getfield our_primtal/number I
if_icmpge L3
aload 0
iload 1
invokevirtual our_primtal/is_prime(I)Z
ifeq L4
aload 0
iload 1
invokevirtual our_primtal/add_prime(I)Z
istore 2
goto L5
L4:
L5:
iload 1
iconst_1
iadd
istore 1
goto L2
L3:
aload 0
invokevirtual our_primtal/print()I
istore 3
iconst_0
ireturn
.end method
.method public is_prime(I)Z
.limit locals 4
.limit stack 5
.var 0 is <this> Lour_primtal;
.var 1 is 'x' I
.var 2 is 'i' I
.var 3 is 'retbool' Z
iconst_1
istore 3
iconst_0
istore 2
L6:
iload 2
aload 0
getfield our_primtal/count I
if_icmplt L10
iconst_0
goto L11
L10:
iconst_1
L11:
ifeq L7
iload 3
ifeq L7
aload 0
iload 1
aload 0
getfield our_primtal/primes [I
iload 2
iaload
invokevirtual our_primtal/mod(II)Z
ifeq L12
iconst_0
istore 3
goto L13
L12:
iconst_1
istore 3
L13:
iload 2
iconst_1
iadd
istore 2
goto L6
L7:
iload 3
ireturn
.end method
.method public add_prime(I)Z
.limit locals 3
.limit stack 3
.var 0 is <this> Lour_primtal;
.var 1 is 'p' I
.var 2 is 'retbool' Z
aload 0
getfield our_primtal/number I
aload 0
getfield our_primtal/count I
if_icmpge L14
iconst_0
istore 2
goto L15
L14:
aload 0
getfield our_primtal/primes [I
aload 0
getfield our_primtal/count I
iload 1
iastore
aload 0
aload 0
getfield our_primtal/count I
iconst_1
iadd
putfield our_primtal/count I
iconst_1
istore 2
L15:
iload 2
ireturn
.end method
.method public mod(II)Z
.limit locals 5
.limit stack 4
.var 0 is <this> Lour_primtal;
.var 1 is 'x' I
.var 2 is 'm' I
.var 3 is 'rest' I
.var 4 is 'retbool' Z
iload 1
istore 3
L16:
iload 3
iload 2
if_icmplt L18
iconst_0
goto L19
L18:
iconst_1
L19:
ifne L17
iload 3
iload 2
isub
istore 3
goto L16
L17:
iload 3
iconst_1
if_icmplt L24
iconst_0
goto L25
L24:
iconst_1
L25:
ifeq L20
iload 3
iconst_0
if_icmplt L26
iconst_0
goto L27
L26:
iconst_1
L27:
ifeq L28
iconst_0
goto L29
L28:
iconst_1
L29:
ifeq L20
iconst_1
istore 4
goto L21
L20:
iconst_0
istore 4
L21:
iload 4
ireturn
.end method
