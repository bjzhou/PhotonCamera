.class public final Lqku;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lqlb;

.field private c:Z

.field private d:Z

.field private volatile e:Lrss;

.field private final f:Ljava/lang/Object;

.field private final g:Lsuu;

.field private final h:Lsuu;

.field private final i:Lsuu;


# direct methods
.method public constructor <init>(Lqlb;)V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lsuu;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lqku;->a:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lqku;->b:Lqlb;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Lqku;->g:Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    iput-object p1, p0, Lqku;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p1}, Lj$/util/DesugarCollections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

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

    :goto_b
    const/4 p1, 0x0

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c
    invoke-direct {v0}, Lsuu;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0}, Lsuu;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    iput-boolean p1, p0, Lqku;->c:Z

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object v0, p0, Lqku;->h:Lsuu;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_10
    new-instance p1, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v0, Lsuu;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-boolean p1, p0, Lqku;->d:Z

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_13
    sget-object p1, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_14
    new-instance p1, Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_15
    invoke-direct {v0}, Lsuu;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput-object v0, p0, Lqku;->i:Lsuu;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_17
    iput-object p1, p0, Lqku;->e:Lrss;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a()Lsui;
    .locals 5

    goto/32 :goto_10

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

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lqku;->c:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_4

    nop

    nop

    iget-object v0, p0, Lqku;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_4

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Lqau;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lqau;->b:Ljava/lang/Object;

    nop

    nop

    move-object v3, v2

    nop

    nop

    check-cast v3, Lqkp;

    nop

    iget-object v3, v3, Lqkp;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    nop

    nop

    nop

    if-nez v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    move-object v3, v2

    nop

    nop

    nop

    nop

    check-cast v3, Lqkp;

    nop

    nop

    nop

    nop

    iget-object v3, v3, Lqkp;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    nop

    nop

    nop

    nop

    if-eq v3, v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x3

    nop

    nop

    nop

    if-eq v3, v4, :cond_1

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x4

    nop

    nop

    nop

    if-eq v3, v4, :cond_1

    nop

    goto :goto_5

    nop

    nop

    :cond_1
    move-object v3, v2

    nop

    nop

    nop

    check-cast v3, Lqkp;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lqkp;->d()V

    goto :goto_5

    nop

    nop

    nop

    :cond_2
    move-object v3, v2

    nop

    nop

    nop

    check-cast v3, Lqkp;

    nop

    invoke-virtual {v3}, Lqkp;->f()V

    :cond_3
    :goto_5
    check-cast v2, Lqkp;

    nop

    iget-object v2, v2, Lqkp;->e:Lsuu;

    nop

    nop

    nop

    nop

    invoke-static {v2}, Lsgj;->P(Lsui;)Lsui;

    goto/16 :goto_4

    nop

    nop

    :cond_4
    iput-boolean v1, p0, Lqku;->c:Z

    nop

    nop

    nop

    nop

    nop

    new-instance v0, Lsuu;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Lsuu;-><init>()V

    new-instance v1, Lqkt;

    nop

    nop

    nop

    nop

    invoke-direct {v1, v0}, Lqkt;-><init>(Lsuu;)V

    iget-object v2, p0, Lqku;->b:Lqlb;

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lqlb;->a()Lsui;

    move-result-object v2

    nop

    sget-object v3, Lstd;->a:Lstd;

    nop

    invoke-static {v2, v1, v3}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    :goto_6
    if-lez v0, :cond_5

    nop

    goto/32 :goto_1

    nop

    :cond_5
    goto/32 :goto_0

    nop

    :goto_7
    monitor-exit p0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x15

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-object v0

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_e

    nop

    nop

    :goto_c
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_d
    monitor-enter p0

    nop

    :try_start_2
    iget-boolean v0, p0, Lqku;->d:Z

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    nop

    invoke-static {v0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    throw v0

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x1f

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized b()V
    .locals 9

    goto/32 :goto_12

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
    move-exception v1

    nop

    nop

    nop

    :try_start_0
    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    throw v1

    nop

    nop

    nop

    nop

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    const-string v1, "MediaEncoder already started."

    nop

    nop

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_c

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0xe

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    monitor-enter p0

    nop

    nop

    nop

    :try_start_2
    iget-boolean v0, p0, Lqku;->d:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lqku;->f:Ljava/lang/Object;

    nop

    nop

    nop

    monitor-enter v0

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v1, p0, Lqku;->g:Lsuu;

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lsuu;->e(Ljava/lang/Object;)Z

    iget-object v1, p0, Lqku;->h:Lsuu;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lsuu;->e(Ljava/lang/Object;)Z

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lqku;->i:Lsuu;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Lsuu;->e(Ljava/lang/Object;)Z

    iget-object v0, p0, Lqku;->b:Lqlb;

    nop

    nop

    nop

    invoke-interface {v0}, Lqlb;->b()V

    iget-object v0, p0, Lqku;->a:Ljava/util/List;

    nop

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_5

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Lqau;

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    move-object v5, v2

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v6, v1, Lqau;->b:Ljava/lang/Object;

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_9

    nop

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception v5

    nop

    :try_start_5
    const-string v6, "AsynchMediaCodec"

    nop

    const-string v8, "Exception occurred while trying to start codec"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-ge v4, v7, :cond_2

    nop

    nop

    nop

    const-string v6, "AsynchMediaCodec"

    nop

    nop

    const-string v7, "Trying to start codec again."

    nop

    nop

    nop

    nop

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_7

    nop

    nop

    nop

    :goto_9
    if-eqz v5, :cond_1

    nop

    nop

    nop

    nop

    nop

    const-string v0, "AsynchMediaCodec"

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Failed to start codec"

    nop

    nop

    nop

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    instance-of v0, v5, Landroid/media/MediaCodec$CodecException;

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    move-object v2, v5

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Landroid/media/MediaCodec$CodecException;

    nop

    nop

    nop

    :cond_3
    move-object v0, v6

    nop

    check-cast v0, Lqkp;

    nop

    nop

    iget-object v0, v0, Lqkp;->j:Lqko;

    nop

    nop

    nop

    nop

    check-cast v6, Lqkp;

    nop

    nop

    iget-object v1, v6, Lqkp;->a:Landroid/media/MediaCodec;

    nop

    invoke-virtual {v0, v1, v2}, Lqko;->onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V

    instance-of v0, v5, Ljava/lang/RuntimeException;

    nop

    nop

    if-eqz v0, :cond_4

    nop

    check-cast v5, Ljava/lang/RuntimeException;

    nop

    goto :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    move-object v5, v0

    nop

    nop

    nop

    nop

    :goto_a
    throw v5

    nop

    nop

    nop

    nop

    :cond_5
    iput-boolean v3, p0, Lqku;->d:Z

    nop

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

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

    :goto_c
    throw v0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_6
    goto/32 :goto_4

    nop

    :goto_f
    monitor-exit p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v7, 0x3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_11
    if-le v4, v7, :cond_7

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_7
    :try_start_6
    move-object v8, v6

    nop

    nop

    check-cast v8, Lqkp;

    nop

    nop

    nop

    nop

    nop

    iget-object v8, v8, Lqkp;->a:Landroid/media/MediaCodec;

    nop

    nop

    invoke-virtual {v8}, Landroid/media/MediaCodec;->start()V

    move-object v8, v6

    nop

    nop

    nop

    nop

    nop

    check-cast v8, Lqkp;

    nop

    iget-object v8, v8, Lqkp;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object v8, v6

    nop

    nop

    nop

    nop

    check-cast v8, Lqkp;

    nop

    nop

    nop

    nop

    iget-object v8, v8, Lqkp;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    invoke-virtual {v8, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    move-object v8, v6

    nop

    nop

    check-cast v8, Lqkp;

    nop

    nop

    nop

    nop

    nop

    iget-object v8, v8, Lqkp;->o:Lqkz;

    nop

    nop

    nop

    nop

    invoke-interface {v8}, Lqkz;->c()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/32 :goto_8

    nop

    nop

    :goto_12
    const v0, 0x15

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

    nop
.end method

.method public final c(Landroid/media/MediaFormat;)Lqkv;
    .locals 3

    goto/32 :goto_8

    nop

    nop

    :goto_0
    iget-object p0, v2, Lqkv;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v1, v0}, Lqar;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v1, Lqar;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    throw p1

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x16

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    new-instance v0, Lsuu;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v1, p0, p1, v0}, Lqks;-><init>(Lqku;Landroid/media/MediaFormat;Lsuu;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x1a

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

    :goto_c
    goto/32 :goto_3

    nop

    :goto_d
    invoke-direct {v2, p1, v1}, Lqkv;-><init>(Landroid/media/MediaFormat;Lqle;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v1, Lqks;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_f
    invoke-interface {v2, v1}, Lqlb;->c(Lqar;)Lqle;

    move-result-object v1

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

    :goto_10
    invoke-direct {v0}, Lsuu;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v2, p0, Lqku;->b:Lqlb;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v2, Lqkv;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

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

    :goto_14
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-object p1, v2, Lqkv;->b:Lrsk;

    nop

    nop

    nop

    new-instance v0, Lrsm;

    nop

    nop

    invoke-direct {v0, v1, p1}, Lrsm;-><init>(Lrsk;Lrsk;)V

    iput-object v0, v2, Lqkv;->b:Lrsk;

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    return-object v2

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

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop
.end method
