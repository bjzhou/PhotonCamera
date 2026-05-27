.class public final Lpag;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lpaf;

.field private static final b:I

.field private static final c:[Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lpaf;

    const/4 v1, 0x0

    new-array v2, v1, [B

    invoke-direct {v0, v2, v1, v1, v1}, Lpaf;-><init>([BIIZ)V

    sput-object v0, Lpag;->a:Lpaf;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/2addr v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    sput v0, Lpag;->b:I

    new-array v2, v0, [Ljava/util/concurrent/atomic/AtomicReference;

    :goto_0
    if-ge v1, v0, :cond_0

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sput-object v2, Lpag;->c:[Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static final a()Lpaf;
    .locals 4

    invoke-static {}, Lpag;->c()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    sget-object v1, Lpag;->a:Lpaf;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpaf;

    if-ne v2, v1, :cond_0

    new-instance v0, Lpaf;

    invoke-direct {v0}, Lpaf;-><init>()V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    new-instance v0, Lpaf;

    invoke-direct {v0}, Lpaf;-><init>()V

    return-object v0

    :cond_1
    iget-object v3, v2, Lpaf;->f:Lpaf;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iput-object v1, v2, Lpaf;->f:Lpaf;

    const/4 v0, 0x0

    iput v0, v2, Lpaf;->c:I

    return-object v2
.end method

.method public static final b(Lpaf;)V
    .locals 5

    iget-object v0, p0, Lpaf;->f:Lpaf;

    if-nez v0, :cond_4

    iget-object v0, p0, Lpaf;->g:Lpaf;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lpaf;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lpag;->c()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    sget-object v1, Lpag;->a:Lpaf;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpaf;

    if-ne v2, v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    if-eqz v2, :cond_2

    iget v3, v2, Lpaf;->c:I

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    const/high16 v4, 0x10000

    if-lt v3, v4, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :cond_3
    iput-object v2, p0, Lpaf;->f:Lpaf;

    iput v1, p0, Lpaf;->b:I

    add-int/lit16 v3, v3, 0x2000

    iput v3, p0, Lpaf;->c:I

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final c()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    sget v2, Lpag;->b:I

    int-to-long v2, v2

    const-wide/16 v4, -0x1

    add-long/2addr v2, v4

    and-long/2addr v0, v2

    sget-object v2, Lpag;->c:[Ljava/util/concurrent/atomic/AtomicReference;

    long-to-int v1, v0

    aget-object v0, v2, v1

    return-object v0
.end method
