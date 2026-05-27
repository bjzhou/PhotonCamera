.class final Lhwm;
.super Landroid/os/CountDownTimer;


# instance fields
.field a:J

.field final synthetic b:J

.field final synthetic c:D

.field final synthetic d:Lhwp;


# direct methods
.method public constructor <init>(Lhwp;JJD)V
    .locals 0

    iput-object p1, p0, Lhwm;->d:Lhwp;

    iput-wide p4, p0, Lhwm;->b:J

    iput-wide p6, p0, Lhwm;->c:D

    const-wide/16 p6, 0x19

    invoke-direct {p0, p2, p3, p6, p7}, Landroid/os/CountDownTimer;-><init>(JJ)V

    long-to-double p1, p4

    const-wide p3, 0x408f400000000000L    # 1000.0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-long p1, p1

    iput-wide p1, p0, Lhwm;->a:J

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lhwm;->d:Lhwp;

    iget-object v2, v1, Lhwp;->c:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    sget-object v3, Lj$/time/Duration;->ZERO:Lj$/time/Duration;

    invoke-virtual {v1, v3}, Lhwp;->b(Lj$/time/Duration;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->k(Ljava/lang/String;)V

    iget-object v1, v0, Lhwm;->d:Lhwp;

    iget-object v1, v1, Lhwp;->c:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    const/4 v2, 0x0

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->s(ZJ)V

    iget-object v5, v0, Lhwm;->d:Lhwp;

    iget-object v1, v5, Lhwp;->d:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->c()D

    move-result-wide v6

    iget-wide v8, v0, Lhwm;->c:D

    const-wide/16 v10, 0xfa

    new-instance v12, Lakf;

    invoke-direct {v12}, Lakf;-><init>()V

    iget-object v1, v0, Lhwm;->d:Lhwp;

    iget-wide v2, v0, Lhwm;->c:D

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lhwp;->p(DI)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v13

    const-wide/16 v14, 0xc8

    const/16 v16, 0x1

    invoke-virtual/range {v5 .. v16}, Lhwp;->q(DDJLandroid/animation/TimeInterpolator;Landroid/animation/AnimatorListenerAdapter;JI)V

    return-void
.end method

.method public final onTick(J)V
    .locals 9

    long-to-double v0, p1

    const-wide v2, 0x408f400000000000L    # 1000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-long v2, v2

    iget-wide v4, p0, Lhwm;->a:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    iget-object v4, p0, Lhwm;->d:Lhwp;

    iget-object v5, v4, Lhwp;->c:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    invoke-static {v2, v3}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v6

    invoke-virtual {v4, v6}, Lhwp;->b(Lj$/time/Duration;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->k(Ljava/lang/String;)V

    iget-object v4, p0, Lhwm;->d:Lhwp;

    iget-object v4, v4, Lhwp;->c:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iput-wide v2, p0, Lhwm;->a:J

    :cond_0
    iget-object v2, p0, Lhwm;->d:Lhwp;

    iget-wide v3, p0, Lhwm;->b:J

    iget-wide v5, p0, Lhwm;->c:D

    long-to-double v3, v3

    iget-object v2, v2, Lhwp;->b:Likf;

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double v7, v3, v0

    double-to-float v7, v7

    invoke-virtual {v2, v7}, Likf;->getInterpolation(F)F

    move-result v2

    float-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v7, v3, v7

    mul-double v7, v7, v5

    mul-double v0, v0, v5

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iget-object v2, p0, Lhwm;->d:Lhwp;

    iget-object v5, v2, Lhwp;->c:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    iget-object v2, v2, Lhwp;->d:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->a(D)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->m(D)V

    iget-wide v5, p0, Lhwm;->b:J

    sub-long/2addr v5, p1

    long-to-double p1, v5

    const-wide/high16 v5, 0x4069000000000000L    # 200.0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v5

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    iget-object v2, p0, Lhwm;->d:Lhwp;

    iget-object v2, v2, Lhwp;->d:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    iput-wide p1, v2, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->e:D

    invoke-virtual {v2, v0, v1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->e(D)V

    return-void
.end method
