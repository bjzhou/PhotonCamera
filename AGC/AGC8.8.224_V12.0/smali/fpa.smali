.class final Lfpa;
.super Ljava/lang/Object;

# interfaces
.implements Lfsl;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lfsl;

.field final synthetic c:Lfry;


# direct methods
.method public constructor <init>(Lfry;JLfsl;[B)V
    .locals 0

    iput-object p1, p0, Lfpa;->c:Lfry;

    iput-wide p2, p0, Lfpa;->a:J

    iput-object p4, p0, Lfpa;->b:Lfsl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    iget-object v0, p0, Lfpa;->c:Lfry;

    iget-object v0, v0, Lfry;->d:Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "cancelled"

    aput-object v4, v2, v3

    check-cast v0, Lkte;

    invoke-virtual {v0, v2}, Lkte;->d([Ljava/lang/Object;)V

    iget-object v0, p0, Lfpa;->c:Lfry;

    iget-object v0, v0, Lfry;->c:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lfpa;->a:J

    sub-long/2addr v5, v7

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v3

    check-cast v0, Lkte;

    long-to-double v2, v5

    invoke-virtual {v0, v2, v3, v1}, Lkte;->e(D[Ljava/lang/Object;)V

    iget-object v0, p0, Lfpa;->b:Lfsl;

    invoke-interface {v0}, Lfsl;->a()V

    return-void
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 9

    instance-of v0, p1, Ljava/util/concurrent/TimeoutException;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfpa;->c:Lfry;

    iget-object v0, v0, Lfry;->d:Ljava/lang/Object;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "timeout"

    aput-object v4, v3, v1

    check-cast v0, Lkte;

    invoke-virtual {v0, v3}, Lkte;->d([Ljava/lang/Object;)V

    iget-object v0, p0, Lfpa;->c:Lfry;

    iget-object v0, v0, Lfry;->c:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lfpa;->a:J

    sub-long/2addr v5, v7

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v1

    check-cast v0, Lkte;

    long-to-double v3, v5

    invoke-virtual {v0, v3, v4, v2}, Lkte;->e(D[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lfpa;->c:Lfry;

    iget-object v0, v0, Lfry;->d:Ljava/lang/Object;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "failed"

    aput-object v4, v3, v1

    check-cast v0, Lkte;

    invoke-virtual {v0, v3}, Lkte;->d([Ljava/lang/Object;)V

    iget-object v0, p0, Lfpa;->c:Lfry;

    iget-object v0, v0, Lfry;->c:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lfpa;->a:J

    sub-long/2addr v5, v7

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v1

    check-cast v0, Lkte;

    long-to-double v3, v5

    invoke-virtual {v0, v3, v4, v2}, Lkte;->e(D[Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lfpa;->b:Lfsl;

    invoke-interface {v0, p1}, Lfsl;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c(Lkpb;)V
    .locals 11

    iget-object v0, p0, Lfpa;->c:Lfry;

    iget-object v0, v0, Lfry;->d:Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "success"

    aput-object v4, v2, v3

    check-cast v0, Lkte;

    invoke-virtual {v0, v2}, Lkte;->d([Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-object v0, p0, Lfpa;->c:Lfry;

    iget-object v0, v0, Lfry;->c:Ljava/lang/Object;

    iget-wide v5, p0, Lfpa;->a:J

    sub-long v5, v8, v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v3

    check-cast v0, Lkte;

    long-to-double v2, v5

    invoke-virtual {v0, v2, v3, v1}, Lkte;->e(D[Ljava/lang/Object;)V

    iget-object v0, p0, Lfpa;->b:Lfsl;

    new-instance v1, Lfoz;

    move-object v5, v1

    move-object v6, p0

    move-object v7, p1

    move-object v10, p1

    invoke-direct/range {v5 .. v10}, Lfoz;-><init>(Lfpa;Lkpb;JLkpb;)V

    invoke-interface {v0, v1}, Lfsl;->c(Lkpb;)V

    return-void
.end method
