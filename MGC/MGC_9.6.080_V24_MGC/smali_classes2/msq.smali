.class public final synthetic Lmsq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Leit;Leis;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lmsq;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p3, p0, Lmsq;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lmsq;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object p1, p0, Lmsq;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput p3, p0, Lmsq;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    iput-object p2, p0, Lmsq;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lmsq;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    iput p3, p0, Lmsq;->c:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lmsq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    goto/32 :goto_5f

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1, v0}, Leit;->d(FLeis;)V

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lrjf;->invalidateSelf()V

    :goto_5
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_7
    move-object v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Leit;->invalidateSelf()V

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_a
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_65

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    :goto_d
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_e
    instance-of v1, v0, Lrkp;

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lrjf;->isVisible()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_10
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_11
    iget-object p0, p0, Lmsq;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->q()Landroid/widget/TextView;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, p1, v1, v2}, Leit;->a(FLeis;Z)V

    goto/32 :goto_21

    nop

    nop

    :goto_14
    iget-object v0, p0, Lmsq;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_19
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast p0, Leit;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_1c
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    monitor-enter v1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    check-cast p1, Ljava/lang/Float;

    nop

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    move-object v2, v0

    nop

    check-cast v2, Lmss;

    nop

    nop

    nop

    iget-object v2, v2, Lmss;->b:Lmsv;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lmsv;->a()I

    move-result v2

    nop

    move-object v3, v0

    nop

    check-cast v3, Lmss;

    nop

    nop

    nop

    iget-object v3, v3, Lmss;->b:Lmsv;

    nop

    nop

    nop

    nop

    nop

    iget v4, v3, Lmsv;->e:I

    nop

    nop

    nop

    nop

    iget v5, v3, Lmsv;->f:I

    nop

    nop

    nop

    nop

    iget v3, v3, Lmsv;->g:I

    nop

    nop

    nop

    nop

    invoke-static {v2, v4, v5, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    nop

    nop

    nop

    move-object v3, v0

    nop

    nop

    nop

    check-cast v3, Lmss;

    nop

    nop

    nop

    iget-object v3, v3, Lmss;->c:Lmsv;

    nop

    nop

    nop

    nop

    sget-object v4, Lmsv;->a:Lmsv;

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Lmsv;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_2

    nop

    nop

    nop

    nop

    move-object v3, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Lmss;

    nop

    nop

    nop

    iget-object v3, v3, Lmss;->c:Lmsv;

    nop

    invoke-virtual {v3}, Lmsv;->a()I

    move-result v3

    nop

    nop

    check-cast v0, Lmss;

    nop

    nop

    nop

    iget-object v0, v0, Lmss;->b:Lmsv;

    nop

    nop

    nop

    nop

    nop

    iget v4, v0, Lmsv;->e:I

    nop

    nop

    nop

    nop

    iget v5, v0, Lmsv;->f:I

    nop

    iget v0, v0, Lmsv;->g:I

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3, v4, v5, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto :goto_1f

    nop

    nop

    :cond_2
    move-object v3, v0

    nop

    nop

    check-cast v3, Lmss;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v3, Lmss;->c:Lmsv;

    nop

    nop

    invoke-virtual {v3}, Lmsv;->a()I

    move-result v3

    nop

    nop

    check-cast v0, Lmss;

    nop

    nop

    nop

    iget-object v0, v0, Lmss;->c:Lmsv;

    nop

    nop

    nop

    nop

    nop

    iget v4, v0, Lmsv;->e:I

    nop

    nop

    nop

    iget v5, v0, Lmsv;->f:I

    nop

    nop

    nop

    nop

    nop

    iget v0, v0, Lmsv;->g:I

    nop

    nop

    nop

    invoke-static {v3, v4, v5, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    nop

    nop

    nop

    :goto_1f
    const/high16 v3, 0x3f800000    # 1.0f

    nop

    nop

    sub-float/2addr v3, p1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    nop

    nop

    nop

    nop

    int-to-float v4, v4

    nop

    mul-float/2addr v4, v3

    nop

    nop

    nop

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    nop

    nop

    int-to-float v5, v5

    nop

    nop

    nop

    nop

    mul-float/2addr v5, p1

    nop

    nop

    nop

    add-float/2addr v4, v5

    nop

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v5

    nop

    nop

    int-to-float v5, v5

    nop

    nop

    nop

    nop

    nop

    mul-float/2addr v5, v3

    nop

    nop

    nop

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v6

    nop

    nop

    nop

    nop

    int-to-float v6, v6

    nop

    nop

    nop

    nop

    nop

    mul-float/2addr v6, p1

    nop

    nop

    nop

    nop

    nop

    add-float/2addr v5, v6

    nop

    nop

    nop

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v6

    nop

    nop

    int-to-float v6, v6

    nop

    nop

    nop

    nop

    nop

    mul-float/2addr v6, v3

    nop

    nop

    nop

    nop

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    int-to-float v7, v7

    nop

    nop

    nop

    nop

    nop

    mul-float/2addr v7, p1

    nop

    nop

    add-float/2addr v6, v7

    nop

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    nop

    nop

    int-to-float v2, v2

    nop

    nop

    nop

    nop

    mul-float/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    nop

    nop

    nop

    int-to-float v0, v0

    nop

    mul-float/2addr v0, p1

    nop

    nop

    nop

    nop

    add-float/2addr v2, v0

    nop

    float-to-int p1, v4

    nop

    nop

    nop

    float-to-int v0, v5

    nop

    float-to-int v3, v6

    nop

    nop

    nop

    nop

    nop

    float-to-int v2, v2

    nop

    invoke-static {p1, v0, v3, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    move-object v0, p0

    nop

    nop

    check-cast v0, Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;

    nop

    iget-object v0, v0, Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;->b:Landroid/graphics/Paint;

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    check-cast p0, Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;

    nop

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;->invalidate()V

    monitor-exit v1

    nop

    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_20
    invoke-interface {p1}, Lrfc;->a()V

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p0, p0, Lmsq;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    :goto_23
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_24
    invoke-interface {p0, v0, p1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget p1, p1, Lrir;->k:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_26
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_27
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_3
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const v1, 0x1c

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_29
    iget-object p0, p0, Lmsq;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object p0, p0, Lmsq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_2d
    iget-object v0, p0, Lmsq;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_2e
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2f
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_30
    check-cast v0, Leit;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v0, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->j:Lnhb;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    check-cast v1, Leis;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget v0, p0, Lmsq;->c:I

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_34
    check-cast v1, Lmss;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v1, p0, Lmsq;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_36
    iget-object p1, p0, Lmsq;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_37
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_38
    const/4 v2, 0x2

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_39
    check-cast p1, Lrfc;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_3a
    if-lez v0, :cond_5

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_c

    nop

    :goto_3b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    check-cast v0, Lrkp;

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    return-void

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p1, v1}, Lrir;->b(Z)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_41
    check-cast p0, Lnwp;

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_42
    iget-object p0, p0, Lmsq;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    check-cast v0, Lrkp;

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_44
    iget-object v1, v1, Lmss;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_45
    check-cast p0, Lrjf;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_46
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v0, v0, Lngn;->b:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_48
    return-void

    nop

    :goto_49
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_4a
    return-void

    nop

    :goto_4b
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_4c
    if-ne v0, v2, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :cond_6
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object v0, p0, Lmsq;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_50
    if-nez p1, :cond_7

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v0, p1}, Lrkp;->m(F)V

    :goto_52
    goto/32 :goto_55

    nop

    nop

    nop

    :goto_53
    check-cast p0, Lnhb;

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget-object v0, p0, Lmsq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_55
    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->g:Ljava/util/List;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_56
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    goto/32 :goto_6a

    nop

    nop

    :goto_57
    iget-object p0, p0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_58
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->h:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_59
    if-ne v0, v1, :cond_8

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v0, p1}, Lrkp;->m(F)V

    goto/32 :goto_29

    nop

    nop

    :goto_5b
    if-nez v1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    :cond_9
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    if-ne v0, v2, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    check-cast p1, Ljava/lang/Float;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_5e
    iget-object v0, p0, Lmsq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_5f
    const v0, 0x12

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_22

    nop

    nop

    :goto_61
    check-cast p0, Lcom/google/android/material/appbar/AppBarLayout;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_62
    goto/16 :goto_b

    nop

    nop

    :goto_63
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_64
    check-cast v0, Leis;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iget-object v0, p0, Lmsq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_67
    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_68
    check-cast p1, Ljava/lang/Integer;

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object p0, p0, Lmsq;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    check-cast v0, Lngn;

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_6d
    if-ne v0, v2, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_b
    goto/32 :goto_67

    nop

    nop

    nop

    :goto_6e
    check-cast p1, Lrir;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop
.end method
