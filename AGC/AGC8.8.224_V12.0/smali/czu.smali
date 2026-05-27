.class final Lczu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lmtb;

.field final synthetic c:I

.field final synthetic d:Z

.field final synthetic e:Lczv;

.field final synthetic f:I


# direct methods
.method public constructor <init>(Lczv;ILmtb;IIZ)V
    .locals 0

    iput-object p1, p0, Lczu;->e:Lczv;

    iput p2, p0, Lczu;->a:I

    iput-object p3, p0, Lczu;->b:Lmtb;

    iput p4, p0, Lczu;->f:I

    iput p5, p0, Lczu;->c:I

    iput-boolean p6, p0, Lczu;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v1

    check-cast v2, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v0, Lczu;->a:I

    if-ne v3, v4, :cond_d

    iget-object v1, v0, Lczu;->b:Lmtb;

    iget v3, v0, Lczu;->f:I

    iget v4, v0, Lczu;->c:I

    iget-object v6, v0, Lczu;->e:Lczv;

    iget v6, v6, Lczv;->m:I

    invoke-virtual {v2}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->removeAllViews()V

    iget-object v7, v2, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-virtual {v2}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iput-object v1, v2, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->c:Lmtb;

    iput v3, v2, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->g:I

    iput v6, v2, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->e:I

    iput v4, v2, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->f:I

    invoke-virtual {v1}, Lmtb;->r()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v4, 0x1

    add-int/2addr v1, v4

    const v8, 0x7f0705e3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const v9, 0x7f0705e0

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const v10, 0x7f0705e5

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v11, 0x7f0705e2

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const v12, 0x7f0705e4

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    const v13, 0x7f0705e1

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    const v14, 0x7f0705de

    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    const v15, 0x7f0705ea

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    int-to-float v15, v15

    const v5, 0x7f0705e9

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-static {v5}, Likp;->a(F)F

    move-result v5

    const v4, 0x7f080321

    move/from16 p3, v8

    const/4 v8, 0x0

    invoke-virtual {v7, v4, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move/from16 p4, v9

    const v9, 0x7f080322

    invoke-virtual {v7, v9, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/4 v8, 0x0

    :goto_0
    move-object/from16 p7, v9

    if-ge v8, v1, :cond_9

    iget v9, v2, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->e:I

    if-ne v8, v9, :cond_0

    const-string v9, ""

    move/from16 p9, v1

    goto :goto_1

    :cond_0
    iget-object v9, v2, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->c:Lmtb;

    invoke-virtual {v2, v8}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->b(I)I

    move-result v16

    move/from16 p9, v1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Lmtb;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v9, 0x0

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    :goto_1
    iget v1, v2, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->g:I

    if-eqz v1, :cond_8

    move/from16 v16, v10

    const/4 v10, 0x1

    if-ne v1, v10, :cond_2

    iget v1, v2, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->e:I

    if-ne v8, v1, :cond_1

    invoke-virtual {v2}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v10, 0x7f140026

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_1
    iget-object v1, v2, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->c:Lmtb;

    add-int/lit8 v10, v8, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10}, Lmtb;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v10, 0x1

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_2

    :cond_2
    iget v1, v2, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->e:I

    if-ne v8, v1, :cond_3

    invoke-virtual {v2}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v10, 0x7f140026

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    iget-object v1, v2, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->c:Lmtb;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10}, Lmtb;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v10, 0x1

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_2
    new-instance v10, Landroid/widget/TextView;

    move/from16 v17, v11

    invoke-virtual {v2}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    move/from16 v18, v12

    const/4 v12, -0x2

    invoke-direct {v11, v12, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v12, 0x800013

    iput v12, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/16 v11, 0x11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setGravity(I)V

    const v11, 0x7f040181

    invoke-static {v10, v11}, Lkwp;->l(Landroid/view/View;I)I

    move-result v11

    invoke-virtual {v2, v10, v11}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->k(Landroid/widget/TextView;I)V

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextAlignment(I)V

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setLetterSpacing(F)V

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v1, Lhzz;

    const/4 v11, 0x1

    invoke-direct {v1, v2, v8, v11}, Lhzz;-><init>(Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;II)V

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v11, 0x2

    const/4 v12, 0x3

    if-le v1, v12, :cond_4

    move v9, v13

    move/from16 v1, v18

    goto :goto_3

    :cond_4
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v11, :cond_5

    move/from16 v1, v16

    move/from16 v9, v17

    goto :goto_3

    :cond_5
    move/from16 v1, p3

    move/from16 v9, p4

    :goto_3
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setMaxWidth(I)V

    if-ne v8, v6, :cond_7

    const v1, 0x7f0705d7

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v9, v1, 0x2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    div-int/2addr v12, v11

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    const/4 v1, 0x1

    if-eq v3, v1, :cond_6

    move-object/from16 v1, p7

    goto :goto_4

    :cond_6
    move-object v1, v4

    :goto_4
    const/4 v11, 0x0

    invoke-virtual {v10, v1, v11, v11, v11}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    sub-int/2addr v9, v12

    invoke-virtual {v10, v9, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    iget v9, v2, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->b:I

    invoke-virtual {v10, v9, v1, v9, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_5
    invoke-virtual {v2, v10, v8}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->addView(Landroid/view/View;I)V

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v9, p7

    move/from16 v1, p9

    move/from16 v10, v16

    move/from16 v11, v17

    move/from16 v12, v18

    goto/16 :goto_0

    :cond_8
    const/4 v1, 0x0

    throw v1

    :cond_9
    invoke-virtual {v2}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0705e8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v1, v4}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->setPadding(IIII)V

    invoke-virtual {v2}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v2}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v4, v2, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->c:Lmtb;

    invoke-virtual {v4}, Lmtb;->t()Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {v2}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0705e7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v4, v4

    sub-int/2addr v1, v4

    iget-object v4, v2, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->c:Lmtb;

    invoke-virtual {v4}, Lmtb;->r()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-virtual {v2}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->measure(II)V

    invoke-virtual {v2}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->getMeasuredWidth()I

    move-result v5

    if-le v5, v1, :cond_b

    invoke-virtual {v2}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v3, v3

    sub-int/2addr v5, v3

    sub-int/2addr v5, v1

    div-int/2addr v5, v4

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v4, :cond_b

    invoke-virtual {v2, v9}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMinWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getMaxWidth()I

    move-result v6

    sub-int/2addr v3, v5

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMinWidth(I)V

    sub-int/2addr v6, v5

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setMaxWidth(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_b
    :goto_7
    new-instance v1, Lclb;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lclb;-><init>(Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;I)V

    invoke-virtual {v2, v1}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v2}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->requestLayout()V

    invoke-virtual {v2}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->invalidate()V

    const/4 v9, 0x0

    :goto_8
    iget-object v1, v0, Lczu;->b:Lmtb;

    iget v1, v1, Lmsp;->b:I

    if-ge v9, v1, :cond_c

    iget-object v1, v0, Lczu;->e:Lczv;

    iget-object v1, v1, Lczv;->a:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v9, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_c
    invoke-virtual {v2}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v2, v1}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lczt;

    invoke-direct {v1, v0, v2}, Lczt;-><init>(Lczu;Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;)V

    iput-object v1, v2, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->d:Liap;

    iget-object v1, v0, Lczu;->e:Lczv;

    iget v1, v1, Lczv;->n:I

    invoke-virtual {v2, v1}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->f(I)V

    return-void

    :cond_d
    invoke-virtual {v2}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_e

    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void

    :cond_e
    return-void
.end method
