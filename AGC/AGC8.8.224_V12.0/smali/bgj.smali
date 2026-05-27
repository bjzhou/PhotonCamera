.class public final Lbgj;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/graphics/drawable/Animatable;


# instance fields
.field public a:Lbga;

.field public final b:Lblm;

.field public c:F

.field public d:Z

.field public e:Z

.field public f:Lbih;

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:Lbjr;

.field public j:Ldqx;

.field private final k:Landroid/graphics/Matrix;

.field private final l:Ljava/util/ArrayList;

.field private final m:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private n:I

.field private final o:Z

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lbgj;->k:Landroid/graphics/Matrix;

    new-instance v0, Lblm;

    invoke-direct {v0}, Lblm;-><init>()V

    iput-object v0, p0, Lbgj;->b:Lblm;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lbgj;->c:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lbgj;->d:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lbgj;->e:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lbgj;->l:Ljava/util/ArrayList;

    new-instance v3, Lafx;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Lafx;-><init>(Lbgj;I)V

    iput-object v3, p0, Lbgj;->m:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/16 v4, 0xff

    iput v4, p0, Lbgj;->n:I

    iput-boolean v1, p0, Lbgj;->o:Z

    iput-boolean v2, p0, Lbgj;->p:Z

    invoke-virtual {v0, v3}, Lblj;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private final t()Z
    .locals 1

    iget-boolean v0, p0, Lbgj;->d:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lbgj;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static final u(Landroid/graphics/Rect;)F
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method


# virtual methods
.method public final a()F
    .locals 1

    iget-object v0, p0, Lbgj;->b:Lblm;

    invoke-virtual {v0}, Lblm;->d()F

    move-result v0

    return v0
.end method

.method public final b()F
    .locals 1

    iget-object v0, p0, Lbgj;->b:Lblm;

    invoke-virtual {v0}, Lblm;->e()F

    move-result v0

    return v0
.end method

.method public final c()F
    .locals 1

    iget-object v0, p0, Lbgj;->b:Lblm;

    invoke-virtual {v0}, Lblm;->c()F

    move-result v0

    return v0
.end method

.method public final d()F
    .locals 1

    iget-object v0, p0, Lbgj;->b:Lblm;

    iget v0, v0, Lblm;->b:F

    return v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbgj;->p:Z

    iget-object v0, p0, Lbgj;->a:Lbga;

    const/4 v1, -0x1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lbgj;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lbgj;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v4}, Lbgj;->u(Landroid/graphics/Rect;)F

    move-result v4

    iget-object v0, v0, Lbga;->g:Landroid/graphics/Rect;

    invoke-static {v0}, Lbgj;->u(Landroid/graphics/Rect;)F

    move-result v0

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbgj;->i:Lbjr;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lbgj;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lbgj;->a:Lbga;

    iget-object v5, v5, Lbga;->g:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lbgj;->a:Lbga;

    iget-object v7, v7, Lbga;->g:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    iget-boolean v8, p0, Lbgj;->o:Z

    div-float/2addr v4, v5

    div-float/2addr v6, v7

    if-eqz v8, :cond_2

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    cmpg-float v7, v5, v3

    if-gez v7, :cond_1

    div-float v7, v3, v5

    div-float/2addr v4, v7

    div-float/2addr v6, v7

    goto :goto_0

    :cond_1
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_0
    cmpl-float v3, v7, v3

    if-lez v3, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v3, v2

    mul-float v8, v3, v5

    div-float/2addr v0, v2

    mul-float v5, v5, v0

    sub-float/2addr v3, v8

    sub-float/2addr v0, v5

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v7, v7, v8, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_1

    :cond_2
    :goto_1
    iget-object v0, p0, Lbgj;->k:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lbgj;->k:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v0, p0, Lbgj;->i:Lbjr;

    iget-object v2, p0, Lbgj;->k:Landroid/graphics/Matrix;

    iget v3, p0, Lbgj;->n:I

    invoke-virtual {v0, p1, v2, v3}, Lbjq;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    if-lez v1, :cond_7

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_5

    :cond_3
    :goto_2
    iget-object v0, p0, Lbgj;->i:Lbjr;

    if-nez v0, :cond_4

    goto/16 :goto_5

    :cond_4
    iget v0, p0, Lbgj;->c:F

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lbgj;->a:Lbga;

    iget-object v5, v5, Lbga;->g:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lbgj;->a:Lbga;

    iget-object v7, v7, Lbga;->g:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v4, v5

    div-float/2addr v6, v7

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    cmpl-float v5, v0, v4

    if-lez v5, :cond_5

    iget v0, p0, Lbgj;->c:F

    div-float/2addr v0, v4

    goto :goto_3

    :cond_5
    move v4, v0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_3
    cmpl-float v3, v0, v3

    if-lez v3, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget-object v3, p0, Lbgj;->a:Lbga;

    iget-object v3, v3, Lbga;->g:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget-object v5, p0, Lbgj;->a:Lbga;

    iget-object v5, v5, Lbga;->g:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v2

    mul-float v6, v3, v4

    div-float/2addr v5, v2

    mul-float v2, v5, v4

    iget v7, p0, Lbgj;->c:F

    mul-float v3, v3, v7

    mul-float v7, v7, v5

    sub-float/2addr v3, v6

    sub-float/2addr v7, v2

    invoke-virtual {p1, v3, v7}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v0, v0, v6, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_4

    :cond_6
    :goto_4
    iget-object v0, p0, Lbgj;->k:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lbgj;->k:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v0, p0, Lbgj;->i:Lbjr;

    iget-object v2, p0, Lbgj;->k:Landroid/graphics/Matrix;

    iget v3, p0, Lbgj;->n:I

    invoke-virtual {v0, p1, v2, v3}, Lbjq;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    if-lez v1, :cond_7

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_7
    :goto_5
    invoke-static {}, Lbfv;->a()V

    return-void
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, Lbgj;->b:Lblm;

    invoke-virtual {v0}, Lblm;->getRepeatCount()I

    move-result v0

    return v0
