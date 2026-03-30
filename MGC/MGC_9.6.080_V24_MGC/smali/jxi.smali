.class public final Ljxi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqep;


# instance fields
.field public final a:Lsuu;

.field public final b:Lsuu;

.field private final c:Lqep;

.field private final d:I

.field private final e:Ljava/util/List;

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>(Lqep;I)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1
    iput p2, p0, Ljxi;->d:I

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

    :goto_2
    iput-boolean v0, p0, Ljxi;->f:Z

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3
    new-instance v0, Lsuu;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    iput-object v0, p0, Ljxi;->a:Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    new-instance v0, Lsuu;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v0, p0, Ljxi;->e:Ljava/util/List;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0}, Lsuu;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0}, Lsuu;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    iput-object v0, p0, Ljxi;->b:Lsuu;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    iput v0, p0, Ljxi;->g:I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    iput-object p1, p0, Ljxi;->c:Lqep;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(Lsui;)V
    .locals 3

    goto/32 :goto_4

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Ljxi;->a:Lsuu;

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Lsuu;->f(Lsui;)Z

    new-instance v0, Landroid/media/MediaFormat;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    const-string v1, "mime"

    nop

    nop

    nop

    nop

    nop

    const-string v2, "application/motionphoto-highres"

    nop

    nop

    nop

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lsuu;

    nop

    nop

    nop

    invoke-direct {v1}, Lsuu;-><init>()V

    new-instance v2, Ljxh;

    nop

    invoke-direct {v2, p1, v1, v0}, Ljxh;-><init>(Lsui;Lsuu;Landroid/media/MediaFormat;)V

    sget-object v0, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, v2, v0}, Lsui;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object p1, p0, Ljxi;->c:Lqep;

    nop

    nop

    invoke-interface {p1, v1}, Lqep;->a(Lsui;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

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

    :goto_3
    rem-int v0, v0, v1

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

    :goto_4
    const v0, 0x20

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    throw p1

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

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

    :goto_a
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public final declared-synchronized b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x13

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

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_4

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    :goto_5
    goto/32 :goto_a

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

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
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

    nop

    :goto_a
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    nop

    nop

    nop

    and-int/lit8 v0, v0, 0x1

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    iget-object v0, p0, Ljxi;->e:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    iget v1, p0, Ljxi;->g:I

    nop

    nop

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v0, p0, Ljxi;->g:I

    nop

    nop

    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    nop

    iput v0, p0, Ljxi;->g:I

    nop

    nop

    nop

    iget-object v0, p0, Ljxi;->c:Lqep;

    nop

    nop

    invoke-interface {v0, p1, p2}, Lqep;->b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    :goto_b
    throw p1

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized c()V
    .locals 7

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    monitor-enter p0

    nop

    :try_start_0
    iget-object v0, p0, Ljxi;->b:Lsuu;

    nop

    nop

    invoke-virtual {v0}, Lsuu;->isDone()Z

    move-result v0

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    goto/16 :goto_9

    nop

    nop

    nop

    :cond_0
    iget-object v0, p0, Ljxi;->a:Lsuu;

    nop

    invoke-virtual {v0}, Lsuu;->isCancelled()Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_d

    nop

    nop

    iget-object v0, p0, Ljxi;->b:Lsuu;

    nop

    nop

    sget-object v1, Lrsa;->a:Lrsa;

    nop

    invoke-virtual {v0, v1}, Lsuu;->e(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_1
    iget-object v0, p0, Ljxi;->a:Lsuu;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lsgj;->W(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Landroid/media/MediaFormat;

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Ljxi;->b:Lsuu;

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Ltoa;->a:Ltoa;

    nop

    invoke-virtual {v2}, Ltkg;->m()Ltkb;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    const-string v3, "width"

    nop

    nop

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    nop

    nop

    nop

    nop

    iget-object v4, v2, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    if-nez v4, :cond_2

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_2
    iget-object v4, v2, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v4, Ltoa;

    nop

    iget v5, v4, Ltoa;->b:I

    nop

    nop

    nop

    or-int/lit8 v5, v5, 0x1

    nop

    nop

    iput v5, v4, Ltoa;->b:I

    nop

    nop

    nop

    nop

    iput v3, v4, Ltoa;->c:I

    nop

    const-string v3, "height"

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    nop

    nop

    nop

    nop

    iget-object v4, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    nop

    if-nez v4, :cond_3

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_3
    iget-object v4, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Ltoa;

    nop

    iget v5, v4, Ltoa;->b:I

    nop

    or-int/lit8 v5, v5, 0x2

    nop

    nop

    nop

    iput v5, v4, Ltoa;->b:I

    nop

    iput v3, v4, Ltoa;->d:I

    nop

    nop

    nop

    const-string v3, "mime"

    nop

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    if-nez v4, :cond_4

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_4
    iget-object v4, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    move-object v5, v4

    nop

    nop

    nop

    nop

    check-cast v5, Ltoa;

    nop

    iget v6, v5, Ltoa;->b:I

    nop

    nop

    or-int/lit8 v6, v6, 0x20

    nop

    nop

    nop

    nop

    nop

    iput v6, v5, Ltoa;->b:I

    nop

    nop

    iput-object v3, v5, Ltoa;->h:Ljava/lang/String;

    nop

    iget-object v3, p0, Ljxi;->e:Ljava/util/List;

    nop

    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    if-nez v4, :cond_5

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_5
    iget-object v4, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Ltoa;

    nop

    nop

    nop

    nop

    iget-object v5, v4, Ltoa;->i:Ltkm;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5}, Ltkm;->c()Z

    move-result v6

    nop

    if-nez v6, :cond_6

    nop

    nop

    invoke-static {v5}, Ltkg;->t(Ltkm;)Ltkm;

    move-result-object v5

    nop

    nop

    nop

    nop

    iput-object v5, v4, Ltoa;->i:Ltkm;

    nop

    nop

    :cond_6
    iget-object v4, v4, Ltoa;->i:Ltkm;

    nop

    invoke-static {v3, v4}, Ltir;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    const-string v3, "csd-0"

    nop

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v3

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Ltjj;->o(Ljava/nio/ByteBuffer;)Ltjj;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v2, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    if-nez v4, :cond_7

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_7
    iget-object v4, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v4, Ltoa;

    nop

    nop

    iget v5, v4, Ltoa;->b:I

    nop

    nop

    nop

    or-int/lit8 v5, v5, 0x8

    nop

    nop

    nop

    nop

    nop

    iput v5, v4, Ltoa;->b:I

    nop

    iput-object v3, v4, Ltoa;->f:Ltjj;

    nop

    nop

    nop

    const-string v3, "csd-1"

    nop

    nop

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ltjj;->o(Ljava/nio/ByteBuffer;)Ltjj;

    move-result-object v0

    nop

    nop

    nop

    iget-object v3, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    nop

    nop

    if-nez v3, :cond_8

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_8
    iget-object v3, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    move-object v4, v3

    nop

    nop

    nop

    nop

    check-cast v4, Ltoa;

    nop

    nop

    iget v5, v4, Ltoa;->b:I

    nop

    nop

    or-int/lit8 v5, v5, 0x10

    nop

    nop

    nop

    nop

    nop

    iput v5, v4, Ltoa;->b:I

    nop

    nop

    nop

    iput-object v0, v4, Ltoa;->g:Ltjj;

    nop

    nop

    nop

    nop

    iget v0, p0, Ljxi;->d:I

    nop

    nop

    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    nop

    nop

    if-nez v3, :cond_9

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_9
    iget-object v3, v2, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v3, Ltoa;

    nop

    nop

    nop

    nop

    nop

    iget v4, v3, Ltoa;->b:I

    nop

    nop

    nop

    or-int/lit8 v4, v4, 0x4

    nop

    nop

    iput v4, v3, Ltoa;->b:I

    nop

    nop

    iput v0, v3, Ltoa;->e:I

    nop

    nop

    invoke-virtual {v2}, Ltkb;->i()Ltkg;

    move-result-object v0

    nop

    nop

    check-cast v0, Ltoa;

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    invoke-virtual {v1, v0}, Lsuu;->e(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    throw v0

    nop

    nop

    nop

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
    return-void

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

    :try_start_3
    new-instance v1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "Format should be done by now"

    nop

    nop

    nop

    nop

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_a
    :goto_9
    goto/32 :goto_14

    nop

    nop

    :goto_a
    if-lez v0, :cond_b

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

    :cond_b
    goto/32 :goto_11

    nop

    :goto_b
    const v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_4
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    :cond_c
    :try_start_5
    iget-object v0, p0, Ljxi;->a:Lsuu;

    nop

    nop

    nop

    invoke-virtual {v0}, Lsuu;->isDone()Z

    move-result v0

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    :cond_d
    :try_start_6
    iget-boolean v0, p0, Ljxi;->f:Z

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_a

    nop

    nop

    iget v0, p0, Ljxi;->g:I

    nop

    nop

    nop

    if-nez v0, :cond_c

    nop

    nop

    nop

    iget-object v0, p0, Ljxi;->b:Lsuu;

    nop

    nop

    nop

    nop

    sget-object v1, Lrsa;->a:Lrsa;

    nop

    invoke-virtual {v0, v1}, Lsuu;->e(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/32 :goto_c

    nop

    nop

    :goto_11
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized close()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

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

    :goto_1
    throw v0

    nop

    nop

    :goto_2
    return-void

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

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Ljxi;->c:Lqep;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lqep;->close()V

    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    iput-boolean v0, p0, Ljxi;->f:Z

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Ljxi;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method
