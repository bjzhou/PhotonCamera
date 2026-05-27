.class public Lmk;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lmi;

.field public b:I

.field public c:Landroid/support/v7/widget/RecyclerView;

.field public d:Lly;

.field public e:Z

.field public f:Z

.field public g:Landroid/view/View;

.field public h:Z

.field protected final i:Landroid/view/animation/LinearInterpolator;

.field protected final j:Landroid/view/animation/DecelerateInterpolator;

.field protected k:Landroid/graphics/PointF;

.field protected l:I

.field protected m:I

.field private final n:Landroid/util/DisplayMetrics;

.field private o:Z

.field private p:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lmk;->b:I

    new-instance v0, Lmi;

    invoke-direct {v0}, Lmi;-><init>()V

    iput-object v0, p0, Lmk;->a:Lmi;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lmk;->b:I

    new-instance v0, Lmi;

    invoke-direct {v0}, Lmi;-><init>()V

    iput-object v0, p0, Lmk;->a:Lmi;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lmk;->i:Landroid/view/animation/LinearInterpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lmk;->j:Landroid/view/animation/DecelerateInterpolator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmk;->o:Z

    iput v0, p0, Lmk;->l:I

    iput v0, p0, Lmk;->m:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lmk;->n:Landroid/util/DisplayMetrics;

    return-void
.end method

.method public static final n(Landroid/view/View;)I
    .locals 0

    invoke-static {p0}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lmo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lmo;->b()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method protected static final o(Landroid/graphics/PointF;)V
    .locals 3

    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Landroid/graphics/PointF;->x:F

    mul-float v0, v0, v1

    iget v1, p0, Landroid/graphics/PointF;->y:F

    iget v2, p0, Landroid/graphics/PointF;->y:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, v0

    iput v1, p0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v0

    iput v1, p0, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method private static p(II)I
    .locals 0

    sub-int p1, p0, p1

    mul-int p0, p0, p1

    if-gtz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return p1
.end method


# virtual methods
.method protected a(Landroid/util/DisplayMetrics;)F
    .locals 1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x41c80000    # 25.0f

    div-float/2addr v0, p1

    return v0
.end method

.method protected b(I)I
    .locals 2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget-boolean v0, p0, Lmk;->o:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmk;->n:Landroid/util/DisplayMetrics;

    invoke-virtual {p0, v0}, Lmk;->a(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lmk;->p:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmk;->o:Z

    :cond_0
    iget v0, p0, Lmk;->p:F

    mul-float p1, p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method protected c(Landroid/view/View;Lmi;)V
    .locals 3

    invoke-virtual {p0}, Lmk;->k()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmk;->h(Landroid/view/View;I)I

    move-result v0

    invoke-virtual {p0}, Lmk;->l()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lmk;->i(Landroid/view/View;I)I

    move-result p1

    mul-int v1, v0, v0

    mul-int v2, p1, p1

    add-int/2addr v1, v2

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p0, v1}, Lmk;->j(I)I

    move-result v1

    if-lez v1, :cond_0

    neg-int v0, v0

    neg-int p1, p1

    iget-object v2, p0, Lmk;->j:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p2, v0, p1, v1, v2}, Lmi;->b(IIILandroid/view/animation/Interpolator;)V

    :cond_0
    return-void
.end method

