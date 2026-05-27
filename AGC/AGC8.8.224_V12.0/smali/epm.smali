.class public final synthetic Lepm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(JLjava/util/concurrent/ExecutorService;I)V
    .locals 0

    iput p4, p0, Lepm;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lepm;->a:J

    iput-object p3, p0, Lepm;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(JLnsx;I)V
    .locals 0

    iput p4, p0, Lepm;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lepm;->a:J

    iput-object p3, p0, Lepm;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfeu;JI)V
    .locals 0

    iput p4, p0, Lepm;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lepm;->b:Ljava/lang/Object;

    iput-wide p2, p0, Lepm;->a:J

    return-void
.end method

.method public synthetic constructor <init>(Lffo;JI)V
    .locals 0

    iput p4, p0, Lepm;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lepm;->b:Ljava/lang/Object;

    iput-wide p2, p0, Lepm;->a:J

    return-void
.end method

.method public synthetic constructor <init>(Lfpo;JI)V
    .locals 0

    iput p4, p0, Lepm;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lepm;->b:Ljava/lang/Object;

    iput-wide p2, p0, Lepm;->a:J

    return-void
.end method

.method public synthetic constructor <init>(Lfrn;JI)V
    .locals 0

    iput p4, p0, Lepm;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lepm;->b:Ljava/lang/Object;

    iput-wide p2, p0, Lepm;->a:J

    return-void
.end method

