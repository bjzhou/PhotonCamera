.class public final synthetic Lczl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lczm;I)V
    .locals 0

    iput p2, p0, Lczl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lczl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldaj;I)V
    .locals 0

    iput p2, p0, Lczl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lczl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldbl;I)V
    .locals 0

    iput p2, p0, Lczl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lczl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldch;I)V
    .locals 0

    iput p2, p0, Lczl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lczl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lddj;I)V
    .locals 0

    iput p2, p0, Lczl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lczl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lddo;I)V
    .locals 0

    iput p2, p0, Lczl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lczl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldec;I)V
    .locals 0

    iput p2, p0, Lczl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lczl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldek;I)V
    .locals 0

    iput p2, p0, Lczl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lczl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldja;I[B)V
    .locals 0

    iput p2, p0, Lczl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lczl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhrw;I[B)V
    .locals 0

    iput p2, p0, Lczl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lczl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljuf;I)V
    .locals 0

    iput p2, p0, Lczl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lczl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkus;I)V
    .locals 0

    iput p2, p0, Lczl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lczl;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lczl;->b:I

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lczl;->a:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    monitor-enter v0

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Lczl;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lkus;->b()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lczl;->a:Ljava/lang/Object;

    check-cast v0, Lddo;

    iget-wide v0, v0, Lddo;->a:J

    return-void

    :pswitch_2
    iget-object v0, p0, Lczl;->a:Ljava/lang/Object;

    check-cast v0, Ldec;

    iput-boolean v4, v0, Ldec;->i:Z

    invoke-virtual {v0}, Ldec;->h()V

    return-void

    :pswitch_3
    iget-object v0, p0, Lczl;->a:Ljava/lang/Object;

    check-cast v0, Ldec;

    iget-object v1, v0, Ldec;->k:Ljava/util/concurrent/Executor;

    new-instance v2, Lczl;

    const/16 v3, 0xc

    invoke-direct {v2, v0, v3}, Lczl;-><init>(Ldec;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lczl;->a:Ljava/lang/Object;

    check-cast v0, Ldec;

    iget-boolean v1, v0, Ldec;->f:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Ldec;->b:Lddx;

    invoke-interface {v1}, Lddx;->i()V

    iget-object v0, v0, Ldec;->b:Lddx;

    invoke-interface {v0}, Lddx;->g()V

    return-void

    :pswitch_5
    iget-object v0, p0, Lczl;->a:Ljava/lang/Object;

    check-cast v0, Ldec;

    iget-object v2, v0, Ldec;->w:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lczl;

    invoke-direct {v3, v0, v1}, Lczl;-><init>(Ldec;I)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-interface {v2, v3, v4, v5, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    invoke-static {v1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v1

    iput-object v1, v0, Ldec;->E:Lmqp;

    return-void

    :pswitch_6
    iget-object v0, p0, Lczl;->a:Ljava/lang/Object;

    check-cast v0, Ldec;

    iget-object v1, v0, Ldec;->k:Ljava/util/concurrent/Executor;

    new-instance v2, Lczl;

    const/16 v3, 0xf

    invoke-direct {v2, v0, v3}, Lczl;-><init>(Ldec;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_7
    iget-object v0, p0, Lczl;->a:Ljava/lang/Object;

    check-cast v0, Ldec;

    iget-boolean v2, v0, Ldec;->f:Z

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v2, v0, Ldec;->b:Lddx;

    invoke-interface {v2}, Lddx;->e()V

    iget-object v2, v0, Ldec;->G:Lhmz;

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    sget-object v2, Lhmv;->a:Lhmw;

    iget-object v3, v0, Ldec;->B:Lddp;

    invoke-virtual {v3}, Lddp;->c()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lhne;->a()Lhnd;

    move-result-object v2

    iget-object v3, v0, Ldec;->k:Ljava/util/concurrent/Executor;

    invoke-virtual {v2, v3}, Lhnd;->c(Ljava/util/concurrent/Executor;)V

    const-string v3, "Lens suggestion"

    invoke-virtual {v2, v3}, Lhnd;->d(Ljava/lang/String;)V

    new-instance v3, Lczl;

    const/16 v4, 0xd

    invoke-direct {v3, v0, v4}, Lczl;-><init>(Ldec;I)V

    invoke-virtual {v2, v3}, Lhnd;->e(Ljava/lang/Runnable;)V

    new-instance v3, Lczl;

    invoke-direct {v3, v0, v1}, Lczl;-><init>(Ldec;I)V

    invoke-virtual {v2, v3}, Lhnd;->f(Ljava/lang/Runnable;)V

    iget-object v1, v0, Ldec;->y:Lhna;

    invoke-virtual {v2, v1}, Lhnd;->g(Lhna;)V

    invoke-virtual {v2}, Lhnd;->a()Lhne;

    move-result-object v2

    :cond_3
    iput-object v2, v0, Ldec;->G:Lhmz;

    iget-object v1, v0, Ldec;->C:Lhnb;

    invoke-interface {v1, v2}, Lhnb;->f(Lhmz;)Lkad;

    move-result-object v1

    iput-object v1, v0, Ldec;->a:Lkad;

    :goto_0
    iget-object v0, v0, Ldec;->A:Lddj;

    iget-object v1, v0, Lddj;->c:Ljava/util/concurrent/Executor;

    new-instance v2, Lczl;

    const/16 v3, 0x9

    invoke-direct {v2, v0, v3}, Lczl;-><init>(Lddj;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_8
    iget-object v0, p0, Lczl;->a:Ljava/lang/Object;

    check-cast v0, Ldec;

    iput-boolean v4, v0, Ldec;->h:Z

    iput-boolean v2, v0, Ldec;->i:Z

    invoke-virtual {v0}, Ldec;->i()V

    return-void

    :pswitch_9
    iget-object v0, p0, Lczl;->a:Ljava/lang/Object;

    check-cast v0, Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    return-void

    :pswitch_a
    iget-object v0, p0, Lczl;->a:Ljava/lang/Object;

    check-cast v0, Lddj;

    invoke-virtual {v0}, Lddj;->b()V

    return-void

    :pswitch_b
    iget-object v0, p0, Lczl;->a:Ljava/lang/Object;

    check-cast v0, Ldch;

    iget-object v0, v0, Ldch;->b:Lcom/google/android/apps/camera/camerafatalerror/CameraFatalErrorTrackerDatabase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/camerafatalerror/CameraFatalErrorTrackerDatabase;->w()Ldck;

    move-result-object v0

    invoke-virtual {v0}, Ldck;->a()V

    return-void

    :pswitch_c
    iget-object v0, p0, Lczl;->a:Ljava/lang/Object;

    check-cast v0, Ldja;

    iget-object v1, v0, Ldja;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/apps/camera/camerafatalerror/CameraFatalErrorTrackerDatabase;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/camerafatalerror/CameraFatalErrorTrackerDatabase;->x()Ldcr;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ldcw;

    iget-object v4, v2, Ldcw;->a:Lapt;

    invoke-virtual {v4}, Lapt;->l()V

    iget-object v4, v2, Ldcw;->d:Laqa;

    invoke-virtual {v4}, Laqa;->e()Larf;

    move-result-object v4

    iget-object v5, v2, Ldcw;->a:Lapt;

    invoke-virtual {v5}, Lapt;->m()V

    :try_start_0
    invoke-virtual {v4}, Larf;->a()I

    check-cast v1, Ldcw;

    iget-object v1, v1, Ldcw;->a:Lapt;

    invoke-virtual {v1}, Lapt;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, v2, Ldcw;->a:Lapt;

    invoke-virtual {v1}, Lapt;->o()V

    iget-object v1, v2, Ldcw;->d:Laqa;

    invoke-virtual {v1, v4}, Laqa;->g(Larf;)V

    iget-object v1, v0, Ldja;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/apps/camera/camerafatalerror/CameraFatalErrorTrackerDatabase;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/camerafatalerror/CameraFatalErrorTrackerDatabase;->w()Ldck;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ldcp;

    iget-object v4, v2, Ldcp;->a:Lapt;

    invoke-virtual {v4}, Lapt;->l()V

    iget-object v4, v2, Ldcp;->d:Laqa;

    invoke-virtual {v4}, Laqa;->e()Larf;

    move-result-object v4

    iget-object v5, v2, Ldcp;->a:Lapt;

    invoke-virtual {v5}, Lapt;->m()V

    :try_start_1
    invoke-virtual {v4}, Larf;->a()I

    check-cast v1, Ldcp;

    iget-object v1, v1, Ldcp;->a:Lapt;

    invoke-virtual {v1}, Lapt;->q()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, v2, Ldcp;->a:Lapt;

    invoke-virtual {v1}, Lapt;->o()V

    iget-object v1, v2, Ldcp;->d:Laqa;

    invoke-virtual {v1, v4}, Laqa;->g(Larf;)V

    invoke-static {}, Lddd;->values()[Lddd;

    move-result-object v1

    invoke-static {v1}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Ldcc;

    const/4 v4, 0x2

    invoke-direct {v2, v0, v4, v3}, Ldcc;-><init>(Ldja;I[B)V

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, v2, Ldcp;->a:Lapt;

    invoke-virtual {v1}, Lapt;->o()V

    iget-object v1, v2, Ldcp;->d:Laqa;

    invoke-virtual {v1, v4}, Laqa;->g(Larf;)V

    throw v0

    :catchall_1
    move-exception v0

    iget-object v1, v2, Ldcw;->a:Lapt;

    invoke-virtual {v1}, Lapt;->o()V

    iget-object v1, v2, Ldcw;->d:Laqa;

    invoke-virtual {v1, v4}, Laqa;->g(Larf;)V

    throw v0

    :pswitch_d
    iget-object v0, p0, Lczl;->a:Ljava/lang/Object;

    check-cast v0, Ldbl;

    iget-object v1, v0, Ldbl;->a:Ldbf;

    iget-object v2, v0, Ldbl;->c:Lklv;

    invoke-virtual {v1, v2}, Ldbf;->f(Lklv;)V

    iget-object v1, v0, Ldbl;->a:Ldbf;

    iget-object v0, v0, Ldbl;->b:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Ldbf;->h(Ljava/lang/Runnable;)V

    return-void

    :pswitch_e
    iget-object v0, p0, Lczl;->a:Ljava/lang/Object;

    check-cast v0, Lhrw;

    iget-object v0, v0, Lhrw;->b:Ljava/lang/Object;

    check-cast v0, Ldaj;

    invoke-virtual {v0}, Ldaj;->d()V

    return-void

    :pswitch_f
    iget-object v0, p0, Lczl;->a:Ljava/lang/Object;

    check-cast v0, Lhrw;

    iget-object v0, v0, Lhrw;->b:Ljava/lang/Object;

    check-cast v0, Ldaj;

    iget-object v0, v0, Ldaj;->A:Ljew;

    const-string v1, "try_washington_tooltip"

    invoke-virtual {v0, v1}, Ljew;->Z(Ljava/lang/String;)I

    return-void

    :pswitch_10
    iget-object v0, p0, Lczl;->a:Ljava/lang/Object;

    check-cast v0, Ldaj;

    invoke-virtual {v0}, Ldaj;->d()V

    return-void

    :pswitch_11
    iget-object v0, p0, Lczl;->a:Ljava/lang/Object;

    check-cast v0, Ldaj;

    iget-object v0, v0, Ldaj;->A:Ljew;

    const-string v1, "washington_tooltip"

    invoke-virtual {v0, v1}, Ljew;->Z(Ljava/lang/String;)I

    return-void

    :pswitch_12
    iget-object v0, p0, Lczl;->a:Ljava/lang/Object;

    check-cast v0, Lczm;

    iget-object v1, v0, Lczm;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Lctw;

    const/16 v3, 0x13

    invoke-direct {v2, v0, v3}, Lctw;-><init>(Lczm;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_13
    iget-object v0, p0, Lczl;->a:Ljava/lang/Object;

    check-cast v0, Lczm;

    iput-boolean v4, v0, Lczm;->e:Z

    iget-boolean v1, v0, Lczm;->d:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Lczm;->b:Lczj;

    invoke-virtual {v1}, Lczj;->d()V

    invoke-virtual {v0}, Lczm;->b()V

    :cond_4
    return-void

    :goto_1
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v7, v0

    check-cast v7, Ldek;

    iget-object v7, v7, Ldek;->b:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-static {v7}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v7

    new-instance v8, Ldkx;

    invoke-direct {v8, v5, v6, v4}, Ldkx;-><init>(JI)V

    invoke-interface {v7, v8}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v4

    sget-object v5, Lcpy;->h:Lcpy;

    invoke-interface {v4, v5}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v4

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    move-object v6, v0

    check-cast v6, Ldek;

    iget-object v6, v6, Ldek;->b:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    move-object v4, v0

    check-cast v4, Ldek;

    iget-object v4, v4, Ldek;->b:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v4, v0

    check-cast v4, Ldek;

    iget-object v4, v4, Ldek;->d:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v4, :cond_6

    move-object v5, v0

    check-cast v5, Ldek;

    iput-object v3, v5, Ldek;->d:Ljava/util/concurrent/ScheduledFuture;

    move-object v3, v4

    goto :goto_3

    :cond_6
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    :goto_4
    if-ge v2, v4, :cond_7

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    move-object v6, v0

    check-cast v6, Ldek;

    iget-object v6, v6, Ldek;->c:Ldej;

    invoke-interface {v6, v5}, Ldej;->a(Ljava/lang/Long;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    invoke-static {v3}, Ldek;->b(Ljava/util/concurrent/ScheduledFuture;)V

    return-void

    :catchall_2
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_6

    :goto_5
    throw v1

    :goto_6
    goto :goto_5

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
