.class public final synthetic Lewq;
.super Ljava/lang/Object;


# static fields
.field public static a:Lexx;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
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

.method public static b()Ljava/util/concurrent/Executor;
    .locals 2

    new-instance v0, Ljul;

    const-string v1, "MotionBlurProc"

    invoke-static {v1}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Ljul;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static final c()Ljava/util/concurrent/Executor;
    .locals 2

    new-instance v0, Ljul;

    const-string v1, "PortraitProc"

    invoke-static {v1}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Ljul;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static final d()Lfwx;
    .locals 2

    new-instance v0, Lfwx;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lfwx;-><init>(I)V

    return-object v0
.end method

.method public static final e(Ldhi;)V
    .locals 1

    sget-object v0, Ldho;->a:Ldhk;

    invoke-interface {p0}, Ldhi;->e()V

    invoke-interface {p0}, Ldhi;->e()V

    return-void
.end method

.method public static varargs f(Lkli;[I)Lkmf;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget v1, p1, v0

    invoke-interface {p0, v1}, Lkli;->x(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance p0, Lkmf;

    invoke-static {v2}, Lkba;->f(Ljava/util/List;)Lkaf;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lkmf;-><init>(ILkaf;)V

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static g(Ljava/util/Map;Loiw;Loiw;Lfuz;Ldhi;)V
    .locals 3

    sget-object v0, Ldho;->bn:Ldhj;

    invoke-interface {p4, v0}, Ldhi;->l(Ldhj;)Z

    move-result v0

    invoke-virtual {p3}, Lklw;->M()Z

    invoke-virtual {p3}, Lklw;->D()Z

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-virtual {p3, v1, v2}, Lklw;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Lklw;->k()Lklv;

    move-result-object v1

    sget-object v2, Lklv;->b:Lklv;

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p3}, Lklw;->k()Lklv;

    move-result-object v0

    sget-object v1, Lklv;->a:Lklv;

    if-ne v0, v1, :cond_2

    sget-object v0, Ldho;->cj:Ldhj;

    invoke-interface {p4, v0}, Ldhi;->l(Ldhj;)Z

    move-result p4

    if-eqz p4, :cond_2

    :cond_1
    invoke-virtual {p3}, Lklw;->M()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-virtual {p3}, Lklw;->D()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Loiw;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    new-instance p2, Ldab;

    const/4 p3, 0x4

    invoke-direct {p2, p0, p3}, Ldab;-><init>(Ljava/util/Map;I)V

    invoke-static {p1, p2}, Lj$/util/Map$-EL;->forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    return-void

    :cond_2
    sget-object p2, Lgml;->a:Lgml;

    invoke-interface {p1}, Loiw;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkfl;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static h(Ldja;Lkli;Lftj;Lika;Ldhi;Lmqp;Z)Lkfl;
    .locals 3

    invoke-interface {p1}, Lkli;->k()Lklv;

    move-result-object v0

    sget-object v1, Lklv;->b:Lklv;

    const/16 v2, 0x25

    if-ne v0, v1, :cond_0

    sget-object v0, Lika;->g:Lika;

    if-ne p3, v0, :cond_0

    sget-object p3, Ldib;->y:Ldhj;

    invoke-interface {p4, p3}, Ldhi;->l(Ldhj;)Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p3, Ldib;->b:Ldhk;

    invoke-interface {p4, p3}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object p3

    invoke-virtual {p3}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    sget-object v0, Ldib;->c:Ldhk;

    invoke-interface {p4, v0}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object p4

    invoke-virtual {p4}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    new-instance v0, Lkmf;

    new-instance v1, Lkaf;

    invoke-direct {v1, p3, p4}, Lkaf;-><init>(II)V

    invoke-direct {v0, v2, v1}, Lkmf;-><init>(ILkaf;)V

    goto :goto_0

    :cond_0
    const/16 p3, 0x26

    const/16 p4, 0x20

    filled-new-array {v2, p3, p4}, [I

    move-result-object p3

    invoke-static {p3}, Lcom/agc/LensSettings;->getImageFormatArr([I)[I

    move-result-object p3

    invoke-static {p1, p3}, Lewq;->f(Lkli;[I)Lkmf;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p2, Lftj;->b:I

    invoke-virtual {p0}, Ldja;->G()Lgme;

    move-result-object p0

    invoke-interface {p1}, Lkli;->i()Lkll;

    move-result-object p1

    iput-object p1, p0, Lgme;->a:Lkll;

    iput-object v0, p0, Lgme;->b:Lkmf;

    iput p2, p0, Lgme;->c:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lgme;->d:Z

    invoke-virtual {p5}, Lmqp;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    iput-object p1, p0, Lgme;->f:Ljava/lang/Long;

    iput-boolean p6, p0, Lgme;->g:Z

    invoke-virtual {p0}, Lgme;->a()Lkfl;

    move-result-object p0

    return-object p0
.end method
