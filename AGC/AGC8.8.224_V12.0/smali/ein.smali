.class public final Lein;
.super Ljava/lang/Object;

# interfaces
.implements Ljzs;


# instance fields
.field final synthetic a:Lgpx;

.field final synthetic b:Leio;

.field final synthetic c:I


# direct methods
.method public constructor <init>(Leio;Lgpx;I)V
    .locals 0

    iput-object p1, p0, Lein;->b:Leio;

    iput-object p2, p0, Lein;->a:Lgpx;

    iput p3, p0, Lein;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 8

    check-cast p1, Lgpx;

    iget-object p1, p0, Lein;->a:Lgpx;

    invoke-interface {p1, p0}, Lgpx;->e(Ljzs;)V

    iget-object p1, p0, Lein;->b:Leio;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Leio;->G:J

    iget-object p1, p0, Lein;->b:Leio;

    iget-object v0, p1, Leio;->i:Lfbz;

    iget v1, p0, Lein;->c:I

    iget-object p1, p1, Leio;->I:Lehx;

    invoke-virtual {p1}, Lehx;->c()V

    iget-object p1, p0, Lein;->b:Leio;

    iget-wide v2, p1, Leio;->G:J

    iget-wide v4, p1, Leio;->F:J

    sub-long/2addr v2, v4

    iget-wide v4, p1, Leio;->E:J

    iget-wide v6, p1, Leio;->D:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iget-object p1, p0, Lein;->b:Leio;

    invoke-virtual {p1}, Leio;->b()F

    move-result v6

    iget-object p1, p0, Lein;->b:Leio;

    iget-object p1, p1, Leio;->h:Ljwb;

    invoke-interface {p1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface/range {v0 .. v7}, Lfbz;->ay(IJJFZ)V

    iget-object p1, p0, Lein;->b:Leio;

    iget-object p1, p1, Leio;->l:Ljava/util/Set;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lein;->b:Leio;

    iget-object v1, v0, Leio;->l:Ljava/util/Set;

    iget-object v0, v0, Leio;->I:Lehx;

    invoke-virtual {v0}, Lehx;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
