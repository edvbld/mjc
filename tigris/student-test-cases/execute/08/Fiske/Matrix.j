.class 'Matrix'
.super java/lang/Object
.field private 'a1' [I
.field private 'a2' [I
.field private 'a3' [I
.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method
.method public get(II)I
.limit locals 4
.limit stack 4
.var 0 is <this> LMatrix;
.var 1 is 'y' I
.var 2 is 'x' I
.var 3 is 'i' I
iconst_0
istore 3
iload 2
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
ifeq L22
iconst_0
iload 2
if_icmplt L30
iconst_0
goto L31
L30:
iconst_1
L31:
ifeq L32
iconst_0
goto L33
L32:
iconst_1
L33:
ifeq L22
aload 0
getfield Matrix/a1 [I
iload 1
iaload
istore 3
goto L23
L22:
L23:
iload 2
iconst_1
if_icmplt L38
iconst_0
goto L39
L38:
iconst_1
L39:
ifeq L40
iconst_0
goto L41
L40:
iconst_1
L41:
ifeq L34
iconst_1
iload 2
if_icmplt L42
iconst_0
goto L43
L42:
iconst_1
L43:
ifeq L44
iconst_0
goto L45
L44:
iconst_1
L45:
ifeq L34
aload 0
getfield Matrix/a2 [I
iload 1
iaload
istore 3
goto L35
L34:
L35:
iload 2
iconst_2
if_icmplt L50
iconst_0
goto L51
L50:
iconst_1
L51:
ifeq L52
iconst_0
goto L53
L52:
iconst_1
L53:
ifeq L46
iconst_2
iload 2
if_icmplt L54
iconst_0
goto L55
L54:
iconst_1
L55:
ifeq L56
iconst_0
goto L57
L56:
iconst_1
L57:
ifeq L46
aload 0
getfield Matrix/a3 [I
iload 1
iaload
istore 3
goto L47
L46:
L47:
iload 3
ireturn
.end method
.method public set(III)I
.limit locals 4
.limit stack 4
.var 0 is <this> LMatrix;
.var 1 is 'y' I
.var 2 is 'x' I
.var 3 is 'value' I
iload 2
iconst_0
if_icmplt L62
iconst_0
goto L63
L62:
iconst_1
L63:
ifeq L64
iconst_0
goto L65
L64:
iconst_1
L65:
ifeq L58
iconst_0
iload 2
if_icmplt L66
iconst_0
goto L67
L66:
iconst_1
L67:
ifeq L68
iconst_0
goto L69
L68:
iconst_1
L69:
ifeq L58
aload 0
getfield Matrix/a1 [I
iload 1
iload 3
iastore
goto L59
L58:
L59:
iload 2
iconst_1
if_icmplt L74
iconst_0
goto L75
L74:
iconst_1
L75:
ifeq L76
iconst_0
goto L77
L76:
iconst_1
L77:
ifeq L70
iconst_1
iload 2
if_icmplt L78
iconst_0
goto L79
L78:
iconst_1
L79:
ifeq L80
iconst_0
goto L81
L80:
iconst_1
L81:
ifeq L70
aload 0
getfield Matrix/a2 [I
iload 1
iload 3
iastore
goto L71
L70:
L71:
iload 2
iconst_2
if_icmplt L86
iconst_0
goto L87
L86:
iconst_1
L87:
ifeq L88
iconst_0
goto L89
L88:
iconst_1
L89:
ifeq L82
iconst_2
iload 2
if_icmplt L90
iconst_0
goto L91
L90:
iconst_1
L91:
ifeq L92
iconst_0
goto L93
L92:
iconst_1
L93:
ifeq L82
aload 0
getfield Matrix/a3 [I
iload 1
iload 3
iastore
goto L83
L82:
L83:
iconst_0
ireturn
.end method
.method public start()I
.limit locals 2
.limit stack 3
.var 0 is <this> LMatrix;
.var 1 is 'i' I
aload 0
bipush 15
newarray int
putfield Matrix/a1 [I
aload 0
bipush 15
newarray int
putfield Matrix/a2 [I
aload 0
bipush 15
newarray int
putfield Matrix/a3 [I
iconst_0
istore 1
aload 0
getfield Matrix/a1 [I
iconst_0
bipush 7
iastore
aload 0
getfield Matrix/a1 [I
iconst_1
iconst_2
iastore
aload 0
getfield Matrix/a1 [I
iconst_2
iconst_3
iastore
aload 0
getfield Matrix/a1 [I
iconst_3
iconst_1
iastore
aload 0
getfield Matrix/a1 [I
iconst_4
bipush 8
iastore
aload 0
getfield Matrix/a1 [I
iconst_5
bipush 9
iastore
aload 0
getfield Matrix/a1 [I
bipush 6
iconst_3
iastore
aload 0
getfield Matrix/a1 [I
bipush 7
iconst_3
iastore
aload 0
getfield Matrix/a1 [I
bipush 8
iconst_2
iastore
aload 0
getfield Matrix/a1 [I
bipush 9
bipush 7
iastore
aload 0
getfield Matrix/a1 [I
bipush 10
iconst_2
iastore
aload 0
getfield Matrix/a1 [I
bipush 11
bipush 9
iastore
aload 0
getfield Matrix/a1 [I
bipush 12
iconst_1
iastore
aload 0
getfield Matrix/a1 [I
bipush 13
iconst_0
iastore
aload 0
getfield Matrix/a1 [I
bipush 14
bipush 8
iastore
iconst_0
istore 1
aload 0
getfield Matrix/a2 [I
iconst_0
iconst_0
iastore
aload 0
getfield Matrix/a2 [I
iconst_1
bipush 14
iastore
aload 0
getfield Matrix/a2 [I
iconst_2
bipush 13
iastore
aload 0
getfield Matrix/a2 [I
iconst_3
iconst_2
iastore
aload 0
getfield Matrix/a2 [I
iconst_4
iconst_3
iastore
aload 0
getfield Matrix/a2 [I
iconst_5
iconst_2
iastore
aload 0
getfield Matrix/a2 [I
bipush 6
iconst_2
iastore
aload 0
getfield Matrix/a2 [I
bipush 7
iconst_1
iastore
aload 0
getfield Matrix/a2 [I
bipush 8
iconst_3
iastore
aload 0
getfield Matrix/a2 [I
bipush 9
iconst_5
iastore
aload 0
getfield Matrix/a2 [I
bipush 10
iconst_4
iastore
aload 0
getfield Matrix/a2 [I
bipush 11
iconst_1
iastore
aload 0
getfield Matrix/a2 [I
bipush 12
iconst_0
iastore
aload 0
getfield Matrix/a2 [I
bipush 13
iconst_2
iastore
aload 0
getfield Matrix/a2 [I
bipush 14
iconst_0
iastore
iconst_0
istore 1
aload 0
getfield Matrix/a3 [I
iconst_0
iconst_3
iastore
aload 0
getfield Matrix/a3 [I
iconst_1
iconst_4
iastore
aload 0
getfield Matrix/a3 [I
iconst_2
iconst_3
iastore
aload 0
getfield Matrix/a3 [I
iconst_3
bipush 7
iastore
aload 0
getfield Matrix/a3 [I
iconst_4
bipush 8
iastore
aload 0
getfield Matrix/a3 [I
iconst_5
iconst_4
iastore
aload 0
getfield Matrix/a3 [I
bipush 6
iconst_1
iastore
aload 0
getfield Matrix/a3 [I
bipush 7
bipush 8
iastore
aload 0
getfield Matrix/a3 [I
bipush 8
iconst_5
iastore
aload 0
getfield Matrix/a3 [I
bipush 9
bipush 6
iastore
aload 0
getfield Matrix/a3 [I
bipush 10
iconst_4
iastore
aload 0
getfield Matrix/a3 [I
bipush 11
iconst_1
iastore
aload 0
getfield Matrix/a3 [I
bipush 12
iconst_0
iastore
aload 0
getfield Matrix/a3 [I
bipush 13
iconst_2
iastore
aload 0
getfield Matrix/a3 [I
bipush 14
iconst_1
iastore
iconst_0
ireturn
.end method
.method public max(II)I
.limit locals 4
.limit stack 2
.var 0 is <this> LMatrix;
.var 1 is 'a' I
.var 2 is 'b' I
.var 3 is 'i' I
iload 1
iload 2
if_icmpge L94
iload 2
istore 3
goto L95
L94:
iload 1
istore 3
L95:
iload 3
ireturn
.end method
