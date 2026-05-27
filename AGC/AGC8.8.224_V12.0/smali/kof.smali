.class public final Lkof;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/PointF;I)Landroid/graphics/PointF;
    .locals 2

    rsub-int p1, p1, 0x168

    rem-int/lit16 p1, p1, 0x168

    const/high16 v0, 0x3f800000    # 1.0f

    sparse-switch p1, :sswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported Sensor Orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_0
    new-instance p1, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    iget p0, p0, Landroid/graphics/PointF;->x:F

    invoke-direct {p1, v0, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    :sswitch_1
    new-instance p1, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    sub-float v1, v0, v1

    iget p0, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, p0

    invoke-direct {p1, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    :sswitch_2
    new-instance p1, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->y:F

    iget p0, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, p0

    invoke-direct {p1, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    :sswitch_3
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method public static b(Landroid/graphics/PointF;I)Landroid/graphics/PointF;
    .locals 4

    iget v0, p0, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/graphics/PointF;->x:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    iget v0, p0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    :goto_0
    const-string v0, "Input coordinates should be in [0, 1]."

    invoke-static {v1, v0}, Lmoz;->f(ZLjava/lang/Object;)V

    invoke-static {p0, p1}, Lkof;->a(Landroid/graphics/PointF;I)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lknw;)Ljava/lang/String;
    .locals 4

    const-string v0, "-"

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Lknu;

    if-eqz v1, :cond_1

    check-cast p0, Lknu;

    iget-wide v0, p0, Lknu;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v1, p0, Lknv;

    if-eqz v1, :cond_2

    check-cast p0, Lknv;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lknv;->a:D

    double-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-wide v2, p0, Lknv;->b:D

    invoke-static {v2, v3}, Lkof;->j(D)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p0, Lknv;->c:D

    invoke-static {v2, v3}, Lkof;->j(D)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-wide v2, p0, Lknv;->d:D

    invoke-static {v2, v3}, Lkof;->j(D)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-wide v2, p0, Lknv;->e:D

    invoke-static {v2, v3}, Lkof;->j(D)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x4

    aput-object p0, v1, v2

    const-string p0, "n: %6.6s, min: %12.12s, max: %12.12s, mean: %12.12s, last: %12.12s"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static d(Lkpe;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lkpe;->b()I

    move-result v0

    invoke-interface {p0}, Lkpe;->d()I

    move-result p0

    invoke-static {v0, p0}, Lkof;->e(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(II)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Llho;->E(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "w"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Ljava/lang/String;Ljava/lang/Throwable;)Lklm;
    .locals 1

    new-instance v0, Lklm;

    invoke-direct {v0, p0, p1}, Lklm;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static g(Lkib;Landroid/os/Handler;)V
    .locals 2

    new-instance v0, Lkcu;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, Lkcu;-><init>(Lkib;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static h(Ljava/util/Collection;Landroid/os/Handler;)V
    .locals 2

    new-instance v0, Lkcu;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, Lkcu;-><init>(Ljava/util/Collection;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
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

.method private static j(D)Ljava/lang/String;
    .locals 5

    const-wide v0, 0x4202a05f1ff80000L    # 9.999999999E9

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmpl-double v4, p0, v0

    if-gtz v4, :cond_1

    const-wide v0, -0x3e32329b00800000L    # -9.99999999E8

    cmpg-double v4, p0, v0

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "%.4f"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "%.6e"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
