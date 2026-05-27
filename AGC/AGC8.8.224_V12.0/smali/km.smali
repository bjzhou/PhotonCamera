.class public Lkm;
.super Landroid/widget/ListView;


# instance fields
.field public a:Z

.field public b:Lbe;

.field private final c:Landroid/graphics/Rect;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Lkl;

.field private final j:Z

.field private k:Z

.field private l:Lahf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7f04024d

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lkm;->c:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput p1, p0, Lkm;->d:I

    iput p1, p0, Lkm;->e:I

    iput p1, p0, Lkm;->f:I

    iput p1, p0, Lkm;->g:I

    iput-boolean p2, p0, Lkm;->j:Z

    invoke-virtual {p0, p1}, Lkm;->setCacheColorHint(I)V

    return-void
.end method

.method private final c(Z)V
    .locals 1

    iget-object v0, p0, Lkm;->i:Lkl;

    if-eqz v0, :cond_0

    iput-boolean p1, v0, Lkl;->a:Z

    :cond_0
    return-void
.end method

.method private final d()V
    .locals 2

    invoke-virtual {p0}, Lkm;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lkm;->k:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lkm;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lkm;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;I)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_5

    :pswitch_0
    const/4 v5, 0x0

    goto/16 :goto_5

    :pswitch_1
    const/4 v5, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v5, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    if-gez v6, :cond_0

    const/4 v5, 0x0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v0, v7, v6}, Lkm;->pointToPosition(II)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    const/4 v4, 0x1

    goto/16 :goto_5

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lkm;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, v8, v5

    invoke-virtual {v0, v5}, Lkm;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    int-to-float v7, v7

    int-to-float v6, v6

    iput-boolean v3, v0, Lkm;->k:Z

    invoke-static {v0, v7, v6}, Lki;->a(Landroid/view/View;FF)V

    invoke-virtual/range {p0 .. p0}, Lkm;->isPressed()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v0, v3}, Lkm;->setPressed(Z)V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lkm;->layoutChildren()V

    iget v10, v0, Lkm;->h:I

    if-eq v10, v9, :cond_3

    invoke-virtual/range {p0 .. p0}, Lkm;->getFirstVisiblePosition()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v0, v10}, Lkm;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_3

    if-eq v10, v5, :cond_3

    invoke-virtual {v10}, Landroid/view/View;->isPressed()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v10, v4}, Landroid/view/View;->setPressed(Z)V

    :cond_3
    iput v8, v0, Lkm;->h:I

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v10

    int-to-float v10, v10

    sub-float v10, v7, v10

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v11

    int-to-float v11, v11

    sub-float v11, v6, v11

    invoke-static {v5, v10, v11}, Lki;->a(Landroid/view/View;FF)V

    invoke-virtual {v5}, Landroid/view/View;->isPressed()Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v5, v3}, Landroid/view/View;->setPressed(Z)V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lkm;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v10, :cond_6

    if-eq v8, v9, :cond_5

    move v11, v8

    const/4 v12, 0x1

    goto :goto_2

    :cond_5
    const/4 v8, -0x1

    const/4 v11, -0x1

    goto :goto_1

    :cond_6
    move v11, v8

    :goto_1
    const/4 v12, 0x0

    :goto_2
    if-eqz v12, :cond_7

    invoke-virtual {v10, v4, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_7
    iget-object v13, v0, Lkm;->c:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v14

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {v13, v14, v15, v4, v9}, Landroid/graphics/Rect;->set(IIII)V

    iget v4, v13, Landroid/graphics/Rect;->left:I

    iget v9, v0, Lkm;->d:I

    sub-int/2addr v4, v9

    iput v4, v13, Landroid/graphics/Rect;->left:I

    iget v4, v13, Landroid/graphics/Rect;->top:I

    iget v9, v0, Lkm;->e:I

    sub-int/2addr v4, v9

    iput v4, v13, Landroid/graphics/Rect;->top:I

    iget v4, v13, Landroid/graphics/Rect;->right:I

    iget v9, v0, Lkm;->f:I

    add-int/2addr v4, v9

    iput v4, v13, Landroid/graphics/Rect;->right:I

    iget v4, v13, Landroid/graphics/Rect;->bottom:I

    iget v9, v0, Lkm;->g:I

    add-int/2addr v4, v9

    iput v4, v13, Landroid/graphics/Rect;->bottom:I

    sget v4, Ladg;->a:I

    invoke-static/range {p0 .. p0}, Lkk;->b(Landroid/widget/AbsListView;)Z

    move-result v4

    invoke-virtual {v5}, Landroid/view/View;->isEnabled()Z

    move-result v9

    if-eq v9, v4, :cond_8

    xor-int/2addr v4, v3

    invoke-static {v0, v4}, Lkk;->a(Landroid/widget/AbsListView;Z)V

    const/4 v4, -0x1

    if-eq v8, v4, :cond_8

    invoke-virtual/range {p0 .. p0}, Lkm;->refreshDrawableState()V

    :cond_8
    if-eqz v12, :cond_a

    iget-object v4, v0, Lkm;->c:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lkm;->getVisibility()I

    move-result v9

    if-nez v9, :cond_9

    const/4 v9, 0x1

    goto :goto_3

    :cond_9
    const/4 v9, 0x0

    :goto_3
    const/4 v12, 0x0

    invoke-virtual {v10, v9, v12}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    invoke-static {v10, v8, v4}, Lacv;->d(Landroid/graphics/drawable/Drawable;FF)V

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lkm;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_b

    const/4 v8, -0x1

    if-eq v11, v8, :cond_b

    invoke-static {v4, v7, v6}, Lacv;->d(Landroid/graphics/drawable/Drawable;FF)V

    :cond_b
    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lkm;->c(Z)V

    invoke-virtual/range {p0 .. p0}, Lkm;->refreshDrawableState()V

    if-ne v2, v3, :cond_c

    invoke-virtual {v0, v11}, Lkm;->getItemIdAtPosition(I)J

    move-result-wide v6

    invoke-virtual {v0, v5, v11, v6, v7}, Lkm;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_4

    :cond_c
    :goto_4
    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_5
    if-eqz v5, :cond_d

    if-eqz v4, :cond_e

    :cond_d
    const/4 v2, 0x0

    iput-boolean v2, v0, Lkm;->k:Z

    invoke-virtual {v0, v2}, Lkm;->setPressed(Z)V

    invoke-virtual/range {p0 .. p0}, Lkm;->drawableStateChanged()V

    iget v4, v0, Lkm;->h:I

    invoke-virtual/range {p0 .. p0}, Lkm;->getFirstVisiblePosition()I

    move-result v6

    sub-int/2addr v4, v6

    invoke-virtual {v0, v4}, Lkm;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {v4, v2}, Landroid/view/View;->setPressed(Z)V

    :cond_e
    if-eqz v5, :cond_10

    iget-object v2, v0, Lkm;->l:Lahf;

    if-nez v2, :cond_f

    new-instance v2, Lahf;

    invoke-direct {v2, v0}, Lahf;-><init>(Landroid/widget/ListView;)V

    iput-object v2, v0, Lkm;->l:Lahf;

    :cond_f
    iget-object v2, v0, Lkm;->l:Lahf;

    invoke-virtual {v2, v3}, Lahf;->c(Z)V

    iget-object v2, v0, Lkm;->l:Lahf;

    invoke-virtual {v2, v0, v1}, Lahf;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_6

    :cond_10
    iget-object v1, v0, Lkm;->l:Lahf;

    if-eqz v1, :cond_11

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lahf;->c(Z)V

    :cond_11
    :goto_6
    return v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(II)I
    .locals 11

    invoke-virtual {p0}, Lkm;->getListPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lkm;->getListPaddingBottom()I

    move-result v1

    invoke-virtual {p0}, Lkm;->getDividerHeight()I

    move-result v2

    invoke-virtual {p0}, Lkm;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0}, Lkm;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    add-int/2addr v0, v1

    if-nez v4, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-lez v2, :cond_1

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    const/4 v5, 0x0

    move-object v8, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v6, v3, :cond_8

    invoke-interface {v4, v6}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v9

    if-eq v9, v7, :cond_2

    move v10, v9

    goto :goto_2

    :cond_2
    move v10, v7

    :goto_2
    if-eq v9, v7, :cond_3

    move-object v8, v5

    :cond_3
    invoke-interface {v4, v6, v8, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    if-nez v7, :cond_4

    invoke-virtual {p0}, Lkm;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget v9, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v9, :cond_5

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_3

    :cond_5
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    :goto_3
    invoke-virtual {v8, p1, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual {v8}, Landroid/view/View;->forceLayout()V

    if-lez v6, :cond_6

    add-int/2addr v0, v2

    :cond_6
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v0, v7

    if-lt v0, p2, :cond_7

    return p2

    :cond_7
    add-int/lit8 v6, v6, 0x1

    move v7, v10

    goto :goto_1

    :cond_8
    return v0
.end method

.method protected final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lkm;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkm;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lkm;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final drawableStateChanged()V
    .locals 1

    iget-object v0, p0, Lkm;->b:Lbe;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->drawableStateChanged()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkm;->c(Z)V

    invoke-direct {p0}, Lkm;->d()V

    return-void
.end method

.method public final hasFocus()Z
    .locals 1

    iget-boolean v0, p0, Lkm;->j:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v0

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

.method public final hasWindowFocus()Z
    .locals 1

    iget-boolean v0, p0, Lkm;->j:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

    move-result v0

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

.method public final isFocused()Z
    .locals 1

    iget-boolean v0, p0, Lkm;->j:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

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

.method public final isInTouchMode()Z
    .locals 1

    iget-boolean v0, p0, Lkm;->j:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lkm;->a:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lkm;->b:Lbe;

    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lkm;->b:Lbe;

    if-nez v0, :cond_0

    new-instance v0, Lbe;

    const/16 v2, 0xd

    invoke-direct {v0, p0, v2}, Lbe;-><init>(Lkm;I)V

    iput-object v0, p0, Lkm;->b:Lbe;

    iget-object v2, v0, Lbe;->a:Ljava/lang/Object;

    check-cast v2, Lkm;

    invoke-virtual {v2, v0}, Lkm;->post(Ljava/lang/Runnable;)Z

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    const/16 v2, 0x9

    const/4 v3, -0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v3}, Lkm;->setSelection(I)V

    goto/16 :goto_3

    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Lkm;->pointToPosition(II)I

    move-result p1

    if-eq p1, v3, :cond_6

    invoke-virtual {p0}, Lkm;->getSelectedItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_6

    invoke-virtual {p0}, Lkm;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lkm;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lkm;->requestFocus()Z

    sget-boolean v2, Lkj;->d:Z

    if-eqz v2, :cond_4

    :try_start_0
    sget-object v2, Lkj;->a:Ljava/lang/reflect/Method;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v6, 0x1

    aput-object v0, v4, v6

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v7, 0x2

    aput-object v0, v4, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v4, v3

    const/4 v3, 0x4

    aput-object v0, v4, v3

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkj;->b:Ljava/lang/reflect/Method;

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkj;->c:Ljava/lang/reflect/Method;

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lkm;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0, p1, v0}, Lkm;->setSelectionFromTop(II)V

    :cond_5
    :goto_2
    invoke-direct {p0}, Lkm;->d()V

    :cond_6
    :goto_3
    return v1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lkm;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lkm;->h:I

    :goto_0
    iget-object v0, p0, Lkm;->b:Lbe;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lbe;->a:Ljava/lang/Object;

    check-cast v1, Lkm;

    const/4 v2, 0x0

    iput-object v2, v1, Lkm;->b:Lbe;

    invoke-virtual {v1, v0}, Lkm;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lkl;

    invoke-direct {v0, p1}, Lkl;-><init>(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lkm;->i:Lkl;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :cond_1
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iput p1, p0, Lkm;->d:I

    iget p1, v0, Landroid/graphics/Rect;->top:I

    iput p1, p0, Lkm;->e:I

    iget p1, v0, Landroid/graphics/Rect;->right:I

    iput p1, p0, Lkm;->f:I

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Lkm;->g:I

    return-void
.end method
