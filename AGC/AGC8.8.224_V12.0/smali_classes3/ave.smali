.class final Lave;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Lavf;

.field public final b:F

.field public final c:I

.field public final d:F

.field public final e:Lavm;

.field public f:I

.field public g:F

.field public h:F

.field public i:F

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field protected n:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

.field private final o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lavf;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lave;->a:Lavf;

    const v0, 0x3ea8f5c3    # 0.33f

    iput v0, p0, Lave;->b:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lave;->m:Z

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lave;->o:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lave;->c:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float v0, v0, v1

    iput v0, p0, Lave;->d:F

    new-instance v0, Lavm;

    invoke-direct {v0, p1, p2}, Lavm;-><init>(Landroid/content/Context;Lavf;)V

    iput-object v0, p0, Lave;->e:Lavm;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lave;->e:Lavm;

    iget-object v0, p1, Lavm;->l:Laiv;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lais;->m:Z

    if-nez v0, :cond_2

    :cond_0
    iget-object p1, p1, Lavm;->m:Laiv;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean p1, p1, Lais;->m:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    iput-boolean v1, p0, Lave;->m:Z

    :cond_3
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lave;->e:Lavm;

    iget-object v0, v0, Lavm;->f:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    :cond_0
    iget-object v0, p0, Lave;->e:Lavm;

    const/4 v1, 0x0

    iput-object v1, v0, Lavm;->f:Landroid/view/VelocityTracker;

    const/4 v0, 0x0

    iput v0, p0, Lave;->g:F

    iput v0, p0, Lave;->h:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lave;->j:Z

    const/high16 v1, -0x31000000

    iput v1, p0, Lave;->i:F

    iput-boolean v0, p0, Lave;->k:Z

    iput-boolean v0, p0, Lave;->l:Z

    return-void
.end method

.method public final c(Landroid/view/MotionEvent;)V
    .locals 5

    iget-boolean v0, p0, Lave;->j:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lave;->g:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v1, p0, Lave;->h:F

    sub-float/2addr p1, v1

    iget v1, p0, Lave;->o:I

    mul-int v2, v1, v1

    mul-float v3, v0, v0

    mul-float v4, p1, p1

    add-float/2addr v3, v4

    int-to-float v2, v2

    const/4 v4, 0x0

    cmpl-float v2, v3, v2

    if-lez v2, :cond_0

    add-int/2addr v1, v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    :goto_0
    iput-boolean v4, p0, Lave;->j:Z

    :cond_1
    return-void
.end method

.method protected final d(Landroid/view/View;ZFFF)Z
    .locals 12

    move-object v0, p1

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_0
    if-ltz v5, :cond_2

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    int-to-float v6, v3

    add-float v6, p4, v6

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, v6, v8

    if-ltz v8, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v8, v6, v8

    if-gez v8, :cond_1

    int-to-float v8, v4

    add-float v8, p5, v8

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v8, v9

    if-ltz v9, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v9, v8, v9

    if-gez v9, :cond_1

    const/4 v9, 0x1

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    int-to-float v11, v11

    sub-float v11, v8, v11

    sub-float v10, v6, v10

    move-object v6, p0

    move v8, v9

    move v9, p3

    invoke-virtual/range {v6 .. v11}, Lave;->d(Landroid/view/View;ZFFF)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    return v2

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    move v1, p3

    neg-float v1, v1

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    const/4 v0, 0x0

    return v0
.end method
