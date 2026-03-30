.class public final Lnvp;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final synthetic a:Lnvu;

.field private b:F


# direct methods
.method public constructor <init>(Lnvu;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lnvp;->a:Lnvu;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/high16 p1, -0x40800000    # -1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    iput p1, p0, Lnvp;->b:F

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method


# virtual methods
.method public final a(FZ)V
    .locals 5

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0, p2}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_1d

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

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4
    if-nez p2, :cond_0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sub-float/2addr p1, p2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const p2, 0x3e4ccccd    # 0.2f

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

    :goto_7
    iget-object p2, p0, Lnvp;->a:Lnvu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_8
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_9
    iget p2, p0, Lnvp;->b:F

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    iget-object p2, p0, Lnvp;->a:Lnvu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p2, p2, Lnvu;->U:Lhoh;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_c
    cmpl-double v3, v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_d
    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_e
    float-to-int v0, p2

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {v0, p2}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance p2, Ljava/math/BigDecimal;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_12
    iget-boolean p2, p2, Lnvu;->H:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_23

    nop

    nop

    :goto_15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p2}, Ljava/math/BigDecimal;->floatValue()F

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_17
    const/4 v0, 0x4

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_18
    invoke-virtual {p2, p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->d(F)F

    move-result p2

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_19
    if-gtz p1, :cond_2

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_2
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    int-to-float v1, v0

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_1b
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lnvp;->a:Lnvu;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_1d
    iget-object p2, p0, Lnvp;->a:Lnvu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1e
    iget-object p2, p0, Lnvp;->a:Lnvu;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p2, p0, Lnvp;->a:Lnvu;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_20
    const v0, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p2, p0, Lnvp;->a:Lnvu;

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

    :goto_22
    iget-object v0, v0, Lnvu;->f:Loyn;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iput-wide v1, p2, Lnvu;->S:D

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_25
    float-to-double v0, p1

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

    :goto_26
    iget-object p2, p2, Lnvu;->z:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v0, v0, Lnvu;->n:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {p2, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v0, p0, Lnvp;->a:Lnvu;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p2, v0}, Lhoh;->p(Lhmn;)Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2b
    iput-wide p1, p0, Lnvu;->S:D

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2d
    float-to-double v1, p2

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_2e
    if-nez v3, :cond_3

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object p2, p2, Lnvu;->y:Landroid/widget/SeekBar;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p2, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    :goto_31
    goto/32 :goto_1f

    nop

    nop

    :goto_32
    if-nez p2, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_4
    goto/32 :goto_a

    nop

    nop

    :goto_33
    invoke-virtual {p2, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-wide v3, p2, Lnvu;->S:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_35
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_37
    if-nez p2, :cond_5

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :cond_5
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p2, v0}, Lryb;->contains(Ljava/lang/Object;)Z

    move-result p2

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_39
    sget-object v0, Lhmq;->bC:Lhmn;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_3b
    goto :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p2, v0, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p2

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3e
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3f
    if-nez p2, :cond_6

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_25

    nop

    nop

    :goto_40
    iget-object p2, p2, Lnvu;->y:Landroid/widget/SeekBar;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iput p1, p0, Lnvp;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_42
    iget-object p2, p2, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->u:Lryb;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_43
    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-lez v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    :cond_7
    goto/32 :goto_35

    nop

    :goto_45
    cmpl-float p1, p1, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_46
    cmpl-float v1, p2, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-object p0, p0, Lnvp;->a:Lnvu;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_48
    const/4 v0, 0x3

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget-object p2, p0, Lnvp;->a:Lnvu;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_4a
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object p2, p2, Lnvu;->z:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lnvp;->a:Lnvu;

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

    :goto_2
    invoke-virtual {v0}, Lnvu;->at()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lnvp;->a:Lnvu;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lnvw;->p()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lnvu;->t:Lnwp;

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method
