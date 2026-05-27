.class public final Lfgq;
.super Ljava/lang/Object;

# interfaces
.implements Lfkm;


# instance fields
.field public final a:Lgxy;

.field public b:Lmym;

.field public c:Z

.field public d:Z

.field public final e:Z

.field public f:Z

.field final synthetic g:Lfgr;

.field public h:Lfgt;

.field public i:Lfgt;

.field public j:Lfgt;

.field public final k:Lva;


# direct methods
.method public constructor <init>(Lfgr;Lgxy;Lva;Lmym;Z[B[B[B)V
    .locals 0

    iput-object p1, p0, Lfgq;->g:Lfgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lfgq;->d:Z

    iput-object p2, p0, Lfgq;->a:Lgxy;

    iput-object p3, p0, Lfgq;->k:Lva;

    iput-object p4, p0, Lfgq;->b:Lmym;

    iput-boolean p5, p0, Lfgq;->e:Z

    iput-boolean p1, p0, Lfgq;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Lfkd;)V
    .locals 4

    iget-object v0, p0, Lfgq;->g:Lfgr;

    iget-object v0, v0, Lfgr;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lfgq;->f:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lfgq;->b:Lmym;

    invoke-virtual {v1}, Lmym;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lfgr;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0x8d8

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const-string v2, "Cancelling session %s that already ended: %s"

    iget-object v3, p0, Lfgq;->a:Lgxy;

    invoke-interface {v1, v2, v3, p1}, Lnah;->z(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_1
    iget-boolean v1, p0, Lfgq;->e:Z

    if-eqz v1, :cond_2

    sget-object v1, Lfgr;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0x8d7

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const-string v2, "Cancelled a long shot for %s: %s"

    iget-object v3, p0, Lfgq;->a:Lgxy;

    invoke-interface {v1, v2, v3, p1}, Lnah;->z(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lfgq;->f:Z

    iget-object p1, p0, Lfgq;->g:Lfgr;

    invoke-virtual {p1}, Lfgr;->e()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(JLfkq;)V
    .locals 8

    iget-object v0, p0, Lfgq;->g:Lfgr;

    iget-object v0, v0, Lfgr;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfgq;->b:Lmym;

    invoke-virtual {v1}, Lmym;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lfgr;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 p2, 0x8dc

    invoke-interface {p1, p2}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const-string p2, "Ending session %s twice: %s"

    iget-object v1, p0, Lfgq;->a:Lgxy;

    invoke-interface {p1, p2, v1, p3}, Lnah;->z(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-boolean v1, p0, Lfgq;->f:Z

    if-eqz v1, :cond_1

    sget-object p1, Lfgr;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 p2, 0x8db

    invoke-interface {p1, p2}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const-string p2, "Ending already cancelled session %s: %s"

    iget-object v1, p0, Lfgq;->a:Lgxy;

    invoke-interface {p1, p2, v1, p3}, Lnah;->z(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Lfgq;->b:Lmym;

    invoke-virtual {v1}, Lmym;->i()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-lez v3, :cond_2

    sget-object v1, Lfgr;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0x8da

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lnah;

    const-string v3, "%s: Invalid range: %d to %d, with reason: %s"

    iget-object v4, p0, Lfgq;->a:Lgxy;

    iget-object v1, p0, Lfgq;->b:Lmym;

    invoke-virtual {v1}, Lmym;->i()Ljava/lang/Comparable;

    move-result-object v5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v7, p3

    invoke-interface/range {v2 .. v7}, Lnah;->C(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    iget-object p3, p0, Lfgq;->b:Lmym;

    invoke-virtual {p3}, Lmym;->i()Ljava/lang/Comparable;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iget-object p3, p0, Lfgq;->b:Lmym;

    invoke-virtual {p3}, Lmym;->i()Ljava/lang/Comparable;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p1}, Lmym;->e(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lmym;

    move-result-object p1

    iput-object p1, p0, Lfgq;->b:Lmym;

    iget-object p1, p0, Lfgq;->g:Lfgr;

    invoke-virtual {p1}, Lfgr;->e()V

    iget-object p1, p0, Lfgq;->g:Lfgr;

    invoke-virtual {p1}, Lfgr;->d()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
