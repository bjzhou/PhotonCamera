.class public final Lbls;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/ThreadLocal;

.field private static final b:Ljava/lang/ThreadLocal;

.field private static final c:Ljava/lang/ThreadLocal;

.field private static final d:Ljava/lang/ThreadLocal;

.field private static final e:F

.field private static f:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lblo;

    invoke-direct {v0}, Lblo;-><init>()V

    sput-object v0, Lbls;->b:Ljava/lang/ThreadLocal;

    new-instance v0, Lblp;

    invoke-direct {v0}, Lblp;-><init>()V

    sput-object v0, Lbls;->c:Ljava/lang/ThreadLocal;

    new-instance v0, Lblq;

    invoke-direct {v0}, Lblq;-><init>()V

    sput-object v0, Lbls;->d:Ljava/lang/ThreadLocal;

    new-instance v0, Lblr;

    invoke-direct {v0}, Lblr;-><init>()V

    sput-object v0, Lbls;->a:Ljava/lang/ThreadLocal;

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v2, v0

    double-to-float v0, v2

    sput v0, Lbls;->e:F

    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lbls;->f:F

    return-void
.end method

.method public static a()F
    .locals 2

    sget v0, Lbls;->f:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lbls;->f:F

    :cond_0
    return v0
.end method

.method public static b(Landroid/graphics/Matrix;)F
    .locals 6

    sget-object v0, Lbls;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v3, 0x1

    aput v2, v0, v3

    sget v2, Lbls;->e:F

    const/4 v4, 0x2

    aput v2, v0, v4

    const/4 v5, 0x3

    aput v2, v0, v5

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget p0, v0, v4

    aget v1, v0, v1

    sub-float/2addr p0, v1

    aget v1, v0, v5

    aget v0, v0, v3

    sub-float/2addr v1, v0

    float-to-double v2, p0

    float-to-double v0, v1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static c(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1
.end method

.method public static d(Landroid/graphics/Path;FFF)V
    .locals 10

    sget-object v0, Lbls;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PathMeasure;

    sget-object v1, Lbls;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    sget-object v2, Lbls;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Path;

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v3}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v6, p1, v5

    if-nez v6, :cond_1

    cmpl-float v6, p2, v4

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lbfv;->a()V

    return-void

    :cond_1
    :goto_0
    cmpg-float v5, v3, v5

    if-ltz v5, :cond_a

    sub-float v5, p2, p1

    const/high16 v6, -0x40800000    # -1.0f

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v9, v5, v7

    if-gez v9, :cond_2

    goto/16 :goto_3

    :cond_2
    mul-float p1, p1, v3

    mul-float p2, p2, v3

    mul-float p3, p3, v3

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    add-float/2addr v5, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    add-float/2addr p1, p3

    cmpl-float p2, v5, v3

    if-ltz p2, :cond_3

    cmpl-float p2, p1, v3

    if-ltz p2, :cond_3

    invoke-static {v5, v3}, Lbln;->b(FF)I

    move-result p2

    int-to-float v5, p2

    invoke-static {p1, v3}, Lbln;->b(FF)I

    move-result p1

    int-to-float p1, p1

    goto :goto_1

    :cond_3
    :goto_1
    cmpg-float p2, v5, v4

    if-gez p2, :cond_4

    invoke-static {v5, v3}, Lbln;->b(FF)I

    move-result p2

    int-to-float v5, p2

    :cond_4
    cmpg-float p2, p1, v4

    if-gez p2, :cond_5

    invoke-static {p1, v3}, Lbln;->b(FF)I

    move-result p1

    int-to-float p1, p1

    :cond_5
    cmpl-float p2, v5, p1

    if-nez p2, :cond_6

    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    invoke-static {}, Lbfv;->a()V

    return-void

    :cond_6
    cmpl-float p2, v5, p1

    if-ltz p2, :cond_7

    sub-float/2addr v5, v3

    :cond_7
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    const/4 p2, 0x1

    invoke-virtual {v0, v5, p1, v1, p2}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    cmpl-float p3, p1, v3

    if-lez p3, :cond_8

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    rem-float/2addr p1, v3

    invoke-virtual {v0, v4, p1, v2, p2}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_2

    :cond_8
    cmpg-float p1, v5, v4

    if-gez p1, :cond_9

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    add-float/2addr v5, v3

    invoke-virtual {v0, v5, v3, v2, p2}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    :cond_9
    :goto_2
    invoke-virtual {p0, v1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-static {}, Lbfv;->a()V

    return-void

    :cond_a
    :goto_3
    invoke-static {}, Lbfv;->a()V

    return-void
.end method

.method public static e(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    return-void

    :catch_1
    move-exception p0

    throw p0

    :cond_0
    return-void
.end method

.method public static f(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    invoke-static {}, Lbfv;->a()V

    return-void
.end method
