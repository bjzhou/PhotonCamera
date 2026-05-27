.class public final Liwg;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Landroid/view/ViewGroup;

.field protected final b:Landroid/graphics/Rect;

.field final c:Z

.field private final d:Landroid/graphics/Rect;

.field private e:F

.field private f:F

.field private final g:Landroid/view/animation/BaseInterpolator;

.field private final h:Landroid/view/animation/BaseInterpolator;

.field private final i:Landroidx/wear/ambient/AmbientMode$AmbientController;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroidx/wear/ambient/AmbientMode$AmbientController;[B[B[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Liwg;->b:Landroid/graphics/Rect;

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Liwg;->d:Landroid/graphics/Rect;

    new-instance p3, Landroid/view/animation/PathInterpolator;

    const p4, 0x3e99999a    # 0.3f

    const/4 p5, 0x0

    const p6, 0x3f333333    # 0.7f

    const/high16 p7, 0x3f800000    # 1.0f

    invoke-direct {p3, p4, p5, p6, p7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p3, p0, Liwg;->g:Landroid/view/animation/BaseInterpolator;

    new-instance p3, Landroid/view/animation/PathInterpolator;

    invoke-direct {p3, p4, p5, p6, p7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p3, p0, Liwg;->h:Landroid/view/animation/BaseInterpolator;

    iput-object p1, p0, Liwg;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Liwg;->i:Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "reduce_motion"

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p3, 0x1

    :cond_0
    iput-boolean p3, p0, Liwg;->c:Z

    return-void
.end method

.method public static final e(Landroid/view/View;F)V
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v1, p1, v0

    add-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    const v0, 0x3e99999a    # 0.3f

    mul-float p1, p1, v0

    const v0, 0x3f333333    # 0.7f

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private final f(Landroid/view/ViewGroup;Z)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    instance-of v3, v1, Livu;

    invoke-direct {p0, v2, v3}, Liwg;->f(Landroid/view/ViewGroup;Z)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0, v1}, Liwg;->b(Landroid/view/View;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)F
    .locals 9

    iget-object v0, p0, Liwg;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Liwg;->d:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, p0, Liwg;->d:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Liwg;->e:F

    const v4, 0x3eb33333    # 0.35f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Liwg;->f:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Liwg;->f:F

    sub-float/2addr v1, v2

    iget v5, p0, Liwg;->e:F

    sub-float/2addr v5, v2

    div-float/2addr v1, v5

    const v2, 0x3e4cccce    # 0.20000002f

    mul-float v1, v1, v2

    add-float/2addr v4, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Liwg;->f:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    goto :goto_0

    :cond_2
    const v4, 0x3f0ccccd    # 0.55f

    :goto_0
    iget-object v1, p0, Liwg;->b:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Liwg;->i:Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {v2, p1}, Landroidx/wear/ambient/AmbientMode$AmbientController;->w(Landroid/view/View;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, v2, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x1

    :cond_4
    :goto_1
    mul-float v1, v1, v4

    float-to-int v1, v1

    if-eqz v3, :cond_5

    iget-object v2, p0, Liwg;->i:Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {v2, p1}, Landroidx/wear/ambient/AmbientMode$AmbientController;->w(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v2, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)I

    move-result v3

    iget-object v2, v2, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lls;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v3, v2, :cond_6

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_6
    iget-object v2, p0, Liwg;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iget-object v3, p0, Liwg;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v1

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v6, p0, Liwg;->a:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float v6, v6, v8

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-virtual {p1, v6}, Landroid/view/View;->setPivotX(F)V

    const/high16 v6, 0x3f800000    # 1.0f

    if-nez v5, :cond_7

    return v6

    :cond_7
    iget v7, v0, Landroid/graphics/Rect;->top:I

    if-le v7, v3, :cond_8

    iget v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    iget-object p1, p0, Liwg;->h:Landroid/view/animation/BaseInterpolator;

    iget-object v2, p0, Liwg;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    int-to-float v0, v1

    int-to-float v1, v2

    div-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/view/animation/BaseInterpolator;->getInterpolation(F)F

    move-result v6

    goto :goto_2

    :cond_8
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v2, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    iget-object p1, p0, Liwg;->g:Landroid/view/animation/BaseInterpolator;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Liwg;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/animation/BaseInterpolator;->getInterpolation(F)F

    move-result v6

    goto :goto_2

    :cond_9
    cmpl-float p1, v4, v6

    if-nez p1, :cond_a

    :goto_2
    return v6

    :cond_a
    return v6
.end method

.method final b(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Liwg;->c:Z

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Liwg;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Liwg;->a(Landroid/view/View;)F

    move-result v0

    const v1, 0x7f0b0065

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-static {p1, v0}, Liwg;->e(Landroid/view/View;F)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected call when reduce_motion is activated"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c()V
    .locals 4

    iget-boolean v0, p0, Liwg;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Liwg;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Liwg;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Liwg;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f19999a    # 0.6f

    mul-float v0, v0, v1

    iput v0, p0, Liwg;->e:F

    iget-object v0, p0, Liwg;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, v1

    iput v0, p0, Liwg;->f:F

    iget-object v0, p0, Liwg;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Liwg;->f(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public final d(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Liwg;->a:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Liwg;->d(Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
