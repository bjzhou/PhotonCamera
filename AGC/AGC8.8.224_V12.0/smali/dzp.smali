.class public final Ldzp;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final synthetic a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcvr;I[B[B[B[B)V
    .locals 0

    iput p2, p0, Ldzp;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldzp;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;I)V
    .locals 0

    iput p2, p0, Ldzp;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldzp;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Loiw;)Ldzp;
    .locals 2

    new-instance v0, Ldzp;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Ldzp;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static b(Loiw;)Ldzp;
    .locals 2

    new-instance v0, Ldzp;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Ldzp;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static c(Loiw;)Ldzp;
    .locals 2

    new-instance v0, Ldzp;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Ldzp;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static d(Loiw;)Ldzp;
    .locals 2

    new-instance v0, Ldzp;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Ldzp;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static e(Loiw;)Ldzp;
    .locals 2

    new-instance v0, Ldzp;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, Ldzp;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static f(Loiw;)Ldzp;
    .locals 2

    new-instance v0, Ldzp;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, Ldzp;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static g(Loiw;)Ldzp;
    .locals 2

    new-instance v0, Ldzp;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Ldzp;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static h(Loiw;)Ldzp;
    .locals 2

    new-instance v0, Ldzp;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v1}, Ldzp;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static i(Loiw;)Ldzp;
    .locals 2

    new-instance v0, Ldzp;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, Ldzp;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static j(Loiw;)Ldzp;
    .locals 2

    new-instance v0, Ldzp;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Ldzp;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static k(Loiw;)Ldzp;
    .locals 2

    new-instance v0, Ldzp;

    const/16 v1, 0x12

    invoke-direct {v0, p0, v1}, Ldzp;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static l(Loiw;)Ldzp;
    .locals 2

    new-instance v0, Ldzp;

    const/16 v1, 0x13

    invoke-direct {v0, p0, v1}, Ldzp;-><init>(Loiw;I)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Ldzp;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ldzp;->b:Ljava/lang/Object;

    check-cast v0, Lcvr;

    iget-object v0, v0, Lcvr;->a:Ljava/lang/Object;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Ldzp;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnph;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v3, Ljvk;

    invoke-static {v1}, Ljvw;->g(Ljava/lang/Object;)Ljvs;

    move-result-object v1

    invoke-direct {v3, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    new-instance v1, Ljvv;

    invoke-direct {v1, v3, v2}, Ljvv;-><init>(Ljvk;I)V

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-static {v0, v1, v2}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    invoke-static {v3}, Ljvm;->c(Ljvs;)Ljvs;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Ldzp;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    new-instance v1, Legn;

    invoke-direct {v1, v0}, Legn;-><init>(Ljava/util/Set;)V

    return-object v1

    :pswitch_2
    iget-object v0, p0, Ldzp;->b:Ljava/lang/Object;

    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v0

    check-cast v0, Lmqt;

    iget-object v0, v0, Lmqt;->a:Ljava/lang/Object;

    check-cast v0, Lefq;

    return-object v0

    :pswitch_3
    iget-object v0, p0, Ldzp;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgue;

    new-instance v1, Leex;

    invoke-direct {v1, v0, v3}, Leex;-><init>(Lgue;[B)V

    return-object v1

    :pswitch_4
    iget-object v0, p0, Ldzp;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljvk;

    invoke-static {v0}, Ljvo;->c(Ljvs;)Ljvs;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_5
    iget-object v0, p0, Ldzp;->b:Ljava/lang/Object;

    check-cast v0, Lefa;

    invoke-virtual {v0}, Lefa;->b()Ljvs;

    move-result-object v0

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfwn;

    iget-object v0, v0, Lfwn;->a:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_6
    iget-object v0, p0, Ldzp;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljvk;

    invoke-static {v0}, Ljvo;->c(Ljvs;)Ljvs;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_7
    iget-object v0, p0, Ldzp;->b:Ljava/lang/Object;

    check-cast v0, Lebg;

    invoke-virtual {v0}, Lebg;->b()Ldqx;

    move-result-object v0

    new-instance v1, Lgda;

    invoke-direct {v1, v0, v3, v3, v3}, Lgda;-><init>(Ldqx;[B[B[B)V

    return-object v1

    :pswitch_8
    iget-object v0, p0, Ldzp;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfvh;

    new-instance v1, Leda;

    invoke-direct {v1, v0}, Leda;-><init>(Lfvh;)V

    return-object v1

    :pswitch_9
    iget-object v0, p0, Ldzp;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leda;

    invoke-static {v0}, Lkel;->a(Lkai;)Lkfg;

    move-result-object v0

    return-object v0

    :pswitch_a
    iget-object v0, p0, Ldzp;->b:Ljava/lang/Object;

    invoke-static {v0}, Lemq;->a(Loiw;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/gcam/Gcam;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_b
    iget-object v0, p0, Ldzp;->b:Ljava/lang/Object;

    invoke-static {v0}, Lemq;->a(Loiw;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbkc;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_c
    iget-object v0, p0, Ldzp;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljuf;

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "lastPslFrame"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v2}, Ljvd;->o(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ledg;

    invoke-direct {v4, v3, v1}, Ledg;-><init>(Landroid/os/Looper;I)V

    invoke-virtual {v0, v4}, Ljuf;->d(Lkad;)V

    return-object v2

    :pswitch_d
    iget-object v0, p0, Ldzp;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    new-instance v1, Lebe;

    invoke-direct {v1, v0}, Lebe;-><init>(Ldhi;)V

    return-object v1

    :pswitch_e
    iget-object v0, p0, Ldzp;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lebi;

    new-instance v1, Lbkc;

    invoke-direct {v1, v0}, Lbkc;-><init>(Lebi;)V

    return-object v1

    :pswitch_f
    iget-object v0, p0, Ldzp;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lemx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Leaa;

    invoke-direct {v1, v0, v2}, Leaa;-><init>(Lemx;I)V

    invoke-static {v1}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v0

    return-object v0

    :pswitch_10
    iget-object v0, p0, Ldzp;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lemx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lfja;

    invoke-direct {v2, v0, v1}, Lfja;-><init>(Lemx;I)V

    return-object v2

    :pswitch_11
    iget-object v0, p0, Ldzp;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    new-instance v1, Lbkc;

    invoke-direct {v1, v0, v3}, Lbkc;-><init>(Ldhi;[B)V

    return-object v1

    :pswitch_12
    iget-object v0, p0, Ldzp;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    sget-object v1, Ldhf;->e:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lmpx;->a:Lmpx;

    goto :goto_0

    :cond_0
    const-string v0, "ff-analysis"

    invoke-static {v0}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_13
    iget-object v0, p0, Ldzp;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    sget-object v1, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->f()V

    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0

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
