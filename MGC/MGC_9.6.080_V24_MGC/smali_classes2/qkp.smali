.class public final Lqkp;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/media/MediaCodec;

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final c:Landroid/view/Surface;

.field public final d:Ljava/util/Deque;

.field public final e:Lsuu;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j:Lqko;

.field public final k:Ljava/util/Set;

.field public final l:Ljava/util/Set;

.field public final m:Z

.field public volatile n:Lqlj;

.field public volatile o:Lqkz;

.field private final p:Z


# direct methods
.method private final 1478a1c7833aac5e360e0ba4b0c0c568m()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lqkp;->d:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Ljava/util/Set;->clear()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    iget-object p0, p0, Lqkp;->l:Ljava/util/Set;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    goto/32 :goto_6

    nop

    nop

    :goto_6
    iget-object v0, p0, Lqkp;->k:Ljava/util/Set;

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method private final 19e596a3e324281407eb5c11093c0152m()I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

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
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lqkp;->d:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    const/4 p0, -0x1

    nop

    nop

    nop

    nop

    return p0

    nop

    nop

    :cond_0
    iget-object v0, p0, Lqkp;->d:Ljava/util/Deque;

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    return v0

    nop

    :catchall_0
    move-exception v0

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method private final 51550bab6b6440a4fd45f825c221b363m(Z)V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p1

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_0
    const-string v0, "AsynchMediaCodec"

    nop

    const-string v1, "Exception while trying to stop codec"

    nop

    nop

    nop

    nop

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    if-eqz p1, :cond_0

    nop

    nop

    nop

    iget-object p1, p0, Lqkp;->j:Lqko;

    nop

    iget-object v1, p0, Lqkp;->a:Landroid/media/MediaCodec;

    nop

    invoke-virtual {p1, v1, v0}, Lqko;->onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V

    :cond_0
    :goto_4
    invoke-direct {p0}, Lqkp;->1478a1c7833aac5e360e0ba4b0c0c568m()V

    :goto_5
    iget-object p1, p0, Lqkp;->e:Lsuu;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lsuu;->isDone()Z

    move-result p1

    nop

    if-nez p1, :cond_2

    nop

    nop

    nop

    iget-object p1, p0, Lqkp;->a:Landroid/media/MediaCodec;

    nop

    nop

    sget-boolean v0, Lqhh;->a:Z

    nop

    nop

    invoke-virtual {p1}, Landroid/media/MediaCodec;->release()V

    iget-object p1, p0, Lqkp;->c:Landroid/view/Surface;

    nop

    if-eqz p1, :cond_1

    nop

    iget-boolean v0, p0, Lqkp;->p:Z

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    :cond_1
    iget-object p1, p0, Lqkp;->e:Lsuu;

    nop

    nop

    nop

    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v0}, Lsuu;->e(Ljava/lang/Object;)Z

    :cond_2
    monitor-exit p0

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

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_3
    goto/32 :goto_8

    nop

    :goto_7
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_4
    :try_start_1
    iget-object v0, p0, Lqkp;->a:Landroid/media/MediaCodec;

    nop

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_1
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    const v0, 0x10

    nop

    nop

    goto/32 :goto_c

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
    const v1, 0x1e

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    monitor-enter p0

    nop

    nop

    nop

    :try_start_2
    iget-object v0, p0, Lqkp;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    const/4 v1, 0x0

    nop

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_7

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

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
.end method

