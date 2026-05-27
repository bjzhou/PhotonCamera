.class public Lavf;
.super Landroid/widget/FrameLayout;


# instance fields
.field final a:Ljava/util/ArrayList;

.field private final b:Landroid/content/Context;

.field private c:Lave;

.field private final d:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lavf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lavf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lavf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    iput-object p2, p0, Lavf;->c:Lave;

    new-instance p3, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-direct {p3, p0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;-><init>(Lavf;)V

    iput-object p3, p0, Lavf;->d:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lavf;->a:Ljava/util/ArrayList;

    iput-object p1, p0, Lavf;->b:Landroid/content/Context;

    const p4, 0x10103f3

    filled-new-array {p4}, [I

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p4, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    goto :goto_0

    :cond_0
    :goto_0
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_1

    iget-object p2, p0, Lavf;->c:Lave;

    if-nez p2, :cond_2

    new-instance p2, Lave;

    invoke-direct {p2, p1, p0}, Lave;-><init>(Landroid/content/Context;Lavf;)V

    iput-object p2, p0, Lavf;->c:Lave;

    iput-object p3, p2, Lave;->n:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    return-void

    :cond_1
    iget-object p1, p0, Lavf;->c:Lave;

    if-eqz p1, :cond_2

    iput-object p2, p1, Lave;->n:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    iput-object p2, p0, Lavf;->c:Lave;

    :cond_2
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    iget-object v0, p0, Lavf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lavf;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/wear/ambient/AmbientMode$AmbientCallback;

    const/4 v0, 0x0

    throw v0
.end method

.method protected b()V
    .locals 2

    iget-object v0, p0, Lavf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lavf;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/wear/ambient/AmbientMode$AmbientCallback;

    const/4 v0, 0x0

    throw v0
.end method

.method protected c()V
    .locals 2

    iget-object v0, p0, Lavf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lavf;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/wear/ambient/AmbientMode$AmbientCallback;

    const/4 v0, 0x0

    throw v0
.end method

.method public final canScrollHorizontally(I)Z
    .locals 1

    iget-object v0, p0, Lavf;->c:Lave;

    if-eqz v0, :cond_1

    if-gez p1, :cond_0

    iget-object p1, v0, Lave;->a:Lavf;

    invoke-virtual {p1}, Lavf;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->canScrollHorizontally(I)Z

    move-result p1

    return p1
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    iget-object v6, p0, Lavf;->c:Lave;

    if-eqz v6, :cond_7

    invoke-virtual {v6, p1}, Lave;->a(Landroid/view/MotionEvent;)V

    iget-boolean v0, v6, Lave;->m:Z

    const/4 v7, 0x1

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float v8, v0, v1

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v10, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, v6, Lave;->f:I

    if-ne v1, v2, :cond_4

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Lave;->f:I

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Lave;->f:I

    goto/16 :goto_1

    :pswitch_3
    iget-object v0, v6, Lave;->e:Lavm;

    iget-object v0, v0, Lavm;->f:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_4

    iget-boolean v0, v6, Lave;->l:Z

    if-nez v0, :cond_4

    iget v0, v6, Lave;->f:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const-string v0, "SwipeDismissController"

    const-string v1, "Invalid pointer index: ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, v6, Lave;->l:Z

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, v6, Lave;->g:F

    sub-float v3, v1, v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    cmpl-float v0, v3, v9

    if-eqz v0, :cond_3

    iget v0, v6, Lave;->g:F

    iget v1, v6, Lave;->d:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    iget-object v1, v6, Lave;->a:Lavf;

    const/4 v2, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lave;->d(Landroid/view/View;ZFFF)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v7, v6, Lave;->l:Z

    goto :goto_1

    :cond_3
    invoke-virtual {v6, p1}, Lave;->c(Landroid/view/MotionEvent;)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {v6}, Lave;->b()V

    goto :goto_1

    :pswitch_5
    invoke-virtual {v6}, Lave;->b()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, v6, Lave;->g:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, v6, Lave;->h:F

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Lave;->f:I

    iget-object v0, v6, Lave;->e:Lavm;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, v0, Lavm;->f:Landroid/view/VelocityTracker;

    iget-object v0, v6, Lave;->e:Lavm;

    iget-object v0, v0, Lavm;->f:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_4
    :goto_1
    neg-float v0, v8

    invoke-virtual {p1, v0, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-boolean p1, v6, Lave;->l:Z

    if-nez p1, :cond_6

    iget-boolean p1, v6, Lave;->j:Z

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    return v7

    :cond_6
    :goto_2
    const/4 v7, 0x0

    :goto_3
    return v7

    :cond_7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v2, v1, Lavf;->c:Lave;

    if-eqz v2, :cond_10

    invoke-virtual {v2, v0}, Lave;->a(Landroid/view/MotionEvent;)V

    iget-boolean v3, v2, Lave;->m:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v3, v2, Lave;->e:Lavm;

    iget-object v3, v3, Lavm;->f:Landroid/view/VelocityTracker;

    if-nez v3, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v3, v5

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/high16 v7, -0x31000000

    const/4 v8, 0x0

    const/16 v9, 0x3e8

    const/4 v10, 0x0

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object v6, v2, Lave;->e:Lavm;

    iget-object v6, v6, Lavm;->f:Landroid/view/VelocityTracker;

    invoke-virtual {v6, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iput v6, v2, Lave;->i:F

    invoke-virtual {v2, v0}, Lave;->c(Landroid/view/MotionEvent;)V

    iget-boolean v6, v2, Lave;->j:Z

    if-eqz v6, :cond_f

    iget-object v6, v2, Lave;->e:Lavm;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    iget v2, v2, Lave;->g:F

    sub-float/2addr v7, v2

    iget-boolean v2, v6, Lavm;->g:Z

    if-nez v2, :cond_5

    iput-boolean v4, v6, Lavm;->g:Z

    iget-object v2, v6, Lavm;->a:Lavf;

    invoke-virtual {v2}, Lavf;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    iget-object v2, v6, Lavm;->a:Lavf;

    invoke-virtual {v2}, Lavf;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_2
    move-object v2, v10

    :goto_0
    iget-object v8, v6, Lavm;->c:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    if-eq v8, v2, :cond_4

    iget-object v8, v6, Lavm;->c:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, v6, Lavm;->a:Lavf;

    invoke-virtual {v2}, Lavf;->bringToFront()V

    :cond_4
    iget-object v2, v6, Lavm;->e:Landroid/graphics/Paint;

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v2, v6, Lavm;->a:Lavf;

    iget-object v8, v6, Lavm;->e:Landroid/graphics/Paint;

    const/4 v9, 0x2

    invoke-virtual {v2, v9, v8}, Lavf;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v2, v6, Lavm;->a:Lavf;

    iget-boolean v8, v6, Lavm;->d:Z

    invoke-static {v2, v8}, Lavm;->b(Landroid/view/View;Z)V

    :cond_5
    :goto_1
    iget-object v2, v6, Lavm;->f:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v2, v6, Lavm;->a:Lavf;

    invoke-virtual {v2}, Lavf;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v7, v2

    iput v7, v6, Lavm;->j:F

    const v2, -0x41666666    # -0.3f

    mul-float v7, v7, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v7, v2

    iput v7, v6, Lavm;->i:F

    sub-float/2addr v2, v7

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v7, v6, Lavm;->a:Lavf;

    invoke-virtual {v7}, Lavf;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float v2, v2, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v2, v7

    iput v2, v6, Lavm;->h:F

    iget v2, v6, Lavm;->j:F

    div-float/2addr v2, v7

    const v7, 0x3e99999a    # 0.3f

    invoke-static {v7, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v6, Lavm;->k:F

    invoke-virtual {v6}, Lavm;->e()V

    goto/16 :goto_3

    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iget v11, v2, Lave;->g:F

    sub-float/2addr v6, v11

    iget-object v11, v2, Lave;->e:Lavm;

    iget-object v11, v11, Lavm;->f:Landroid/view/VelocityTracker;

    invoke-virtual {v11, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v12

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v11

    iget v13, v2, Lave;->i:F

    cmpl-float v13, v13, v7

    if-nez v13, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v14

    sub-long/2addr v12, v14

    long-to-float v12, v12

    const/high16 v13, 0x447a0000    # 1000.0f

    div-float/2addr v12, v13

    div-float v12, v6, v12

    :cond_6
    iget-boolean v13, v2, Lave;->k:Z

    if-nez v13, :cond_9

    iget-object v13, v2, Lave;->a:Lavf;

    invoke-virtual {v13}, Lavf;->getWidth()I

    move-result v13

    int-to-float v13, v13

    const v14, 0x3ea8f5c3    # 0.33f

    mul-float v13, v13, v14

    cmpl-float v6, v6, v13

    if-lez v6, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iget v13, v2, Lave;->i:F

    cmpl-float v6, v6, v13

    if-gez v6, :cond_8

    :cond_7
    iget v6, v2, Lave;->c:I

    int-to-float v6, v6

    cmpl-float v6, v12, v6

    if-ltz v6, :cond_9

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v12, v6

    if-lez v6, :cond_9

    :cond_8
    iput-boolean v4, v2, Lave;->k:Z

    :cond_9
    iget-boolean v6, v2, Lave;->k:Z

    if-eqz v6, :cond_a

    iget-boolean v6, v2, Lave;->j:Z

    if-eqz v6, :cond_a

    iget v6, v2, Lave;->c:I

    neg-int v6, v6

    int-to-float v6, v6

    cmpg-float v6, v12, v6

    if-gez v6, :cond_a

    iput-boolean v8, v2, Lave;->k:Z

    :cond_a
    :pswitch_2
    iget-boolean v6, v2, Lave;->k:Z

    if-eqz v6, :cond_d

    iget-object v6, v2, Lave;->e:Lavm;

    iget-object v7, v2, Lave;->n:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    iget-object v8, v6, Lavm;->f:Landroid/view/VelocityTracker;

    if-nez v8, :cond_b

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, v6, Lavm;->f:Landroid/view/VelocityTracker;

    :cond_b
    iget-object v8, v6, Lavm;->f:Landroid/view/VelocityTracker;

    invoke-virtual {v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    if-eqz v7, :cond_c

    iget-object v8, v7, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    check-cast v8, Lavf;

    invoke-virtual {v8}, Lavf;->c()V

    :cond_c
    iget v12, v6, Lavm;->h:F

    iget v8, v6, Lavm;->b:I

    int-to-float v13, v8

    iget-object v8, v6, Lavm;->f:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v14

    new-instance v15, Lavj;

    invoke-direct {v15, v6, v4}, Lavj;-><init>(Lavm;I)V

    new-instance v8, Lavk;

    invoke-direct {v8, v6, v7, v4, v10}, Lavk;-><init>(Lavm;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;I[B)V

    move-object v11, v6

    move-object/from16 v16, v8

    invoke-virtual/range {v11 .. v16}, Lavm;->a(FFFLaiq;Laip;)Laiv;

    move-result-object v7

    iput-object v7, v6, Lavm;->l:Laiv;

    goto :goto_2

    :cond_d
    iget-boolean v6, v2, Lave;->j:Z

    if-eqz v6, :cond_e

    iget v6, v2, Lave;->i:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_e

    iget-object v6, v2, Lave;->e:Lavm;

    iget-object v7, v2, Lave;->n:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    iget-object v11, v6, Lavm;->f:Landroid/view/VelocityTracker;

    invoke-virtual {v11, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget v12, v6, Lavm;->h:F

    const/4 v13, 0x0

    iget-object v9, v6, Lavm;->f:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v14

    new-instance v15, Lavj;

    invoke-direct {v15, v6, v8}, Lavj;-><init>(Lavm;I)V

    new-instance v9, Lavk;

    invoke-direct {v9, v6, v7, v8, v10}, Lavk;-><init>(Lavm;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;I[B)V

    move-object v11, v6

    move-object/from16 v16, v9

    invoke-virtual/range {v11 .. v16}, Lavm;->a(FFFLaiq;Laip;)Laiv;

    move-result-object v7

    iput-object v7, v6, Lavm;->m:Laiv;

    :cond_e
    :goto_2
    invoke-virtual {v2}, Lave;->b()V

    :cond_f
    :goto_3
    neg-float v2, v3

    invoke-virtual {v0, v2, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :goto_4
    return v4

    :cond_10
    :goto_5
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final requestDisallowInterceptTouchEvent(Z)V
    .locals 2

    iget-object v0, p0, Lavf;->c:Lave;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lave;->a:Lavf;

    invoke-virtual {v1}, Lavf;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lave;->a:Lavf;

    invoke-virtual {v0}, Lavf;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method
