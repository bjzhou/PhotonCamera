.class final Lrje;
.super Ldyr;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ldyr;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)F
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    mul-float/2addr p0, p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Lrjf;->b()F

    move-result p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const p1, 0x461c4000    # 10000.0f

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    sget p0, Lrjf;->h:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p1, Lrjf;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic b(Ljava/lang/Object;F)V
    .locals 2

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p0, p1, Lrjf;->f:Landroid/animation/TimeInterpolator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p0, p1, Lrjf;->e:Landroid/animation/TimeInterpolator;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p0, p1, Lrjf;->e:Landroid/animation/TimeInterpolator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p2, :cond_0

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    nop

    :goto_5
    iget-object p0, p1, Lrjf;->d:Landroid/animation/ValueAnimator;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_6
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_7
    if-eqz p0, :cond_1

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_1
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_8
    iput-object p0, p1, Lrjf;->d:Landroid/animation/ValueAnimator;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_13

    nop

    nop

    :goto_b
    iget-object p0, p1, Lrjf;->d:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_c
    iget-object p0, p1, Lrjf;->d:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-array v0, v0, [F

    nop

    fill-array-data v0, :array_0

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez p2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    :goto_10
    iget-object p2, p1, Lrjf;->d:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget p2, p1, Lrjf;->c:F

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_13
    iget-object p0, p1, Lrjf;->g:Landroid/animation/TimeInterpolator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p0, p1, Lrjf;->d:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_16
    if-eqz p2, :cond_3

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_3
    goto/32 :goto_1e

    nop

    nop

    :goto_17
    invoke-virtual {p1, p0}, Lrjf;->d(F)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :goto_19
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0, v0}, Lrir;->b(Z)Z

    move-result p0

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p1, Lrjf;->d:Landroid/animation/ValueAnimator;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1, p0}, Lrjf;->c(F)V

    :goto_1f
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_20
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_21
    sget p0, Lrjf;->h:I

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_22
    iget-object p2, p1, Lrjf;->d:Landroid/animation/ValueAnimator;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {p0, v0, v1}, Lqqy;->n(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_24
    const v1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_25
    check-cast p1, Lrjf;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_26
    cmpl-float p0, p0, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_27
    const/high16 p2, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_28
    iput p0, p1, Lrjf;->c:F

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    cmpl-float p2, p0, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2a
    invoke-direct {v0, p1, v1}, Lnvy;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object p2, p1, Lrjf;->d:Landroid/animation/ValueAnimator;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_1f

    nop

    :goto_2d
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2f
    const/16 v1, 0xe

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_30
    const-wide/16 v0, 0x1f4

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_31
    iget-object p0, p1, Lrjf;->d:Landroid/animation/ValueAnimator;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_32
    new-instance v0, Lnvy;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_33
    div-float p0, p2, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_34
    iget-object p0, p1, Lrjf;->i:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_35
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_36
    add-int v0, v0, v1

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_38
    goto/32 :goto_28

    nop

    nop

    :goto_39
    new-instance p0, Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_3a
    if-lez v0, :cond_4

    nop

    goto/32 :goto_51

    nop

    :cond_4
    goto/32 :goto_50

    nop

    :goto_3b
    float-to-int p0, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_3c
    iput-object p0, p1, Lrjf;->g:Landroid/animation/TimeInterpolator;

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_3d
    const v0, 0x15

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const p0, 0x461c4000    # 10000.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_3f
    invoke-static {p0, v0, v1}, Lqqy;->n(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p0

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

    :goto_40
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_42
    iget-object p0, p1, Lrjf;->i:Landroid/content/Context;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_43
    const v0, 0x7f0404e2

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_44
    iget-object p0, p1, Lrjf;->f:Landroid/animation/TimeInterpolator;

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

    :goto_45
    return-void

    nop

    nop

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :goto_46
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_47
    iget-object p0, p1, Lrjf;->d:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_48
    const v0, 0x7f0404ea

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_49
    if-eqz p0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto/32 :goto_b

    nop

    nop

    :goto_4b
    iget-object p0, p1, Lrjf;->j:Lrir;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4c
    if-eqz p0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_4d
    return-void

    nop

    :goto_4e
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_4f
    sget-object v1, Lrer;->a:Landroid/animation/TimeInterpolator;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_52
    invoke-virtual {p1, p0}, Lrjf;->a(I)F

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_53
    sget-object v1, Lrer;->a:Landroid/animation/TimeInterpolator;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop
.end method
