.class public final Lmnb;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicLong;

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final c:Lnph;

.field public final d:Lnol;

.field private final e:Ljava/util/concurrent/atomic/AtomicReference;

.field private final f:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lnnn;Ljava/util/concurrent/Executor;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const/high16 v1, -0x80000000

    invoke-static {v1, v1}, Lmnb;->b(II)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lmnb;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmnb;->b:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmnb;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lnnv;->a:Lnnv;

    invoke-static {v0}, Lnsy;->s(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lmnb;->f:Ljava/util/concurrent/Executor;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iput-object v0, p0, Lmnb;->c:Lnph;

    new-instance v1, Lnol;

    const/4 v2, 0x1

    invoke-direct {v1, p1, p2, v2}, Lnol;-><init>(Lnnn;Ljava/util/concurrent/Executor;I)V

    iput-object v1, p0, Lmnb;->d:Lnol;

    sget-object p1, Lnnv;->a:Lnnv;

    invoke-virtual {v0, v1, p1}, Lnph;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static a(J)I
    .locals 1

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method public static b(II)J
    .locals 4

    int-to-long v0, p0

    int-to-long p0, p1

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public final c()Lnou;
    .locals 7

    iget-object v0, p0, Lmnb;->c:Lnph;

    invoke-virtual {v0}, Lnph;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lmnb;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Lmnb;->a(J)I

    move-result v2

    long-to-int v3, v0

    iget-object v4, p0, Lmnb;->a:Ljava/util/concurrent/atomic/AtomicLong;

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lmnb;->b(II)J

    move-result-wide v5

    invoke-virtual {v4, v0, v1, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iget-object v1, p0, Lmnb;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnou;

    if-nez v1, :cond_1

    new-instance v1, Lmmx;

    invoke-direct {v1, p0, v2}, Lmmx;-><init>(Lmnb;I)V

    invoke-static {v1}, Lmny;->a(Lnnn;)Lnnn;

    move-result-object v1

    sget-object v3, Lnnv;->a:Lnnv;

    invoke-static {v1, v3}, Lnsy;->G(Lnnn;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v3, Lmmy;

    invoke-direct {v3, p0, v2}, Lmmy;-><init>(Lmnb;I)V

    invoke-static {v3}, Lmny;->b(Lnno;)Lnno;

    move-result-object v3

    iget-object v4, p0, Lmnb;->f:Ljava/util/concurrent/Executor;

    const-class v5, Ljava/lang/Throwable;

    invoke-static {v1, v5, v3, v4}, Lnml;->j(Lnou;Ljava/lang/Class;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lnph;->f(Lnou;)Z

    new-instance v1, Lmmz;

    invoke-direct {v1, p0, v2}, Lmmz;-><init>(Lmnb;I)V

    new-instance v2, Lmmw;

    invoke-direct {v2, p0, v0, v1}, Lmmw;-><init>(Lmnb;Lnph;Lmmz;)V

    sget-object v3, Lnnv;->a:Lnnv;

    invoke-virtual {v0, v2, v3}, Lnph;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v1

    :cond_2
    iget-object v0, p0, Lmnb;->c:Lnph;

    return-object v0
.end method

.method public final d(I)Lnou;
    .locals 3

    iget-object v0, p0, Lmnb;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Lmnb;->a(J)I

    move-result v0

    if-le v0, p1, :cond_0

    invoke-static {}, Lnsy;->z()Lnou;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lmna;

    invoke-direct {v0, p1}, Lmna;-><init>(I)V

    :cond_1
    iget-object v1, p0, Lmnb;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmna;

    if-eqz v1, :cond_3

    iget v2, v1, Lmna;->a:I

    if-gt v2, p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lnsy;->z()Lnou;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    iget-object v2, p0, Lmnb;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v1, v0}, Lljz;->i(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmnb;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-static {v1, v2}, Lmnb;->a(J)I

    move-result v1

    if-le v1, p1, :cond_4

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lnnb;->cancel(Z)Z

    iget-object p1, p0, Lmnb;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lljz;->i(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object v0

    :cond_4
    iget-object p1, p0, Lmnb;->d:Lnol;

    iget-object v1, p1, Lnol;->a:Ljava/lang/Object;

    iget-object p1, p1, Lnol;->b:Ljava/lang/Object;

    if-eqz v1, :cond_6

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lmny;->a(Lnnn;)Lnnn;

    move-result-object v1

    invoke-static {v1, p1}, Lnsy;->G(Lnnn;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmna;->f(Lnou;)Z

    goto :goto_2

    :cond_6
    :goto_1
    iget-object p1, p0, Lmnb;->c:Lnph;

    invoke-virtual {v0, p1}, Lmna;->f(Lnou;)Z

    :goto_2
    return-object v0
.end method
