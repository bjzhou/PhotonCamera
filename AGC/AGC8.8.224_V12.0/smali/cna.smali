.class public final synthetic Lcna;
.super Ljava/lang/Object;

# interfaces
.implements Lnnn;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcih;I)V
    .locals 0

    iput p2, p0, Lcna;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcna;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcnf;I)V
    .locals 0

    iput p2, p0, Lcna;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcna;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfbm;I)V
    .locals 0

    iput p2, p0, Lcna;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcna;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgfu;I)V
    .locals 0

    iput p2, p0, Lcna;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcna;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhfx;I)V
    .locals 0

    iput p2, p0, Lcna;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcna;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhgc;I)V
    .locals 0

    iput p2, p0, Lcna;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcna;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljyy;I)V
    .locals 0

    iput p2, p0, Lcna;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcna;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Llix;I)V
    .locals 0

    iput p2, p0, Lcna;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcna;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lljg;I)V
    .locals 0

    iput p2, p0, Lcna;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcna;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Llle;I)V
    .locals 0

    iput p2, p0, Lcna;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcna;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Llsr;I)V
    .locals 0

    iput p2, p0, Lcna;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcna;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lnou;I)V
    .locals 0

    iput p2, p0, Lcna;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcna;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Lnou;
    .locals 18

    move-object/from16 v1, p0

    iget v0, v1, Lcna;->b:I

    const/4 v2, 0x6

    const/16 v3, 0x11

    const/16 v4, 0x10

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lcna;->a:Ljava/lang/Object;

    return-object v0

    :pswitch_0
    iget-object v0, v1, Lcna;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Llsr;

    iget-object v4, v2, Llsr;->b:Lnou;

    invoke-static {v4}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    :try_start_0
    check-cast v0, Llsr;

    invoke-virtual {v0, v4}, Llsr;->b(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v4, Llhe;

    invoke-direct {v4, v2}, Llhe;-><init>(Llsr;)V

    instance-of v5, v0, Llrm;

    if-nez v5, :cond_1

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v5, v5, Llrm;

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v5, v2, Llsr;->d:Llsh;

    invoke-virtual {v5, v0, v4}, Llsh;->a(Ljava/io/IOException;Llhe;)Lnou;

    move-result-object v0

    new-instance v4, Lcmq;

    invoke-direct {v4, v2, v3}, Lcmq;-><init>(Llsr;I)V

    invoke-static {v4}, Lmny;->b(Lnno;)Lnno;

    move-result-object v3

    iget-object v2, v2, Llsr;->c:Ljava/util/concurrent/Executor;

    invoke-static {v0, v3, v2}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v0}, Lnsy;->A(Ljava/lang/Throwable;)Lnou;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_1
    iget-object v0, v1, Lcna;->a:Ljava/lang/Object;

    check-cast v0, Llsr;

    iget-object v2, v0, Llsr;->b:Lnou;

    new-instance v3, Lcmq;

    invoke-direct {v3, v0, v4}, Lcmq;-><init>(Llsr;I)V

    invoke-static {v3}, Lmny;->b(Lnno;)Lnno;

    move-result-object v3

    iget-object v0, v0, Llsr;->c:Ljava/util/concurrent/Executor;

    invoke-static {v2, v3, v0}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    invoke-static {v0}, Lnsy;->C(Lnou;)Lnou;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, v1, Lcna;->a:Ljava/lang/Object;

    check-cast v0, Llle;

    invoke-virtual {v0}, Llle;->a()Lnou;

    move-result-object v0

    return-object v0

    :pswitch_3
    iget-object v0, v1, Lcna;->a:Ljava/lang/Object;

    check-cast v0, Lljg;

    iget-object v2, v0, Lljg;->g:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lliz;

    iget-boolean v2, v2, Lliz;->a:Z

    if-eqz v2, :cond_3

    iget-object v0, v0, Lljg;->h:Llix;

    iget-object v2, v0, Llix;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v0, Lnor;->a:Lnou;

    goto :goto_2

    :cond_2
    new-instance v2, Lcna;

    invoke-direct {v2, v0, v5}, Lcna;-><init>(Llix;I)V

    iget-object v0, v0, Llix;->c:Ljava/util/concurrent/Executor;

    invoke-static {v2, v0}, Lnsy;->G(Lnnn;Ljava/util/concurrent/Executor;)Lnou;

    :cond_3
    :goto_2
    sget-object v0, Lnor;->a:Lnou;

    return-object v0

    :pswitch_4
    iget-object v0, v1, Lcna;->a:Ljava/lang/Object;

    check-cast v0, Lljg;

    iget-object v3, v0, Lljg;->g:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lliz;

    iget-boolean v4, v3, Lliz;->a:Z

    if-eqz v4, :cond_4

    iget-object v4, v0, Lljg;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v0, Lljg;->c:Logd;

    invoke-interface {v4}, Logd;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lliv;

    iget v3, v3, Lliz;->e:F

    invoke-virtual {v0, v2, v4, v3}, Lljg;->h(ILliv;F)Lnou;

    move-result-object v0

    goto :goto_3

    :cond_4
    sget-object v0, Lnor;->a:Lnou;

    :goto_3
    return-object v0

    :pswitch_5
    iget-object v0, v1, Lcna;->a:Ljava/lang/Object;

    check-cast v0, Llix;

    iget-object v3, v0, Llix;->a:Lmrl;

    invoke-interface {v3}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v0, Llix;->b:Lmrl;

    invoke-interface {v4}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v3, Lmqp;

    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v5

    if-eqz v5, :cond_9

    check-cast v4, Lmqp;

    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v5

    if-nez v5, :cond_5

    goto/16 :goto_4

    :cond_5
    new-instance v5, Lliw;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v5, v3, v4}, Lliw;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Lliw;->a()I

    move-result v3

    invoke-virtual {v5}, Lliw;->b()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    iput v6, v5, Lliw;->c:I

    iput-boolean v7, v5, Lliw;->d:Z

    iget-object v4, v0, Llix;->d:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lliz;

    iget v4, v4, Lliz;->b:I

    if-lt v3, v4, :cond_8

    iget-object v0, v0, Llix;->g:Lmap;

    invoke-static {}, Llif;->a()Llie;

    move-result-object v3

    sget-object v4, Lozv;->u:Lozv;

    invoke-virtual {v4}, Lnws;->O()Lnwn;

    move-result-object v4

    sget-object v5, Lozt;->d:Lozt;

    invoke-virtual {v5}, Lnws;->O()Lnwn;

    move-result-object v5

    iget-object v6, v5, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_6
    iget-object v6, v5, Lnwn;->b:Lnws;

    check-cast v6, Lozt;

    iput v2, v6, Lozt;->b:I

    iget v2, v6, Lozt;->a:I

    or-int/2addr v2, v7

    iput v2, v6, Lozt;->a:I

    iget-object v2, v4, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_7
    iget-object v2, v4, Lnwn;->b:Lnws;

    check-cast v2, Lozv;

    invoke-virtual {v5}, Lnwn;->i()Lnws;

    move-result-object v5

    check-cast v5, Lozt;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v5, v2, Lozv;->q:Lozt;

    iget v5, v2, Lozv;->a:I

    const/high16 v6, 0x2000000

    or-int/2addr v5, v6

    iput v5, v2, Lozv;->a:I

    invoke-virtual {v4}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lozv;

    invoke-virtual {v3, v2}, Llie;->e(Lozv;)V

    invoke-virtual {v3}, Llie;->a()Llif;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmap;->b(Llif;)Lnou;

    move-result-object v0

    goto :goto_5

    :cond_8
    sget-object v0, Lnor;->a:Lnou;

    goto :goto_5

    :cond_9
    :goto_4
    sget-object v0, Lnor;->a:Lnou;

    :goto_5
    return-object v0

    :pswitch_6
    iget-object v0, v1, Lcna;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljyy;

    iget-object v3, v2, Ljyy;->b:Ljxx;

    invoke-interface {v3}, Ljxx;->i()V

    iget-object v3, v2, Ljyy;->g:Ljxy;

    if-eqz v3, :cond_a

    iget-object v4, v2, Ljyy;->b:Ljxx;

    invoke-interface {v4, v3}, Ljxx;->g(Ljxy;)V

    :cond_a
    iget-object v3, v2, Ljyy;->d:Ljyb;

    if-eqz v3, :cond_b

    invoke-interface {v3}, Ljyb;->close()V

    :cond_b
    iget-object v3, v2, Ljyy;->e:Ljyf;

    if-eqz v3, :cond_c

    invoke-interface {v3}, Ljyf;->close()V

    :cond_c
    iget-object v3, v2, Ljyy;->f:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljxw;

    invoke-interface {v4}, Ljxw;->c()V

    invoke-interface {v4}, Ljxw;->close()V

    goto :goto_6

    :cond_d
    iget-object v3, v2, Ljyy;->b:Ljxx;

    invoke-interface {v3}, Ljxx;->close()V

    iget-object v2, v2, Ljyy;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    check-cast v0, Ljyy;

    const/4 v3, 0x4

    iput v3, v0, Ljyy;->l:I

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v0, Lnor;->a:Lnou;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :pswitch_7
    iget-object v0, v1, Lcna;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljyy;

    iget-object v4, v2, Ljyy;->a:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    check-cast v0, Ljyy;

    const/4 v3, 0x2

    iput v3, v0, Ljyy;->l:I

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iget-object v0, v2, Ljyy;->c:Ljym;

    iget-boolean v2, v0, Ljym;->e:Z

    if-nez v2, :cond_e

    iget-boolean v2, v0, Ljym;->f:Z

    iget-object v2, v0, Ljym;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v3

    iput-wide v3, v0, Ljym;->i:J

    invoke-virtual {v0}, Ljym;->c()V

    monitor-exit v2

    goto :goto_7

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_e
    :goto_7
    sget-object v0, Lnor;->a:Lnou;

    return-object v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :pswitch_8
    iget-object v0, v1, Lcna;->a:Ljava/lang/Object;

    check-cast v0, Lhgc;

    iget-object v2, v0, Lhgc;->f:Lhgd;

    const-string v4, "image/*"

    invoke-interface {v2, v4}, Lhgd;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iget-object v4, v0, Lhgc;->f:Lhgd;

    const-string v5, "video/*"

    invoke-interface {v4, v5}, Lhgd;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lmvv;->e()Lmvq;

    move-result-object v5

    invoke-virtual {v5, v2}, Lmvq;->h(Ljava/lang/Iterable;)V

    invoke-virtual {v5, v4}, Lmvq;->h(Ljava/lang/Iterable;)V

    invoke-virtual {v5}, Lmvq;->f()Lmvv;

    move-result-object v2

    invoke-static {v2}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v2

    sget-object v4, Lhfj;->h:Lhfj;

    new-instance v5, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v6, Lgdp;

    const/16 v7, 0x9

    invoke-direct {v6, v5, v4, v7}, Lgdp;-><init>(Ljava/util/Map;Ljava/util/function/Function;I)V

    invoke-interface {v2, v6}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lcwd;

    invoke-direct {v4, v0, v3}, Lcwd;-><init>(Lhgc;I)V

    invoke-interface {v2, v4}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lhfj;->f:Lhfj;

    invoke-static {v2}, Lj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->sorted(Ljava/util/Comparator;)Lj$/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lhfj;->g:Lhfj;

    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    sget-object v2, Ldrk;->f:Ldrk;

    invoke-static {v2}, Lj$/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Lj$/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v0}, Lmvv;->j(Ljava/util/Collection;)Lmvv;

    move-result-object v0

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    return-object v0

    :pswitch_9
    iget-object v0, v1, Lcna;->a:Ljava/lang/Object;

    check-cast v0, Lhfx;

    iget-object v2, v0, Lhfx;->f:Lhgd;

    const-string v3, "image/*"

    invoke-interface {v2, v3}, Lhgd;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iget-object v3, v0, Lhfx;->f:Lhgd;

    const-string v6, "video/*"

    invoke-interface {v3, v6}, Lhgd;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lmvv;->e()Lmvq;

    move-result-object v6

    invoke-virtual {v6, v2}, Lmvq;->h(Ljava/lang/Iterable;)V

    invoke-virtual {v6, v3}, Lmvq;->h(Ljava/lang/Iterable;)V

    invoke-virtual {v6}, Lmvq;->f()Lmvv;

    move-result-object v2

    invoke-static {v2}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lhfj;->d:Lhfj;

    new-instance v6, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v7, Lgdp;

    invoke-direct {v7, v6, v3, v5}, Lgdp;-><init>(Ljava/util/Map;Ljava/util/function/Function;I)V

    invoke-interface {v2, v7}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcwd;

    invoke-direct {v3, v0, v4}, Lcwd;-><init>(Lhfx;I)V

    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lhfj;->e:Lhfj;

    invoke-static {v2}, Lj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->sorted(Ljava/util/Comparator;)Lj$/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lhfj;->c:Lhfj;

    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    sget-object v2, Ldrk;->e:Ldrk;

    invoke-static {v2}, Lj$/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Lj$/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v0}, Lmvv;->j(Ljava/util/Collection;)Lmvv;

    move-result-object v0

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    return-object v0

    :pswitch_a
    iget-object v0, v1, Lcna;->a:Ljava/lang/Object;

    check-cast v0, Lgfu;

    iget-object v2, v0, Lgfu;->a:Lkbc;

    iget-object v0, v0, Lgfu;->b:Lknz;

    new-instance v3, Lfzr;

    const/16 v4, 0xe

    invoke-direct {v3, v0, v4}, Lfzr;-><init>(Lknz;I)V

    const-string v0, "orientation#enable"

    invoke-interface {v2, v0, v3}, Lkbc;->d(Ljava/lang/String;Ljava/lang/Runnable;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    return-object v0

    :pswitch_b
    iget-object v0, v1, Lcna;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lfbm;

    iget-object v0, v2, Lfbm;->d:Lkbc;

    const-string v3, "Location#isLocationEnabled"

    invoke-interface {v0, v3}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, v2, Lfbm;->a:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_f

    iget-object v0, v2, Lfbm;->a:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_16

    :cond_f
    iget-object v0, v2, Lfbm;->b:Lgzm;

    sget-object v4, Lgzd;->b:Lgzr;

    invoke-interface {v0, v4}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, v2, Lfbm;->d:Lkbc;

    const-string v4, "connectLocationProvider"

    invoke-interface {v0, v4}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, v2, Lfbm;->a:Landroid/content/Context;

    sget-object v4, Ljcd;->a:Ljcd;

    invoke-virtual {v4, v0, v6}, Ljce;->f(Landroid/content/Context;I)I

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, v2, Lfbm;->a:Landroid/content/Context;

    sget-object v4, Lfbg;->a:Lnak;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.google.android.gsf.GOOGLE_APPS_LOCATION_SETTINGS"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v8, 0x10000

    invoke-virtual {v4, v5, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_14

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    :try_start_6
    sget-object v9, Lfbg;->d:Landroid/net/Uri;

    new-array v10, v7, [Ljava/lang/String;

    const-string v0, "value"

    aput-object v0, v10, v6

    const-string v11, "name=?"

    new-array v12, v7, [Ljava/lang/String;

    const-string v0, "use_location_for_services"

    aput-object v0, v12, v6

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v4, :cond_10

    :try_start_7
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v3, v4

    goto :goto_c

    :catch_1
    move-exception v0

    goto :goto_9

    :cond_10
    :goto_8
    if-eqz v4, :cond_11

    goto :goto_a

    :catchall_4
    move-exception v0

    goto :goto_c

    :catch_2
    move-exception v0

    move-object v4, v3

    :goto_9
    :try_start_8
    sget-object v5, Lfbg;->a:Lnak;

    invoke-virtual {v5}, Lnaf;->c()Lnaz;

    move-result-object v5

    check-cast v5, Lnah;

    invoke-interface {v5, v0}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v5, 0x80c

    invoke-interface {v0, v5}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v5, "Failed to get \'Use My Location\' setting"

    invoke-interface {v0, v5}, Lnah;->o(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-eqz v4, :cond_11

    :goto_a
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_b

    :cond_11
    :goto_b
    if-nez v3, :cond_12

    goto :goto_e

    :cond_12
    :try_start_9
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_3

    if-ne v0, v7, :cond_15

    goto :goto_d

    :catch_3
    move-exception v0

    goto :goto_e

    :catchall_5
    move-exception v0

    move-object v3, v4

    :goto_c
    if-eqz v3, :cond_13

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_13
    throw v0

    :cond_14
    :goto_d
    new-instance v0, Lfbg;

    iget-object v3, v2, Lfbm;->a:Landroid/content/Context;

    iget-object v4, v2, Lfbm;->e:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v3, v4}, Lfbg;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    move-object v3, v0

    goto :goto_f

    :cond_15
    :goto_e
    new-instance v0, Lfbi;

    iget-object v3, v2, Lfbm;->c:Loiw;

    invoke-direct {v0, v3}, Lfbi;-><init>(Loiw;)V

    move-object v3, v0

    :goto_f
    invoke-interface {v3, v7}, Lfbj;->c(Z)V

    iget-object v0, v2, Lfbm;->d:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    goto :goto_10

    :cond_16
    :goto_10
    invoke-static {v3}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    iget-object v2, v2, Lfbm;->d:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V

    return-object v0

    :pswitch_c
    iget-object v2, v1, Lcna;->a:Ljava/lang/Object;

    :try_start_a
    move-object v0, v2

    check-cast v0, Lcih;

    iget-object v0, v0, Lcih;->c:Lkbc;

    const-string v3, "bindPhotosService"

    invoke-interface {v0, v3}, Lkbc;->e(Ljava/lang/String;)V

    new-instance v0, Ljqf;

    invoke-direct {v0, v7}, Ljqf;-><init>(I)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.google.android.apps.photos"

    const-string v5, "com.google.android.apps.photos.cameraassistant.CameraAssistantService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v4, v2

    check-cast v4, Lcih;

    iget-object v4, v4, Lcih;->b:Landroid/content/Context;

    const/4 v5, 0x5

    invoke-virtual {v4, v3, v0, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    check-cast v2, Lcih;

    iget-object v2, v2, Lcih;->c:Lkbc;

    goto :goto_11

    :catchall_6
    move-exception v0

    goto :goto_12

    :catch_4
    move-exception v0

    :try_start_b
    sget-object v3, Lcih;->a:Lnak;

    invoke-virtual {v3}, Lnaf;->c()Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    invoke-interface {v3, v0}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    const/16 v4, 0xc5

    invoke-interface {v3, v4}, Lnah;->G(I)Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    const-string v4, "Either Photos service does not exist or does not have permission to connect."

    invoke-interface {v3, v4}, Lnah;->o(Ljava/lang/String;)V

    invoke-static {v0}, Lnsy;->A(Ljava/lang/Throwable;)Lnou;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    check-cast v2, Lcih;

    iget-object v2, v2, Lcih;->c:Lkbc;

    :goto_11
    invoke-interface {v2}, Lkbc;->f()V

    return-object v0

    :goto_12
    check-cast v2, Lcih;

    iget-object v2, v2, Lcih;->c:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V

    throw v0

    :pswitch_d
    iget-object v0, v1, Lcna;->a:Ljava/lang/Object;

    check-cast v0, Lcnf;

    iget-object v0, v0, Lcnf;->b:Lcng;

    invoke-virtual {v0}, Lcng;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    :try_start_c
    new-array v11, v7, [Ljava/lang/String;

    const-string v0, "source_id"

    aput-object v0, v11, v6

    const/4 v9, 0x1

    const-string v10, "media_record"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v8, v2

    invoke-virtual/range {v8 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    :try_start_d
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    invoke-static {}, Lmwn;->D()Lmwl;

    move-result-object v0

    :goto_13
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_17

    const-string v4, "source_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lmwl;->g(Ljava/lang/Object;)V

    goto :goto_13

    :cond_17
    invoke-virtual {v0}, Lmwl;->f()Lmwn;

    move-result-object v0

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    if-eqz v3, :cond_18

    :try_start_e
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    :cond_18
    if-eqz v2, :cond_19

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_19
    return-object v0

    :catchall_7
    move-exception v0

    move-object v4, v0

    if-eqz v3, :cond_1a

    :try_start_f
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    goto :goto_14

    :catchall_8
    move-exception v0

    move-object v3, v0

    :try_start_10
    invoke-static {v4, v3}, Ldgw;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1a
    :goto_14
    throw v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    :catchall_9
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_1b

    :try_start_11
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    goto :goto_15

    :catchall_a
    move-exception v0

    move-object v2, v0

    invoke-static {v3, v2}, Ldgw;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1b
    :goto_15
    goto :goto_17

    :goto_16
    throw v3

    :goto_17
    goto :goto_16

    :pswitch_data_0
    .packed-switch 0x0
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
