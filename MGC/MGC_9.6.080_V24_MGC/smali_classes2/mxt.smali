.class public final Lmxt;
.super Landroid/os/CountDownTimer;
.source "PG"


# instance fields
.field a:J

.field final synthetic b:J

.field final synthetic c:D

.field final synthetic d:Z

.field final synthetic e:Lmxw;


# direct methods
.method public constructor <init>(Lmxw;JJDZ)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    :goto_0
    iput-boolean p8, p0, Lmxt;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    iput-wide p1, p0, Lmxt;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    div-double/2addr p1, p3

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
    double-to-long p1, p1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p2, p3, p6, p7}, Landroid/os/CountDownTimer;-><init>(JJ)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-wide p4, p0, Lmxt;->b:J

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    const-wide/16 p6, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    long-to-double p1, p4

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-wide p3, 0x408f400000000000L    # 1000.0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-wide p6, p0, Lmxt;->c:D

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p1, p0, Lmxt;->e:Lmxw;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onFinish()V
    .locals 13

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->j(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    :goto_1
    new-instance v9, Lmxu;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1e

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lmxt;->e:Lmxw;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    new-instance v8, Leac;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_6
    iget-boolean v0, p0, Lmxt;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_7
    iget-object v0, v1, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lmxt;->e:Lmxw;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0}, Lmxw;->t(Lmxw;)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_a
    invoke-direct {v9, v0, v6, v7, p0}, Lmxu;-><init>(Lmxw;DI)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Lmxt;->e:Lmxw;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

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

    :goto_d
    const-wide/16 v6, 0xfa

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_f
    invoke-direct {v8}, Leac;-><init>()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, v0, Lmxw;->j:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_12
    invoke-virtual/range {v1 .. v12}, Lmxw;->r(DDJLandroid/animation/TimeInterpolator;Landroid/animation/AnimatorListenerAdapter;JI)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-wide/16 v10, 0xc8

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    :goto_17
    iget-wide v4, p0, Lmxt;->c:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_18
    invoke-static {p0}, Lmxs;->a(Lmxw;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_19
    sget-object v2, Lj$/time/Duration;->ZERO:Lj$/time/Duration;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_4

    nop

    nop

    :goto_1c
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->c()D

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_15

    nop

    :goto_1e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Lmxt;->e:Lmxw;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0, v2}, Lmxw;->d(Lj$/time/Duration;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_21
    iget-wide v6, p0, Lmxt;->c:D

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v12, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_24
    const v1, 0x1a

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_25
    iget-object p0, p0, Lmxt;->e:Lmxw;

    nop

    goto/32 :goto_18

    nop

    nop
.end method

.method public final onTick(J)V
    .locals 11

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lmxt;->e:Lmxw;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_33

    nop

    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->e(D)V

    goto/32 :goto_b

    nop

    nop

    :goto_3
    iget-wide v3, p0, Lmxt;->b:J

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v4, v5}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    mul-double/2addr v5, v7

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_6
    cmp-long v4, v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v4, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_1
    goto/32 :goto_2a

    nop

    nop

    :goto_8
    const v1, 0xc

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v4, p0, Lmxt;->e:Lmxw;

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_a
    sub-long/2addr v9, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_d
    iput-wide v2, p0, Lmxt;->a:J

    nop

    :goto_e
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_f
    div-double v2, v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_10
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_11
    long-to-double v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x6

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_14
    const-wide/high16 v5, 0x4069000000000000L    # 200.0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_15
    long-to-double v3, v3

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-wide v4, p0, Lmxt;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v5, v4}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->j(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v2, v3}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-wide v5, p0, Lmxt;->c:D

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1b
    iget-wide v9, p0, Lmxt;->b:J

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1c
    div-double/2addr p1, v5

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1d
    const-wide v2, 0x408f400000000000L    # 1000.0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    double-to-float v7, v7

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1f
    sub-double v7, v3, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_20
    double-to-long v2, v2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v4, v6}, Lmxw;->d(Lj$/time/Duration;)Ljava/lang/String;

    move-result-object v4

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    float-to-double v7, v2

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    sub-double v7, v3, v0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_24
    invoke-virtual {v2, v7}, Lnnk;->getInterpolation(F)F

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v2, p0, Lmxt;->e:Lmxw;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_26
    long-to-double p1, v9

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_27
    iget-object v2, v2, Lmxw;->c:Lnnk;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_28
    iput-wide p1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->g:D

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

    :goto_29
    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_2a
    iget-object v4, p0, Lmxt;->e:Lmxw;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_2b
    div-double/2addr v0, v3

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2c
    mul-double/2addr v0, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_2d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_2f
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_30
    iget-object p0, p0, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_32
    iget-object v5, v4, Lmxw;->j:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

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

    :goto_33
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v4, v4, Lmxw;->j:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop
.end method
