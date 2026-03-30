.class public final Ljmn;
.super Ljava/lang/Thread;
.source "PG"


# instance fields
.field public final a:Ljava/util/concurrent/ArrayBlockingQueue;

.field public b:Z

.field private c:Ljny;

.field private d:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_13

    nop

    :goto_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/16 v1, 0x32

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    iput-boolean v0, p0, Ljmn;->b:Z

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    iput-object v1, p0, Ljmn;->c:Ljny;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v0, p0, Ljmn;->a:Ljava/util/concurrent/ArrayBlockingQueue;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_b
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_c
    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_f
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_10
    const v1, 0xe

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    :goto_13
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_14
    iput-object v0, p0, Ljmn;->d:Ljava/lang/Boolean;

    nop

    nop

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
.end method


# virtual methods
.method public final declared-synchronized a(Ljny;)V
    .locals 1

    goto/32 :goto_2

    nop

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

    :cond_0
    :try_start_0
    new-instance p1, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    nop

    const-string v0, "IncrementalAligner is already shut down."

    nop

    nop

    nop

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    :goto_1
    throw p1

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    :try_start_1
    invoke-virtual {p0}, Ljmn;->isInterrupted()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Ljmn;->isAlive()Z

    move-result v0

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    iput-object p1, p0, Ljmn;->c:Ljny;

    nop

    nop

    nop

    nop

    nop

    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    nop

    nop

    nop

    iput-object p1, p0, Ljmn;->d:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final interrupt()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ljmn;->a:Ljava/util/concurrent/ArrayBlockingQueue;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "Poison Pill"

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop
.end method

.method public final run()V
    .locals 7

    goto/32 :goto_23

    nop

    nop

    :goto_0
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v2, p0, Ljmn;->a:Ljava/util/concurrent/ArrayBlockingQueue;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    nop

    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    nop

    iput-boolean v1, p0, Ljmn;->b:Z

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v2, p0, Ljmn;->a:Ljava/util/concurrent/ArrayBlockingQueue;

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->isEmpty()Z

    move-result v2

    nop

    if-nez v2, :cond_7

    nop

    iget-object v2, p0, Ljmn;->a:Ljava/util/concurrent/ArrayBlockingQueue;

    nop

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v5, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    iput-boolean v3, p0, Ljmn;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0, v0}, Ljny;->a(Ljava/lang/Object;)V

    :goto_7
    goto/32 :goto_25

    nop

    nop

    :goto_8
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_9
    if-lt v4, v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_a
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->AlignNextImage()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_e
    if-nez v5, :cond_3

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    const-string v6, "Poison Pill"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_11
    check-cast v5, Ljava/lang/String;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_c

    nop

    nop

    :goto_13
    goto/16 :goto_31

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v5, p0, Ljmn;->d:Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move v1, v3

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1a
    goto :goto_19

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_b

    nop

    :goto_1d
    if-nez p0, :cond_5

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_20
    goto :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_17

    nop

    nop

    :goto_22
    invoke-virtual {p0}, Ljmn;->isInterrupted()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_23
    const v0, 0x12

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

    :goto_24
    const/4 v0, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_25
    return-void

    nop

    nop

    :goto_26
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_29
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_2a
    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_6
    :goto_2b
    goto/32 :goto_2f

    nop

    nop

    :goto_2c
    sget-object v5, Ljmp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p0}, Ljmn;->interrupt()V

    :cond_7
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object p0, p0, Ljmn;->c:Ljny;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_30
    move v4, v3

    nop

    :goto_31
    goto/32 :goto_9

    nop

    nop
.end method
