.class public final Lise;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lisi;

.field private b:F


# direct methods
.method public constructor <init>(Lisi;)V
    .locals 0

    iput-object p1, p0, Lise;->a:Lisi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lise;->b:F

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 10

    if-eqz p3, :cond_11

    iget-object p1, p0, Lise;->a:Lisi;

    iget-boolean p3, p1, Lisi;->Y:Z

    if-nez p3, :cond_11

    iget-object p1, p1, Lisi;->O:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->D()Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lise;->a:Lisi;

    iget-boolean v0, p1, Lisi;->S:Z

    if-eqz v0, :cond_0

    iput-boolean p3, p1, Lisi;->X:Z

    iget-object p1, p1, Lisi;->O:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {p1, p2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->B(I)V

    iget-object p1, p0, Lise;->a:Lisi;

    iget-boolean p2, p1, Lisi;->V:Z

    if-eqz p2, :cond_11

    iget-object p1, p1, Lisi;->aj:Lnom;

    invoke-virtual {p1}, Lnom;->d()V

    return-void

    :cond_0
    iget-object p1, p0, Lise;->a:Lisi;

    iget-object p1, p1, Lisi;->f:Ljwb;

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string v0, "max zoom value hasn\'t been initialized properly"

    invoke-static {p1, v0}, Lmoz;->f(ZLjava/lang/Object;)V

    iget-object p1, p0, Lise;->a:Lisi;

    iget-object p1, p1, Lisi;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object p1, p0, Lise;->a:Lisi;

    iget v0, p1, Lisi;->ad:I

    sub-int v0, p2, v0

    iget-object v2, p1, Lisi;->J:Landroid/content/res/Resources;

    const v3, 0x7f0708ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    iget-object v2, p1, Lisi;->J:Landroid/content/res/Resources;

    const v4, 0x7f0708ab

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v4, p1, Lisi;->J:Landroid/content/res/Resources;

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p1, Lisi;->L:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    int-to-float v2, v2

    int-to-float v3, v3

    int-to-float v4, v4

    iget-object v5, p1, Lisi;->L:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getMax()I

    move-result v5

    div-float/2addr v2, v3

    mul-float v2, v2, v4

    float-to-int v2, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    div-int/lit8 v4, v2, 0x2

    if-ge v3, v4, :cond_2

    iget v3, p1, Lisi;->ac:I

    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    iput v0, p1, Lisi;->ac:I

    iget p2, p1, Lisi;->ad:I

    goto :goto_3

    :cond_2
    iget v0, p1, Lisi;->ac:I

    if-eqz v0, :cond_8

    div-int/lit8 v2, v2, 0x1e

    if-le v0, v2, :cond_3

    sub-int/2addr v0, v2

    iput v0, p1, Lisi;->ac:I

    goto :goto_1

    :cond_3
    neg-int v3, v2

    if-ge v0, v3, :cond_4

    add-int/2addr v0, v2

    iput v0, p1, Lisi;->ac:I

    goto :goto_1

    :cond_4
    invoke-virtual {p1, p2}, Lisi;->N(I)V

    :goto_1
    iget v0, p1, Lisi;->ac:I

    sub-int v0, p2, v0

    if-gez v0, :cond_5

    invoke-virtual {p1, p2}, Lisi;->N(I)V

    const/4 p2, 0x0

    goto :goto_3

    :cond_5
    if-gt v0, v5, :cond_7

    if-ne p2, v5, :cond_6

    goto :goto_2

    :cond_6
    move p2, v0

    goto :goto_3

    :cond_7
    :goto_2
    invoke-virtual {p1, p2}, Lisi;->N(I)V

    move p2, v5

    :cond_8
    :goto_3
    iget-object p1, p0, Lise;->a:Lisi;

    iget-object p1, p1, Lisi;->L:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lise;->a:Lisi;

    iget-object v0, v0, Lisi;->g:Ljwb;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lise;->a:Lisi;

    iget-object v2, v2, Lisi;->f:Ljwb;

    check-cast v2, Ljvk;

    iget-object v2, v2, Ljvk;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lise;->a:Lisi;

    iget-object v3, v3, Lisi;->g:Ljwb;

    check-cast v3, Ljvk;

    iget-object v3, v3, Ljvk;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float/2addr v2, v3

    int-to-float p2, p2

    div-float/2addr p2, p1

    float-to-double v2, v2

    float-to-double p1, p2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p1

    iget-object p1, p0, Lise;->a:Lisi;

    iget-object p1, p1, Lisi;->d:Ldhi;

    sget-object p2, Ldho;->bW:Ldhj;

    invoke-interface {p1, p2}, Ldhi;->l(Ldhj;)Z

    move-result p1

    double-to-float p2, v0

    const/4 v0, 0x2

    if-eqz p1, :cond_10

    iget-object p1, p0, Lise;->a:Lisi;

    iget-boolean p1, p1, Lisi;->V:Z

    if-eqz p1, :cond_10

    float-to-double v1, p2

    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {p1, p3, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    iget-object v1, p0, Lise;->a:Lisi;

    iget-wide v2, v1, Lisi;->ag:D

    float-to-double v4, p1

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_f

    iget-object v2, v1, Lisi;->z:Lirt;

    iget-object v1, v1, Lisi;->o:Ljvs;

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lika;

    iget-object v3, p0, Lise;->a:Lisi;

    iget-object v6, v3, Lisi;->F:Lklv;

    iget-object v3, v3, Lisi;->n:Lkog;

    invoke-virtual {v3}, Lkog;->g()Z

    move-result v3

    iget-object v7, p0, Lise;->a:Lisi;

    invoke-virtual {v7}, Lisi;->V()Z

    move-result v7

    iget-object v8, p0, Lise;->a:Lisi;

    iget-object v8, v8, Lisi;->n:Lkog;

    iget-boolean v8, v8, Lkog;->h:Z

    sget-object v9, Lika;->a:Lika;

    invoke-virtual {v1}, Lika;->ordinal()I

    move-result v1

    const/4 v9, 0x4

    sparse-switch v1, :sswitch_data_0

    sget-object v1, Lklv;->b:Lklv;

    if-ne v6, v1, :cond_d

    if-eqz v7, :cond_c

    invoke-virtual {v2, v0}, Lirt;->b(I)Lmwn;

    move-result-object v1

    goto :goto_5

    :sswitch_0
    sget-object v1, Lklv;->b:Lklv;

    if-ne v6, v1, :cond_a

    if-eqz v3, :cond_9

    invoke-virtual {v2, v9}, Lirt;->b(I)Lmwn;

    move-result-object v1

    goto :goto_5

    :cond_9
    const/4 v1, 0x3

    goto :goto_4

    :cond_a
    const/16 v1, 0xa

    goto :goto_4

    :sswitch_1
    const/4 v1, 0x6

    :goto_4
    invoke-virtual {v2, v1}, Lirt;->b(I)Lmwn;

    move-result-object v1

    goto :goto_5

    :sswitch_2
    sget-object v1, Lklv;->b:Lklv;

    if-ne v6, v1, :cond_b

    const/4 v1, 0x5

    goto :goto_4

    :cond_b
    const/16 v1, 0xb

    goto :goto_4

    :cond_c
    invoke-virtual {v2, p3}, Lirt;->b(I)Lmwn;

    move-result-object v1

    goto :goto_5

    :cond_d
    if-eqz v8, :cond_e

    const/16 v1, 0x9

    goto :goto_4

    :cond_e
    const/4 v1, 0x7

    goto :goto_4

    :goto_5
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v1, p1}, Lmwn;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lise;->a:Lisi;

    iget-object p1, p1, Lisi;->L:Landroid/widget/SeekBar;

    invoke-virtual {p1, v9}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_f
    iget-object p1, p0, Lise;->a:Lisi;

    iput-wide v4, p1, Lisi;->ag:D

    :cond_10
    iput p2, p0, Lise;->b:F

    iget-object p1, p0, Lise;->a:Lisi;

    iget-object v1, p1, Lisi;->u:Ljwb;

    iget-object p1, p1, Lisi;->h:Ljwb;

    invoke-interface {p1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-interface {v1, p1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object p1, p0, Lise;->a:Lisi;

    iget-object p1, p1, Lisi;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result p1

    if-le p1, p3, :cond_11

    iget-object p1, p0, Lise;->a:Lisi;

    iget-object p1, p1, Lisi;->h:Ljwb;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, p2}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object p1, p0, Lise;->a:Lisi;

    iget-object p1, p1, Lisi;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_11

    iget-object p1, p0, Lise;->a:Lisi;

    iget-object p1, p1, Lisi;->E:Lita;

    invoke-virtual {p1}, Lisk;->n()V

    iget-object p1, p0, Lise;->a:Lisi;

    iget-object p1, p1, Lisi;->K:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    invoke-virtual {p1, p3}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->d(Z)V

    return-void

    :cond_11
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x5 -> :sswitch_1
        0x6 -> :sswitch_0
        0xd -> :sswitch_2
    .end sparse-switch
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-object v0, p0, Lise;->a:Lisi;

    iget-object v0, v0, Lisi;->O:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lise;->a:Lisi;

    iget-boolean v1, v0, Lisi;->S:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lisi;->m()V

    iget-object v0, p0, Lise;->a:Lisi;

    iget-boolean v1, v0, Lisi;->Y:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lisi;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lise;->a:Lisi;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {v0, p1}, Lisi;->N(I)V

    iget-object p1, p0, Lise;->a:Lisi;

    iget-object p1, p1, Lisi;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p1, p0, Lise;->a:Lisi;

    iget-object p1, p1, Lisi;->K:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->d(Z)V

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    iget-object v0, p0, Lise;->a:Lisi;

    iget-object v0, v0, Lisi;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lise;->a:Lisi;

    iget-object v0, v0, Lisi;->O:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->D()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lise;->a:Lisi;

    iget-object v0, v0, Lisi;->E:Lita;

    iget v2, p0, Lise;->b:F

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Lisk;->d(FI)V

    iget-object v0, p0, Lise;->a:Lisi;

    iget-object v0, v0, Lisi;->u:Ljwb;

    iget v2, p0, Lise;->b:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v2}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lise;->a:Lisi;

    iget-boolean v2, v0, Lisi;->Y:Z

    if-eqz v2, :cond_2

    iget-object v0, v0, Lisi;->O:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->D()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v2, p0, Lise;->a:Lisi;

    iget-object v2, v2, Lisi;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lise;->a:Lisi;

    iget-boolean v2, v0, Lisi;->T:Z

    if-nez v2, :cond_2

    iget-object v0, v0, Lisi;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lise;->a:Lisi;

    iget-object v0, v0, Lisi;->O:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->A(IZ)V

    iget-object p1, p0, Lise;->a:Lisi;

    iget-object v0, p1, Lisi;->L:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p1, v0}, Lisi;->Q(I)V

    iget-object p1, p0, Lise;->a:Lisi;

    iget-boolean v0, p1, Lisi;->V:Z

    if-eqz v0, :cond_2

    iget-object p1, p1, Lisi;->aj:Lnom;

    invoke-virtual {p1}, Lnom;->d()V

    :cond_2
    iget-object p1, p0, Lise;->a:Lisi;

    iget-object p1, p1, Lisi;->E:Lita;

    invoke-virtual {p1}, Lisk;->p()V

    iget-object p1, p0, Lise;->a:Lisi;

    const/4 v0, 0x0

    iput v0, p1, Lisi;->ad:I

    iput v0, p1, Lisi;->ac:I

    return-void
.end method
