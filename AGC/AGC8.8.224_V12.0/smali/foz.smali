.class final Lfoz;
.super Lkoy;


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:J

.field final synthetic c:Lkpb;

.field final synthetic d:Lfpa;


# direct methods
.method public constructor <init>(Lfpa;Lkpb;JLkpb;)V
    .locals 0

    iput-object p1, p0, Lfoz;->d:Lfpa;

    iput-wide p3, p0, Lfoz;->b:J

    iput-object p5, p0, Lfoz;->c:Lkpb;

    invoke-direct {p0, p2}, Lkoy;-><init>(Lkpb;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lfoz;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 6

    iget-object v0, p0, Lfoz;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfoz;->d:Lfpa;

    iget-object v0, v0, Lfpa;->c:Lfry;

    iget-object v0, v0, Lfry;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    check-cast v0, Lkte;

    invoke-virtual {v0, v2}, Lkte;->d([Ljava/lang/Object;)V

    iget-object v0, p0, Lfoz;->d:Lfpa;

    iget-object v0, v0, Lfpa;->c:Lfry;

    iget-object v0, v0, Lfry;->a:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lfoz;->b:J

    sub-long/2addr v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    check-cast v0, Lkte;

    long-to-double v2, v2

    invoke-virtual {v0, v2, v3, v1}, Lkte;->e(D[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lfoz;->c:Lkpb;

    invoke-interface {v0}, Lkpb;->close()V

    return-void
.end method
