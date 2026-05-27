.class final Lhxr;
.super Lhxn;


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 0

    invoke-direct {p0, p1}, Lhxn;-><init>(Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 8

    iget-boolean v0, p0, Lhxr;->b:Z

    if-nez v0, :cond_0

    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lhxr;->a:I

    int-to-float v1, v1

    add-float v3, v0, v1

    iget v4, p2, Landroid/graphics/RectF;->top:F

    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lhxr;->a:I

    int-to-float v1, v1

    add-float v5, v0, v1

    iget v6, p2, Landroid/graphics/RectF;->bottom:F

    iget-object v7, p0, Lhxr;->c:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
