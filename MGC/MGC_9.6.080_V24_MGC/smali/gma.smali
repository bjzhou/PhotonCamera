.class final Lgma;
.super Lngv;
.source "PG"


# instance fields
.field final synthetic a:Lgmc;

.field private b:Z


# direct methods
.method public constructor <init>(Lgmc;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lgma;->a:Lgmc;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lngv;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 4

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0xa

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x6

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lgma;->a:Lgmc;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, v0, Lgmc;->s:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    monitor-enter v0

    nop

    :try_start_0
    iget-object v1, p0, Lgma;->a:Lgmc;

    nop

    iget-object v1, v1, Lgmc;->A:Lfdo;

    nop

    nop

    nop

    invoke-virtual {v1}, Lfdo;->w()Z

    move-result v1

    nop

    const/4 v2, 0x0

    nop

    nop

    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    iget-boolean v1, p0, Lgma;->b:Z

    nop

    nop

    if-nez v1, :cond_2

    nop

    nop

    nop

    sget-object v1, Lhmq;->a:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    iget-object v1, p0, Lgma;->a:Lgmc;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lgmc;->r:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    if-eqz v3, :cond_1

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    check-cast v3, Lgoc;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v2}, Lgoc;->k(Z)V

    goto :goto_c

    nop

    nop

    :cond_1
    iget-object v1, p0, Lgma;->a:Lgmc;

    nop

    nop

    nop

    iget-object v1, v1, Lgmc;->f:Lngo;

    nop

    invoke-interface {v1, v2}, Lngo;->E(Z)V

    :cond_2
    :goto_d
    iput-boolean v2, p0, Lgma;->b:Z

    nop

    nop

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

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7

    nop
.end method

.method public final e()V
    .locals 3

    goto/32 :goto_b

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

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    const v1, 0x7

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lgma;->a:Lgmc;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    iget-object v0, v0, Lgmc;->s:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iput-boolean v1, p0, Lgma;->b:Z

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lgma;->a:Lgmc;

    nop

    nop

    iget-object v1, v1, Lgmc;->A:Lfdo;

    nop

    nop

    nop

    invoke-virtual {v1}, Lfdo;->w()Z

    move-result v1

    nop

    nop

    nop

    nop

    if-nez v1, :cond_0

    nop

    iget-object p0, p0, Lgma;->a:Lgmc;

    nop

    nop

    nop

    iget-object p0, p0, Lgmc;->r:Ljava/util/List;

    nop

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Lgoc;

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lgoc;->k(Z)V

    goto :goto_8

    nop

    :cond_0
    monitor-exit v0

    nop

    nop

    nop

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

    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_a
    monitor-enter v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    throw p0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method
