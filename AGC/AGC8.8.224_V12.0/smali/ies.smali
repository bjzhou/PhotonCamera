.class public final synthetic Lies;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/appbar/AppBarLayout;Lmka;I)V
    .locals 0

    iput p3, p0, Lies;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lies;->a:Ljava/lang/Object;

    iput-object p2, p0, Lies;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhsh;Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;I)V
    .locals 0

    iput p3, p0, Lies;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lies;->b:Ljava/lang/Object;

    iput-object p2, p0, Lies;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Life;Ljava/util/function/BiFunction;I)V
    .locals 0

    iput p3, p0, Lies;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lies;->a:Ljava/lang/Object;

    iput-object p2, p0, Lies;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lita;Landroid/widget/FrameLayout$LayoutParams;I)V
    .locals 0

    iput p3, p0, Lies;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lies;->b:Ljava/lang/Object;

    iput-object p2, p0, Lies;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 9

    iget v0, p0, Lies;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lies;->a:Ljava/lang/Object;

    iget-object v1, p0, Lies;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    check-cast v1, Lmka;

    invoke-virtual {v1, p1}, Lmka;->h(F)V

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v1, v0, Lcom/google/android/material/appbar/AppBarLayout;->g:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Lmka;

    if-eqz v2, :cond_3

    check-cast v1, Lmka;

    invoke-virtual {v1, p1}, Lmka;->h(F)V

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, p0, Lies;->a:Ljava/lang/Object;

    iget-object v1, p0, Lies;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-int p1, p1

    check-cast v1, Lmka;

    invoke-virtual {v1, p1}, Lmka;->setAlpha(I)V

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v0, v0, Lcom/google/android/material/appbar/AppBarLayout;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmfh;

    invoke-virtual {v1}, Lmka;->e()Landroid/content/res/ColorStateList;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lmka;->e()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    invoke-interface {v2}, Lmfh;->a()V

    goto :goto_0

    :cond_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lies;->b:Ljava/lang/Object;

    iget-object v1, p0, Lies;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    move-object v2, v1

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    check-cast v0, Lita;

    iget-object p1, v0, Lita;->s:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->n()Landroid/widget/TextView;

    move-result-object p1

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lies;->b:Ljava/lang/Object;

    iget-object v1, p0, Lies;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lhsh;

    iget-object v2, v2, Lhsh;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    move-object v3, v0

    check-cast v3, Lhsh;

    iget-object v3, v3, Lhsh;->c:Ljava/lang/Object;

    check-cast v3, Lhsj;

    invoke-virtual {v3}, Lhsj;->a()I

    move-result v3

    move-object v4, v0

    check-cast v4, Lhsh;

    iget-object v4, v4, Lhsh;->c:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Lhsj;

    iget v5, v5, Lhsj;->e:I

    move-object v6, v4

    check-cast v6, Lhsj;

    iget v6, v6, Lhsj;->f:I

    check-cast v4, Lhsj;

    iget v4, v4, Lhsj;->g:I

    invoke-static {v3, v5, v6, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    move-object v4, v0

    check-cast v4, Lhsh;

    iget-object v4, v4, Lhsh;->d:Ljava/lang/Object;

    sget-object v5, Lhsj;->a:Lhsj;

    check-cast v4, Lhsj;

    invoke-virtual {v4, v5}, Lhsj;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v0

    check-cast v4, Lhsh;

    iget-object v4, v4, Lhsh;->d:Ljava/lang/Object;

    check-cast v4, Lhsj;

    invoke-virtual {v4}, Lhsj;->a()I

    move-result v4

    check-cast v0, Lhsh;

    iget-object v0, v0, Lhsh;->c:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lhsj;

    iget v5, v5, Lhsj;->e:I

    move-object v6, v0

    check-cast v6, Lhsj;

    iget v6, v6, Lhsj;->f:I

    check-cast v0, Lhsj;

    iget v0, v0, Lhsj;->g:I

    invoke-static {v4, v5, v6, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_1

    :cond_2
    move-object v4, v0

    check-cast v4, Lhsh;

    iget-object v4, v4, Lhsh;->d:Ljava/lang/Object;

    check-cast v4, Lhsj;

    invoke-virtual {v4}, Lhsj;->a()I

    move-result v4

    check-cast v0, Lhsh;

    iget-object v0, v0, Lhsh;->d:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lhsj;

    iget v5, v5, Lhsj;->e:I

    move-object v6, v0

    check-cast v6, Lhsj;

    iget v6, v6, Lhsj;->f:I

    check-cast v0, Lhsj;

    iget v0, v0, Lhsj;->g:I

    invoke-static {v4, v5, v6, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    :goto_1
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, p1

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v4

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, p1

    add-float/2addr v5, v6

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v4

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, p1

    add-float/2addr v6, v7

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v4

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, p1

    add-float/2addr v7, v8

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v4

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p1

    add-float/2addr v3, v0

    float-to-int p1, v5

    float-to-int v0, v6

    float-to-int v4, v7

    float-to-int v3, v3

    invoke-static {p1, v0, v4, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    move-object v0, v1

    check-cast v0, Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;

    iget-object v0, v0, Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    check-cast v1, Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;->invalidate()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_3
    iget-object v0, p0, Lies;->a:Ljava/lang/Object;

    iget-object v1, p0, Lies;->b:Ljava/lang/Object;

    check-cast v0, Life;

    iget-object v0, v0, Life;->b:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    iget-object v0, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->inFlightSpecBuilder:Lifq;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lifq;

    return-void

    :cond_3
    :goto_2
    iget-object p1, v0, Lcom/google/android/material/appbar/AppBarLayout;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmfh;

    invoke-interface {v0}, Lmfh;->a()V

    goto :goto_3

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
