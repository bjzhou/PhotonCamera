.class public final Lflb;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lnou;)V
    .locals 2

    new-instance v0, Leth;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Leth;-><init>(Ljava/lang/String;I)V

    sget-object p0, Lnnv;->a:Lnnv;

    const-class v1, Ljava/lang/Throwable;

    invoke-static {p1, v1, v0, p0}, Lnml;->i(Lnou;Ljava/lang/Class;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    return-void
.end method

.method public static b()V
    .locals 1

    sget-object v0, Lflc;->a:Ldhi;

    if-eqz v0, :cond_0

    sget-object v0, Ldhv;->a:Ldhk;

    :cond_0
    return-void
.end method

.method public static c()Lhrf;
    .locals 10

    new-instance v9, Lhqw;

    sget-object v2, Lmpx;->a:Lmpx;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljvw;->g(Ljava/lang/Object;)Ljvs;

    move-result-object v8

    move-object v0, v9

    move-object v1, v2

    invoke-direct/range {v0 .. v8}, Lhqw;-><init>(Lmqp;Lmqp;ZLjava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Ljvs;)V

    return-object v9
.end method

.method public static final d(Lkph;)Ljava/io/FileInputStream;
    .locals 0

    invoke-interface {p0}, Lkph;->d()Ljava/io/FileInputStream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
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

.method public static synthetic f(ZZ)I
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, -0x1

    :goto_0
    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static g(Lmqp;J)Lmqp;
    .locals 0

    check-cast p0, Lmqt;

    iget-object p0, p0, Lmqt;->a:Ljava/lang/Object;

    check-cast p0, Ldsy;

    invoke-interface {p0, p1, p2}, Ldsy;->c(J)Ldsv;

    move-result-object p0

    invoke-virtual {p0}, Ldsv;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Lmpx;->a:Lmpx;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lfjo;->a(Ldsv;)Lfjo;

    move-result-object p0

    invoke-static {p0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static h(Lmqp;J)Lmqp;
    .locals 0

    check-cast p0, Lmqt;

    iget-object p0, p0, Lmqt;->a:Ljava/lang/Object;

    check-cast p0, Ldsy;

    invoke-interface {p0, p1, p2}, Ldsy;->c(J)Ldsv;

    move-result-object p0

    invoke-virtual {p0}, Ldsv;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Lmpx;->a:Lmpx;

    goto :goto_0

    :cond_0
    new-instance p1, Lfjq;

    iget-object p0, p0, Ldsv;->a:[F

    invoke-direct {p1, p0}, Lfjq;-><init>([F)V

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static i(F)F
    .locals 2

    neg-float p0, p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p0, v0

    div-float/2addr v0, p0

    return v0
.end method