.method public final d(I)Landroid/graphics/PointF;
    .locals 2

    iget-object v0, p0, Lmk;->d:Lly;

    instance-of v1, v0, Lmj;

    if-eqz v1, :cond_0

    check-cast v0, Lmj;

    invoke-interface {v0, p1}, Lmj;->J(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    :cond_0
    const-class p1, Lmj;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "You should override computeScrollVectorForPosition when the LayoutManager does not implement "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecyclerView"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method final e(II)V
    .locals 5

    iget-object v0, p0, Lmk;->c:Landroid/support/v7/widget/RecyclerView;

    iget v1, p0, Lmk;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lmk;->f()V

    :cond_1
    iget-boolean v1, p0, Lmk;->e:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmk;->g:Landroid/view/View;

    if-nez v1, :cond_3

    iget-object v1, p0, Lmk;->d:Lly;

    if-eqz v1, :cond_3

    iget v1, p0, Lmk;->b:I

    invoke-virtual {p0, v1}, Lmk;->d(I)Landroid/graphics/PointF;

    move-result-object v1

    if-eqz v1, :cond_3

    iget v3, v1, Landroid/graphics/PointF;->x:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    :cond_2
    iget v3, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    float-to-int v3, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/support/v7/widget/RecyclerView;->V(II[I)V

    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmk;->e:Z

    iget-object v1, p0, Lmk;->g:Landroid/view/View;

    if-eqz v1, :cond_5

    invoke-static {v1}, Lmk;->n(Landroid/view/View;)I

    move-result v1

    iget v3, p0, Lmk;->b:I

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lmk;->g:Landroid/view/View;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iget-object v2, p0, Lmk;->a:Lmi;

    invoke-virtual {p0, v1, v2}, Lmk;->c(Landroid/view/View;Lmi;)V

    iget-object v1, p0, Lmk;->a:Lmi;

    invoke-virtual {v1, v0}, Lmi;->a(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p0}, Lmk;->f()V

    goto :goto_0

    :cond_4
    const-string v1, "RecyclerView"

    const-string v3, "Passed over target position while smooth scrolling."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lmk;->g:Landroid/view/View;

    :cond_5
    :goto_0
    iget-boolean v1, p0, Lmk;->f:Z

    if-eqz v1, :cond_8

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iget-object v1, p0, Lmk;->a:Lmi;

    iget-object v2, p0, Lmk;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    invoke-virtual {v2}, Lly;->aj()I

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lmk;->f()V

    goto :goto_1

    :cond_6
    iget v2, p0, Lmk;->l:I

    invoke-static {v2, p1}, Lmk;->p(II)I

    move-result p1

    iput p1, p0, Lmk;->l:I

    iget v2, p0, Lmk;->m:I

    invoke-static {v2, p2}, Lmk;->p(II)I

    move-result p2

    iput p2, p0, Lmk;->m:I

    if-nez p1, :cond_7

    if-nez p2, :cond_7

    invoke-virtual {p0, v1}, Lmk;->m(Lmi;)V

    :cond_7
    :goto_1
    iget-object p1, p0, Lmk;->a:Lmi;

    iget p2, p1, Lmi;->a:I

    invoke-virtual {p1, v0}, Lmi;->a(Landroid/support/v7/widget/RecyclerView;)V

    if-ltz p2, :cond_8

    iget-boolean p1, p0, Lmk;->f:Z

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmk;->e:Z

    iget-object p1, v0, Landroid/support/v7/widget/RecyclerView;->J:Lmn;

    invoke-virtual {p1}, Lmn;->b()V

    return-void

    :cond_8
    return-void
.end method

.method public final f()V
    .locals 4

    iget-boolean v0, p0, Lmk;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmk;->f:Z

    iput v0, p0, Lmk;->m:I

    iput v0, p0, Lmk;->l:I

    const/4 v1, 0x0

    iput-object v1, p0, Lmk;->k:Landroid/graphics/PointF;

    iget-object v2, p0, Lmk;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    const/4 v3, -0x1

    iput v3, v2, Lml;->a:I

    iput-object v1, p0, Lmk;->g:Landroid/view/View;

    iput v3, p0, Lmk;->b:I

    iput-boolean v0, p0, Lmk;->e:Z

    iget-object v0, p0, Lmk;->d:Lly;

    iget-object v2, v0, Lly;->r:Lmk;

    if-ne v2, p0, :cond_1

    iput-object v1, v0, Lly;->r:Lmk;

    :cond_1
    iput-object v1, p0, Lmk;->d:Lly;

    iput-object v1, p0, Lmk;->c:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method

.method public g(IIIII)I
    .locals 0

    packed-switch p5, :pswitch_data_0

    sub-int/2addr p4, p2

    return p4

    :pswitch_0
    sub-int/2addr p3, p1

    if-lez p3, :cond_0

    return p3

    :cond_0
    sub-int/2addr p4, p2

    if-gez p4, :cond_1

    return p4

    :cond_1
    const/4 p1, 0x0

    return p1

    :pswitch_1
    sub-int/2addr p3, p1

    return p3

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public h(Landroid/view/View;I)I
    .locals 10

    iget-object v0, p0, Lmk;->d:Lly;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lly;->V()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Llz;

    invoke-static {p1}, Lly;->bp(Landroid/view/View;)I

    move-result v2

    iget v3, v1, Llz;->leftMargin:I

    sub-int v5, v2, v3

    invoke-static {p1}, Lly;->bq(Landroid/view/View;)I

    move-result p1

    iget v1, v1, Llz;->rightMargin:I

    add-int v6, p1, v1

    invoke-virtual {v0}, Lly;->aq()I

    move-result v7

    iget p1, v0, Lly;->A:I

    invoke-virtual {v0}, Lly;->ar()I

    move-result v0

    sub-int v8, p1, v0

    move-object v4, p0

    move v9, p2

    invoke-virtual/range {v4 .. v9}, Lmk;->g(IIIII)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public i(Landroid/view/View;I)I
    .locals 10

    iget-object v0, p0, Lmk;->d:Lly;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lly;->W()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Llz;

    invoke-static {p1}, Lly;->br(Landroid/view/View;)I

    move-result v2

    iget v3, v1, Llz;->topMargin:I

    sub-int v5, v2, v3

    invoke-static {p1}, Lly;->bo(Landroid/view/View;)I

    move-result p1

    iget v1, v1, Llz;->bottomMargin:I

    add-int v6, p1, v1

    invoke-virtual {v0}, Lly;->as()I

    move-result v7

    iget p1, v0, Lly;->B:I

    invoke-virtual {v0}, Lly;->ap()I

    move-result v0

    sub-int v8, p1, v0

    move-object v4, p0

    move v9, p2

    invoke-virtual/range {v4 .. v9}, Lmk;->g(IIIII)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected j(I)I
    .locals 4

    invoke-virtual {p0, p1}, Lmk;->b(I)I

    move-result p1

    int-to-double v0, p1

    const-wide v2, 0x3fd57a786c22680aL    # 0.3356

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method protected k()I
    .locals 3

    iget-object v0, p0, Lmk;->k:Landroid/graphics/PointF;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmk;->k:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method protected l()I
    .locals 3

    iget-object v0, p0, Lmk;->k:Landroid/graphics/PointF;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmk;->k:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method protected m(Lmi;)V
    .locals 5

    iget v0, p0, Lmk;->b:I

    invoke-virtual {p0, v0}, Lmk;->d(I)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lmk;->o(Landroid/graphics/PointF;)V

    iput-object v0, p0, Lmk;->k:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    const v2, 0x461c4000    # 10000.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, Lmk;->l:I

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float v0, v0, v2

    float-to-int v0, v0

    iput v0, p0, Lmk;->m:I

    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Lmk;->b(I)I

    move-result v0

    iget v1, p0, Lmk;->l:I

    int-to-float v1, v1

    iget v2, p0, Lmk;->m:I

    int-to-float v2, v2

    int-to-float v0, v0

    iget-object v3, p0, Lmk;->i:Landroid/view/animation/LinearInterpolator;

    const v4, 0x3f99999a    # 1.2f

    mul-float v1, v1, v4

    float-to-int v1, v1

    mul-float v2, v2, v4

    float-to-int v2, v2

    mul-float v0, v0, v4

    float-to-int v0, v0

    invoke-virtual {p1, v1, v2, v0, v3}, Lmi;->b(IIILandroid/view/animation/Interpolator;)V

    return-void

    :cond_1
    :goto_0
    iget v0, p0, Lmk;->b:I

    iput v0, p1, Lmi;->a:I

    invoke-virtual {p0}, Lmk;->f()V

    return-void
.end method
