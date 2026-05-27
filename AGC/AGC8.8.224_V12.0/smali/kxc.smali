.class public final synthetic Lkxc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/ExecutorService;I)V
    .locals 0

    iput p2, p0, Lkxc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkxc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkpf;I)V
    .locals 0

    iput p2, p0, Lkxc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkxc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkxg;I)V
    .locals 0

    iput p2, p0, Lkxc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkxc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkxh;I)V
    .locals 0

    iput p2, p0, Lkxc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkxc;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkyw;I)V
    .locals 0

    iput p2, p0, Lkxc;->b:I

    iput-object p1, p0, Lkxc;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Llbh;I)V
    .locals 0

    iput p2, p0, Lkxc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkxc;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Llcs;I)V
    .locals 0

    iput p2, p0, Lkxc;->b:I

    iput-object p1, p0, Lkxc;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lldc;I[B[B)V
    .locals 0

    iput p2, p0, Lkxc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkxc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lldp;I)V
    .locals 0

    iput p2, p0, Lkxc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkxc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lleo;I)V
    .locals 0

    iput p2, p0, Lkxc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkxc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lleq;I)V
    .locals 0

    iput p2, p0, Lkxc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkxc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lles;I)V
    .locals 0

    iput p2, p0, Lkxc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkxc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lliq;I)V
    .locals 0

    iput p2, p0, Lkxc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkxc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lllm;I)V
    .locals 0

    iput p2, p0, Lkxc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkxc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lllo;I)V
    .locals 0

    iput p2, p0, Lkxc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkxc;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lkxc;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lkxc;->a:Ljava/lang/Object;

    invoke-static {}, Llho;->i()V

    check-cast v0, Lllm;

    iget-object v1, v0, Lllm;->b:Lllo;

    iget-wide v3, v1, Lllo;->i:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_16

    return-void

    :pswitch_0
    iget-object v0, p0, Lkxc;->a:Ljava/lang/Object;

    check-cast v0, Lllm;

    invoke-static {v0}, Lllk;->b(Lllm;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lkxc;->a:Ljava/lang/Object;

    check-cast v0, Lllm;

    invoke-static {v0}, Lllk;->a(Lllm;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lkxc;->a:Ljava/lang/Object;

    check-cast v0, Lllo;

    iget-object v3, v0, Lllo;->m:Lllh;

    iget-object v3, v3, Lllh;->b:Ljava/lang/Long;

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, v0, Lllo;->b:Z

    return-void

    :pswitch_3
    iget-object v0, p0, Lkxc;->a:Ljava/lang/Object;

    check-cast v0, Lliq;

    invoke-virtual {v0}, Lliq;->a()V

    return-void

    :pswitch_4
    iget-object v0, p0, Lkxc;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lles;

    iget-object v3, v2, Lles;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    move-object v4, v0

    check-cast v4, Lles;

    iget-boolean v4, v4, Lles;->d:Z

    invoke-static {v4}, Lmoz;->p(Z)V

    move-object v4, v0

    check-cast v4, Lles;

    iget-object v4, v4, Lles;->c:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    if-nez v4, :cond_1

    check-cast v0, Lles;

    iput-boolean v1, v0, Lles;->d:Z

    monitor-exit v3

    return-void

    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SingleTaskExec"

    const-string v3, "Exception occurred on single-threaded executor"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, v2, Lles;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lkxc;

    const/16 v3, 0xf

    invoke-direct {v1, v2, v3}, Lkxc;-><init>(Lles;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :pswitch_5
    iget-object v0, p0, Lkxc;->a:Ljava/lang/Object;

    check-cast v0, Lleq;

    iget-object v1, v0, Lleq;->d:Lnph;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnph;->e(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lleq;->a()V

    return-void

    :pswitch_6
    iget-object v0, p0, Lkxc;->a:Ljava/lang/Object;

    check-cast v0, Lleq;

    invoke-virtual {v0}, Lleq;->a()V

    return-void

    :pswitch_7
    iget-object v0, p0, Lkxc;->a:Ljava/lang/Object;

    :try_start_3
    move-object v3, v0

    check-cast v3, Lleo;

    iget-object v3, v3, Lleo;->f:Lnph;

    invoke-virtual {v3}, Lnph;->isDone()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v0

    check-cast v3, Lleo;

    iget-object v3, v3, Lleo;->f:Lnph;

    invoke-virtual {v3}, Lnph;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_2

    move-object v3, v0

    check-cast v3, Lleo;

    iget-object v3, v3, Lleo;->f:Lnph;

    invoke-static {v3}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v0

    check-cast v1, Lleo;

    iget-object v1, v1, Lleo;->e:Lnph;

    invoke-static {v1}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->stop()V

    goto :goto_1

    :cond_2
    const-string v3, "MuxerImpl"

    const-string v4, "Output cancelled since no data written to any track."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v0

    check-cast v3, Lleo;

    iget-object v3, v3, Lleo;->g:Lnph;

    invoke-virtual {v3, v1}, Lnph;->cancel(Z)Z

    move-object v1, v0

    check-cast v1, Lleo;

    iget-object v1, v1, Lleo;->a:Lnou;

    invoke-interface {v1}, Lnou;->isDone()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lleo;

    iget-object v1, v1, Lleo;->a:Lnou;

    invoke-interface {v1}, Lnou;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_3

    move-object v1, v0

    check-cast v1, Lleo;

    iget-object v1, v1, Lleo;->a:Lnou;

    invoke-static {v1}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lloi;

    iget-object v1, v1, Lloi;->c:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :cond_3
    :goto_1
    :try_start_4
    move-object v1, v0

    check-cast v1, Lleo;

    iget-boolean v1, v1, Lleo;->i:Z

    if-nez v1, :cond_4

    move-object v1, v0

    check-cast v1, Lleo;

    iget-object v1, v1, Lleo;->e:Lnph;

    invoke-static {v1}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->release()V

    move-object v1, v0

    check-cast v1, Lleo;

    iput-boolean v2, v1, Lleo;->i:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_4
    check-cast v0, Lleo;

    iget-object v1, v0, Lleo;->g:Lnph;

    invoke-virtual {v1}, Lnph;->isDone()Z

    move-result v1

    if-nez v1, :cond_7

    :goto_2
    iget-object v0, v0, Lleo;->g:Lnph;

    const-class v1, Lleo;

    invoke-virtual {v0, v1}, Lnph;->e(Ljava/lang/Object;)Z

    return-void

    :catchall_2
    move-exception v1

    :try_start_5
    move-object v2, v0

    check-cast v2, Lleo;

    iget-object v2, v2, Lleo;->g:Lnph;

    invoke-virtual {v2, v1}, Lnph;->a(Ljava/lang/Throwable;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    check-cast v0, Lleo;

    iget-object v1, v0, Lleo;->g:Lnph;

    invoke-virtual {v1}, Lnph;->isDone()Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_2

    :catchall_3
    move-exception v1

    check-cast v0, Lleo;

    iget-object v2, v0, Lleo;->g:Lnph;

    invoke-virtual {v2}, Lnph;->isDone()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v0, v0, Lleo;->g:Lnph;

    const-class v2, Lleo;

    invoke-virtual {v0, v2}, Lnph;->e(Ljava/lang/Object;)Z

    :cond_5
    throw v1

    :catchall_4
    move-exception v1

    :try_start_6
    move-object v3, v0

    check-cast v3, Lleo;

    iget-object v3, v3, Lleo;->g:Lnph;

    invoke-virtual {v3, v1}, Lnph;->a(Ljava/lang/Throwable;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    :try_start_7
    move-object v1, v0

    check-cast v1, Lleo;

    iget-boolean v1, v1, Lleo;->i:Z

    if-nez v1, :cond_6

    move-object v1, v0

    check-cast v1, Lleo;

    iget-object v1, v1, Lleo;->e:Lnph;

    invoke-static {v1}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->release()V

    move-object v1, v0

    check-cast v1, Lleo;

    iput-boolean v2, v1, Lleo;->i:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :cond_6
    check-cast v0, Lleo;

    iget-object v1, v0, Lleo;->g:Lnph;

    invoke-virtual {v1}, Lnph;->isDone()Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_2

    :catchall_5
    move-exception v1

    :try_start_8
    move-object v2, v0

    check-cast v2, Lleo;

    iget-object v2, v2, Lleo;->g:Lnph;

    invoke-virtual {v2, v1}, Lnph;->a(Ljava/lang/Throwable;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    check-cast v0, Lleo;

    iget-object v1, v0, Lleo;->g:Lnph;

    invoke-virtual {v1}, Lnph;->isDone()Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    return-void

    :catchall_6
    move-exception v1

    check-cast v0, Lleo;

    iget-object v2, v0, Lleo;->g:Lnph;

    invoke-virtual {v2}, Lnph;->isDone()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v0, v0, Lleo;->g:Lnph;

    const-class v2, Lleo;

    invoke-virtual {v0, v2}, Lnph;->e(Ljava/lang/Object;)Z

    :cond_8
    throw v1

    :catchall_7
    move-exception v1

    :try_start_9
    move-object v3, v0

    check-cast v3, Lleo;

    iget-boolean v3, v3, Lleo;->i:Z

    if-nez v3, :cond_9

    move-object v3, v0

    check-cast v3, Lleo;

    iget-object v3, v3, Lleo;->e:Lnph;

    invoke-static {v3}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaMuxer;

    invoke-virtual {v3}, Landroid/media/MediaMuxer;->release()V

    move-object v3, v0

    check-cast v3, Lleo;

    iput-boolean v2, v3, Lleo;->i:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    :cond_9
    check-cast v0, Lleo;

    iget-object v2, v0, Lleo;->g:Lnph;

    invoke-virtual {v2}, Lnph;->isDone()Z

    move-result v2

    if-nez v2, :cond_a

    :goto_3
    iget-object v0, v0, Lleo;->g:Lnph;

    const-class v2, Lleo;

    invoke-virtual {v0, v2}, Lnph;->e(Ljava/lang/Object;)Z

    goto :goto_4

    :catchall_8
    move-exception v2

    :try_start_a
    move-object v3, v0

    check-cast v3, Lleo;

    iget-object v3, v3, Lleo;->g:Lnph;

    invoke-virtual {v3, v2}, Lnph;->a(Ljava/lang/Throwable;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    check-cast v0, Lleo;

    iget-object v2, v0, Lleo;->g:Lnph;

    invoke-virtual {v2}, Lnph;->isDone()Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_3

    :cond_a
    :goto_4
    throw v1

    :catchall_9
    move-exception v1

    check-cast v0, Lleo;

    iget-object v2, v0, Lleo;->g:Lnph;

    invoke-virtual {v2}, Lnph;->isDone()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_5

    :cond_b
    iget-object v0, v0, Lleo;->g:Lnph;

    const-class v2, Lleo;

    invoke-virtual {v0, v2}, Lnph;->e(Ljava/lang/Object;)Z

    :goto_5
    throw v1

    :pswitch_8
    iget-object v0, p0, Lkxc;->a:Ljava/lang/Object;

    :try_start_b
    move-object v3, v0

    check-cast v3, Lleo;

    iget-object v3, v3, Lleo;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lleq;

    iget-object v4, v4, Lleq;->b:Lnph;

    invoke-static {v4}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_c

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_d
    if-nez v1, :cond_f

    move-object v1, v0

    check-cast v1, Lleo;

    iget-boolean v1, v1, Lleo;->i:Z

    if-nez v1, :cond_e

    move-object v1, v0

    check-cast v1, Lleo;

    iget-object v1, v1, Lleo;->e:Lnph;

    invoke-static {v1}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->release()V

    move-object v1, v0

    check-cast v1, Lleo;

    iput-boolean v2, v1, Lleo;->i:Z

    :cond_e
    move-object v1, v0

    check-cast v1, Lleo;

    iget-object v1, v1, Lleo;->f:Lnph;

    invoke-virtual {v1, v2}, Lnph;->cancel(Z)Z

    return-void

    :cond_f
    move-object v1, v0

    check-cast v1, Lleo;

    iget-boolean v1, v1, Lleo;->i:Z

    if-eqz v1, :cond_10

    return-void

    :cond_10
    move-object v1, v0

    check-cast v1, Lleo;

    iget-object v1, v1, Lleo;->e:Lnph;

    invoke-static {v1}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaMuxer;

    move-object v3, v0

    check-cast v3, Lleo;

    iget-object v3, v3, Lleo;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lleq;

    iget-object v5, v4, Lleq;->b:Lnph;

    invoke-static {v5}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, v4, Lleq;->a:Lnou;

    invoke-static {v5}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaFormat;

    invoke-virtual {v1, v5}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v5

    move-object v6, v0

    check-cast v6, Lleo;

    iget-object v6, v6, Lleo;->e:Lnph;

    invoke-static {v6}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/MediaMuxer;

    iput-object v6, v4, Lleq;->g:Landroid/media/MediaMuxer;

    iget-object v4, v4, Lleq;->c:Lnph;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnph;->e(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_12
    invoke-virtual {v1}, Landroid/media/MediaMuxer;->start()V

    move-object v1, v0

    check-cast v1, Lleo;

    iget-object v1, v1, Lleo;->f:Lnph;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnph;->e(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_b .. :try_end_b} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "MuxerImpl"

    const-string v3, "MediaMuxer should be done by now."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    check-cast v0, Lleo;

    iget-object v0, v0, Lleo;->f:Lnph;

    invoke-virtual {v0, v1}, Lnph;->a(Ljava/lang/Throwable;)Z

    return-void

    :pswitch_9
    iget-object v0, p0, Lkxc;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lleo;

    iget-object v4, v3, Lleo;->g:Lnph;

    invoke-virtual {v4}, Lnph;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, v3, Lleo;->e:Lnph;

    invoke-virtual {v4}, Lnph;->isDone()Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, v3, Lleo;->e:Lnph;

    invoke-virtual {v4}, Lnph;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_13

    :try_start_c
    move-object v1, v0

    check-cast v1, Lleo;

    iget-boolean v1, v1, Lleo;->i:Z

    if-nez v1, :cond_14

    move-object v1, v0

    check-cast v1, Lleo;

    iget-object v1, v1, Lleo;->e:Lnph;

    invoke-static {v1}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->release()V

    check-cast v0, Lleo;

    iput-boolean v2, v0, Lleo;->i:Z
    :try_end_c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_c .. :try_end_c} :catch_1

    return-void

    :catch_1
    move-exception v0

    const-string v1, "MuxerImpl"

    const-string v2, "Error while trying to close media muxer."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_13
    iget-object v0, v3, Lleo;->e:Lnph;

    invoke-virtual {v0, v1}, Lnph;->cancel(Z)Z

    :cond_14
    return-void

    :pswitch_a
    iget-object v0, p0, Lkxc;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lldp;->c()V

    return-void

    :pswitch_b
    iget-object v0, p0, Lkxc;->a:Ljava/lang/Object;

    check-cast v0, Llcs;

    iget-object v0, v0, Llcs;->a:Llcb;

    invoke-virtual {v0}, Llcb;->j()V

    return-void

    :pswitch_c
    iget-object v0, p0, Lkxc;->a:Ljava/lang/Object;

    check-cast v0, Llbh;

    invoke-virtual {v0}, Llbh;->l()V

    return-void

    :pswitch_d
    iget-object v0, p0, Lkxc;->a:Ljava/lang/Object;

    check-cast v0, Llbk;

    invoke-virtual {v0}, Llbk;->c()Llcv;

    move-result-object v0

    check-cast v0, Llcn;

    invoke-interface {v0}, Llcn;->i()V

    return-void

    :pswitch_e
    iget-object v0, p0, Lkxc;->a:Ljava/lang/Object;

    check-cast v0, Lkyw;

    iput-boolean v1, v0, Lkyw;->b:Z

    return-void

    :pswitch_f
    iget-object v0, p0, Lkxc;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lkxg;

    iget-object v2, v1, Lkxg;->c:Lkxh;

    iget-object v2, v2, Lkxh;->d:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :try_start_d
    check-cast v0, Lkxg;

    iget-object v0, v0, Lkxg;->c:Lkxh;

    invoke-virtual {v0}, Lkxh;->e()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    return-void

    :catch_2
    move-exception v0

    iget-object v1, v1, Lkxg;->c:Lkxh;

    iget-object v1, v1, Lkxh;->c:Lnph;

    invoke-virtual {v1, v0}, Lnph;->a(Ljava/lang/Throwable;)Z

    return-void

    :pswitch_10
    iget-object v0, p0, Lkxc;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lkxh;

    iput-boolean v2, v1, Lkxh;->a:Z

    :try_start_e
    check-cast v0, Lkxh;

    invoke-virtual {v0}, Lkxh;->e()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    return-void

    :catch_3
    move-exception v0

    iget-object v1, v1, Lkxh;->c:Lnph;

    invoke-virtual {v1, v0}, Lnph;->a(Ljava/lang/Throwable;)Z

    return-void

    :pswitch_11
    iget-object v0, p0, Lkxc;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lkxh;

    iget-object v4, v3, Lkxh;->c:Lnph;

    invoke-virtual {v4, v1}, Lnph;->cancel(Z)Z

    move-result v1

    if-eqz v1, :cond_15

    iput-boolean v2, v3, Lkxh;->b:Z

    :try_start_f
    check-cast v0, Lkxh;

    iget-object v0, v0, Lkxh;->f:Lamv;

    invoke-virtual {v0}, Lamv;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    return-void

    :catchall_a
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    :try_start_10
    const-string v1, "ConfigurableMux"

    const-string v2, "Couldn\'t close output after cancellation"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    return-void

    :goto_8
    throw v0

    :cond_15
    return-void

    :pswitch_12
    iget-object v0, p0, Lkxc;->a:Ljava/lang/Object;

    check-cast v0, Lkxi;

    invoke-virtual {v0}, Lkxi;->j()V

    return-void

    :pswitch_13
    iget-object v0, p0, Lkxc;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void

    :cond_16
    iget-object v1, v0, Lllm;->b:Lllo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v1, Lllo;->i:J

    iget-object v0, v0, Lllm;->b:Lllo;

    iget-object v0, v0, Lllo;->l:Llln;

    iput-boolean v2, v0, Llln;->j:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