.method public synthetic constructor <init>(Lgcl;JI)V
    .locals 0

    iput p4, p0, Lepm;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lepm;->b:Ljava/lang/Object;

    iput-wide p2, p0, Lepm;->a:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Lepm;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lepm;->b:Ljava/lang/Object;

    iget-wide v1, p0, Lepm;->a:J

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, p0, Lepm;->b:Ljava/lang/Object;

    iget-wide v1, p0, Lepm;->a:J

    check-cast v0, Lfrn;

    invoke-virtual {v0, v1, v2}, Lfrn;->d(J)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lepm;->b:Ljava/lang/Object;

    iget-wide v1, p0, Lepm;->a:J

    check-cast v0, Lfpo;

    iget-object v0, v0, Lfpo;->a:Lldc;

    invoke-virtual {v0}, Llbk;->c()Llcv;

    move-result-object v0

    check-cast v0, Llcn;

    invoke-interface {v0}, Llcn;->f()Landroid/opengl/EGLDisplay;

    move-result-object v3

    invoke-interface {v0}, Llcn;->g()Landroid/opengl/EGLSurface;

    move-result-object v0

    invoke-static {v3, v0, v1, v2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    return-void

    :pswitch_2
    iget-object v0, p0, Lepm;->b:Ljava/lang/Object;

    iget-wide v1, p0, Lepm;->a:J

    sget-object v3, Lffp;->a:Lnak;

    check-cast v0, Lffo;

    iget-object v3, v0, Lffo;->h:Lnph;

    invoke-virtual {v3}, Lnph;->isDone()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lffp;->a:Lnak;

    invoke-virtual {v3}, Lnaf;->c()Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    const/16 v4, 0x88e

    invoke-interface {v3, v4}, Lnah;->G(I)Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    iget-object v0, v0, Lffo;->h:Lnph;

    invoke-static {v0}, Lnsy;->K(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    const-string v4, "Trying to correct timestamp to %d but it was already set as %d"

    invoke-interface {v3, v4, v1, v2, v0}, Lnah;->w(Ljava/lang/String;JLjava/lang/Object;)V

    return-void

    :cond_0
    iget-wide v3, v0, Lffo;->e:J

    iget-object v0, v0, Lffo;->h:Lnph;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnph;->e(Ljava/lang/Object;)Z

    return-void

    :pswitch_3
    iget-object v0, p0, Lepm;->b:Ljava/lang/Object;

    iget-wide v1, p0, Lepm;->a:J

    check-cast v0, Lfeu;

    iget-object v3, v0, Lfeu;->f:Landroid/os/Handler;

    new-instance v4, Lepm;

    const/4 v5, 0x2

    invoke-direct {v4, v0, v1, v2, v5}, Lepm;-><init>(Lfeu;JI)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_4
    iget-object v0, p0, Lepm;->b:Ljava/lang/Object;

    iget-wide v1, p0, Lepm;->a:J

    check-cast v0, Lfeu;

    iget-object v0, v0, Lfeu;->c:Lhxb;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-interface {v0, v3, v4}, Lhxb;->h(J)V

    return-void

    :pswitch_5
    iget-wide v0, p0, Lepm;->a:J

    iget-object v2, p0, Lepm;->b:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3a98

    add-long/2addr v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-gez v7, :cond_1

    invoke-static {}, Llat;->a()I

    :cond_1
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    sget-boolean v2, Llat;->a:Z

    invoke-static {}, Llat;->a()I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Llat;->b:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    sget-object v4, Llat;->b:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Llas;

    iget-wide v6, v6, Llas;->a:J

    cmp-long v8, v6, v0

    if-gtz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Llat;->b:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_6
    iget-wide v0, p0, Lepm;->a:J

    iget-object v2, p0, Lepm;->b:Ljava/lang/Object;

    sget-object v3, Lepo;->a:Lnak;

    invoke-virtual {v3}, Lnaf;->c()Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    const/16 v4, 0x6f6

    invoke-interface {v3, v4}, Lnah;->G(I)Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    const-string v4, "Couldn\'t submit frame %s."

    invoke-interface {v3, v4, v0, v1}, Lnah;->q(Ljava/lang/String;J)V

    check-cast v2, Lnsx;

    iget-object v0, v2, Lnsx;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :goto_2
    :try_start_2
    move-object v3, v0

    check-cast v3, Lgcl;

    iget-object v3, v3, Lgcl;->g:Lkbc;

    const-string v4, "waitUntilFrame"

    invoke-interface {v3, v4}, Lkbc;->e(Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Lgcl;

    iget-object v3, v3, Lgcl;->d:Lfvt;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0xa5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    iget-object v6, v3, Lfvt;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_3
    :try_start_3
    iget-wide v6, v3, Lfvt;->c:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v1

    if-gez v10, :cond_5

    cmp-long v6, v4, v8

    if-lez v6, :cond_5

    iget-object v6, v3, Lfvt;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v6, v4, v5}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :cond_5
    :try_start_4
    iget-object v3, v3, Lfvt;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    cmp-long v3, v4, v8

    if-gtz v3, :cond_6

    sget-object v3, Lgcl;->a:Lnak;

    invoke-virtual {v3}, Lnaf;->b()Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    const/16 v4, 0x9fa

    invoke-interface {v3, v4}, Lnah;->G(I)Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    const-string v4, "Timeout waiting for frame %d"

    invoke-interface {v3, v4, v1, v2}, Lnah;->q(Ljava/lang/String;J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_6
    check-cast v0, Lgcl;

    iget-object v0, v0, Lgcl;->g:Lkbc;

    :goto_4
    invoke-interface {v0}, Lkbc;->f()V

    return-void

    :catchall_1
    move-exception v4

    :try_start_5
    iget-object v3, v3, Lfvt;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v1

    goto :goto_5

    :catch_0
    move-exception v3

    :try_start_6
    sget-object v4, Lgcl;->a:Lnak;

    invoke-virtual {v4}, Lnaf;->b()Lnaz;

    move-result-object v4

    check-cast v4, Lnah;

    invoke-interface {v4, v3}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    const/16 v4, 0x9fb

    invoke-interface {v3, v4}, Lnah;->G(I)Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    const-string v4, "Error waiting for frame %d"

    invoke-interface {v3, v4, v1, v2}, Lnah;->q(Ljava/lang/String;J)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    check-cast v0, Lgcl;

    iget-object v0, v0, Lgcl;->g:Lkbc;

    goto :goto_4

    :goto_5
    check-cast v0, Lgcl;

    iget-object v0, v0, Lgcl;->g:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    goto :goto_7

    :goto_6
    throw v1

    :goto_7
    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
