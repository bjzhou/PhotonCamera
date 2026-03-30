.class public final Lnqz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_3

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

    nop

    :goto_1
    iput-object p1, p0, Lnqz;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Lnqz;->b:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnra;->c:Lnqt;

    nop

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

    :goto_1
    iget-object p1, p1, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_2
    if-nez p3, :cond_0

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_0
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p1, Lmxw;

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

    :goto_4
    iget-object p1, p0, Lnqz;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1, p2}, Lmxw;->f(Lmxz;)V

    :goto_6
    goto/32 :goto_2a

    nop

    nop

    :goto_7
    iget p1, p0, Lnqz;->b:I

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_8
    invoke-static {p2}, Lmxw;->v(I)Lmxz;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p1, p0, Lnqz;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p1, p0, Lnqz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->setProgress(I)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    double-to-int p1, v0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p1, p0, Lnqz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez p1, :cond_1

    nop

    goto/32 :goto_4e

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_10
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p1, p1, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, p2}, Landroid/widget/VideoView;->seekTo(I)V

    goto/32 :goto_47

    nop

    nop

    :goto_13
    iget-object p1, p0, Lnqz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_14
    iget-object p1, p0, Lnqz;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Lnqt;->d:Landroid/widget/VideoView;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast p0, Lmxw;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_18
    if-nez p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-nez p1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_40

    nop

    nop

    :goto_1a
    invoke-virtual {p1, v2, v3}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->a(D)D

    move-result-wide v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Lmxw;->g()V

    :goto_1c
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_1e
    int-to-double v2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_5

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

    nop

    :cond_5
    goto/32 :goto_3e

    nop

    :goto_20
    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->c()D

    move-result-wide v0

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

    :goto_21
    check-cast p1, Lmxw;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_22
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_23
    iget-object p1, p1, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_24
    iget-object p1, p1, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-eqz p1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :cond_6
    goto/32 :goto_3b

    nop

    nop

    :goto_26
    check-cast p0, Lmxw;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1}, Lmxw;->q()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_28
    iget-object p3, p1, Lmxw;->j:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    nop

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

    :goto_29
    if-eqz p3, :cond_7

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :cond_7
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object p0, p0, Lnqz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast p1, Lmxw;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_2c
    check-cast p0, Lnra;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2d
    invoke-virtual {p1, v2, v3}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->e(D)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2e
    iget-object p1, p0, Lnqz;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2f
    check-cast p1, Lmxw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p1, p2}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->g(I)Z

    move-result p1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_31
    iget-object p1, p1, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_32
    check-cast p1, Lmxw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_33
    invoke-virtual {p1, p2}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->g(I)Z

    move-result p1

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_34
    invoke-virtual {p1, v0}, Lmxw;->p(Z)V

    goto/32 :goto_3c

    nop

    nop

    :goto_35
    iget-object p1, p1, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_37
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_38
    cmpl-double p1, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_39
    check-cast p1, Lmxw;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_3a
    check-cast p1, Lmxw;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_3b
    iget-object p0, p0, Lnqz;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3c
    iget-object p1, p0, Lnqz;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object p0, p0, Lnqz;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object p1, p0, Lnqz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_41
    invoke-virtual {p3, v4, v5}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->m(D)V

    goto/32 :goto_38

    nop

    nop

    :goto_42
    return-void

    nop

    nop

    :goto_43
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_44
    const v0, 0x16

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_45
    return-void

    nop

    :goto_46
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_49
    return-void

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_4b
    check-cast p1, Lmxw;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    const v1, 0x8

    nop

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

    :goto_4d
    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :goto_4e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    check-cast p1, Lmxw;

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    goto/32 :goto_5

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
    goto/32 :goto_2

    nop

    nop

    :goto_2
    iget-object p0, p0, Lnqz;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    if-nez p1, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget p1, p0, Lnqz;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lnra;->c:Lnqt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p0, Lnra;

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

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lnqq;->c()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnqz;->a:Ljava/lang/Object;

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

    :goto_1
    invoke-virtual {p0}, Lnqq;->d()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lnra;->c:Lnqt;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget p1, p0, Lnqz;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p0, Lnra;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop
.end method
