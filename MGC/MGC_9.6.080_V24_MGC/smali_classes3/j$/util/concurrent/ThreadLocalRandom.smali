.class public Lj$/util/concurrent/ThreadLocalRandom;
.super Ljava/util/Random;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/ThreadLocal;

.field private static final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final f:Ljava/lang/ThreadLocal;

.field private static final g:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = -0x5135b0e98579898dL


# instance fields
.field a:J

.field b:I

.field c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Ljava/io/ObjectStreamField;

    const-string v1, "rnd"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "initialized"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/io/ObjectStreamField;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, Lj$/util/concurrent/ThreadLocalRandom;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v1, Lj$/util/concurrent/ThreadLocalRandom;->d:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v1, Lj$/util/concurrent/ThreadLocalRandom;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Lj$/util/concurrent/z;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v1, Lj$/util/concurrent/ThreadLocalRandom;->f:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lj$/util/concurrent/ThreadLocalRandom;->e(J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Lj$/util/concurrent/ThreadLocalRandom;->e(J)J

    move-result-wide v6

    xor-long/2addr v4, v6

    invoke-direct {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v1, Lj$/util/concurrent/ThreadLocalRandom;->g:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Lj$/util/concurrent/A;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/security/SecureRandom;->getSeed(I)[B

    move-result-object v2

    aget-byte v3, v2, v3

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/4 v7, 0x1

    :goto_0
    if-ge v7, v1, :cond_0

    shl-long/2addr v3, v1

    aget-byte v8, v2, v7

    int-to-long v8, v8

    and-long/2addr v8, v5

    or-long/2addr v3, v8

    add-int/2addr v7, v0

    goto :goto_0

    :cond_0
    sget-object v0, Lj$/util/concurrent/ThreadLocalRandom;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/concurrent/ThreadLocalRandom;->c:Z

    return-void
.end method

.method synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lj$/util/concurrent/ThreadLocalRandom;-><init>()V

    return-void
.end method

.method static final a(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0xd

    xor-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x11

    xor-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x5

    xor-int/2addr p0, v0

    sget-object v0, Lj$/util/concurrent/ThreadLocalRandom;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/concurrent/ThreadLocalRandom;

    iput p0, v0, Lj$/util/concurrent/ThreadLocalRandom;->b:I

    return p0
.end method

.method static final b()I
    .locals 1

    sget-object v0, Lj$/util/concurrent/ThreadLocalRandom;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/concurrent/ThreadLocalRandom;

    iget v0, v0, Lj$/util/concurrent/ThreadLocalRandom;->b:I

    return v0
.end method

.method static final c()V
    .locals 4

    sget-object v0, Lj$/util/concurrent/ThreadLocalRandom;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, -0x61c88647

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    sget-object v1, Lj$/util/concurrent/ThreadLocalRandom;->g:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v2, -0x4498517a7b3558c5L    # -1.5671250923562117E-22

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Lj$/util/concurrent/ThreadLocalRandom;->e(J)J

    move-result-wide v1

    sget-object v3, Lj$/util/concurrent/ThreadLocalRandom;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj$/util/concurrent/ThreadLocalRandom;

    iput-wide v1, v3, Lj$/util/concurrent/ThreadLocalRandom;->a:J

    iput v0, v3, Lj$/util/concurrent/ThreadLocalRandom;->b:I

    return-void
.end method

.method public static current()Lj$/util/concurrent/ThreadLocalRandom;
    .locals 2

    sget-object v0, Lj$/util/concurrent/ThreadLocalRandom;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/concurrent/ThreadLocalRandom;

    iget v1, v0, Lj$/util/concurrent/ThreadLocalRandom;->b:I

    if-nez v1, :cond_0

    invoke-static {}, Lj$/util/concurrent/ThreadLocalRandom;->c()V

    :cond_0
    return-object v0
.end method

.method private static d(J)I
    .locals 3

    const/16 v0, 0x21

    ushr-long v1, p0, v0

    xor-long/2addr p0, v1

    const-wide v1, -0xae502812aa7333L

    mul-long p0, p0, v1

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    const-wide v0, -0x3b314601e57a13adL    # -2.902039044684214E23

    mul-long p0, p0, v0

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method private static e(J)J
    .locals 3

    const/16 v0, 0x21

    ushr-long v1, p0, v0

    xor-long/2addr p0, v1

    const-wide v1, -0xae502812aa7333L

    mul-long p0, p0, v1

    ushr-long v1, p0, v0

    xor-long/2addr p0, v1

    const-wide v1, -0x3b314601e57a13adL    # -2.902039044684214E23

    mul-long p0, p0, v1

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lj$/util/concurrent/ThreadLocalRandom;->current()Lj$/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    const-string v1, "rnd"

    iget-wide v2, p0, Lj$/util/concurrent/ThreadLocalRandom;->a:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;J)V

    const-string v1, "initialized"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    return-void
.end method


# virtual methods
.method final f()J
    .locals 4

    iget-wide v0, p0, Lj$/util/concurrent/ThreadLocalRandom;->a:J

    const-wide v2, -0x61c8864680b583ebL

    add-long/2addr v0, v2

    iput-wide v0, p0, Lj$/util/concurrent/ThreadLocalRandom;->a:J

    return-wide v0
.end method

.method protected final next(I)I
    .locals 1

    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v0

    rsub-int/lit8 p1, p1, 0x20

    ushr-int p1, v0, p1

    return p1
.end method

.method public final nextBoolean()Z
    .locals 2

    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/util/concurrent/ThreadLocalRandom;->d(J)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final nextDouble()D
    .locals 4

    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/util/concurrent/ThreadLocalRandom;->e(J)J

    move-result-wide v0

    const/16 v2, 0xb

    ushr-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ca0000000000000L

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public final nextDouble(D)D
    .locals 4

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/util/concurrent/ThreadLocalRandom;->e(J)J

    move-result-wide v0

    const/16 v2, 0xb

    ushr-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ca0000000000000L

    mul-double v0, v0, v2

    mul-double v0, v0, p1

    cmpg-double v2, v0, p1

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bound must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final nextDouble(DD)D
    .locals 5

    cmpg-double v0, p1, p3

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom;->nextLong()J

    move-result-wide v1

    const/16 v3, 0xb

    ushr-long/2addr v1, v3

    long-to-double v1, v1

    const-wide/high16 v3, 0x3ca0000000000000L

    mul-double v1, v1, v3

    if-gez v0, :cond_0

    sub-double v3, p3, p1

    mul-double v3, v3, v1

    add-double v1, v3, p1

    cmpl-double p1, v1, p3

    if-ltz p1, :cond_0

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    const-wide/16 p3, 0x1

    sub-long/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    :cond_0
    return-wide v1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bound must be greater than origin"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final nextFloat()F
    .locals 2

    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/util/concurrent/ThreadLocalRandom;->d(J)I

    move-result v0

    ushr-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    const/high16 v1, 0x33800000

    mul-float v0, v0, v1

    return v0
.end method

.method public final nextGaussian()D
    .locals 11

    sget-object v0, Lj$/util/concurrent/ThreadLocalRandom;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom;->nextDouble()D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double v1, v1, v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v1, v5

    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom;->nextDouble()D

    move-result-wide v7

    mul-double v7, v7, v3

    sub-double/2addr v7, v5

    mul-double v3, v1, v1

    mul-double v9, v7, v7

    add-double/2addr v9, v3

    cmpl-double v3, v9, v5

    if-gez v3, :cond_0

    const-wide/16 v3, 0x0

    cmpl-double v5, v9, v3

    if-eqz v5, :cond_0

    const-wide/high16 v3, -0x4000000000000000L    # -2.0

    invoke-static {v9, v10}, Ljava/lang/StrictMath;->log(D)D

    move-result-wide v5

    mul-double v5, v5, v3

    div-double/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/StrictMath;->sqrt(D)D

    move-result-wide v3

    mul-double v7, v7, v3

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    mul-double v1, v1, v3

    return-wide v1
.end method

.method public final nextInt()I
    .locals 2

    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/util/concurrent/ThreadLocalRandom;->d(J)I

    move-result v0

    return v0
.end method

.method public final nextInt(I)I
    .locals 4

    if-lez p1, :cond_2

    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/util/concurrent/ThreadLocalRandom;->d(J)I

    move-result v0

    add-int/lit8 v1, p1, -0x1

    and-int v2, p1, v1

    if-nez v2, :cond_0

    and-int p1, v0, v1

    goto :goto_1

    :cond_0
    :goto_0
    ushr-int/lit8 v0, v0, 0x1

    add-int v2, v0, v1

    rem-int/2addr v0, p1

    sub-int/2addr v2, v0

    if-gez v2, :cond_1

    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Lj$/util/concurrent/ThreadLocalRandom;->d(J)I

    move-result v0

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_1
    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bound must be positive"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final nextInt(II)I
    .locals 5

    if-ge p1, p2, :cond_5

    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/util/concurrent/ThreadLocalRandom;->d(J)I

    move-result v0

    if-ge p1, p2, :cond_4

    sub-int v1, p2, p1

    add-int/lit8 v2, v1, -0x1

    and-int v3, v1, v2

    if-nez v3, :cond_1

    and-int p2, v0, v2

    :cond_0
    add-int v0, p2, p1

    goto :goto_2

    :cond_1
    if-lez v1, :cond_2

    ushr-int/lit8 p2, v0, 0x1

    :goto_0
    add-int v0, p2, v2

    rem-int/2addr p2, v1

    sub-int/2addr v0, p2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom;->f()J

    move-result-wide v3

    invoke-static {v3, v4}, Lj$/util/concurrent/ThreadLocalRandom;->d(J)I

    move-result p2

    ushr-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-lt v0, p1, :cond_3

    if-lt v0, p2, :cond_4

    :cond_3
    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/util/concurrent/ThreadLocalRandom;->d(J)I

    move-result v0

    goto :goto_1

    :cond_4
    :goto_2
    return v0

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bound must be greater than origin"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final nextLong()J
    .locals 2

    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/util/concurrent/ThreadLocalRandom;->e(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final nextLong(J)J
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Lj$/util/concurrent/ThreadLocalRandom;->e(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long v4, p1, v4

    and-long v6, p1, v4

    cmp-long v8, v6, v0

    if-nez v8, :cond_0

    and-long p1, v2, v4

    goto :goto_1

    :cond_0
    const/4 v6, 0x1

    :goto_0
    ushr-long/2addr v2, v6

    add-long v7, v2, v4

    rem-long/2addr v2, p1

    sub-long/2addr v7, v2

    cmp-long v9, v7, v0

    if-gez v9, :cond_1

    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Lj$/util/concurrent/ThreadLocalRandom;->e(J)J

    move-result-wide v2

    goto :goto_0

    :cond_1
    move-wide p1, v2

    :goto_1
    return-wide p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bound must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public nextLong(JJ)J
    .locals 11

    cmp-long v0, p1, p3

    if-gez v0, :cond_5

    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom;->f()J

    move-result-wide v1

    invoke-static {v1, v2}, Lj$/util/concurrent/ThreadLocalRandom;->e(J)J

    move-result-wide v1

    if-gez v0, :cond_4

    sub-long v3, p3, p1

    const-wide/16 v5, 0x1

    sub-long v5, v3, v5

    and-long v7, v3, v5

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-nez v0, :cond_0

    and-long p3, v1, v5

    add-long v1, p3, p1

    goto :goto_2

    :cond_0
    cmp-long v0, v3, v9

    if-lez v0, :cond_2

    const/4 p3, 0x1

    ushr-long v0, v1, p3

    :goto_0
    add-long v7, v0, v5

    rem-long/2addr v0, v3

    sub-long/2addr v7, v0

    cmp-long p4, v7, v9

    if-gez p4, :cond_1

    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/util/concurrent/ThreadLocalRandom;->e(J)J

    move-result-wide v0

    ushr-long/2addr v0, p3

    goto :goto_0

    :cond_1
    add-long v1, v0, p1

    goto :goto_2

    :cond_2
    :goto_1
    cmp-long v0, v1, p1

    if-ltz v0, :cond_3

    cmp-long v0, v1, p3

    if-ltz v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/util/concurrent/ThreadLocalRandom;->e(J)J

    move-result-wide v1

    goto :goto_1

    :cond_4
    :goto_2
    return-wide v1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bound must be greater than origin"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setSeed(J)V
    .locals 0

    iget-boolean p1, p0, Lj$/util/concurrent/ThreadLocalRandom;->c:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
