.class public final Lmjc;
.super Lmiz;


# instance fields
.field public final a:Lmja;

.field public final b:Lmjb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmim;Lmja;Lmjb;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiz;-><init>(Landroid/content/Context;Lmim;)V

    iput-object p3, p0, Lmjc;->a:Lmja;

    iput-object p0, p3, Lmja;->b:Lmiz;

    iput-object p4, p0, Lmjc;->b:Lmjb;

    iput-object p0, p4, Lmjb;->j:Lmjc;

    return-void
.end method


# virtual methods
.method public final b(ZZZ)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lmiz;->b(ZZZ)Z

    move-result p2

    invoke-virtual {p0}, Lmiz;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmjc;->b:Lmjb;

    invoke-virtual {v0}, Lmjb;->a()V

    :cond_0
    iget-object v0, p0, Lmjc;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lljr;->y(Landroid/content/ContentResolver;)F

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    iget-object p1, p0, Lmjc;->b:Lmjb;

    invoke-virtual {p1}, Lmjb;->d()V

    :cond_1
    return p2
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 10

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lmjc;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lmjc;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lmjc;->a:Lmja;

    invoke-virtual {p0}, Lmjc;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Lmiz;->c()F

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lmja;->f(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V

    iget-object v0, p0, Lmjc;->a:Lmja;

    iget-object v1, p0, Lmjc;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Lmja;->e(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmjc;->b:Lmjb;

    iget-object v2, v1, Lmjb;->l:[I

    array-length v3, v2

    if-ge v0, v3, :cond_1

    iget-object v4, p0, Lmjc;->a:Lmja;

    iget-object v6, p0, Lmjc;->h:Landroid/graphics/Paint;

    iget-object v1, v1, Lmjb;->k:[F

    add-int v3, v0, v0

    aget v7, v1, v3

    add-int/lit8 v3, v3, 0x1

    aget v8, v1, v3

    aget v9, v2, v0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lmja;->d(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lmjc;->a:Lmja;

    invoke-virtual {v0}, Lmja;->a()I

    move-result v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lmjc;->a:Lmja;

    invoke-virtual {v0}, Lmja;->b()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method
