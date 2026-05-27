.class public Lhxn;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:Z

.field final c:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhxn;->c:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lhxn;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public b(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 7

    iget-boolean v0, p0, Lhxn;->b:Z

    if-nez v0, :cond_0

    iget v2, p2, Landroid/graphics/RectF;->left:F

    iget v0, p2, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lhxn;->a:I

    int-to-float v1, v1

    add-float v3, v0, v1

    iget v4, p2, Landroid/graphics/RectF;->right:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    iget v0, p0, Lhxn;->a:I

    int-to-float v0, v0

    add-float v5, p2, v0

    iget-object v6, p0, Lhxn;->c:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
