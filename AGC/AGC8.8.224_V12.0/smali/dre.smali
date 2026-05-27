.class public final Ldre;
.super Ljava/lang/Object;


# direct methods
.method public static a()Lfwx;
    .locals 2

    new-instance v0, Lfwx;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lfwx;-><init>(I)V

    return-object v0
.end method

.method public static b(Landroid/graphics/Point;Lkyn;Landroid/graphics/Rect;)Landroid/graphics/Point;
    .locals 7

    invoke-virtual {p1}, Lkyn;->b()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lkyn;->a()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v1

    div-float/2addr v2, v3

    const/4 v1, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v2, v0, v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-gez v2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    float-to-int v4, v2

    sub-int/2addr v0, v4

    int-to-float v0, v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    move v1, v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    float-to-int v5, v2

    sub-int/2addr v0, v5

    int-to-float v0, v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    :goto_0
    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, Landroid/graphics/Point;->x:I

    iget v6, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v6

    invoke-virtual {p1}, Lkyn;->b()I

    move-result v6

    sub-int/2addr v3, v1

    mul-int v3, v3, v6

    div-int/2addr v3, v4

    iget p0, p0, Landroid/graphics/Point;->y:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, p2

    invoke-virtual {p1}, Lkyn;->a()I

    move-result p1

    sub-int/2addr p0, v0

    mul-int p0, p0, p1

    div-int/2addr p0, v5

    invoke-direct {v2, v3, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method public static c(Landroid/graphics/Point;Lcom/google/googlex/gcam/MeshWarp;)Landroid/graphics/Point;
    .locals 10

    invoke-virtual {p1}, Lcom/google/googlex/gcam/MeshWarp;->a()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/googlex/gcam/MeshWarp;->b()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/gcam/MeshWarp;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/googlex/gcam/MeshWarp;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/googlex/gcam/MeshWarp;->b()I

    move-result v1

    iget-wide v2, p1, Lcom/google/googlex/gcam/MeshWarp;->a:J

    invoke-static {v2, v3, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->MeshWarp_mesh_warp_crop_region_get(JLcom/google/googlex/gcam/MeshWarp;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/google/googlex/gcam/PixelRect;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v3, v5}, Lcom/google/googlex/gcam/PixelRect;-><init>(JZ)V

    move-object v2, v4

    :goto_0
    invoke-virtual {p1}, Lcom/google/googlex/gcam/MeshWarp;->c()Lcom/google/googlex/gcam/FloatVector;

    move-result-object p1

    new-instance v3, Landroid/graphics/PointF;

    iget v4, p0, Landroid/graphics/Point;->x:I

    invoke-virtual {v2}, Lcom/google/googlex/gcam/PixelRect;->a()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2}, Lcom/google/googlex/gcam/PixelRect;->d()I

    move-result v5

    int-to-float v5, v5

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2}, Lcom/google/googlex/gcam/PixelRect;->b()I

    move-result v6

    sub-int/2addr p0, v6

    invoke-virtual {v2}, Lcom/google/googlex/gcam/PixelRect;->c()I

    move-result v2

    int-to-float v2, v2

    int-to-float p0, p0

    int-to-float v4, v4

    div-float/2addr v4, v5

    div-float/2addr p0, v2

    invoke-direct {v3, v4, p0}, Landroid/graphics/PointF;-><init>(FF)V

    iget p0, v3, Landroid/graphics/PointF;->x:F

    int-to-float v2, v0

    mul-float p0, p0, v2

    add-int/lit8 v2, v0, -0x1

    const/4 v4, 0x0

    invoke-static {p0, v4}, Ljava/lang/Math;->max(FF)F

    move-result p0

    int-to-float v2, v2

    invoke-static {p0, v2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    iget v2, v3, Landroid/graphics/PointF;->y:F

    int-to-float v3, v1

    mul-float v2, v2, v3

    add-int/lit8 v1, v1, -0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    int-to-float v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v3, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    mul-int v6, v3, v0

    new-instance v7, Landroid/graphics/Point;

    add-int v8, v6, v4

    add-int/2addr v8, v8

    add-int/lit8 v9, v8, 0x1

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    new-instance v8, Landroid/graphics/Point;

    add-int/2addr v6, v2

    add-int/2addr v6, v6

    add-int/lit8 v9, v6, 0x1

    invoke-direct {v8, v6, v9}, Landroid/graphics/Point;-><init>(II)V

    mul-int v5, v5, v0

    new-instance v0, Landroid/graphics/Point;

    add-int v6, v5, v4

    add-int/2addr v6, v6

    add-int/lit8 v9, v6, 0x1

    invoke-direct {v0, v6, v9}, Landroid/graphics/Point;-><init>(II)V

    new-instance v6, Landroid/graphics/Point;

    add-int/2addr v5, v2

    add-int/2addr v5, v5

    add-int/lit8 v2, v5, 0x1

    invoke-direct {v6, v5, v2}, Landroid/graphics/Point;-><init>(II)V

    new-instance v2, Landroid/graphics/PointF;

    iget v5, v7, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v5}, Lcom/google/googlex/gcam/FloatVector;->a(I)F

    move-result v5

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v7}, Lcom/google/googlex/gcam/FloatVector;->a(I)F

    move-result v7

    invoke-direct {v2, v5, v7}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v5, Landroid/graphics/PointF;

    iget v7, v8, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v7}, Lcom/google/googlex/gcam/FloatVector;->a(I)F

    move-result v7

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v8}, Lcom/google/googlex/gcam/FloatVector;->a(I)F

    move-result v8

    invoke-direct {v5, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v7, Landroid/graphics/PointF;

    iget v8, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v8}, Lcom/google/googlex/gcam/FloatVector;->a(I)F

    move-result v8

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v0}, Lcom/google/googlex/gcam/FloatVector;->a(I)F

    move-result v0

    invoke-direct {v7, v8, v0}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v0, Landroid/graphics/PointF;

    iget v8, v6, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v8}, Lcom/google/googlex/gcam/FloatVector;->a(I)F

    move-result v8

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v6}, Lcom/google/googlex/gcam/FloatVector;->a(I)F

    move-result p1

    invoke-direct {v0, v8, p1}, Landroid/graphics/PointF;-><init>(FF)V

    int-to-float p1, v4

    sub-float/2addr p0, p1

    int-to-float p1, v3

    sub-float/2addr v1, p1

    iget p1, v5, Landroid/graphics/PointF;->x:F

    mul-float p1, p1, p0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v3, p0

    iget v6, v2, Landroid/graphics/PointF;->x:F

    mul-float v6, v6, v4

    iget v8, v0, Landroid/graphics/PointF;->x:F

    mul-float v8, v8, p0

    iget v9, v7, Landroid/graphics/PointF;->x:F

    mul-float v9, v9, v4

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v1

    mul-float v7, v7, v1

    iget v2, v2, Landroid/graphics/PointF;->y:F

    mul-float v2, v2, v3

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float v0, v0, v1

    iget v5, v5, Landroid/graphics/PointF;->y:F

    mul-float v5, v5, v3

    add-float/2addr v7, v2

    mul-float v4, v4, v7

    add-float/2addr v0, v5

    mul-float p0, p0, v0

    add-float/2addr p1, v6

    add-float/2addr v8, v9

    mul-float v1, v1, v8

    add-float/2addr p0, v4

    mul-float v3, v3, p1

    add-float/2addr v1, v3

    new-instance p1, Landroid/graphics/Point;

    float-to-int v0, v1

    float-to-int p0, p0

    invoke-direct {p1, v0, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required forward mesh"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-object p0
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

.method public static e()Lfwx;
    .locals 2

    new-instance v0, Lfwx;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lfwx;-><init>(I)V

    return-object v0
.end method
