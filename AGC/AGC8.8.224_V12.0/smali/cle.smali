.class public final synthetic Lcle;
.super Ljava/lang/Object;

# interfaces
.implements Lhip;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field private final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lckd;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ScheduledExecutorService;I)V
    .locals 0

    iput p5, p0, Lcle;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcle;->d:Ljava/lang/Object;

    iput-object p2, p0, Lcle;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcle;->c:Ljava/lang/Object;

    iput-object p4, p0, Lcle;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;Lmwn;Ljvs;Logd;I[B[B[B[B)V
    .locals 0

    iput p5, p0, Lcle;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcle;->d:Ljava/lang/Object;

    iput-object p2, p0, Lcle;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcle;->a:Ljava/lang/Object;

    iput-object p4, p0, Lcle;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcdi;Ljwb;Ldkp;Liff;I)V
    .locals 0

    iput p5, p0, Lcle;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcle;->d:Ljava/lang/Object;

    iput-object p2, p0, Lcle;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcle;->a:Ljava/lang/Object;

    iput-object p4, p0, Lcle;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcvr;Lmpa;Ldne;Lcdi;I[B[B[B[B)V
    .locals 0

    iput p5, p0, Lcle;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcle;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcle;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcle;->c:Ljava/lang/Object;

    iput-object p4, p0, Lcle;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljuh;Loiw;Lmqp;Loiw;I)V
    .locals 0

    iput p5, p0, Lcle;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcle;->d:Ljava/lang/Object;

    iput-object p2, p0, Lcle;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcle;->a:Ljava/lang/Object;

    iput-object p4, p0, Lcle;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget v0, p0, Lcle;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcle;->d:Ljava/lang/Object;

    iget-object v1, p0, Lcle;->c:Ljava/lang/Object;

    iget-object v2, p0, Lcle;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcle;->b:Ljava/lang/Object;

    new-instance v4, Lgwr;

    check-cast v2, Lmqp;

    const/16 v5, 0x9

    invoke-direct {v4, v1, v2, v3, v5}, Lgwr;-><init>(Loiw;Lmqp;Loiw;I)V

    check-cast v0, Ljuh;

    invoke-virtual {v0, v4}, Ljuh;->c(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcle;->d:Ljava/lang/Object;

    iget-object v1, p0, Lcle;->c:Ljava/lang/Object;

    iget-object v2, p0, Lcle;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcle;->b:Ljava/lang/Object;

    invoke-interface {v3}, Logd;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhdy;

    invoke-static {}, Lhdz;->a()Llie;

    move-result-object v4

    const-string v5, "Portrait"

    iput-object v5, v4, Llie;->c:Ljava/lang/Object;

    check-cast v1, Lmwn;

    invoke-virtual {v4, v1}, Llie;->h(Lmwn;)V

    sget-object v1, Lklv;->b:Lklv;

    sget-object v5, Lklv;->a:Lklv;

    invoke-static {v1, v5}, Lmwn;->I(Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v1

    invoke-virtual {v4, v1}, Llie;->g(Lmwn;)V

    invoke-virtual {v4, v2}, Llie;->i(Ljvs;)V

    invoke-virtual {v4}, Llie;->f()Lhdz;

    move-result-object v1

    check-cast v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-virtual {v0, v3, v1}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->k(Lhdy;Lhdz;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcle;->d:Ljava/lang/Object;

    iget-object v1, p0, Lcle;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcle;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcle;->c:Ljava/lang/Object;

    sget-object v4, Ldko;->a:Ljava/util/concurrent/Executor;

    check-cast v0, Lcdi;

    invoke-virtual {v0}, Lcdi;->i()Ljuf;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcze;

    const/16 v6, 0x11

    invoke-direct {v5, v2, v6}, Lcze;-><init>(Ldkp;I)V

    sget-object v6, Ldko;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v5, v6}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljuf;->d(Lkad;)V

    invoke-virtual {v0}, Lcdi;->i()Ljuf;

    move-result-object v0

    new-instance v1, Ldkn;

    invoke-direct {v1, v2}, Ldkn;-><init>(Ldkp;)V

    invoke-interface {v3, v1}, Liff;->e(Lifj;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcle;->d:Ljava/lang/Object;

    iget-object v1, p0, Lcle;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcle;->c:Ljava/lang/Object;

    iget-object v3, p0, Lcle;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Ldez;->b(Landroid/content/Context;)Lnou;

    move-result-object v0

    new-instance v4, Lcke;

    check-cast v1, Lckd;

    invoke-direct {v4, v1, v2, v3}, Lcke;-><init>(Lckd;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ScheduledExecutorService;)V

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-static {v0, v4, v1}, Ljvd;->t(Lnou;Ljzs;Ljava/util/concurrent/Executor;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcle;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcle;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcle;->c:Ljava/lang/Object;

    iget-object v3, p0, Lcle;->d:Ljava/lang/Object;

    new-instance v11, Lclf;

    move-object v6, v2

    check-cast v6, Ldne;

    move-object v5, v1

    check-cast v5, Lmpa;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lclf;-><init>(Lmpa;Ldne;[B[B[B[B)V

    move-object v5, v0

    check-cast v5, Lcvr;

    iget-object v1, v5, Lcvr;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    check-cast v0, Lcvr;

    iget-object v0, v0, Lcvr;->a:Ljava/lang/Object;

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lchq;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v0

    move-object v6, v11

    invoke-direct/range {v4 .. v10}, Lchq;-><init>(Lcvr;Lcky;I[B[B[B)V

    check-cast v3, Lcdi;

    invoke-virtual {v3}, Lcdi;->i()Ljuf;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljuf;->d(Lkad;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
