.class final Lnzi;
.super Ljava/lang/Object;


# static fields
.field public static final a:Z

.field public static final b:Z

.field static final c:J

.field static final d:Z

.field private static final e:Lsun/misc/Unsafe;

.field private static final f:Ljava/lang/Class;

.field private static final g:Z

.field private static final h:Lnzh;

.field private static final i:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    invoke-static {}, Lnzi;->j()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lnzi;->e:Lsun/misc/Unsafe;

    const-class v1, Llibcore/io/Memory;

    sput-object v1, Lnzi;->f:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lnzi;->v(Ljava/lang/Class;)Z

    move-result v1

    sput-boolean v1, Lnzi;->g:Z

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lnzi;->v(Ljava/lang/Class;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    new-instance v3, Lnzg;

    invoke-direct {v3, v0}, Lnzg;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    new-instance v3, Lnzf;

    invoke-direct {v3, v0}, Lnzf;-><init>(Lsun/misc/Unsafe;)V

    :cond_2
    :goto_0
    sput-object v3, Lnzi;->h:Lnzh;

    const-string v0, "getLong"

    const-string v1, "objectFieldOffset"

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    iget-object v3, v3, Lnzh;->a:Lsun/misc/Unsafe;

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/reflect/Field;

    aput-object v7, v6, v5

    invoke-virtual {v3, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v6, v2, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v5

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v3, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    invoke-static {}, Lnzi;->i()Ljava/lang/reflect/Field;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-static {v3}, Lnzi;->l(Ljava/lang/Throwable;)V

    const/4 v3, 0x0

    :goto_1
    sput-boolean v3, Lnzi;->a:Z

    sget-object v3, Lnzi;->h:Lnzh;

    if-nez v3, :cond_5

    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_5
    iget-object v3, v3, Lnzh;->a:Lsun/misc/Unsafe;

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/reflect/Field;

    aput-object v7, v6, v5

    invoke-virtual {v3, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "arrayBaseOffset"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Class;

    aput-object v7, v6, v5

    invoke-virtual {v3, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "arrayIndexScale"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Class;

    aput-object v7, v6, v5

    invoke-virtual {v3, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "getInt"

    new-array v6, v2, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v5

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v3, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "putInt"

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Object;

    aput-object v8, v7, v5

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v2

    invoke-virtual {v3, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v1, v2, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v1, v5

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v1, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "putLong"

    new-array v1, v6, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v1, v5

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v1, v4

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v1, v2

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "getObject"

    new-array v1, v2, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v1, v5

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v1, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "putObject"

    new-array v1, v6, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v1, v5

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v1, v4

    const-class v6, Ljava/lang/Object;

    aput-object v6, v1, v2

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lnzi;->l(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_2
    sput-boolean v0, Lnzi;->b:Z

    const-class v0, [B

    invoke-static {v0}, Lnzi;->z(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lnzi;->c:J

    const-class v0, [Z

    invoke-static {v0}, Lnzi;->z(Ljava/lang/Class;)I

    invoke-static {v0}, Lnzi;->B(Ljava/lang/Class;)V

    const-class v0, [I

    invoke-static {v0}, Lnzi;->z(Ljava/lang/Class;)I

    invoke-static {v0}, Lnzi;->B(Ljava/lang/Class;)V

    const-class v0, [J

    invoke-static {v0}, Lnzi;->z(Ljava/lang/Class;)I

    invoke-static {v0}, Lnzi;->B(Ljava/lang/Class;)V

    const-class v0, [F

    invoke-static {v0}, Lnzi;->z(Ljava/lang/Class;)I

    invoke-static {v0}, Lnzi;->B(Ljava/lang/Class;)V

    const-class v0, [D

    invoke-static {v0}, Lnzi;->z(Ljava/lang/Class;)I

    invoke-static {v0}, Lnzi;->B(Ljava/lang/Class;)V

    const-class v0, [Ljava/lang/Object;

    invoke-static {v0}, Lnzi;->z(Ljava/lang/Class;)I

    const-class v0, [Ljava/lang/Object;

    invoke-static {v0}, Lnzi;->B(Ljava/lang/Class;)V

    invoke-static {}, Lnzi;->i()Ljava/lang/reflect/Field;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_7

    sget-object v3, Lnzi;->h:Lnzh;

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    iget-object v1, v3, Lnzh;->a:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    goto :goto_3

    :cond_7
    :goto_3
    sput-wide v1, Lnzi;->i:J

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_8

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    :goto_4
    sput-boolean v4, Lnzi;->d:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static A(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static B(Ljava/lang/Class;)V
    .locals 1

    sget-boolean v0, Lnzi;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lnzi;->h:Lnzh;

    iget-object v0, v0, Lnzh;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    :cond_0
    return-void
.end method

.method static a(J)B
    .locals 1

    sget-object v0, Lnzi;->h:Lnzh;

    invoke-virtual {v0, p0, p1}, Lnzh;->a(J)B

    move-result p0

    return p0
.end method

.method static b(Ljava/lang/Object;J)D
    .locals 1

    sget-object v0, Lnzi;->h:Lnzh;

    invoke-virtual {v0, p0, p1, p2}, Lnzh;->b(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method static c(Ljava/lang/Object;J)F
    .locals 1

    sget-object v0, Lnzi;->h:Lnzh;

    invoke-virtual {v0, p0, p1, p2}, Lnzh;->c(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method static d(Ljava/lang/Object;J)I
    .locals 1

    sget-object v0, Lnzi;->h:Lnzh;

    invoke-virtual {v0, p0, p1, p2}, Lnzh;->j(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method static e(Ljava/nio/ByteBuffer;)J
    .locals 3

    sget-object v0, Lnzi;->h:Lnzh;

    sget-wide v1, Lnzi;->i:J

    invoke-virtual {v0, p0, v1, v2}, Lnzh;->k(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static f(Ljava/lang/Object;J)J
    .locals 1

    sget-object v0, Lnzi;->h:Lnzh;

    invoke-virtual {v0, p0, p1, p2}, Lnzh;->k(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method static g(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    sget-object v0, Lnzi;->e:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static h(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lnzi;->h:Lnzh;

    iget-object v0, v0, Lnzh;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static i()Ljava/lang/reflect/Field;
    .locals 3

    const-class v0, Ljava/nio/Buffer;

    const-string v1, "effectiveDirectAddress"

    invoke-static {v0, v1}, Lnzi;->A(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_1

    const-class v0, Ljava/nio/Buffer;

    const-string v1, "address"

    invoke-static {v0, v1}, Lnzi;->A(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method static j()Lsun/misc/Unsafe;
    .locals 1

    :try_start_0
    new-instance v0, Lnze;

    invoke-direct {v0}, Lnze;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static k(J[BJJ)V
    .locals 8

    sget-object v0, Lnzi;->h:Lnzh;

    move-wide v1, p0

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lnzh;->d(J[BJJ)V

    return-void
.end method

.method public static l(Ljava/lang/Throwable;)V
    .locals 4

    const-class v0, Lnzi;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "com.google.protobuf.UnsafeUtil"

    const-string v3, "logMissingMethod"

    invoke-virtual {v0, v1, v2, v3, p0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static m(Ljava/lang/Object;JZ)V
    .locals 1

    sget-object v0, Lnzi;->h:Lnzh;

    invoke-virtual {v0, p0, p1, p2, p3}, Lnzh;->e(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static n([BJB)V
    .locals 3

    sget-object v0, Lnzi;->h:Lnzh;

    sget-wide v1, Lnzi;->c:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2, p3}, Lnzh;->f(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static o(Ljava/lang/Object;JB)V
    .locals 5

    long-to-int v0, p1

    xor-int/lit8 v0, v0, -0x1

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x3

    const/16 v1, 0xff

    shl-int v2, v1, v0

    const-wide/16 v3, -0x4

    and-long/2addr p1, v3

    invoke-static {p0, p1, p2}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result v3

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v3

    and-int/2addr p3, v1

    shl-int/2addr p3, v0

    or-int/2addr p3, v2

    invoke-static {p0, p1, p2, p3}, Lnzi;->s(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static p(Ljava/lang/Object;JB)V
    .locals 5

    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x3

    const/16 v1, 0xff

    shl-int v2, v1, v0

    const-wide/16 v3, -0x4

    and-long/2addr p1, v3

    invoke-static {p0, p1, p2}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result v3

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v3

    and-int/2addr p3, v1

    shl-int/2addr p3, v0

    or-int/2addr p3, v2

    invoke-static {p0, p1, p2, p3}, Lnzi;->s(Ljava/lang/Object;JI)V

    return-void
.end method

.method static q(Ljava/lang/Object;JD)V
    .locals 6

    sget-object v0, Lnzi;->h:Lnzh;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lnzh;->g(Ljava/lang/Object;JD)V

    return-void
.end method

.method static r(Ljava/lang/Object;JF)V
    .locals 1

    sget-object v0, Lnzi;->h:Lnzh;

    invoke-virtual {v0, p0, p1, p2, p3}, Lnzh;->h(Ljava/lang/Object;JF)V

    return-void
.end method

.method static s(Ljava/lang/Object;JI)V
    .locals 1

    sget-object v0, Lnzi;->h:Lnzh;

    invoke-virtual {v0, p0, p1, p2, p3}, Lnzh;->l(Ljava/lang/Object;JI)V

    return-void
.end method

.method static t(Ljava/lang/Object;JJ)V
    .locals 6

    sget-object v0, Lnzi;->h:Lnzh;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lnzh;->m(Ljava/lang/Object;JJ)V

    return-void
.end method

.method static u(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1

    sget-object v0, Lnzi;->h:Lnzh;

    iget-object v0, v0, Lnzh;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method static v(Ljava/lang/Class;)Z
    .locals 10

    const-class v0, [B

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lnzi;->f:Ljava/lang/Class;

    const-string v3, "peekLong"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    aput-object p0, v5, v1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeLong"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    aput-object p0, v6, v1

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v4

    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeInt"

    new-array v6, v5, [Ljava/lang/Class;

    aput-object p0, v6, v1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v4

    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekInt"

    new-array v6, v4, [Ljava/lang/Class;

    aput-object p0, v6, v1

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeByte"

    new-array v6, v4, [Ljava/lang/Class;

    aput-object p0, v6, v1

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekByte"

    new-array v6, v7, [Ljava/lang/Class;

    aput-object p0, v6, v1

    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeByteArray"

    const/4 v6, 0x4

    new-array v8, v6, [Ljava/lang/Class;

    aput-object p0, v8, v1

    aput-object v0, v8, v7

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    invoke-virtual {v2, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekByteArray"

    new-array v6, v6, [Ljava/lang/Class;

    aput-object p0, v6, v1

    aput-object v0, v6, v7

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p0, v6, v4

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p0, v6, v5

    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v7

    :catchall_0
    move-exception p0

    return v1
.end method

.method static w(Ljava/lang/Object;J)Z
    .locals 1

    sget-object v0, Lnzi;->h:Lnzh;

    invoke-virtual {v0, p0, p1, p2}, Lnzh;->i(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method public static x(Ljava/lang/Object;J)Z
    .locals 4

    const-wide/16 v0, -0x1

    xor-long/2addr v0, p1

    const-wide/16 v2, 0x3

    and-long/2addr v0, v2

    const/4 v2, 0x3

    shl-long/2addr v0, v2

    const-wide/16 v2, -0x4

    and-long/2addr p1, v2

    invoke-static {p0, p1, p2}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result p0

    long-to-int p1, v0

    ushr-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static y(Ljava/lang/Object;J)Z
    .locals 4

    const-wide/16 v0, 0x3

    and-long/2addr v0, p1

    const/4 v2, 0x3

    shl-long/2addr v0, v2

    const-wide/16 v2, -0x4

    and-long/2addr p1, v2

    invoke-static {p0, p1, p2}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result p0

    long-to-int p1, v0

    ushr-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static z(Ljava/lang/Class;)I
    .locals 1

    sget-boolean v0, Lnzi;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lnzi;->h:Lnzh;

    iget-object v0, v0, Lnzh;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method
