.class public final synthetic Liar;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lhwp;II)V
    .locals 0

    iput p3, p0, Liar;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liar;->b:Ljava/lang/Object;

    iput p2, p0, Liar;->a:I

    return-void
.end method

.method public synthetic constructor <init>(Liau;II)V
    .locals 0

    iput p3, p0, Liar;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liar;->b:Ljava/lang/Object;

    iput p2, p0, Liar;->a:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    iget v0, p0, Liar;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Liar;->b:Ljava/lang/Object;

    iget v1, p0, Liar;->a:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v3

    long-to-double v3, v3

    const-wide/high16 v5, 0x4069000000000000L    # 200.0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    sub-double/2addr v5, v3

    move-object v1, v0

    check-cast v1, Lhwp;

    iget-object v3, v1, Lhwp;->d:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    iput-wide v5, v3, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->e:D

    iget-object v1, v1, Lhwp;->c:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    float-to-double v4, v2

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->a(D)D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-virtual {v1, v3, v4, p1}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->o(DF)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Liar;->b:Ljava/lang/Object;

    iget v1, p0, Liar;->a:I

    check-cast v0, Liau;

    iget-object v0, v0, Liau;->h:Licb;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-interface {v0, p1, v1}, Licb;->z(FI)V

    return-void

    :cond_0
    move-object p1, v0

    check-cast p1, Lhwp;

    iget-object v1, p1, Lhwp;->c:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    iget-object p1, p1, Lhwp;->d:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    float-to-double v3, v2

    invoke-virtual {p1, v3, v4}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->a(D)D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->n(D)V

    :goto_0
    check-cast v0, Lhwp;

    iget-object p1, v0, Lhwp;->d:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    float-to-double v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->e(D)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