.method public constructor <init>(Landroid/media/MediaCodec;Landroid/media/MediaFormat;Lrsk;ZLandroid/os/Handler;Z)V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object v0, p0, Lqkp;->k:Ljava/util/Set;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v0, Lqkz;->c:Lqkz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x6

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_3
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz p5, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ljava/util/HashSet;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_7
    iput-boolean p6, p0, Lqkp;->m:Z

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p4, p0, Lqkp;->j:Lqko;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    :goto_b
    new-instance p4, Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_d
    invoke-static {p1, p2, p6}, Lqkp;->k(Landroid/media/MediaCodec;Landroid/media/MediaFormat;Z)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_39

    nop

    nop

    :goto_f
    iput-object v0, p0, Lqkp;->o:Lqkz;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_10
    if-eqz p3, :cond_1

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_1
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_12
    check-cast p1, Landroid/view/Surface;

    nop

    :goto_13
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {p3, p1}, Lrsk;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_15
    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    :goto_18
    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1f

    nop

    :goto_1a
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput-object v0, p0, Lqkp;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {p4}, Lsuu;-><init>()V

    goto/32 :goto_2a

    nop

    nop

    :goto_1e
    return-void

    nop

    :goto_1f
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_20
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {p4, p0}, Lqko;-><init>(Lqkp;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {p4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_3b

    nop

    nop

    :goto_23
    iput-object p1, p0, Lqkp;->c:Landroid/view/Surface;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_25
    sget-object v0, Lqlj;->a:Lqlj;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_26
    iput-object v0, p0, Lqkp;->n:Lqlj;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_1a

    nop

    :goto_28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    new-instance p4, Lqko;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2a
    iput-object p4, p0, Lqkp;->e:Lsuu;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    goto/32 :goto_40

    nop

    nop

    :goto_2c
    invoke-virtual {p1, p4, p5}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    :goto_2d
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    new-instance v0, Ljava/util/HashSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iput-object v0, p0, Lqkp;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_31
    goto :goto_2d

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_33
    const v1, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_34
    iput-object v0, p0, Lqkp;->l:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p1, p4}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_13

    nop

    nop

    :goto_38
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iput-object p4, p0, Lqkp;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    :goto_3a
    invoke-direct {p4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_3b
    iput-object p4, p0, Lqkp;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_3c
    iput-object p1, p0, Lqkp;->a:Landroid/media/MediaCodec;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3d
    iput-boolean p4, p0, Lqkp;->p:Z

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iput-object p4, p0, Lqkp;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_3f
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_40
    iput-object v0, p0, Lqkp;->d:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method private static k(Landroid/media/MediaCodec;Landroid/media/MediaFormat;Z)V
    .locals 2

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string p2, "AsynchMediaCodec"

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

    :goto_1
    return-void

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    or-int/lit8 v0, v0, 0x2

    nop

    nop

    :goto_5
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object p1

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

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_b
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    const-string v0, "Error while configuring codec: "

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez p2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    const v0, 0x1b

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p2, v1}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string v1, "Block mode requires Android R"

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x19

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_3

    nop

    :goto_16
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_17
    const/4 p2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_18
    const/4 p2, 0x0

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p0, p1, p2, p2, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_16

    nop
.end method


# virtual methods
.method public final a()Lqkr;
    .locals 3

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_18

    nop

    :goto_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_4
    const-string v0, "MediaCodec configured to use input surface. Should not be requesting for a byte buffer"

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_5
    const-string v0, "AsynchMediaCodec"

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v1, Lqkl;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_9
    return-object v1

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    const-string v2, "Error occurred while trying to fetch input buffer"

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    throw v0

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    iget-object v2, p0, Lqkp;->j:Lqko;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_e
    new-instance p0, Ljava/lang/AssertionError;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    return-object v1

    nop

    :catch_0
    move-exception v0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v0, v1}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    xor-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_1
    goto/32 :goto_1

    nop

    :goto_13
    if-ltz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v2, p0, v0}, Lqko;->onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-boolean v0, p0, Lqkp;->m:Z

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_16
    if-eqz v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_17
    throw p0

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {p0}, Lqkp;->19e596a3e324281407eb5c11093c0152m()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lqkp;->c:Landroid/view/Surface;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v1, p0, v2, v0}, Lqkl;-><init>(Lqkp;Ljava/nio/ByteBuffer;I)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lqkp;->k:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    nop

    nop

    nop

    nop

    return-object v1

    nop

    :catchall_1
    move-exception v0

    nop

    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v1, 0x0

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_21
    iget-object p0, p0, Lqkp;->a:Landroid/media/MediaCodec;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_22
    const-string v1, "nextByteBuffer() called on codec in block mode"

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_23
    add-int v0, v0, v1

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
    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_25
    return-object v1

    nop

    :goto_26
    :try_start_1
    iget-object v2, p0, Lqkp;->a:Landroid/media/MediaCodec;

    nop

    nop

    invoke-virtual {v2, v0}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    nop

    nop
    :try_end_1
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v0, 0xd

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final b()Lqkr;
    .locals 3

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lqkp;->a:Landroid/media/MediaCodec;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1
    return-object v1

    nop

    nop

    :goto_2
    :try_start_0
    iget-object v2, p0, Lqkp;->a:Landroid/media/MediaCodec;

    nop

    nop

    invoke-virtual {v2, v0}, Landroid/media/MediaCodec;->getQueueRequest(I)Landroid/media/MediaCodec$QueueRequest;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string v2, "Exception occurred in getQueueRequest"

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v0, v1}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_7
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    const v1, 0x6

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v2, p0, Lqkp;->j:Lqko;

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

    :goto_b
    iget-boolean v0, p0, Lqkp;->m:Z

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_c
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v2, Lqkm;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v2, p0, v1, v0}, Lqkm;-><init>(Lqkp;Landroid/media/MediaCodec$QueueRequest;I)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x14

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_10
    return-object v2

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p0}, Lqkp;->19e596a3e324281407eb5c11093c0152m()I

    move-result v0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v0, "AsynchMediaCodec"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_14
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_15
    return-object v1

    nop

    nop

    :goto_16
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_17
    if-ltz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_8

    nop

    :goto_19
    invoke-virtual {v2, p0, v0}, Lqko;->onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const-string v1, "nextRequest() requires codec configured in block mode"

    nop

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
.end method

