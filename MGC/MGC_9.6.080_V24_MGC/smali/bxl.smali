.class public final Lbxl;
.super Lbxm;
.source "PG"


# direct methods
.method public constructor <init>(ILbxz;)V
    .locals 5

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_1
    throw p0

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, p1, p2, v4, v2}, Lbxm;-><init>(ILbxz;Lubk;Lubk;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x6

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x3

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    monitor-exit v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    monitor-exit v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget-object v0, Lbyg;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    monitor-enter v0

    nop

    nop

    :try_start_0
    sget-object v1, Lbyg;->h:Ljava/util/List;

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    if-ne v2, v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto :goto_10

    nop

    nop

    nop

    nop

    :cond_1
    move-object v2, v4

    nop

    nop

    nop

    nop

    :goto_10
    check-cast v2, Lubk;

    nop

    nop

    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    new-instance v2, Lbxi;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, v1}, Lbxi;-><init>(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lubk;Lubk;)Lbxm;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p0, Lbxj;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2}, Lbxj;-><init>(Lubk;Lubk;)V

    goto/32 :goto_3

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Lbyg;->c(Lubk;)Lbxt;

    move-result-object p0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    check-cast p0, Lbxm;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Lubk;)Lbxt;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lbyg;->c(Lubk;)Lbxt;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Lbxk;-><init>(Lubk;)V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    new-instance p0, Lbxk;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    :goto_4
    check-cast p0, Lbxq;

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
.end method

.method public final c()Lbxw;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    const-string v0, "Cannot apply the global snapshot directly. Call Snapshot.advanceGlobalSnapshot"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v0, Lbyg;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    throw p0

    nop

    nop

    :goto_4
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p0}, Lbxt;->z()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit v0

    nop

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
.end method

.method public final e()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Lbyg;->r()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final synthetic f()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-static {}, La;->aN()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic g()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {}, La;->aN()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method
