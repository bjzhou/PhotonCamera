.class public abstract Loql;
.super Lopq;


# instance fields
.field private c:J

.field public d:Lovy;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lopq;-><init>()V

    return-void
.end method

.method private static final cW(Z)J
    .locals 2

    if-eqz p0, :cond_0

    const-wide v0, 0x100000000L

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public static synthetic q(Loql;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Loql;->k(Z)V

    return-void
.end method

.method public static synthetic r(Loql;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Loql;->m(Z)V

    return-void
.end method


# virtual methods
.method protected abstract c()Ljava/lang/Thread;
.end method

.method protected h(JLoqo;)V
    .locals 1

    sget-object v0, Lopy;->c:Lopy;

    invoke-virtual {v0, p1, p2, p3}, Loqq;->s(JLoqo;)V

    return-void
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public j()J
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final k(Z)V
    .locals 4

    iget-wide v0, p0, Loql;->c:J

    invoke-static {p1}, Loql;->cW(Z)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Loql;->c:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    return-void

    :cond_0
    sget-boolean p1, Lopw;->a:Z

    iget-boolean p1, p0, Loql;->e:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Loql;->i()V

    :cond_1
    return-void
.end method

.method public final l(Loqd;)V
    .locals 12

    iget-object v0, p0, Loql;->d:Lovy;

    if-nez v0, :cond_0

    new-instance v0, Lovy;

    invoke-direct {v0}, Lovy;-><init>()V

    iput-object v0, p0, Loql;->d:Lovy;

    goto :goto_0

    :cond_0
    :goto_0
    iget-object v1, v0, Lovy;->a:[Ljava/lang/Object;

    iget v2, v0, Lovy;->c:I

    aput-object p1, v1, v2

    add-int/lit8 v2, v2, 0x1

    array-length p1, v1

    add-int/lit8 v3, p1, -0x1

    and-int/2addr v2, v3

    iput v2, v0, Lovy;->c:I

    iget v4, v0, Lovy;->b:I

    if-ne v2, v4, :cond_1

    add-int v2, p1, p1

    new-array v11, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    move-object v2, v11

    invoke-static/range {v1 .. v6}, Lljr;->aG([Ljava/lang/Object;[Ljava/lang/Object;IIII)V

    iget-object v5, v0, Lovy;->a:[Ljava/lang/Object;

    array-length v1, v5

    iget v9, v0, Lovy;->b:I

    sub-int v7, v1, v9

    const/4 v8, 0x0

    const/4 v10, 0x4

    move-object v6, v11

    invoke-static/range {v5 .. v10}, Lljr;->aG([Ljava/lang/Object;[Ljava/lang/Object;IIII)V

    iput-object v11, v0, Lovy;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, v0, Lovy;->b:I

    iput p1, v0, Lovy;->c:I

    :cond_1
    return-void
.end method

.method public final m(Z)V
    .locals 4

    iget-wide v0, p0, Loql;->c:J

    invoke-static {p1}, Loql;->cW(Z)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Loql;->c:J

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Loql;->e:Z

    :cond_0
    return-void
.end method

.method public final n()Z
    .locals 6

    iget-wide v0, p0, Loql;->c:J

    const/4 v2, 0x1

    invoke-static {v2}, Loql;->cW(Z)J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-ltz v5, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final o()Z
    .locals 7

    iget-object v0, p0, Loql;->d:Lovy;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, v0, Lovy;->b:I

    iget v3, v0, Lovy;->c:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lovy;->a:[Ljava/lang/Object;

    aget-object v6, v3, v2

    aput-object v5, v3, v2

    add-int/2addr v2, v4

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    iput v2, v0, Lovy;->b:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v5, v6

    :goto_0
    check-cast v5, Loqd;

    if-nez v5, :cond_2

    return v1

    :cond_2
    invoke-virtual {v5}, Loqd;->run()V

    return v4
.end method

.method protected final p()V
    .locals 2

    invoke-virtual {p0}, Loql;->c()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v1, v0, :cond_0

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_0
    return-void
.end method
