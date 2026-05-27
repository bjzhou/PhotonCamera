.class public final Lfcr;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljvs;Lklj;Ljwb;Ljava/util/function/Predicate;Lgec;)Lgeq;
    .locals 3

    invoke-static {}, Lger;->o()Lgeq;

    move-result-object v0

    invoke-virtual {v0, p4}, Lgeq;->r(Lgec;)V

    const v1, 0x7f140077

    invoke-virtual {v0, v1}, Lgeq;->h(I)V

    const v1, 0x7f14006e

    invoke-virtual {v0, v1}, Lgeq;->c(I)V

    new-instance v1, Lgdp;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lgdp;-><init>(Ljvs;Lklj;I)V

    invoke-virtual {v0, v1}, Lgeq;->o(Ljava/util/function/Predicate;)V

    new-instance p1, Lfcq;

    const/4 v1, 0x0

    invoke-direct {p1, p0, p3, p4, v1}, Lfcq;-><init>(Ljvs;Ljava/util/function/Predicate;Lgec;I)V

    invoke-virtual {v0, p1}, Lgeq;->l(Ljava/util/function/Consumer;)V

    invoke-virtual {v0, p3}, Lgeq;->s(Ljava/util/function/Predicate;)V

    iput-object p2, v0, Lgeq;->a:Ljwb;

    return-object v0
.end method

.method public static final b(Lgya;Lnjo;Ljava/lang/Float;)Lfce;
    .locals 1

    new-instance v0, Lfce;

    invoke-direct {v0, p0, p1, p2}, Lfce;-><init>(Lgya;Lnjo;Ljava/lang/Float;)V

    return-object v0
.end method

.method public static declared-synchronized c(Ldhi;)V
    .locals 3

    const-class v0, Lfcr;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ldho;->m:Ldhk;

    invoke-interface {p0, v1}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v1, "Key %s must be set to a value >=0"

    sget-object v2, Ldho;->m:Ldhk;

    invoke-static {p0, v1, v2}, Lmoz;->j(ZLjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static d(Ljuh;Lezy;Lfaz;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljuh;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lezy;->g(Lfaz;)V

    return-void

    :cond_0
    new-instance v0, Lbdy;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p2, v1}, Lbdy;-><init>(Lezy;Lfaz;I)V

    invoke-virtual {p0, v0}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static e(Ljuh;Lfak;Lfaz;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljuh;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lfak;->e(Lfaz;)V

    return-void

    :cond_0
    new-instance v0, Lbdy;

    const/4 v1, 0x3

    invoke-direct {v0, p1, p2, v1}, Lbdy;-><init>(Lfak;Lfaz;I)V

    invoke-virtual {p0, v0}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static f()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0
.end method

.method public static g(ILandroid/content/Context;Z)Ljava/lang/String;
    .locals 0

    add-int/lit8 p0, p0, -0x1

    packed-switch p0, :pswitch_data_0

    const p0, 0x7f14022f

    goto :goto_0

    :pswitch_0
    const p0, 0x7f14022e

    goto :goto_0

    :pswitch_1
    const p0, 0x7f140231

    goto :goto_0

    :pswitch_2
    const/4 p0, 0x1

    if-eq p0, p2, :cond_0

    const p0, 0x7f140232

    goto :goto_0

    :cond_0
    const p0, 0x7f140230

    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static h(I)I
    .locals 0

    add-int/lit8 p0, p0, -0x1

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x2

    return p0

    :pswitch_0
    const/4 p0, 0x6

    return p0

    :pswitch_1
    const/4 p0, 0x5

    return p0

    :pswitch_2
    const/4 p0, 0x4

    return p0

    :pswitch_3
    const/4 p0, 0x3

    return p0

    :pswitch_4
    const/4 p0, 0x7

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic i(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
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
