.class public final Ljwj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkag;


# instance fields
.field public final a:Llxm;

.field public b:Lsay;

.field public c:Z

.field public d:Z

.field public final e:Z

.field public f:Z

.field final synthetic g:Ljwk;

.field public h:Ljwl;

.field public i:Ljwl;

.field public j:Ljwl;

.field public final k:Lhdn;


# direct methods
.method public constructor <init>(Ljwk;Llxm;Lhdn;Lsay;Z)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Ljwj;->k:Lhdn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p4, p0, Ljwj;->b:Lsay;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean p1, p0, Ljwj;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Ljwj;->g:Ljwk;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    iput-boolean p5, p0, Ljwj;->e:Z

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p2, p0, Ljwj;->a:Llxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-boolean p1, p0, Ljwj;->c:Z

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljzx;)V
    .locals 4

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iget-object v0, v0, Ljwk;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    const v1, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    iget-object v0, p0, Ljwj;->g:Ljwk;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-boolean v1, p0, Ljwj;->f:Z

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    :cond_0
    iget-object v1, p0, Ljwj;->b:Lsay;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lsay;->l()Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    sget-object v1, Ljwk;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    const/16 v2, 0xab6

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    check-cast v1, Lscz;

    nop

    nop

    nop

    nop

    const-string v2, "Cancelling session %s that already ended: %s"

    nop

    nop

    iget-object p0, p0, Ljwj;->a:Llxm;

    nop

    nop

    invoke-interface {v1, v2, p0, p1}, Lscz;->E(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    nop

    return-void

    nop

    :cond_1
    iget-boolean v1, p0, Ljwj;->e:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    sget-object v1, Ljwk;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    const/16 v2, 0xab5

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    check-cast v1, Lscz;

    nop

    const-string v2, "Cancelled a long shot for %s: %s"

    nop

    nop

    nop

    nop

    iget-object v3, p0, Ljwj;->a:Llxm;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2, v3, p1}, Lscz;->E(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    const/4 p1, 0x1

    nop

    iput-boolean p1, p0, Ljwj;->f:Z

    nop

    nop

    nop

    iget-object p0, p0, Ljwj;->g:Ljwk;

    nop

    nop

    nop

    invoke-virtual {p0}, Ljwk;->d()V

    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    :goto_8
    throw p0

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(JLkak;)V
    .locals 8

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_4
    iget-object v0, p0, Ljwj;->g:Ljwk;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, v0, Ljwk;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    monitor-enter v0

    nop

    :try_start_0
    iget-object v1, p0, Ljwj;->b:Lsay;

    nop

    nop

    nop

    invoke-virtual {v1}, Lsay;->l()Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    sget-object p1, Ljwk;->a:Lsdb;

    nop

    nop

    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    const/16 p2, 0xaba

    nop

    nop

    nop

    invoke-interface {p1, p2}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    check-cast p1, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string p2, "Ending session %s twice: %s"

    nop

    nop

    nop

    nop

    iget-object p0, p0, Ljwj;->a:Llxm;

    nop

    invoke-interface {p1, p2, p0, p3}, Lscz;->E(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :cond_1
    iget-boolean v1, p0, Ljwj;->f:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    sget-object p1, Ljwk;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    const/16 p2, 0xab9

    nop

    nop

    invoke-interface {p1, p2}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    check-cast p1, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string p2, "Ending already cancelled session %s: %s"

    nop

    nop

    iget-object p0, p0, Ljwj;->a:Llxm;

    nop

    nop

    invoke-interface {p1, p2, p0, p3}, Lscz;->E(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    :cond_2
    iget-object v1, p0, Ljwj;->b:Lsay;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lsay;->h()Ljava/lang/Comparable;

    move-result-object v1

    nop

    check-cast v1, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    nop

    cmp-long v1, v1, p1

    nop

    if-lez v1, :cond_3

    nop

    nop

    nop

    nop

    sget-object v1, Ljwk;->a:Lsdb;

    nop

    nop

    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    const/16 v2, 0xab8

    nop

    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    move-object v2, v1

    nop

    nop

    nop

    check-cast v2, Lscz;

    nop

    nop

    nop

    const-string v3, "%s: Invalid range: %d to %d, with reason: %s"

    nop

    nop

    nop

    nop

    nop

    iget-object v4, p0, Ljwj;->a:Llxm;

    nop

    nop

    nop

    nop

    iget-object v1, p0, Ljwj;->b:Lsay;

    nop

    nop

    invoke-virtual {v1}, Lsay;->h()Ljava/lang/Comparable;

    move-result-object v5

    nop

    nop

    nop

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    move-object v7, p3

    nop

    nop

    nop

    invoke-interface/range {v2 .. v7}, Lscz;->H(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    iget-object p3, p0, Ljwj;->b:Lsay;

    nop

    nop

    nop

    invoke-virtual {p3}, Lsay;->h()Ljava/lang/Comparable;

    move-result-object p3

    nop

    nop

    check-cast p3, Ljava/lang/Long;

    nop

    nop

    nop

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    nop

    nop

    nop

    nop

    nop

    iget-object p3, p0, Ljwj;->b:Lsay;

    nop

    nop

    nop

    invoke-virtual {p3}, Lsay;->h()Ljava/lang/Comparable;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    check-cast p3, Ljava/lang/Long;

    nop

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    nop

    nop

    invoke-static {p3, p1}, Lsay;->e(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lsay;

    move-result-object p1

    nop

    nop

    iput-object p1, p0, Ljwj;->b:Lsay;

    nop

    nop

    nop

    nop

    iget-object p1, p0, Ljwj;->g:Ljwk;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljwk;->d()V

    iget-object p0, p0, Ljwj;->g:Ljwk;

    nop

    invoke-virtual {p0}, Ljwk;->c()V

    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop
.end method
