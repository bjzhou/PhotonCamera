.class public final synthetic Lcmq;
.super Ljava/lang/Object;

# interfaces
.implements Lnno;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcmw;I)V
    .locals 0

    iput p2, p0, Lcmq;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcmq;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcnt;I)V
    .locals 0

    iput p2, p0, Lcmq;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcmq;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcoh;I)V
    .locals 0

    iput p2, p0, Lcmq;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcmq;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/camera/brella/examplestore/beholder/BeholderExampleStoreDataTtlService;I)V
    .locals 0

    iput p2, p0, Lcmq;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcmq;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfxk;I)V
    .locals 0

    iput p2, p0, Lcmq;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcmq;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljub;I)V
    .locals 0

    iput p2, p0, Lcmq;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcmq;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lleo;I)V
    .locals 0

    iput p2, p0, Lcmq;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcmq;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Llpp;I)V
    .locals 0

    iput p2, p0, Lcmq;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcmq;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Llqh;I)V
    .locals 0

    iput p2, p0, Lcmq;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcmq;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Llsi;I)V
    .locals 0

    iput p2, p0, Lcmq;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcmq;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Llsr;I)V
    .locals 0

    iput p2, p0, Lcmq;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcmq;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Llst;I)V
    .locals 0

    iput p2, p0, Lcmq;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcmq;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lnno;I)V
    .locals 0

    iput p2, p0, Lcmq;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcmq;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lnou;
    .locals 7

    iget v0, p0, Lcmq;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcmq;->a:Ljava/lang/Object;

    check-cast p1, Landroidx/wear/ambient/AmbientMode$AmbientController;

    check-cast v0, Llst;

    iget-object p1, v0, Llst;->c:Lmnb;

    invoke-virtual {p1}, Lmnb;->c()Lnou;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object p1, p0, Lcmq;->a:Ljava/lang/Object;

    check-cast p1, Llst;

    iget-object p1, p1, Llst;->b:Llsu;

    check-cast p1, Llsr;

    invoke-virtual {p1}, Llsr;->a()Lnou;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object p1, p0, Lcmq;->a:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Llsr;

    iget-object v0, v0, Llsr;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    check-cast p1, Llsr;

    iget-object p1, p1, Llsr;->f:Lnou;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_2
    iget-object v0, p0, Lcmq;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Void;

    check-cast v0, Llsr;

    iget-object p1, v0, Llsr;->b:Lnou;

    invoke-static {p1}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {v0, p1}, Llsr;->b(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object p1

    return-object p1

    :pswitch_3
    iget-object v0, p0, Lcmq;->a:Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    const-string v1, ".bak"

    invoke-static {p1, v1}, Llkj;->e(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :try_start_1
    move-object v2, v0

    check-cast v2, Llsr;

    iget-object v2, v2, Llsr;->g:Lva;

    invoke-virtual {v2, v1}, Lva;->G(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v0, Llsr;

    iget-object v0, v0, Llsr;->g:Lva;

    invoke-virtual {v0, v1, p1}, Lva;->F(Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    sget-object p1, Lnor;->a:Lnou;

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lnsy;->A(Ljava/lang/Throwable;)Lnou;

    move-result-object p1

    :goto_0
    return-object p1

    :pswitch_4
    iget-object v0, p0, Lcmq;->a:Ljava/lang/Object;

    check-cast v0, Llsr;

    iget-object v1, v0, Llsr;->b:Lnou;

    invoke-static {v1}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Llsr;->c(Landroid/net/Uri;Ljava/lang/Object;)V

    sget-object p1, Lnor;->a:Lnou;

    return-object p1

    :pswitch_5
    iget-object v0, p0, Lcmq;->a:Ljava/lang/Object;

    check-cast p1, Lnxy;

    invoke-interface {v0}, Llsi;->c()Lnou;

    move-result-object p1

    return-object p1

    :pswitch_6
    iget-object v0, p0, Lcmq;->a:Ljava/lang/Object;

    check-cast p1, Llqi;

    check-cast v0, Llqh;

    invoke-virtual {v0, p1}, Llqh;->c(Llqi;)Lnou;

    move-result-object p1

    return-object p1

    :pswitch_7
    iget-object v0, p0, Lcmq;->a:Ljava/lang/Object;

    check-cast p1, Llpe;

    iget v1, p1, Llpe;->a:I

    const/16 v2, 0x733d

    if-ne v1, v2, :cond_1

    check-cast v0, Llpp;

    iget-object v1, v0, Llpp;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to commit due to stale snapshot for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", triggering flag update. Experiments may be delayed til next app start."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MobStoreFlagStore"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Llpp;->b()V

    :cond_1
    invoke-static {p1}, Lnsy;->A(Ljava/lang/Throwable;)Lnou;

    move-result-object p1

    return-object p1

    :pswitch_8
    iget-object v0, p0, Lcmq;->a:Ljava/lang/Object;

    check-cast p1, Llqi;

    check-cast v0, Llqh;

    invoke-virtual {v0, p1}, Llqh;->c(Llqi;)Lnou;

    move-result-object p1

    return-object p1

    :pswitch_9
    iget-object v0, p0, Lcmq;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    :try_start_2
    move-object p1, v0

    check-cast p1, Lleo;

    iget-object p1, p1, Lleo;->b:Lnou;

    invoke-static {p1}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    move-object v3, v0

    check-cast v3, Lleo;

    iget-object v3, v3, Lleo;->c:Lnou;

    invoke-static {v3}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-static {v3}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Lleo;

    iget-object v4, v4, Lleo;->d:Lnou;

    invoke-static {v4}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-static {v4}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v4

    move-object v5, v0

    check-cast v5, Lleo;

    iget-object v5, v5, Lleo;->a:Lnou;

    invoke-static {v5}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lloi;

    iget-object v6, v5, Lloi;->c:Ljava/lang/Object;

    new-instance v6, Landroid/media/MediaMuxer;

    iget-object v5, v5, Lloi;->b:Ljava/lang/Object;

    check-cast v5, Lmqt;

    iget-object v5, v5, Lmqt;->a:Ljava/lang/Object;

    check-cast v5, Ljava/io/FileDescriptor;

    invoke-direct {v6, v5, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {p1}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v6, p1}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    :cond_2
    invoke-virtual {v3}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v4}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v6, p1, v2}, Landroid/media/MediaMuxer;->setLocation(FF)V

    :cond_3
    invoke-static {v6}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_1

    :catchall_2
    move-exception p1

    const/4 v6, 0x0

    :goto_1
    const-string v2, "MuxerImpl"

    const-string v3, "Error trying to construct MediaMuxer."

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    check-cast v0, Lleo;

    iget-boolean v2, v0, Lleo;->i:Z

    if-nez v2, :cond_4

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/media/MediaMuxer;->release()V

    iput-boolean v1, v0, Lleo;->i:Z

    :cond_4
    invoke-static {p1}, Lnsy;->A(Ljava/lang/Throwable;)Lnou;

    move-result-object p1

    :goto_2
    return-object p1

    :pswitch_a
    iget-object v0, p0, Lcmq;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Ljub;->a(Ljava/lang/Object;Ljava/lang/Object;)Lnou;

    move-result-object p1

    return-object p1

    :pswitch_b
    iget-object v0, p0, Lcmq;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Ljub;->a(Ljava/lang/Object;Ljava/lang/Object;)Lnou;

    move-result-object p1

    return-object p1

    :pswitch_c
    iget-object v0, p0, Lcmq;->a:Ljava/lang/Object;

    check-cast p1, Lgqr;

    iget-object v1, p1, Lgqr;->g:Lklv;

    iget-object v2, p1, Lgqr;->f:Lgya;

    invoke-static {v1, v2}, Ldyk;->f(Lklv;Lgya;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p1, Lgqr;->c:Lnou;

    if-eqz v1, :cond_6

    iget-object v2, p1, Lgqr;->i:Lgyq;

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v1}, Lnoo;->q(Lnou;)Lnoo;

    move-result-object v1

    new-instance v2, Lcpq;

    check-cast v0, Lfxk;

    const/4 v3, 0x3

    invoke-direct {v2, v0, p1, v3}, Lcpq;-><init>(Lfxk;Lgqr;I)V

    sget-object v0, Lnnv;->a:Lnnv;

    invoke-static {v1, v2, v0}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    new-instance v1, Leth;

    const/4 v2, 0x6

    invoke-direct {v1, p1, v2}, Leth;-><init>(Lgqr;I)V

    sget-object p1, Lnnv;->a:Lnnv;

    invoke-static {v0, v1, p1}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    goto :goto_4

    :cond_6
    :goto_3
    invoke-static {p1}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object p1

    :goto_4
    return-object p1

    :pswitch_d
    iget-object v0, p0, Lcmq;->a:Ljava/lang/Object;

    check-cast p1, Lgqr;

    move-object v1, v0

    check-cast v1, Lfxk;

    iget-object v1, v1, Lfxk;->e:Lfxl;

    iget-object v1, v1, Lfxl;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lfxk;

    iget-object v0, v0, Lfxk;->e:Lfxl;

    const/4 v2, 0x4

    iput v2, v0, Lfxl;->h:I

    iget-object v0, v0, Lfxl;->b:Lfxw;

    invoke-interface {v0, p1}, Lfxw;->a(Ljava/lang/Object;)Lnou;

    move-result-object v0

    iget-object p1, p1, Lgqr;->a:Lkpb;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lfof;

    const/16 v3, 0x11

    invoke-direct {v2, p1, v3}, Lfof;-><init>(Lkpb;I)V

    sget-object p1, Lnnv;->a:Lnnv;

    invoke-interface {v0, v2, p1}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    monitor-exit v1

    return-object v0

    :catchall_3
    move-exception p1

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw p1

    :pswitch_e
    iget-object v0, p0, Lcmq;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/RuntimeException;

    sget-object v1, Lffp;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    const-string v2, "Could not finish microvideo session as it previously failed with cause:"

    const/16 v3, 0x88a

    invoke-static {v1, v2, v3, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    invoke-interface {v0, p1}, Lnno;->a(Ljava/lang/Object;)Lnou;

    move-result-object p1

    return-object p1

    :pswitch_f
    iget-object v0, p0, Lcmq;->a:Ljava/lang/Object;

    check-cast p1, Lmwn;

    invoke-interface {v0, p1}, Lcnt;->e(Lmwn;)Lnou;

    move-result-object p1

    return-object p1

    :pswitch_10
    iget-object v0, p0, Lcmq;->a:Ljava/lang/Object;

    check-cast p1, Lmwn;

    check-cast v0, Lcoh;

    iget-object v0, v0, Lcoh;->c:Lcnt;

    invoke-virtual {p1}, Lmvm;->v()Lmvv;

    move-result-object p1

    invoke-interface {v0, p1}, Lcnt;->h(Ljava/util/List;)Lnou;

    move-result-object p1

    return-object p1

    :pswitch_11
    iget-object v0, p0, Lcmq;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Void;

    check-cast v0, Lcmw;

    invoke-virtual {v0}, Lcmw;->d()Lnou;

    move-result-object p1

    return-object p1

    :pswitch_12
    iget-object v0, p0, Lcmq;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Void;

    check-cast v0, Lcom/google/android/apps/camera/brella/examplestore/beholder/BeholderExampleStoreDataTtlService;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/brella/examplestore/beholder/BeholderExampleStoreDataTtlService;->a()Lcnt;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcnt;->f(J)Lnou;

    move-result-object p1

    return-object p1

    :pswitch_13
    iget-object v0, p0, Lcmq;->a:Ljava/lang/Object;

    check-cast p1, Lmwn;

    check-cast v0, Lcom/google/android/apps/camera/brella/examplestore/beholder/BeholderExampleStoreDataTtlService;

    iget-object v0, v0, Lcom/google/android/apps/camera/brella/examplestore/beholder/BeholderExampleStoreDataTtlService;->c:Lcoh;

    invoke-virtual {p1}, Lmvm;->v()Lmvv;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcoh;->b(Ljava/util/List;)Lnou;

    move-result-object p1

    return-object p1

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