.method public final c(Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    iget p1, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Lqkp;->1478a1c7833aac5e360e0ba4b0c0c568m()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p1, v0}, Lqkz;->d(I)V

    goto/32 :goto_d

    nop

    nop

    :goto_6
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    and-int/lit8 p1, p1, 0x4

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p1, p0, Lqkp;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p1, p0, Lqkp;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    iget-object p1, p0, Lqkp;->o:Lqkz;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    :goto_d
    goto :goto_15

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p1, p0, Lqkp;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_11
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_12
    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_13
    iget-object p1, p0, Lqkp;->o:Lqkz;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_14
    invoke-interface {p1, v0}, Lqkz;->d(I)V

    :goto_15
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Lqkp;->d()V

    :goto_18
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_19
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, v0}, Lqkp;->51550bab6b6440a4fd45f825c221b363m(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()V
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

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-direct {p0, v0}, Lqkp;->51550bab6b6440a4fd45f825c221b363m(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized f()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_0
    invoke-virtual {p0, v0}, Lqkp;->g(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_7
    const v0, 0x6

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_8
    monitor-exit p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_3
    :goto_a
    goto/32 :goto_12

    nop

    nop

    :goto_b
    monitor-exit p0

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
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_11

    nop

    nop

    :goto_e
    throw v0

    nop

    :goto_f
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_10
    monitor-exit p0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_11
    monitor-enter p0

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lqkp;->c:Landroid/view/Surface;

    nop

    if-nez v0, :cond_3

    nop

    nop

    nop

    iget-boolean v0, p0, Lqkp;->m:Z

    nop

    nop

    if-eqz v0, :cond_4

    nop

    nop

    nop

    goto :goto_a

    nop

    nop

    nop

    nop

    :cond_4
    invoke-direct {p0}, Lqkp;->19e596a3e324281407eb5c11093c0152m()I

    move-result v0

    nop

    nop

    nop

    if-gez v0, :cond_2

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lqkp;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    nop

    nop

    const/4 v1, 0x1

    nop

    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lqkp;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :try_start_2
    invoke-virtual {p0, v0}, Lqkp;->g(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_3
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public final g(I)V
    .locals 9

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_22

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_11

    nop

    :goto_4
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_22

    nop

    nop

    nop

    :catch_0
    move-exception p1

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

    nop

    nop

    :goto_6
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lqkp;->m:Z

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_4

    nop

    nop

    nop

    iget-object v0, p0, Lqkp;->a:Landroid/media/MediaCodec;

    nop

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    const-string v2, "width"

    nop

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    nop

    const-string v2, "height"

    nop

    nop

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x1

    nop

    nop

    nop

    const-wide/32 v7, 0x10000

    nop

    nop

    nop

    nop

    const/16 v5, 0x23

    nop

    nop

    nop

    invoke-static/range {v3 .. v8}, Landroid/hardware/HardwareBuffer;->create(IIIIJ)Landroid/hardware/HardwareBuffer;

    move-result-object v0

    nop
    :try_end_0
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lqkp;->a:Landroid/media/MediaCodec;

    nop

    nop

    invoke-virtual {v2, p1}, Landroid/media/MediaCodec;->getQueueRequest(I)Landroid/media/MediaCodec$QueueRequest;

    move-result-object p1

    nop

    invoke-virtual {p1, v0}, Landroid/media/MediaCodec$QueueRequest;->setHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/media/MediaCodec$QueueRequest;

    move-result-object p1

    nop

    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v2, v3}, Landroid/media/MediaCodec$QueueRequest;->setPresentationTimeUs(J)Landroid/media/MediaCodec$QueueRequest;

    move-result-object p1

    nop

    nop

    const/4 v2, 0x4

    nop

    nop

    invoke-virtual {p1, v2}, Landroid/media/MediaCodec$QueueRequest;->setFlags(I)Landroid/media/MediaCodec$QueueRequest;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Landroid/media/MediaCodec$QueueRequest;->queue()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_8

    nop

    nop

    :goto_7
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_19

    nop

    nop

    :goto_8
    if-nez v0, :cond_1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_1
    :try_start_2
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_2
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_18

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :goto_b
    :try_start_3
    iget-object p1, p0, Lqkp;->a:Landroid/media/MediaCodec;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Landroid/media/MediaCodec;->signalEndOfInputStream()V
    :try_end_3
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_d
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_2

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_2
    :try_start_4
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_0

    nop

    nop

    :goto_12
    invoke-interface {p0}, Ljava/util/Set;->clear()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lqkp;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lqkp;->c:Landroid/view/Surface;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string v0, "Exception occurred while trying to signal an EOS with null input surface"

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    :catch_1
    move-exception p1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_22

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    nop

    :catch_2
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    :goto_1b
    const-string p1, "Exception occurred while trying to signal an EOS"

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_20
    const-string v0, "IllegalArgumentException occurred while trying to signal an EOS with null input surface"

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_21
    goto :goto_22

    nop

    nop

    nop

    :catch_3
    move-exception p1

    nop

    nop

    :goto_22
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p0, p0, Lqkp;->k:Ljava/util/Set;

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

    :goto_24
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/32 :goto_14

    nop

    nop

    :goto_25
    const-string v1, "AsynchMediaCodec"

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

    :goto_26
    goto :goto_27

    nop

    nop

    nop

    :catchall_3
    move-exception v0

    nop

    nop

    nop

    nop

    :goto_27
    :try_start_5
    return-void

    nop

    :cond_4
    iget-object v2, p0, Lqkp;->a:Landroid/media/MediaCodec;

    nop

    nop

    const-wide/16 v6, 0x0

    nop

    nop

    const/4 v8, 0x4

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

    const/4 v5, 0x0

    nop

    nop

    nop

    move v3, p1

    nop

    nop

    nop

    nop

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_5
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_29
    const-string p1, "IllegalArgumentException occurred while trying to signal an EOS"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_5

    nop

    nop

    :goto_2b
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_2b

    nop

    nop

    nop
.end method
