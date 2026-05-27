.class public final synthetic Ljum;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;I)V
    .locals 0

    iput p2, p0, Ljum;->b:I

    iput-object p1, p0, Ljum;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Throwable;I[B)V
    .locals 0

    iput p2, p0, Ljum;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljum;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/ExecutionException;I)V
    .locals 0

    iput p2, p0, Ljum;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljum;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljux;I)V
    .locals 0

    iput p2, p0, Ljum;->b:I

    iput-object p1, p0, Ljum;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljvb;I)V
    .locals 0

    iput p2, p0, Ljum;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljum;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljwf;I)V
    .locals 0

    iput p2, p0, Ljum;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljum;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljyg;I)V
    .locals 0

    iput p2, p0, Ljum;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljum;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljyi;I)V
    .locals 0

    iput p2, p0, Ljum;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljum;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljym;I)V
    .locals 0

    iput p2, p0, Ljum;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljum;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljys;I)V
    .locals 0

    iput p2, p0, Ljum;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljum;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljyv;I)V
    .locals 0

    iput p2, p0, Ljum;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljum;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkai;I)V
    .locals 0

    iput p2, p0, Ljum;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljum;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>([Lkad;I)V
    .locals 0

    iput p2, p0, Ljum;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljum;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    move-object/from16 v1, p0

    iget v0, v1, Ljum;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Ljum;->a:Ljava/lang/Object;

    check-cast v0, Ljyv;

    iget-object v0, v0, Ljyv;->h:Lnph;

    invoke-virtual {v0, v2}, Lnph;->e(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    iget-object v0, v1, Ljum;->a:Ljava/lang/Object;

    check-cast v0, Ljyv;

    iget-object v0, v0, Ljyv;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void

    :pswitch_1
    iget-object v0, v1, Ljum;->a:Ljava/lang/Object;

    check-cast v0, Ljys;

    iget-object v0, v0, Ljys;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxy;

    invoke-interface {v2}, Ljxy;->f()V

    goto :goto_0

    :cond_0
    return-void

    :pswitch_2
    iget-object v0, v1, Ljum;->a:Ljava/lang/Object;

    check-cast v0, Ljys;

    iget-object v0, v0, Ljys;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxy;

    invoke-interface {v2}, Ljxy;->h()V

    goto :goto_1

    :cond_1
    return-void

    :pswitch_3
    iget-object v0, v1, Ljum;->a:Ljava/lang/Object;

    check-cast v0, Ljys;

    iget-boolean v2, v0, Ljys;->c:Z

    if-eqz v2, :cond_2

    return-void

    :cond_2
    iget-object v2, v0, Ljys;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxy;

    invoke-interface {v3}, Ljxy;->e()V

    goto :goto_2

    :cond_3
    iput-boolean v4, v0, Ljys;->c:Z

    return-void

    :pswitch_4
    iget-object v0, v1, Ljum;->a:Ljava/lang/Object;

    check-cast v0, Ljys;

    iget-boolean v2, v0, Ljys;->b:Z

    if-eqz v2, :cond_4

    return-void

    :cond_4
    iget-object v2, v0, Ljys;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxy;

    invoke-interface {v3}, Ljxy;->g()V

    goto :goto_3

    :cond_5
    iput-boolean v4, v0, Ljys;->b:Z

    return-void

    :pswitch_5
    iget-object v0, v1, Ljum;->a:Ljava/lang/Object;

    check-cast v0, Ljys;

    iget-boolean v2, v0, Ljys;->b:Z

    if-eqz v2, :cond_6

    return-void

    :cond_6
    iget-object v2, v0, Ljys;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxy;

    invoke-interface {v3}, Ljxy;->g()V

    goto :goto_4

    :cond_7
    iput-boolean v4, v0, Ljys;->b:Z

    return-void

    :pswitch_6
    iget-object v0, v1, Ljum;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljym;

    iget-boolean v5, v2, Ljym;->e:Z

    if-nez v5, :cond_14

    iget-wide v5, v2, Ljym;->g:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_8

    goto/16 :goto_6

    :cond_8
    iget-object v2, v2, Ljym;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v5

    move-object v9, v0

    check-cast v9, Ljym;

    iget-object v9, v9, Ljym;->a:Ljava/util/Map;

    invoke-static {v9}, Lmwa;->m(Ljava/util/Map;)Lmwa;

    move-result-object v9

    invoke-virtual {v9}, Lmwa;->s()Lmwn;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljya;

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    const-wide/32 v13, 0x2dc6c0

    const/4 v15, 0x2

    if-eqz v12, :cond_d

    move-object v12, v0

    check-cast v12, Ljym;

    iget-object v12, v12, Ljym;->c:Ljava/lang/Object;

    monitor-enter v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v4, v0

    check-cast v4, Ljym;

    iget-object v4, v4, Ljym;->a:Ljava/util/Map;

    invoke-interface {v4, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    monitor-exit v12

    const/4 v4, 0x1

    goto :goto_5

    :cond_9
    move-object v4, v0

    check-cast v4, Ljym;

    iget-object v4, v4, Ljym;->a:Ljava/util/Map;

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_a

    monitor-exit v12

    const/4 v4, 0x1

    goto :goto_5

    :cond_a
    move-object v4, v0

    check-cast v4, Ljym;

    iget-object v4, v4, Ljym;->b:Ljava/util/Map;

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v16

    cmp-long v18, v16, v7

    if-nez v18, :cond_b

    monitor-exit v12

    const/4 v4, 0x1

    goto :goto_5

    :cond_b
    move-object v7, v0

    check-cast v7, Ljym;

    iget-wide v7, v7, Ljym;->h:J

    sub-long v7, v5, v7

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v18

    sub-long v7, v7, v18

    cmp-long v4, v7, v13

    if-lez v4, :cond_c

    const-string v4, "EncWatcher"

    const-string v13, "Track %s is very delayed: %s us"

    new-array v14, v15, [Ljava/lang/Object;

    aput-object v11, v14, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v14, v8

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v11, v15}, Ljym;->e(Ljya;I)Ljyk;

    move-result-object v4

    move-object v7, v0

    check-cast v7, Ljym;

    invoke-virtual {v7, v4}, Ljym;->a(Ljyk;)V

    :cond_c
    monitor-exit v12

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :cond_d
    move-object v4, v0

    check-cast v4, Ljym;

    iget-object v4, v4, Ljym;->c:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    move-object v7, v0

    check-cast v7, Ljym;

    iget-object v7, v7, Ljym;->a:Ljava/util/Map;

    invoke-interface {v7, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    monitor-exit v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    goto/16 :goto_5

    :cond_e
    move-object v7, v0

    check-cast v7, Ljym;

    iget-object v7, v7, Ljym;->a:Ljava/util/Map;

    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_f

    monitor-exit v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    goto/16 :goto_5

    :cond_f
    move-object v7, v0

    check-cast v7, Ljym;

    iget-wide v7, v7, Ljym;->h:J

    sub-long v7, v5, v7

    move-object v12, v0

    check-cast v12, Ljym;

    iget-wide v13, v12, Ljym;->i:J

    sub-long/2addr v7, v13

    sget-object v12, Ljya;->a:Ljya;

    if-ne v11, v12, :cond_11

    const-wide/32 v11, 0xf4240

    cmp-long v13, v7, v11

    if-lez v13, :cond_10

    const-string v11, "EncWatcher"

    const-string v12, "Audio track not started after %s us"

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v14, v3

    invoke-static {v12, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Ljya;->a:Ljya;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Ljym;->e(Ljya;I)Ljyk;

    move-result-object v7

    move-object v8, v0

    check-cast v8, Ljym;

    invoke-virtual {v8, v7}, Ljym;->a(Ljyk;)V

    :cond_10
    monitor-exit v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    goto/16 :goto_5

    :cond_11
    const-wide/32 v12, 0x2dc6c0

    cmp-long v14, v7, v12

    if-lez v14, :cond_12

    const-string v12, "EncWatcher"

    const-string v13, "%s track not started after %s us"

    new-array v14, v15, [Ljava/lang/Object;

    aput-object v11, v14, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v14, v8

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v11, v8}, Ljym;->e(Ljya;I)Ljyk;

    move-result-object v7

    move-object v8, v0

    check-cast v8, Ljym;

    invoke-virtual {v8, v7}, Ljym;->a(Ljyk;)V

    :cond_12
    monitor-exit v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :cond_13
    monitor-exit v2

    return-void

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :cond_14
    :goto_6
    return-void

    :pswitch_7
    iget-object v0, v1, Ljum;->a:Ljava/lang/Object;

    check-cast v0, Ljyg;

    iget-object v0, v0, Ljyg;->a:Ljyi;

    iget-object v0, v0, Ljyi;->O:Lnph;

    invoke-virtual {v0, v2}, Lnph;->e(Ljava/lang/Object;)Z

    return-void

    :pswitch_8
    iget-object v0, v1, Ljum;->a:Ljava/lang/Object;

    check-cast v0, Ljyi;

    iget-object v0, v0, Ljyi;->N:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void

    :pswitch_9
    iget-object v2, v1, Ljum;->a:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Ljyi;

    iget-object v3, v0, Ljyi;->c:Lnow;

    invoke-interface {v3}, Lnow;->shutdown()V

    iget-object v3, v0, Ljyi;->b:Lnow;

    invoke-interface {v3}, Lnow;->shutdown()V

    iget-object v3, v0, Ljyi;->a:Lnow;

    invoke-interface {v3}, Lnow;->shutdown()V

    iget-object v0, v0, Ljyi;->d:Lnow;

    invoke-interface {v0}, Lnow;->shutdown()V

    :try_start_5
    move-object v0, v2

    check-cast v0, Ljyi;

    iget-object v0, v0, Ljyi;->c:Lnow;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x3e8

    invoke-interface {v0, v4, v5, v3}, Lnow;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-object v0, v2

    check-cast v0, Ljyi;

    iget-object v0, v0, Ljyi;->b:Lnow;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v3}, Lnow;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-object v0, v2

    check-cast v0, Ljyi;

    iget-object v0, v0, Ljyi;->a:Lnow;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v3}, Lnow;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-object v0, v2

    check-cast v0, Ljyi;

    iget-object v0, v0, Ljyi;->d:Lnow;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v3}, Lnow;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    const-string v3, "AudioEncoder"

    const-string v4, "Interrupted while waiting for executors to terminate."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    :try_start_6
    check-cast v2, Ljyi;

    iget-object v0, v2, Ljyi;->j:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    return-void

    :catch_1
    move-exception v0

    const-string v2, "AudioEncoder"

    const-string v3, "MediaCodec could not stop."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :pswitch_a
    iget-object v0, v1, Ljum;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljwf;

    iget v4, v3, Ljwf;->a:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Ljwf;->a:I

    if-nez v4, :cond_15

    iget-object v4, v3, Ljwf;->e:Ljava/lang/Object;

    if-eqz v4, :cond_15

    iget-object v4, v3, Ljwf;->e:Ljava/lang/Object;

    check-cast v0, Ljvk;

    invoke-virtual {v0, v4}, Ljvk;->c(Ljava/lang/Object;)V

    iput-object v2, v3, Ljwf;->e:Ljava/lang/Object;

    :cond_15
    return-void

    :pswitch_b
    iget-object v0, v1, Ljum;->a:Ljava/lang/Object;

    check-cast v0, Ljwf;

    iget v2, v0, Ljwf;->a:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Ljwf;->a:I

    return-void

    :pswitch_c
    iget-object v0, v1, Ljum;->a:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Lkai;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_d
    iget-object v2, v1, Ljum;->a:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Ljvb;

    iget-object v4, v3, Ljvb;->a:Ljava/lang/Object;

    monitor-enter v4

    :try_start_7
    move-object v0, v2

    check-cast v0, Ljvb;

    iget-object v0, v0, Ljvb;->d:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljvc;

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    if-eqz v6, :cond_17

    :try_start_8
    iget-object v0, v6, Ljvc;->b:Lnph;

    invoke-virtual {v0}, Lnph;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, v6, Ljvc;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :cond_16
    iget-object v4, v3, Ljvb;->a:Ljava/lang/Object;

    monitor-enter v4

    :try_start_9
    move-object v0, v2

    check-cast v0, Ljvb;

    iget v0, v0, Ljvb;->b:I

    add-int/lit8 v0, v0, -0x1

    check-cast v2, Ljvb;

    iput v0, v2, Ljvb;->b:I

    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :goto_8
    iget-object v0, v6, Ljvc;->b:Lnph;

    invoke-virtual {v0, v5}, Lnph;->e(Ljava/lang/Object;)Z

    return-void

    :catchall_3
    move-exception v0

    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v0

    :catchall_4
    move-exception v0

    :try_start_b
    iget-object v4, v6, Ljvc;->b:Lnph;

    invoke-virtual {v4, v0}, Lnph;->a(Ljava/lang/Throwable;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    iget-object v4, v3, Ljvb;->a:Ljava/lang/Object;

    monitor-enter v4

    :try_start_c
    move-object v0, v2

    check-cast v0, Ljvb;

    iget v0, v0, Ljvb;->b:I

    add-int/lit8 v0, v0, -0x1

    check-cast v2, Ljvb;

    iput v0, v2, Ljvb;->b:I

    monitor-exit v4

    goto :goto_8

    :catchall_5
    move-exception v0

    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v0

    :catchall_6
    move-exception v0

    iget-object v3, v3, Ljvb;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_d
    move-object v4, v2

    check-cast v4, Ljvb;

    iget v4, v4, Ljvb;->b:I

    add-int/lit8 v4, v4, -0x1

    check-cast v2, Ljvb;

    iput v4, v2, Ljvb;->b:I

    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    iget-object v2, v6, Ljvc;->b:Lnph;

    invoke-virtual {v2, v5}, Lnph;->e(Ljava/lang/Object;)Z

    throw v0

    :catchall_7
    move-exception v0

    :try_start_e
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    throw v0

    :cond_17
    return-void

    :catchall_8
    move-exception v0

    :try_start_f
    monitor-exit v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    throw v0

    :pswitch_e
    iget-object v0, v1, Ljum;->a:Ljava/lang/Object;

    :goto_9
    if-gtz v3, :cond_19

    move-object v2, v0

    check-cast v2, [Lkad;

    aget-object v2, v2, v3

    if-eqz v2, :cond_18

    invoke-interface {v2}, Lkad;->close()V

    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_19
    return-void

    :pswitch_f
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v2, v1, Ljum;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :pswitch_10
    iget-object v0, v1, Ljum;->a:Ljava/lang/Object;

    check-cast v0, Ljux;

    iget-object v3, v0, Ljux;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_10
    iget-object v0, v1, Ljum;->a:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljux;

    iget-object v4, v4, Ljux;->b:Ljava/lang/Runnable;

    if-nez v4, :cond_1a

    monitor-exit v3

    return-void

    :cond_1a
    check-cast v0, Ljux;

    iput-object v2, v0, Ljux;->b:Ljava/lang/Runnable;

    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_9
    move-exception v0

    :try_start_11
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    throw v0

    :pswitch_11
    iget-object v0, v1, Ljum;->a:Ljava/lang/Object;

    new-instance v2, Ljun;

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljun;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :pswitch_12
    iget-object v0, v1, Ljum;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :pswitch_13
    iget-object v0, v1, Ljum;->a:Ljava/lang/Object;

    new-instance v2, Ljun;

    check-cast v0, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v2, v0}, Ljun;-><init>(Ljava/lang/Throwable;)V

    goto :goto_b

    :goto_a
    throw v2

    :goto_b
    goto :goto_a

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
