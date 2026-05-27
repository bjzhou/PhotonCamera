.class public final Ldez;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(FF)Z
    .locals 6

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    sub-float/2addr p1, p0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/4 v4, 0x1

    cmpg-double v5, v0, v2

    if-gtz v5, :cond_0

    const-wide v0, 0x3fb999999999999aL    # 0.1

    cmpl-double v2, p0, v0

    if-ltz v2, :cond_1

    return v4

    :cond_0
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, p0, v0

    if-ltz v2, :cond_1

    return v4

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/content/Context;)Lnou;
    .locals 1

    instance-of v0, p0, Lcjq;

    if-eqz v0, :cond_0

    check-cast p0, Lcjq;

    invoke-interface {p0}, Lcjq;->c()Lnou;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Ldez;->b(Landroid/content/Context;)Lnou;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context does not supply an early-readiness Future."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c()Lkad;
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    const-string v1, "boost:-8"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v1, -0x8

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    new-instance v1, Lckc;

    invoke-direct {v1, v0}, Lckc;-><init>(I)V

    return-object v1
.end method

.method public static d(Lcik;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

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

.method public static f(Lmqp;Loxq;II)Lddl;
    .locals 4

    invoke-virtual {p0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    if-nez p3, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    int-to-float p2, p2

    div-float/2addr v1, p2

    invoke-virtual {p0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    int-to-float p3, p3

    div-float/2addr v2, p3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, p3

    invoke-virtual {p0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    div-float/2addr p0, p2

    iget p2, p1, Loxq;->a:I

    const/16 p3, 0x5a

    const/4 v2, 0x1

    if-eq p2, p3, :cond_2

    const/16 p3, 0x10e

    if-ne p2, p3, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    :goto_0
    if-eq v2, p2, :cond_3

    move p3, p0

    goto :goto_1

    :cond_3
    move p3, v1

    :goto_1
    if-eq v2, p2, :cond_4

    goto :goto_2

    :cond_4
    move v1, p0

    :goto_2
    invoke-virtual {p1, v0}, Loxq;->h(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    new-instance p1, Landroid/graphics/RectF;

    iget p2, p0, Landroid/graphics/PointF;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p3, v2

    sub-float/2addr p2, p3

    iget v3, p0, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v2

    sub-float/2addr v3, v1

    iget v2, p0, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, p3

    iget p0, p0, Landroid/graphics/PointF;->y:F

    add-float/2addr p0, v1

    invoke-direct {p1, p2, v3, v2, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance p0, Lddl;

    invoke-direct {p0, p1, v0}, Lddl;-><init>(Landroid/graphics/RectF;Landroid/graphics/PointF;)V

    return-object p0

    :cond_5
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method
