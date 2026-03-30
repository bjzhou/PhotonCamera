.class public final Lpjd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


# instance fields
.field public a:Ljava/lang/Runnable;

.field private final b:Lows;

.field private final c:Lppt;

.field private final d:Lpjv;

.field private final e:Ltxm;

.field private final f:Lpmt;

.field private g:Lpjb;

.field private h:Z

.field private final i:Lpqm;

.field private final j:Lhdn;


# direct methods
.method private final 33f5b80483094659737b73d90f80a8a4m(Lppr;)Lpjb;
    .locals 11

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_f

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    :goto_5
    const v0, 0x10

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lpjd;->b:Lows;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lows;->b()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_1

    nop

    nop

    iget-boolean v0, p0, Lpjd;->h:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_1

    nop

    nop

    iget-object v0, p0, Lpjd;->g:Lpjb;

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lpjd;->j:Lhdn;

    nop

    nop

    nop

    iget-object v6, p0, Lpjd;->a:Ljava/lang/Runnable;

    nop

    nop

    nop

    iget-object v7, p0, Lpjd;->d:Lpjv;

    nop

    nop

    nop

    iget-object v1, p0, Lpjd;->e:Ltxm;

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lpjh;

    nop

    nop

    nop

    invoke-virtual {v1}, Lpjh;->b()Landroidx/wear/ambient/AmbientDelegate;

    move-result-object v8

    nop

    nop

    nop

    iget-object v9, p0, Lpjd;->i:Lpqm;

    nop

    nop

    nop

    nop

    new-instance v10, Lpjb;

    nop

    nop

    nop

    iget-object v1, v0, Lhdn;->b:Ljava/lang/Object;

    nop

    nop

    invoke-interface {v1}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    iget-object v2, v0, Lhdn;->c:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-interface {v2}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    iget-object v0, v0, Lhdn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v0, Lkcj;

    nop

    invoke-virtual {v0}, Lkcj;->b()Lpnu;

    move-result-object v4

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, v2

    nop

    nop

    nop

    nop

    check-cast v3, Ltlk;

    nop

    move-object v2, v1

    nop

    nop

    check-cast v2, Lqcg;

    nop

    move-object v1, v10

    nop

    nop

    move-object v5, p1

    nop

    nop

    nop

    nop

    nop

    invoke-direct/range {v1 .. v9}, Lpjb;-><init>(Lqcg;Ltlk;Lpnu;Lppr;Ljava/lang/Runnable;Lpjv;Landroidx/wear/ambient/AmbientDelegate;Lpqm;)V

    iput-object v10, p0, Lpjd;->g:Lpjb;

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    return-object v10

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    throw p1

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lppr;->close()V

    new-instance p1, Lpfi;

    nop

    nop

    const-string v0, "FrameServer is closed."

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p1, v0}, Lpfi;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_e

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    :goto_a
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_2
    goto/32 :goto_0

    nop

    :goto_b
    invoke-virtual {v0}, Lpjb;->close()V

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    throw p1

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public constructor <init>(Lpjv;Lows;Lhdn;Ltxm;Lpnu;Lpqm;)V
    .locals 0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p6}, Lpqm;->b()Lrss;

    move-result-object p0

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1
    invoke-virtual {p1, p0}, Lpmt;->c(F)V

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    const-wide/16 p3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p6}, Lpqm;->a()F

    move-result p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lpjd;->b:Lows;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p1, p3, p4}, Lppt;-><init>(J)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p4, p0, Lpjd;->e:Ltxm;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p3, p0, Lpjd;->j:Lhdn;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :goto_b
    new-instance p1, Lpmt;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance p1, Lppt;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p2, p1}, Lows;->d(Lpci;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object p1, p0, Lpjd;->f:Lpmt;

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

    :goto_f
    iput-object p1, p0, Lpjd;->d:Lpjv;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_10
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lrss;->h()Z

    move-result p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p1, p5}, Lpmt;-><init>(Lpnu;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-object p6, p0, Lpjd;->i:Lpqm;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object p1, p0, Lpjd;->c:Lppt;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lpjb;
    .locals 3

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lpjd;->c:Lppt;

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

    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/InterruptedException;->addSuppressed(Ljava/lang/Throwable;)V

    :catch_0
    :goto_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    :catch_1
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    throw v0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    new-instance v0, Lpfi;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    const-wide/16 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_2

    nop

    nop

    nop

    nop

    nop

    :catch_2
    move-exception v0

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

    :goto_c
    invoke-direct {v0, p0}, Lpfi;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    :goto_e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1, v2}, Lppt;->c(J)Lsui;

    move-result-object v0

    nop

    nop

    nop

    :try_start_0
    invoke-interface {v0}, Lsui;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    check-cast v1, Lppr;

    nop

    nop

    nop

    invoke-direct {p0, v1}, Lpjd;->33f5b80483094659737b73d90f80a8a4m(Lppr;)Lpjb;

    move-result-object p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_11
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_14
    invoke-interface {v0, v1}, Lsui;->cancel(Z)Z

    :try_start_1
    invoke-static {v0}, Lsgj;->W(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lppr;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lppr;->close()V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    throw p0

    nop

    nop

    :catch_3
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()Lpjb;
    .locals 3

    goto/32 :goto_10

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    :catch_0
    goto/32 :goto_d

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    const v1, 0x1f

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    return-object v1

    nop

    nop

    nop

    :goto_5
    :try_start_0
    invoke-direct {p0, v0}, Lpjd;->33f5b80483094659737b73d90f80a8a4m(Lppr;)Lpjb;

    move-result-object p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Lpfi; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_7
    goto/32 :goto_a

    nop

    :goto_8
    invoke-virtual {v0, v1, v2}, Lppt;->b(J)Lppr;

    move-result-object v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_e

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

    :goto_b
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lpjd;->c:Lppt;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    return-object v1

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v1, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_10
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_11
    const-wide/16 v1, 0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method public final close()V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    :goto_0
    throw v0

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

    nop

    :goto_2
    const v0, 0xc

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    const v1, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Lpjb;->close()V

    :goto_6
    goto/32 :goto_b

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    :goto_8
    monitor-enter p0

    nop

    :try_start_0
    iget-boolean v0, p0, Lpjd;->h:Z

    nop

    nop

    if-eqz v0, :cond_1

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_1
    const/4 v0, 0x1

    nop

    nop

    nop

    iput-boolean v0, p0, Lpjd;->h:Z

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lpjd;->g:Lpjb;

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    iput-object v1, p0, Lpjd;->g:Lpjb;

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_9

    nop
.end method
