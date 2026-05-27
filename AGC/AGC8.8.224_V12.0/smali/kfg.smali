.class public Lkfg;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Lkeb;)V
    .locals 1

    invoke-interface {p0}, Lkeb;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lkeb;->i()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lkeb;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lkeu;

    invoke-direct {v0}, Lkeu;-><init>()V

    invoke-interface {p0, v0}, Lkeb;->k(Lkfg;)V

    invoke-virtual {v0}, Lkew;->p()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static B(Lkhr;Lkex;)V
    .locals 0

    invoke-virtual {p0}, Lkhr;->a()Lkeb;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lkfg;->w(Lkeb;Lkex;)V

    :cond_0
    return-void
.end method

.method public static C(S)Z
    .locals 2

    and-int/lit8 v0, p0, -0x10

    const/16 v1, -0x40

    if-ne v0, v1, :cond_0

    const/16 v0, -0x3c

    if-eq p0, v0, :cond_0

    const/16 v0, -0x38

    if-eq p0, v0, :cond_0

    const/16 v0, -0x34

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic D(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 6

    :try_start_0
    const-class v0, Ljava/lang/Throwable;

    const-string v1, "addSuppressed"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    return-void
.end method

.method public static E(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x3e8

    rem-long/2addr p0, v0

    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Lkfg;->p(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static F(J)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lkfg;->p(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static p(JI)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Llkj;->G(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "null"

    return-object p0

    :pswitch_0
    const-string p0, "LOCKED"

    return-object p0

    :pswitch_1
    const-string p0, "CONVERGED"

    return-object p0

    :pswitch_2
    const-string p0, "IMMEDIATE_LOCKED"

    return-object p0

    :pswitch_3
    const-string p0, "ANY"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic t(I)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;
    .locals 1

    new-instance v0, Lkfa;

    invoke-direct {v0, p0, p1}, Lkfa;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static v(Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 2

    invoke-static {}, Lmwn;->D()Lmwl;

    move-result-object v0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwl;->g(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lmwl;->f()Lmwn;

    move-result-object p0

    return-object p0
.end method

.method public static w(Lkeb;Lkex;)V
    .locals 1

    new-instance v0, Lkes;

    invoke-direct {v0, p1, p0}, Lkes;-><init>(Lkex;Lkeb;)V

    invoke-interface {p0, v0}, Lkeb;->k(Lkfg;)V

    return-void
.end method

.method public static y(Lkeb;)V
    .locals 1

    invoke-interface {p0}, Lkeb;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lkeb;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lkev;

    invoke-direct {v0}, Lkev;-><init>()V

    invoke-interface {p0, v0}, Lkeb;->k(Lkfg;)V

    invoke-virtual {v0}, Lkew;->p()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static z(Lkeb;)V
    .locals 1

    invoke-interface {p0}, Lkeb;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lkeb;->h()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lkeb;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lket;

    invoke-direct {v0}, Lket;-><init>()V

    invoke-interface {p0, v0}, Lkeb;->k(Lkfg;)V

    invoke-virtual {v0}, Lkew;->p()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bC(Lkou;)V
    .locals 0

    return-void
.end method

.method public bD(JI)V
    .locals 0

    return-void
.end method

.method public bE()Ljava/util/concurrent/Executor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bF()V
    .locals 0

    return-void
.end method

.method public bh(Lkfj;J)V
    .locals 0

    return-void
.end method

.method public bi(Lkkp;)V
    .locals 0

    return-void
.end method

.method public bj()V
    .locals 0

    return-void
.end method

.method public bk()V
    .locals 0

    return-void
.end method

.method public bq()V
    .locals 0

    return-void
.end method

.method public br(Lkoq;)V
    .locals 0

    return-void
.end method

.method public bs(JI)V
    .locals 0

    return-void
.end method

.method public bt(JIJ)V
    .locals 0

    return-void
.end method

.method public bu(JLjava/util/Set;)V
    .locals 0

    return-void
.end method

.method public bv(Lkeg;)V
    .locals 0

    return-void
.end method

.method public bw(Lkou;)V
    .locals 0

    return-void
.end method
