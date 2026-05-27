.class public final Lfhx;
.super Ljava/lang/Object;

# interfaces
.implements Lkxy;


# instance fields
.field public final a:Lnph;

.field public final b:Lnph;

.field private final c:Lkxy;

.field private final d:I

.field private final e:Ljava/util/List;

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>(Lkxy;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfhx;->e:Ljava/util/List;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iput-object v0, p0, Lfhx;->a:Lnph;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iput-object v0, p0, Lfhx;->b:Lnph;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfhx;->f:Z

    iput v0, p0, Lfhx;->g:I

    iput-object p1, p0, Lfhx;->c:Lkxy;

    iput p2, p0, Lfhx;->d:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lnou;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfhx;->a:Lnph;

    invoke-virtual {v0, p1}, Lnph;->f(Lnou;)Z

    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    const-string v1, "mime"

    const-string v2, "application/motionphoto-highres"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v1

    new-instance v2, Lfhw;

    invoke-direct {v2, p1, v1, v0}, Lfhw;-><init>(Lnou;Lnph;Landroid/media/MediaFormat;)V

    sget-object v0, Lnnv;->a:Lnnv;

    invoke-interface {p1, v2, v0}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object p1, p0, Lfhx;->c:Lkxy;

    invoke-interface {p1, v1}, Lkxy;->a(Lnou;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfhx;->e:Ljava/util/List;

    iget v1, p0, Lfhx;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v0, p0, Lfhx;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfhx;->g:I

    iget-object v0, p0, Lfhx;->c:Lkxy;

    invoke-interface {v0, p1, p2}, Lkxy;->b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfhx;->b:Lnph;

    invoke-virtual {v0}, Lnph;->isDone()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lfhx;->a:Lnph;

    invoke-virtual {v0}, Lnph;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfhx;->b:Lnph;

    sget-object v1, Lmpx;->a:Lmpx;

    invoke-virtual {v0, v1}, Lnph;->e(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-boolean v0, p0, Lfhx;->f:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget v0, p0, Lfhx;->g:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lfhx;->b:Lnph;

    sget-object v1, Lmpx;->a:Lmpx;

    invoke-virtual {v0, v1}, Lnph;->e(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    iget-object v0, p0, Lfhx;->a:Lnph;

    invoke-virtual {v0}, Lnph;->isDone()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_4

    monitor-exit p0

    return-void

    :cond_4
    :try_start_4
    iget-object v0, p0, Lfhx;->a:Lnph;

    invoke-static {v0}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFormat;
    :try_end_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v1, p0, Lfhx;->b:Lnph;

    sget-object v2, Loap;->i:Loap;

    invoke-virtual {v2}, Lnws;->O()Lnwn;

    move-result-object v2

    const-string v3, "width"

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_5
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Loap;

    iget v5, v4, Loap;->a:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Loap;->a:I

    iput v3, v4, Loap;->b:I

    const-string v3, "height"

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_6
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Loap;

    iget v5, v4, Loap;->a:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Loap;->a:I

    iput v3, v4, Loap;->c:I

    const-string v3, "mime"

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_7
    iget-object v4, v2, Lnwn;->b:Lnws;

    move-object v5, v4

    check-cast v5, Loap;

    iget v6, v5, Loap;->a:I

    or-int/lit8 v6, v6, 0x20

    iput v6, v5, Loap;->a:I

    iput-object v3, v5, Loap;->g:Ljava/lang/String;

    iget-object v3, p0, Lfhx;->e:Ljava/util/List;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_8
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Loap;

    iget-object v5, v4, Loap;->h:Lnwy;

    invoke-interface {v5}, Lnwy;->c()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-static {v5}, Lnws;->S(Lnwy;)Lnwy;

    move-result-object v5

    iput-object v5, v4, Loap;->h:Lnwy;

    :cond_9
    iget-object v4, v4, Loap;->h:Lnwy;

    invoke-static {v3, v4}, Lnvd;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    const-string v3, "csd-0"

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lnvt;->t(Ljava/nio/ByteBuffer;)Lnvt;

    move-result-object v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_a
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Loap;

    iget v5, v4, Loap;->a:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v4, Loap;->a:I

    iput-object v3, v4, Loap;->e:Lnvt;

    const-string v3, "csd-1"

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lnvt;->t(Ljava/nio/ByteBuffer;)Lnvt;

    move-result-object v0

    iget-object v3, v2, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_b
    iget-object v3, v2, Lnwn;->b:Lnws;

    move-object v4, v3

    check-cast v4, Loap;

    iget v5, v4, Loap;->a:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v4, Loap;->a:I

    iput-object v0, v4, Loap;->f:Lnvt;

    iget v0, p0, Lfhx;->d:I

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_c
    iget-object v3, v2, Lnwn;->b:Lnws;

    check-cast v3, Loap;

    iget v4, v3, Loap;->a:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Loap;->a:I

    iput v0, v3, Loap;->d:I

    invoke-virtual {v2}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Loap;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnph;->e(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Format should be done by now"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfhx;->c:Lkxy;

    invoke-interface {v0}, Lkxy;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfhx;->f:Z

    invoke-virtual {p0}, Lfhx;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
