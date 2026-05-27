.class public final Lgky;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lkli;)Lmvv;
    .locals 2

    invoke-interface {p0}, Lkli;->A()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lfva;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lfva;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object p0

    invoke-static {p0}, Lmvv;->l(Ljava/lang/Object;)Lmvv;

    move-result-object p0

    return-object p0

    :cond_1
    sget p0, Lmvv;->d:I

    sget-object p0, Lmyu;->a:Lmvv;

    return-object p0
.end method

.method public static b(Lika;)Lmwn;
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sget-object v1, Liux;->k:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v1, :cond_0

    sget-object v1, Lika;->a:Lika;

    invoke-virtual {p0}, Lika;->ordinal()I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    sget-object p0, Lmza;->a:Lmza;

    return-object p0

    :sswitch_0
    const/16 p0, 0x64

    goto :goto_0

    :sswitch_1
    const/4 p0, 0x5

    goto :goto_0

    :sswitch_2
    const/4 p0, 0x3

    goto :goto_0

    :sswitch_3
    const/16 p0, 0x65

    :goto_0
    sget-object v1, Liux;->k:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1, p0}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {v0}, Lmwn;->F(Ljava/util/Collection;)Lmwn;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x6 -> :sswitch_2
        0xc -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method public static c(Lika;Lkli;)Lmwn;
    .locals 1

    invoke-static {}, Lmwn;->D()Lmwl;

    move-result-object v0

    invoke-static {p1}, Lgky;->a(Lkli;)Lmvv;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmwl;->h(Ljava/lang/Iterable;)V

    invoke-static {p0}, Lgky;->b(Lika;)Lmwn;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmwl;->h(Ljava/lang/Iterable;)V

    invoke-virtual {v0}, Lmwl;->f()Lmwn;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/util/Set;Lkep;Lkli;)V
    .locals 2

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2}, Lkli;->A()Ljava/util/Set;

    move-result-object p2

    invoke-static {p2}, Lkfg;->v(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkfa;

    iget-object v1, v0, Lkfa;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lkep;->b()Lmwl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmwl;->g(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static e(Lken;Lkef;)V
    .locals 1

    invoke-interface {p1}, Lkef;->q()Lkgq;

    move-result-object p1

    iget-object p1, p1, Lkgq;->c:Lmwn;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkfj;

    invoke-interface {p0, v0}, Lken;->e(Lkfj;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static f(Lkfj;)Z
    .locals 4

    invoke-interface {p0}, Lkfj;->a()I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, 0x101

    cmp-long p0, v0, v2

    if-eqz p0, :cond_1

    const-wide/16 v2, 0x1002

    cmp-long p0, v0, v2

    if-eqz p0, :cond_1

    const-wide/16 v2, 0x1003

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static g(Lkfj;)Z
    .locals 4

    invoke-interface {p0}, Lkfj;->a()I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, 0x25

    cmp-long p0, v0, v2

    if-eqz p0, :cond_1

    const-wide/16 v2, 0x26

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static h(Lkll;Lklj;Lfuj;Ldhi;)Lfuz;
    .locals 2

    invoke-interface {p1, p0}, Lklj;->a(Lkll;)Lkli;

    move-result-object p0

    invoke-interface {p0}, Lkli;->k()Lklv;

    move-result-object v0

    sget-object v1, Lklv;->a:Lklv;

    if-ne v0, v1, :cond_2

    sget-object v0, Ldho;->ai:Ldhj;

    invoke-interface {p3, v0}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lgky;->i(Lkli;Lklj;)Lfuz;

    move-result-object p0

    goto :goto_1

    :cond_0
    sget-object v0, Ldho;->cj:Ldhj;

    invoke-interface {p3, v0}, Ldhi;->l(Ldhj;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Lfuj;->a()Lkll;

    move-result-object p2

    if-nez p2, :cond_1

    check-cast p0, Lklh;

    iget-object p2, p0, Lklh;->a:Lkll;

    goto :goto_0

    :cond_1
    :goto_0
    new-instance p0, Lfuz;

    invoke-interface {p1, p2}, Lklj;->a(Lkll;)Lkli;

    move-result-object p1

    invoke-direct {p0, p1}, Lfuz;-><init>(Lkli;)V

    :cond_2
    :goto_1
    new-instance p1, Lfuz;

    invoke-direct {p1, p0}, Lfuz;-><init>(Lkli;)V

    return-object p1
.end method

.method public static i(Lkli;Lklj;)Lfuz;
    .locals 4

    invoke-interface {p0}, Lkli;->B()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkll;

    invoke-interface {p1, v1}, Lklj;->a(Lkll;)Lkli;

    move-result-object v1

    invoke-interface {v1}, Lkli;->h()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-interface {p0}, Lkli;->h()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-le v2, v3, :cond_0

    move-object p0, v1

    goto :goto_0

    :cond_1
    new-instance p1, Lfuz;

    invoke-direct {p1, p0}, Lfuz;-><init>(Lkli;)V

    return-object p1
.end method

.method public static synthetic j(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
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
