.class public Lcom/google/android/apps/camera/aizoom/previewpanel/PolyView;
.super Landroid/view/View;


# instance fields
.field public final a:Landroid/graphics/Paint;

.field private volatile b:[Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/apps/camera/aizoom/previewpanel/PolyView;->a:Landroid/graphics/Paint;

    const/4 p1, 0x0

    new-array p1, p1, [Landroid/graphics/PointF;

    iput-object p1, p0, Lcom/google/android/apps/camera/aizoom/previewpanel/PolyView;->b:[Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/camera/aizoom/previewpanel/PolyView;->a:Landroid/graphics/Paint;

    const/4 v2, 0x0

    new-array v3, v2, [Landroid/graphics/PointF;

    iput-object v3, p0, Lcom/google/android/apps/camera/aizoom/previewpanel/PolyView;->b:[Landroid/graphics/PointF;

    sget-object v3, Lcgo;->a:[I

    invoke-virtual {p1, p2, v3, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-static {p2}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p2}, Landroid/graphics/Color;->toArgb()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    if-eqz v2, :cond_0

    sget-object p1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    goto :goto_0

    :cond_0
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public final varargs a([Landroid/graphics/PointF;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/camera/aizoom/previewpanel/PolyView;->b:[Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/aizoom/previewpanel/PolyView;->invalidate()V

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/google/android/apps/camera/aizoom/previewpanel/PolyView;->b:[Landroid/graphics/PointF;

    array-length v0, v0

    if-lez v0, :cond_1

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/apps/camera/aizoom/previewpanel/PolyView;->b:[Landroid/graphics/PointF;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/PointF;->x:F

    mul-float v3, v3, v1

    iget-object v5, p0, Lcom/google/android/apps/camera/aizoom/previewpanel/PolyView;->b:[Landroid/graphics/PointF;

    aget-object v5, v5, v4

    iget v5, v5, Landroid/graphics/PointF;->y:F

    mul-float v5, v5, v2

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v3, 0x1

    :goto_0
    iget-object v5, p0, Lcom/google/android/apps/camera/aizoom/previewpanel/PolyView;->b:[Landroid/graphics/PointF;

    array-length v5, v5

    if-ge v3, v5, :cond_0

    iget-object v5, p0, Lcom/google/android/apps/camera/aizoom/previewpanel/PolyView;->b:[Landroid/graphics/PointF;

    aget-object v5, v5, v3

    iget v5, v5, Landroid/graphics/PointF;->x:F

    mul-float v5, v5, v1

    iget-object v6, p0, Lcom/google/android/apps/camera/aizoom/previewpanel/PolyView;->b:[Landroid/graphics/PointF;

    aget-object v6, v6, v3

    iget v6, v6, Landroid/graphics/PointF;->y:F

    mul-float v6, v6, v2

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/google/android/apps/camera/aizoom/previewpanel/PolyView;->b:[Landroid/graphics/PointF;

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/PointF;->x:F

    mul-float v3, v3, v1

    iget-object v1, p0, Lcom/google/android/apps/camera/aizoom/previewpanel/PolyView;->b:[Landroid/graphics/PointF;

    aget-object v1, v1, v4

    iget v1, v1, Landroid/graphics/PointF;->y:F

    mul-float v1, v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/google/android/apps/camera/aizoom/previewpanel/PolyView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method
