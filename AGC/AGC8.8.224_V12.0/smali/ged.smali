.class public final synthetic Lged;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lgeh;)Z
    .locals 1

    sget-object v0, Lklv;->a:Lklv;

    check-cast p0, Lgdv;

    iget-object p0, p0, Lgdv;->e:Lklv;

    invoke-virtual {v0, p0}, Lklv;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static b(Lgei;Landroid/content/res/Resources;)Lges;
    .locals 3

    invoke-interface {p0}, Lgei;->j()Lmvv;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lgdn;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lgdn;-><init>(Lgei;Landroid/content/res/Resources;I)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lmtf;->a:Lj$/util/stream/Collector;

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmvv;

    invoke-interface {p0}, Lgei;->g()Lgec;

    move-result-object v0

    invoke-interface {p0}, Lgei;->e()I

    move-result v1

    invoke-interface {p0}, Lgei;->a()I

    move-result p0

    new-instance v2, Lges;

    invoke-direct {v2, v0, v1, p0, p1}, Lges;-><init>(Lgec;IILmvv;)V

    return-object v2
.end method

.method public static c(Ldhi;)Z
    .locals 1

    sget-object v0, Ldhw;->z:Ldhj;

    invoke-interface {p0, v0}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ldhw;->U:Ldhj;

    invoke-interface {p0, v0}, Ldhi;->l(Ldhj;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
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
