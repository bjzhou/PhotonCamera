.class public final Ldty;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lgul;Lduv;Ldsw;)Ldtu;
    .locals 1

    invoke-static {p1}, Ldtv;->b(Lduv;)Ldtq;

    move-result-object v0

    iput-object p2, v0, Ldtq;->c:Ldsw;

    new-instance p2, Ldtx;

    invoke-direct {p2, p1, p0}, Ldtx;-><init>(Lduv;Lgul;)V

    invoke-virtual {v0, p2}, Ldtq;->d(Ldtt;)V

    invoke-virtual {v0}, Ldtq;->a()Ldtu;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ldsx;
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ldsx;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ldsx;

    new-array v0, v0, [Ldsx;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ldsx;

    new-instance p2, Ldsx;

    invoke-direct {p2, p0, p1}, Ldsx;-><init>(Ljava/lang/String;[Ldsx;)V

    return-object p2
.end method

.method public static c(Landroid/graphics/PointF;Landroid/graphics/Rect;)Landroid/graphics/PointF;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr p0, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    new-instance v2, Landroid/graphics/PointF;

    div-float/2addr v0, v1

    div-float/2addr p0, p1

    invoke-direct {v2, v0, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method public static d(Lkou;Ldsg;Lj$/time/Instant;)Ljava/util/List;
    .locals 1

    sget-object v0, Liuw;->m:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v0, :cond_0

    sget-object v0, Liuw;->m:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Liuw;->q:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v0, :cond_0

    invoke-interface {p0, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lkor;->h(Lkoq;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcpy;->o:Lcpy;

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p0

    sget-object v0, Ldrk;->a:Ldrk;

    invoke-static {v0}, Lj$/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Lj$/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/hardware/camera2/params/Face;

    if-nez p0, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcpy;->n:Lcpy;

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p0

    sget-object v0, Ldrk;->a:Ldrk;

    invoke-static {v0}, Lj$/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Lj$/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    :goto_0
    invoke-static {p2}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Ldsg;->a(Ljava/util/List;Lmqp;)Ljava/util/List;

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