.end method

.method public final f()V
    .locals 30

    move-object/from16 v0, p0

    new-instance v1, Lbjr;

    iget-object v2, v0, Lbgj;->a:Lbga;

    move-object v4, v2

    sget v3, Lbks;->a:I

    iget-object v5, v2, Lbga;->g:Landroid/graphics/Rect;

    new-instance v15, Lbjt;

    move-object v2, v15

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    new-instance v16, Lbiy;

    move-object/from16 v13, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v16 .. v25}, Lbiy;-><init>(Lbis;Lbiz;Lbiu;Lbip;Lbir;Lbip;Lbip;Lbip;Lbip;)V

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v19

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v20

    const-string v5, "__container"

    const/4 v8, 0x1

    const-wide/16 v9, -0x1

    move-wide v6, v9

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v29, v15

    move/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v23

    const/16 v24, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-direct/range {v2 .. v28}, Lbjt;-><init>(Ljava/util/List;Lbga;Ljava/lang/String;JIJLjava/lang/String;Ljava/util/List;Lbiy;IIIFFIILbix;Lcvm;Ljava/util/List;ILbip;Z[B[B)V

    iget-object v2, v0, Lbgj;->a:Lbga;

    iget-object v3, v2, Lbga;->f:Ljava/util/List;

    move-object/from16 v4, v29

    invoke-direct {v1, v0, v4, v3, v2}, Lbjr;-><init>(Lbgj;Lbjt;Ljava/util/List;Lbga;)V

    iput-object v1, v0, Lbgj;->i:Lbjr;

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lbgj;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lbgj;->b:Lblm;

    invoke-virtual {v0}, Lblm;->cancel()V

    return-void
.end method

.method public final getAlpha()I
    .locals 1

    iget v0, p0, Lbgj;->n:I

    return v0
.end method

.method public final getIntrinsicHeight()I
    .locals 2

    iget-object v0, p0, Lbgj;->a:Lbga;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, v0, Lbga;->g:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lbgj;->c:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 2

    iget-object v0, p0, Lbgj;->a:Lbga;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, v0, Lbga;->g:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lbgj;->c:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lbgj;->b:Lblm;

    iget-boolean v1, v0, Lblm;->i:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lblm;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lbgj;->a:Lbga;

    iput-object v0, p0, Lbgj;->i:Lbjr;

    iput-object v0, p0, Lbgj;->f:Lbih;

    iget-object v1, p0, Lbgj;->b:Lblm;

    iput-object v0, v1, Lblm;->h:Lbga;

    const/high16 v0, -0x31000000

    iput v0, v1, Lblm;->f:F

    const/high16 v0, 0x4f000000

    iput v0, v1, Lblm;->g:F

    invoke-virtual {p0}, Lbgj;->invalidateSelf()V

    return-void
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lbgj;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lbgj;->b:Lblm;

    invoke-virtual {v0}, Lblm;->f()V

    return-void
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Lbgj;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final invalidateSelf()V
    .locals 1

    iget-boolean v0, p0, Lbgj;->p:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbgj;->p:Z

    invoke-virtual {p0}, Lbgj;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public final isRunning()Z
    .locals 1

    invoke-virtual {p0}, Lbgj;->p()Z

    move-result v0

    return v0
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lbgj;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lbgj;->b:Lblm;

    invoke-virtual {v0}, Lblm;->h()V

    return-void
.end method

.method public final k()V
    .locals 4

    iget-object v0, p0, Lbgj;->i:Lbjr;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lbgj;->l:Ljava/util/ArrayList;

    new-instance v2, Lbgh;

    invoke-direct {v2, p0, v1}, Lbgh;-><init>(Lbgj;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-direct {p0}, Lbgj;->t()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lbgj;->e()I

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lbgj;->b:Lblm;

    iput-boolean v1, v0, Lblm;->i:Z

    invoke-virtual {v0}, Lblm;->m()Z

    move-result v1

    iget-object v2, v0, Lblj;->a:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v3, v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lblm;->m()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lblm;->d()F

    move-result v1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lblm;->e()F

    move-result v1

    :goto_1
    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lblm;->k(F)V

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lblm;->c:J

    const/4 v1, 0x0

    iput v1, v0, Lblm;->e:I

    invoke-virtual {v0}, Lblm;->g()V

    :cond_4
    invoke-direct {p0}, Lbgj;->t()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lbgj;->d()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    invoke-virtual {p0}, Lbgj;->b()F

    move-result v0

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lbgj;->a()F

    move-result v0

    :goto_2
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lbgj;->m(I)V

    iget-object v0, p0, Lbgj;->b:Lblm;

    invoke-virtual {v0}, Lblm;->f()V

    return-void

    :cond_6
    return-void
.end method

.method public final l()V
    .locals 3

    iget-object v0, p0, Lbgj;->i:Lbjr;

    if-nez v0, :cond_0

    iget-object v0, p0, Lbgj;->l:Ljava/util/ArrayList;

    new-instance v1, Lbgh;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lbgh;-><init>(Lbgj;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-direct {p0}, Lbgj;->t()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lbgj;->e()I

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lbgj;->b:Lblm;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lblm;->i:Z

    invoke-virtual {v0}, Lblm;->g()V

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lblm;->c:J

    invoke-virtual {v0}, Lblm;->m()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Lblm;->d:F

    invoke-virtual {v0}, Lblm;->e()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lblm;->d()F

    move-result v1

    :goto_0
    iput v1, v0, Lblm;->d:F

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lblm;->m()Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, v0, Lblm;->d:F

    invoke-virtual {v0}, Lblm;->d()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lblm;->e()F

    move-result v1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-direct {p0}, Lbgj;->t()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lbgj;->d()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    invoke-virtual {p0}, Lbgj;->b()F

    move-result v0

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lbgj;->a()F

    move-result v0

    :goto_2
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lbgj;->m(I)V

    iget-object v0, p0, Lbgj;->b:Lblm;

    invoke-virtual {v0}, Lblm;->f()V

    return-void

    :cond_5
    return-void
.end method

.method public final m(I)V
    .locals 2

    iget-object v0, p0, Lbgj;->a:Lbga;

    if-nez v0, :cond_0

    iget-object v0, p0, Lbgj;->l:Ljava/util/ArrayList;

    new-instance v1, Lbge;

    invoke-direct {v1, p0, p1}, Lbge;-><init>(Lbgj;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lbgj;->b:Lblm;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lblm;->k(F)V

    return-void
.end method

.method public final n(F)V
    .locals 4

    iget-object v0, p0, Lbgj;->a:Lbga;

    if-nez v0, :cond_0

    iget-object v0, p0, Lbgj;->l:Ljava/util/ArrayList;

    new-instance v1, Lbgf;

    invoke-direct {v1, p0, p1}, Lbgf;-><init>(Lbgj;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v1, p0, Lbgj;->b:Lblm;

    iget v2, v0, Lbga;->h:F

    iget v0, v0, Lbga;->i:F

    sget-object v3, Lbln;->a:Landroid/graphics/PointF;

    sub-float/2addr v0, v2

    mul-float p1, p1, v0

    add-float/2addr v2, p1

    invoke-virtual {v1, v2}, Lblm;->k(F)V

    invoke-static {}, Lbfv;->a()V

    return-void
.end method

.method public final o(I)V
    .locals 1

    iget-object v0, p0, Lbgj;->b:Lblm;

    invoke-virtual {v0, p1}, Lblm;->setRepeatCount(I)V

    return-void
.end method

.method public final p()Z
    .locals 1

    iget-object v0, p0, Lbgj;->b:Lblm;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, v0, Lblm;->i:Z

    return v0
.end method

.method public final q(Lbga;)Z
    .locals 4

    iget-object v0, p0, Lbgj;->a:Lbga;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, Lbgj;->p:Z

    invoke-virtual {p0}, Lbgj;->h()V

    iput-object p1, p0, Lbgj;->a:Lbga;

    invoke-virtual {p0}, Lbgj;->f()V

    iget-object v0, p0, Lbgj;->b:Lblm;

    iget-object v1, v0, Lblm;->h:Lbga;

    iput-object p1, v0, Lblm;->h:Lbga;

    if-nez v1, :cond_1

    iget v1, v0, Lblm;->f:F

    iget v2, p1, Lbga;->h:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iget v2, v0, Lblm;->g:F

    iget v3, p1, Lbga;->i:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    int-to-float v1, v1

    int-to-float v2, v2

    goto :goto_0

    :cond_1
    iget v1, p1, Lbga;->h:F

    float-to-int v1, v1

    iget v2, p1, Lbga;->i:F

    float-to-int v2, v2

    int-to-float v1, v1

    int-to-float v2, v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Lblm;->l(FF)V

    iget v1, v0, Lblm;->d:F

    const/4 v2, 0x0

    iput v2, v0, Lblm;->d:F

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lblm;->k(F)V

    invoke-virtual {v0}, Lblj;->b()V

    iget-object v0, p0, Lbgj;->b:Lblm;

    invoke-virtual {v0}, Lblm;->getAnimatedFraction()F

    move-result v0

    invoke-virtual {p0, v0}, Lbgj;->n(F)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lbgj;->l:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbgi;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lbgi;->a()V

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lbgj;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p1, Lbga;->l:Ldp;

    invoke-virtual {p0}, Lbgj;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    check-cast p1, Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public final r()Z
    .locals 1

    iget-object v0, p0, Lbgj;->a:Lbga;

    iget-object v0, v0, Lbga;->d:Lxg;

    invoke-virtual {v0}, Lxg;->b()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final s(Lbik;Ljava/lang/Object;Lbkc;)V
    .locals 8

    iget-object v0, p0, Lbgj;->i:Lbjr;

    if-nez v0, :cond_0

    iget-object v0, p0, Lbgj;->l:Ljava/util/ArrayList;

    new-instance v7, Lbgg;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lbgg;-><init>(Lbgj;Lbik;Ljava/lang/Object;Lbkc;[B)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    sget-object v1, Lbik;->a:Lbik;

    if-ne p1, v1, :cond_1

    invoke-virtual {v0, p2, p3}, Lbjq;->f(Ljava/lang/Object;Lbkc;)V

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lbik;->b:Lbil;

    if-eqz v0, :cond_2

    invoke-interface {v0, p2, p3}, Lbil;->f(Ljava/lang/Object;Lbkc;)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lbgj;->i:Lbjr;

    new-instance v2, Lbik;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    invoke-direct {v2, v4}, Lbik;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, p1, v3, v0, v2}, Lbjq;->d(Lbik;ILjava/util/List;Lbik;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v3, p1, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbik;

    iget-object p1, p1, Lbik;->b:Lbil;

    invoke-interface {p1, p2, p3}, Lbil;->f(Ljava/lang/Object;Lbkc;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    :goto_1
    invoke-virtual {p0}, Lbgj;->invalidateSelf()V

    sget-object p1, Lbgo;->C:Ljava/lang/Float;

    if-ne p2, p1, :cond_4

    invoke-virtual {p0}, Lbgj;->c()F

    move-result p1

    invoke-virtual {p0, p1}, Lbgj;->n(F)V

    :cond_4
    return-void
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    invoke-virtual {p0}, Lbgj;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final setAlpha(I)V
    .locals 0

    iput p1, p0, Lbgj;->n:I

    invoke-virtual {p0}, Lbgj;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    const-string p1, "Use addColorFilter instead."

    invoke-static {p1}, Lbll;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final start()V
    .locals 2

    invoke-virtual {p0}, Lbgj;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lbgj;->k()V

    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 0

    invoke-virtual {p0}, Lbgj;->i()V

    return-void
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0}, Lbgj;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method
