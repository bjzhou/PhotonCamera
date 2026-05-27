.class public final Liks;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Liks;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Liks;->a:I

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Liks;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liks;->b:Ljava/lang/Object;

    iput-object p2, p0, Liks;->c:Ljava/lang/Object;

    iput p3, p0, Liks;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/view/Window;Lilz;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    iput p3, p0, Liks;->a:I

    iput-object p1, p0, Liks;->b:Ljava/lang/Object;

    iput-object p2, p0, Liks;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lbsa;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbrz;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lbrz;-><init>(Liks;I[B)V

    const/16 v1, 0x96

    invoke-static {v1, v0}, Lcbd;->b(ILcaz;)Laed;

    move-result-object v0

    iput-object v0, p0, Liks;->b:Ljava/lang/Object;

    iput-object p1, p0, Liks;->c:Ljava/lang/Object;

    return-void
.end method

.method public static final j(JJ)J
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    return-wide p2

    :cond_0
    const-wide/16 v0, 0x4

    div-long/2addr p0, v0

    const-wide/16 v2, 0x3

    mul-long p0, p0, v2

    div-long/2addr p2, v0

    add-long/2addr p0, p2

    return-wide p0
.end method

.method public static k(I)Liks;
    .locals 2

    new-instance v0, Liks;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p0}, Liks;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget v0, p0, Liks;->a:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Llkj;->x(Z)V

    iget v0, p0, Liks;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Liks;->a:I

    if-nez v0, :cond_1

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, v0}, Liks;->d(F)V

    :cond_1
    return-void
.end method

.method public final b(I)V
    .locals 2

    iget-object v0, p0, Liks;->c:Ljava/lang/Object;

    check-cast v0, Lilz;

    iget v0, v0, Lilz;->a:F

    int-to-float p1, p1

    div-float/2addr p1, v0

    const v0, 0x402f53ce

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const v1, 0x3f2ac083    # 0.667f

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const v1, 0x3f2b573f    # 0.6693f

    div-float/2addr v1, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const v1, -0x40d4a8c1    # -0.6693f

    add-float/2addr p1, v1

    const v1, 0x40418765

    mul-float p1, p1, v1

    sub-float/2addr v0, p1

    const v1, 0x3ef5c28f    # 0.48f

    mul-float v0, v0, v1

    const v1, 0x3f266666    # 0.65f

    mul-float p1, p1, v1

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Liks;->d(F)V

    iget p1, p0, Liks;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Liks;->a:I

    return-void
.end method

.method public final c()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Liks;->d(F)V

    iget v0, p0, Liks;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Liks;->a:I

    return-void
.end method

.method public final d(F)V
    .locals 1

    iget-object v0, p0, Liks;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iget-object p1, p0, Liks;->b:Ljava/lang/Object;

    check-cast p1, Landroid/view/Window;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Liks;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Liks;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Liks;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g([I)Z
    .locals 2

    invoke-virtual {p0}, Liks;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Liks;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iget v0, p0, Liks;->a:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Liks;->a:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final h()Z
    .locals 1

    invoke-virtual {p0}, Liks;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Liks;->a:I

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

.method public final i(I)Lmc;
    .locals 2

    iget-object v0, p0, Liks;->c:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmc;

    if-nez v0, :cond_0

    new-instance v0, Lmc;

    invoke-direct {v0}, Lmc;-><init>()V

    iget-object v1, p0, Liks;->c:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method
