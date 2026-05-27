.class public final Lbxv;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Lbya;


# instance fields
.field public final a:Lbxu;

.field public b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I

.field private final g:I

.field private h:Z

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lbxu;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbxv;->e:Z

    const/4 v0, -0x1

    iput v0, p0, Lbxv;->g:I

    invoke-static {p1}, Lbze;->v(Ljava/lang/Object;)V

    iput-object p1, p0, Lbxv;->a:Lbxu;

    return-void
.end method

.method private final d()Landroid/graphics/Paint;
    .locals 2

    iget-object v0, p0, Lbxv;->i:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lbxv;->i:Landroid/graphics/Paint;

    :cond_0
    iget-object v0, p0, Lbxv;->i:Landroid/graphics/Paint;

    return-object v0
.end method

.method private final e()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lbxv;->j:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lbxv;->j:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Lbxv;->j:Landroid/graphics/Rect;

    return-object v0
.end method

.method private final f()V
    .locals 4

    iget-boolean v0, p0, Lbxv;->b:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request."

    invoke-static {v0, v2}, Lbze;->r(ZLjava/lang/String;)V

    iget-object v0, p0, Lbxv;->a:Lbxu;

    iget-object v0, v0, Lbxu;->a:Lbyb;

    invoke-virtual {v0}, Lbyb;->a()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lbxv;->invalidateSelf()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lbxv;->c:Z

    if-nez v0, :cond_4

    iput-boolean v1, p0, Lbxv;->c:Z

    iget-object v0, p0, Lbxv;->a:Lbxu;

    iget-object v0, v0, Lbxu;->a:Lbyb;

    iget-boolean v2, v0, Lbyb;->f:Z

    if-nez v2, :cond_3

    iget-object v2, v0, Lbyb;->b:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lbyb;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    iget-object v3, v0, Lbyb;->b:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lbyb;->d:Z

    if-nez v2, :cond_1

    iput-boolean v1, v0, Lbyb;->d:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lbyb;->f:Z

    invoke-virtual {v0}, Lbyb;->b()V

    :cond_1
    invoke-virtual {p0}, Lbxv;->invalidateSelf()V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot subscribe twice in a row"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot subscribe to a cleared frame loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-void
.end method

.method private final g()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbxv;->c:Z

    iget-object v0, p0, Lbxv;->a:Lbxu;

    iget-object v0, v0, Lbxu;->a:Lbyb;

    iget-object v1, v0, Lbyb;->b:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Lbyb;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lbyb;->f()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lbxv;->a:Lbxu;

    iget-object v0, v0, Lbxu;->a:Lbyb;

    iget-object v0, v0, Lbyb;->h:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final b()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lbxv;->a:Lbxu;

    iget-object v0, v0, Lbxu;->a:Lbyb;

    iget-object v0, v0, Lbyb;->a:Lbpn;

    check-cast v0, Lbpr;

    iget-object v0, v0, Lbpr;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 3

    invoke-virtual {p0}, Lbxv;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lbxv;->stop()V

    invoke-virtual {p0}, Lbxv;->invalidateSelf()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lbxv;->invalidateSelf()V

    iget-object v0, p0, Lbxv;->a:Lbxu;

    iget-object v0, v0, Lbxu;->a:Lbyb;

    iget-object v1, v0, Lbyb;->e:Lbxz;

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    iget v1, v1, Lbxz;->a:I

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    :goto_1
    invoke-virtual {v0}, Lbyb;->a()I

    move-result v0

    add-int/2addr v0, v2

    if-ne v1, v0, :cond_3

    iget v0, p0, Lbxv;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbxv;->f:I

    :cond_3
    iget v0, p0, Lbxv;->g:I

    if-eq v0, v2, :cond_4

    iget v0, p0, Lbxv;->f:I

    if-ltz v0, :cond_4

    invoke-virtual {p0}, Lbxv;->stop()V

    :cond_4
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-boolean v0, p0, Lbxv;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lbxv;->h:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lbxv;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Lbxv;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0}, Lbxv;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p0}, Lbxv;->e()Landroid/graphics/Rect;

    move-result-object v3

    const/16 v4, 0x77

    invoke-static {v4, v0, v1, v2, v3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbxv;->h:Z

    :cond_1
    iget-object v0, p0, Lbxv;->a:Lbxu;

    iget-object v0, v0, Lbxu;->a:Lbyb;

    iget-object v1, v0, Lbyb;->e:Lbxz;

    if-eqz v1, :cond_2

    iget-object v0, v1, Lbxz;->b:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lbyb;->h:Landroid/graphics/Bitmap;

    :goto_0
    invoke-direct {p0}, Lbxv;->e()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0}, Lbxv;->d()Landroid/graphics/Paint;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    iget-object v0, p0, Lbxv;->a:Lbxu;

    return-object v0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lbxv;->a:Lbxu;

    iget-object v0, v0, Lbxu;->a:Lbyb;

    iget v0, v0, Lbyb;->l:I

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lbxv;->a:Lbxu;

    iget-object v0, v0, Lbxu;->a:Lbyb;

    iget v0, v0, Lbyb;->k:I

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public final isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lbxv;->c:Z

    return v0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lbxv;->h:Z

    return-void
.end method

.method public final setAlpha(I)V
    .locals 1

    invoke-direct {p0}, Lbxv;->d()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    invoke-direct {p0}, Lbxv;->d()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public final setVisible(ZZ)Z
    .locals 2

    iget-boolean v0, p0, Lbxv;->b:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View\'s visibility."

    invoke-static {v0, v1}, Lbze;->r(ZLjava/lang/String;)V

    iput-boolean p1, p0, Lbxv;->e:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lbxv;->g()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lbxv;->d:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lbxv;->f()V

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public final start()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbxv;->d:Z

    const/4 v0, 0x0

    iput v0, p0, Lbxv;->f:I

    iget-boolean v0, p0, Lbxv;->e:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lbxv;->f()V

    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbxv;->d:Z

    invoke-direct {p0}, Lbxv;->g()V

    return-void
.end method
