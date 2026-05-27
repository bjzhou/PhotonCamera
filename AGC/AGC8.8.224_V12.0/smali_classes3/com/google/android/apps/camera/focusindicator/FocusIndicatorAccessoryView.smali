.class public final Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;
.super Liq;


# instance fields
.field public a:Landroid/view/View;

.field private final b:Lj$/time/Duration;

.field private c:Landroid/animation/Animator;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Liq;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->c:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0003

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->b:Lj$/time/Duration;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Liq;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->c:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0c0003

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long p1, p1

    invoke-static {p1, p2}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->b:Lj$/time/Duration;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->c:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    return-void
.end method

.method public final b()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10b0000

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->c:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->b:Lj$/time/Duration;

    invoke-virtual {v1}, Lj$/time/Duration;->toMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->c:Landroid/animation/Animator;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->c:Landroid/animation/Animator;

    new-instance v1, Ldvx;

    invoke-direct {v1, p0}, Ldvx;-><init>(Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->c:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public final c(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x10b0001

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->c:Landroid/animation/Animator;

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->b:Lj$/time/Duration;

    invoke-virtual {v0}, Lj$/time/Duration;->toMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->c:Landroid/animation/Animator;

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->c:Landroid/animation/Animator;

    new-instance v0, Ldvy;

    invoke-direct {v0, p0}, Ldvy;-><init>(Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->c:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->setVisibility(I)V

    return-void
.end method

.method public final d(F)V
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->setImageAlpha(I)V

    return-void
.end method

.method public final e()V
    .locals 15

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->a:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lad;

    iget v1, v0, Lad;->leftMargin:I

    iget-object v2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v1, v2

    iget v0, v0, Lad;->topMargin:I

    iget-object v2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v0, v2

    new-instance v2, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v3

    add-int/2addr v0, v4

    invoke-direct {v2, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v0

    iget v4, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v0

    iget v5, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v5, v0

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v0

    invoke-direct {v1, v3, v4, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/ConstraintLayout;

    new-instance v9, Laf;

    invoke-direct {v9}, Laf;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->getId()I

    move-result v10

    iget-object v3, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v11

    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070147

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v4

    iget-object v5, v9, Laf;->a:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    invoke-virtual {v2, v5}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lad;

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    iget-object v12, v9, Laf;->a:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    iget-object v12, v9, Laf;->a:Ljava/util/HashMap;

    new-instance v14, Lae;

    invoke-direct {v14}, Lae;-><init>()V

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v12, v9, Laf;->a:Ljava/util/HashMap;

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lae;

    iput v8, v12, Lae;->d:I

    iget v8, v7, Lad;->d:I

    iput v8, v12, Lae;->h:I

    iget v8, v7, Lad;->e:I

    iput v8, v12, Lae;->i:I

    iget v8, v7, Lad;->f:I

    iput v8, v12, Lae;->j:I

    iget v8, v7, Lad;->g:I

    iput v8, v12, Lae;->k:I

    iget v8, v7, Lad;->h:I

    iput v8, v12, Lae;->l:I

    iget v8, v7, Lad;->i:I

    iput v8, v12, Lae;->m:I

    iget v8, v7, Lad;->j:I

    iput v8, v12, Lae;->n:I

    iget v8, v7, Lad;->k:I

    iput v8, v12, Lae;->o:I

    iget v8, v7, Lad;->l:I

    iput v8, v12, Lae;->p:I

    iget v8, v7, Lad;->m:I

    iput v8, v12, Lae;->q:I

    iget v8, v7, Lad;->n:I

    iput v8, v12, Lae;->r:I

    iget v8, v7, Lad;->o:I

    iput v8, v12, Lae;->s:I

    iget v8, v7, Lad;->p:I

    iput v8, v12, Lae;->t:I

    iget v8, v7, Lad;->w:F

    iput v8, v12, Lae;->u:F

    iget v8, v7, Lad;->x:F

    iput v8, v12, Lae;->v:F

    iget-object v8, v7, Lad;->y:Ljava/lang/String;

    iput-object v8, v12, Lae;->w:Ljava/lang/String;

    iget v8, v7, Lad;->K:I

    iput v8, v12, Lae;->x:I

    iget v8, v7, Lad;->L:I

    iput v8, v12, Lae;->y:I

    iget v8, v7, Lad;->M:I

    iput v8, v12, Lae;->z:I

    iget v8, v7, Lad;->c:F

    iput v8, v12, Lae;->g:F

    iget v8, v7, Lad;->a:I

    iput v8, v12, Lae;->e:I

    iget v8, v7, Lad;->b:I

    iput v8, v12, Lae;->f:I

    iget v8, v7, Lad;->width:I

    iput v8, v12, Lae;->b:I

    iget v8, v7, Lad;->height:I

    iput v8, v12, Lae;->c:I

    iget v8, v7, Lad;->leftMargin:I

    iput v8, v12, Lae;->A:I

    iget v8, v7, Lad;->rightMargin:I

    iput v8, v12, Lae;->B:I

    iget v8, v7, Lad;->topMargin:I

    iput v8, v12, Lae;->C:I

    iget v8, v7, Lad;->bottomMargin:I

    iput v8, v12, Lae;->D:I

    iget v8, v7, Lad;->B:F

    iput v8, v12, Lae;->N:F

    iget v8, v7, Lad;->A:F

    iput v8, v12, Lae;->O:F

    iget v8, v7, Lad;->D:I

    iput v8, v12, Lae;->Q:I

    iget v8, v7, Lad;->C:I

    iput v8, v12, Lae;->P:I

    iget v8, v7, Lad;->E:I

    iput v8, v12, Lae;->ad:I

    iget v8, v7, Lad;->F:I

    iput v8, v12, Lae;->ae:I

    iget v8, v7, Lad;->I:I

    iput v8, v12, Lae;->af:I

    iget v8, v7, Lad;->J:I

    iput v8, v12, Lae;->ag:I

    iget v8, v7, Lad;->G:I

    iput v8, v12, Lae;->ah:I

    iget v8, v7, Lad;->H:I

    iput v8, v12, Lae;->ai:I

    invoke-virtual {v7}, Lad;->getMarginEnd()I

    move-result v8

    iput v8, v12, Lae;->E:I

    invoke-virtual {v7}, Lad;->getMarginStart()I

    move-result v7

    iput v7, v12, Lae;->F:I

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    iput v7, v12, Lae;->G:I

    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v7

    iput v7, v12, Lae;->R:F

    invoke-virtual {v6}, Landroid/view/View;->getRotationX()F

    move-result v7

    iput v7, v12, Lae;->U:F

    invoke-virtual {v6}, Landroid/view/View;->getRotationY()F

    move-result v7

    iput v7, v12, Lae;->V:F

    invoke-virtual {v6}, Landroid/view/View;->getScaleX()F

    move-result v7

    iput v7, v12, Lae;->W:F

    invoke-virtual {v6}, Landroid/view/View;->getScaleY()F

    move-result v7

    iput v7, v12, Lae;->X:F

    invoke-virtual {v6}, Landroid/view/View;->getPivotX()F

    move-result v7

    iput v7, v12, Lae;->Y:F

    invoke-virtual {v6}, Landroid/view/View;->getPivotY()F

    move-result v7

    iput v7, v12, Lae;->Z:F

    invoke-virtual {v6}, Landroid/view/View;->getTranslationX()F

    move-result v7

    iput v7, v12, Lae;->aa:F

    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v7

    iput v7, v12, Lae;->ab:F

    invoke-virtual {v6}, Landroid/view/View;->getTranslationZ()F

    move-result v7

    iput v7, v12, Lae;->ac:F

    iget-boolean v7, v12, Lae;->S:Z

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getElevation()F

    move-result v6

    iput v6, v12, Lae;->T:F

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_2
    const/4 v4, 0x3

    invoke-virtual {v9, v10, v4}, Laf;->b(II)V

    const/4 v5, 0x4

    invoke-virtual {v9, v10, v5}, Laf;->b(II)V

    const/4 v12, 0x6

    invoke-virtual {v9, v10, v12}, Laf;->b(II)V

    const/4 v13, 0x7

    invoke-virtual {v9, v10, v13}, Laf;->b(II)V

    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int v8, v3, v0

    if-ltz v6, :cond_3

    const/4 v5, 0x3

    const/4 v7, 0x3

    move-object v3, v9

    move v4, v10

    move v6, v11

    invoke-virtual/range {v3 .. v8}, Laf;->d(IIIII)V

    invoke-virtual {v9, v10, v12, v11, v12}, Laf;->c(IIII)V

    invoke-virtual {v9, v10, v13, v11, v13}, Laf;->c(IIII)V

    goto :goto_1

    :cond_3
    invoke-virtual {v9, v10, v4, v11, v4}, Laf;->c(IIII)V

    invoke-virtual {v9, v10, v5, v11, v5}, Laf;->c(IIII)V

    iget v0, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/support/constraint/ConstraintLayout;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v3, v1

    if-le v0, v3, :cond_4

    const/4 v7, 0x6

    move-object v3, v9

    move v4, v10

    move v5, v7

    move v6, v11

    invoke-virtual/range {v3 .. v8}, Laf;->d(IIIII)V

    goto :goto_1

    :cond_4
    const/4 v7, 0x7

    move-object v3, v9

    move v4, v10

    move v5, v7

    move v6, v11

    invoke-virtual/range {v3 .. v8}, Laf;->d(IIIII)V

    :goto_1
    invoke-virtual {v9, v2}, Laf;->a(Landroid/support/constraint/ConstraintLayout;)V

    const/4 v0, 0x0

    iput-object v0, v2, Landroid/support/constraint/ConstraintLayout;->c:Laf;

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->setTranslationX(F)V

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->setTranslationY(F)V

    return-void
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->c:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    return v0
.end method
