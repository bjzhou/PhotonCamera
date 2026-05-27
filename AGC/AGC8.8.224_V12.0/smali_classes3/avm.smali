.class final Lavm;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lavf;

.field public final b:I

.field public final c:Landroid/view/View;

.field public final d:Z

.field public final e:Landroid/graphics/Paint;

.field public f:Landroid/view/VelocityTracker;

.field public g:Z

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:Laiv;

.field public m:Laiv;

.field private final n:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lavf;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lavm;->n:Landroid/util/SparseArray;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lavm;->e:Landroid/graphics/Paint;

    iput-object p2, p0, Lavm;->a:Lavf;

    invoke-virtual {p2}, Lavf;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result p2

    iput-boolean p2, p0, Lavm;->d:Z

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lavm;->b:I

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lavm;->c:Landroid/view/View;

    invoke-static {v0, p2}, Lavm;->b(Landroid/view/View;Z)V

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 p1, -0x1000000

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public static b(Landroid/view/View;Z)V
    .locals 1

    new-instance v0, Lavl;

    invoke-direct {v0, p1}, Lavl;-><init>(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method


# virtual methods
.method public final a(FFFLaiq;Laip;)Laiv;
    .locals 3

    new-instance v0, Laiv;

    new-instance v1, Lgtb;

    invoke-direct {v1}, Lgtb;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Laiv;-><init>(Lgtb;[B)V

    invoke-virtual {v0, p1}, Lais;->i(F)V

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, v0, Lais;->p:F

    new-instance p1, Laiw;

    invoke-direct {p1}, Laiw;-><init>()V

    invoke-virtual {p1, p2}, Laiw;->d(F)V

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Laiw;->c(F)V

    const/high16 p2, 0x44160000    # 600.0f

    invoke-virtual {p1, p2}, Laiw;->e(F)V

    invoke-virtual {v0}, Lais;->h()V

    iget p2, p0, Lavm;->b:I

    int-to-float p2, p2

    iput p2, v0, Lais;->n:F

    iput p3, v0, Lais;->h:F

    iput-object p1, v0, Laiv;->q:Laiw;

    invoke-virtual {v0, p4}, Lais;->g(Laiq;)V

    invoke-virtual {v0, p5}, Lais;->f(Laip;)V

    invoke-virtual {v0}, Lais;->d()V

    return-object v0
.end method

.method public final c(F)V
    .locals 2

    iget-object v0, p0, Lavm;->a:Lavf;

    invoke-virtual {v0}, Lavf;->getWidth()I

    move-result v0

    iput p1, p0, Lavm;->h:F

    int-to-float v0, v0

    add-float/2addr p1, p1

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    iput p1, p0, Lavm;->i:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const v0, 0x3f333333    # 0.7f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lavm;->i:F

    const/high16 v0, -0x40800000    # -1.0f

    add-float/2addr p1, v0

    const v0, -0x41666666    # -0.3f

    div-float/2addr p1, v0

    iget v0, p0, Lavm;->j:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    iput p1, p0, Lavm;->j:F

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    const v0, 0x3e99999a    # 0.3f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lavm;->k:F

    invoke-virtual {p0}, Lavm;->e()V

    return-void
.end method

.method public final d()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lavm;->g:Z

    const/4 v1, 0x0

    iput v1, p0, Lavm;->h:F

    iput v1, p0, Lavm;->j:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lavm;->i:F

    iget-object v3, p0, Lavm;->a:Lavf;

    invoke-virtual {v3, v1}, Lavf;->setTranslationX(F)V

    iget-object v3, p0, Lavm;->a:Lavf;

    invoke-virtual {v3, v2}, Lavf;->setScaleX(F)V

    iget-object v3, p0, Lavm;->a:Lavf;

    invoke-virtual {v3, v2}, Lavf;->setScaleY(F)V

    iget-object v3, p0, Lavm;->a:Lavf;

    invoke-virtual {v3, v2}, Lavf;->setAlpha(F)V

    iget-object v2, p0, Lavm;->c:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lavm;->e:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v1, p0, Lavm;->a:Lavf;

    invoke-virtual {v1, v0, v2}, Lavf;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v1, p0, Lavm;->a:Lavf;

    invoke-virtual {v1, v0}, Lavf;->setClipToOutline(Z)V

    return-void
.end method

.method public final e()V
    .locals 6

    iget-object v0, p0, Lavm;->a:Lavf;

    iget v1, p0, Lavm;->i:F

    invoke-virtual {v0, v1}, Lavf;->setScaleX(F)V

    iget-object v0, p0, Lavm;->a:Lavf;

    iget v1, p0, Lavm;->i:F

    invoke-virtual {v0, v1}, Lavf;->setScaleY(F)V

    iget-object v0, p0, Lavm;->a:Lavf;

    iget v1, p0, Lavm;->h:F

    invoke-virtual {v0, v1}, Lavf;->setTranslationX(F)V

    iget-object v0, p0, Lavm;->e:Landroid/graphics/Paint;

    iget v1, p0, Lavm;->k:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    iget-object v4, p0, Lavm;->n:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/ColorFilter;

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v3, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v3, p0, Lavm;->n:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lavm;->a:Lavf;

    iget-object v1, p0, Lavm;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Lavf;->setLayerPaint(Landroid/graphics/Paint;)V

    iget v0, p0, Lavm;->j:F

    sub-float/2addr v2, v0

    iget-object v0, p0, Lavm;->c:Landroid/view/View;

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
