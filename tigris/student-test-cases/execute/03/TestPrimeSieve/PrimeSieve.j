.class 'PrimeSieve'
.super java/lang/Object
.field private 'is_prime' [I
.field private 'size' I
.field private 'slask' Z
.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method
.method public run()I
.limit locals 1
.limit stack 3
.var 0 is <this> LPrimeSieve;
aload 0
ldc 1000000
putfield PrimeSieve/size I
aload 0
aload 0
getfield PrimeSieve/size I
newarray int
putfield PrimeSieve/is_prime [I
aload 0
getfield PrimeSieve/is_prime [I
iconst_0
iconst_1
iastore
aload 0
getfield PrimeSieve/is_prime [I
iconst_1
iconst_1
iastore
aload 0
aload 0
invokevirtual PrimeSieve/sieve()Z
putfield PrimeSieve/slask Z
iconst_1
ireturn
.end method
.method public sieve()Z
.limit locals 3
.limit stack 4
.var 0 is <this> LPrimeSieve;
.var 1 is 'i' I
.var 2 is 'j' I
iconst_2
istore 1
L4:
iload 1
aload 0
getfield PrimeSieve/size I
if_icmpge L5
aload 0
getfield PrimeSieve/is_prime [I
iload 1
iaload
iconst_1
if_icmplt L10
iconst_0
goto L11
L10:
iconst_1
L11:
ifeq L6
iconst_0
iconst_1
isub
aload 0
getfield PrimeSieve/is_prime [I
iload 1
iaload
if_icmplt L12
iconst_0
goto L13
L12:
iconst_1
L13:
ifeq L6
iload 1
iconst_2
imul
istore 2
L14:
iload 2
aload 0
getfield PrimeSieve/size I
if_icmpge L15
aload 0
getfield PrimeSieve/is_prime [I
iload 2
iconst_1
iastore
iload 2
iload 1
iadd
istore 2
goto L14
L15:
goto L7
L6:
L7:
iload 1
iconst_1
iadd
istore 1
goto L4
L5:
iconst_1
ireturn
.end method
.method public isPrime(I)Z
.limit locals 2
.limit stack 2
.var 0 is <this> LPrimeSieve;
.var 1 is 'i' I
aload 0
getfield PrimeSieve/is_prime [I
iload 1
iaload
iconst_1
if_icmplt L16
iconst_0
goto L17
L16:
iconst_1
L17:
ireturn
.end method
.method public getSize()I
.limit locals 1
.limit stack 2
.var 0 is <this> LPrimeSieve;
aload 0
getfield PrimeSieve/size I
ireturn
.end method
