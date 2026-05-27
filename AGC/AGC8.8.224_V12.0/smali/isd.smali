.class public final Lisd;
.super Ljava/lang/Object;


# instance fields
.field public final synthetic a:Lisi;

.field private b:F


# direct methods
.method public constructor <init>(Lisi;)V
    .locals 0

    iput-object p1, p0, Lisd;->a:Lisi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lisd;->b:F

    return-void
.end method


# virtual methods
.method public final a(FZ)V
    .locals 6

    if-eqz p2, :cond_2

    iget-object p2, p0, Lisd;->a:Lisi;

    iget-object p2, p2, Lisi;->M:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    invoke-virtual {p2, p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->d(F)F

    move-result p2

    iget-object v0, p0, Lisd;->a:Lisi;

    iget-object v0, v0, Lisi;->h:Ljwb;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v0, p2}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object p2, p0, Lisd;->a:Lisi;

    iget-object p2, p2, Lisi;->d:Ldhi;

    sget-object v0, Ldho;->bW:Ldhj;

    invoke-interface {p2, v0}, Ldhi;->l(Ldhj;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lisd;->a:Lisi;

    iget-boolean p2, p2, Lisi;->V:Z

    if-eqz p2, :cond_2

    float-to-double v0, p1

    new-instance p2, Ljava/math/BigDecimal;

    invoke-direct {p2, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const/4 v1, 0x2

    invoke-virtual {p2, v1, v0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigDecimal;->floatValue()F

    move-result p2

    float-to-int v0, p2

    int-to-float v1, v0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_1

    float-to-double v1, p2

    iget-object p2, p0, Lisd;->a:Lisi;

    iget-wide v3, p2, Lisi;->ah:D

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_1

    iget-object p2, p2, Lisi;->M:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    iget-object p2, p2, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->t:Lmvv;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmvv;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lisd;->a:Lisi;

    iget-object p2, p2, Lisi;->L:Landroid/widget/SeekBar;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lisd;->a:Lisi;

    iget-object p2, p2, Lisi;->L:Landroid/widget/SeekBar;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    :goto_0
    iget-object p2, p0, Lisd;->a:Lisi;

    iput-wide v1, p2, Lisi;->ah:D

    iput p1, p0, Lisd;->b:F

    return-void

    :cond_1
    iget p2, p0, Lisd;->b:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, 0x3e4ccccd    # 0.2f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    iget-object p1, p0, Lisd;->a:Lisi;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p1, Lisi;->ah:D

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lisd;->a:Lisi;

    invoke-virtual {v0}, Lisi;->M()V

    iget-object v0, p0, Lisd;->a:Lisi;

    iget-object v0, v0, Lisi;->E:Lita;

    invoke-virtual {v0}, Lisk;->p()V

    return-void
.end method
