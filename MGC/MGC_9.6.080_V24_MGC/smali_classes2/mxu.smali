.class final Lmxu;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field a:Z

.field final synthetic b:D

.field final synthetic c:Lmxw;

.field final synthetic d:I


# direct methods
.method public constructor <init>(Lmxw;DI)V
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
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p4, p0, Lmxu;->d:I

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

    :goto_4
    iput-object p1, p0, Lmxu;->c:Lmxw;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    iput-wide p2, p0, Lmxu;->b:D

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    iput-boolean p1, p0, Lmxu;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean p1, p0, Lmxu;->a:Z

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 2

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Lmxw;->g()V

    goto/32 :goto_22

    nop

    nop

    :goto_1
    iget-object p1, p0, Lmxu;->c:Lmxw;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1a

    nop

    :goto_3
    iget-object p1, p1, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    iget-wide v0, p0, Lmxu;->b:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_5
    invoke-virtual {p1, v0, v1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->a(D)D

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p1, p0, Lmxu;->c:Lmxw;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p2, p1, Lmxw;->j:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_8
    iget p1, p0, Lmxu;->d:I

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    iput-wide v0, p2, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->g:D

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p2, v0, v1}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->m(D)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_d
    iget-object p2, p1, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_e
    invoke-static {p1}, Lmxw;->t(Lmxw;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Lmxw;->a()Lmxz;

    move-result-object p2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1, v0}, Lmxw;->d(Lj$/time/Duration;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_11
    const/4 p2, 0x1

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1, p2}, Lmxw;->f(Lmxz;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p0}, Lmxs;->a(Lmxw;)V

    :goto_16
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p2, p1}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->j(Ljava/lang/String;)V

    :goto_18
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_13

    nop

    nop

    :goto_1a
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_1d
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_1e
    iget-object p1, p1, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1f
    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    double-to-int p2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_21
    iget-object p1, p0, Lmxu;->c:Lmxw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_22
    goto :goto_18

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_24
    iget-boolean p1, p0, Lmxu;->a:Z

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_25
    invoke-virtual {p1, p2}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->setProgress(I)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object p0, p0, Lmxu;->c:Lmxw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_27
    iget-object p2, p1, Lmxw;->j:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_28
    iget-object p1, p0, Lmxu;->c:Lmxw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_29
    iget-object v0, p1, Lmxw;->n:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-wide v0, p0, Lmxu;->b:D

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

    nop

    nop

    :goto_2b
    const/4 p2, 0x2

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_2c
    iget-object p1, p1, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object p1, p0, Lmxu;->c:Lmxw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2e
    iget-object p1, p0, Lmxu;->c:Lmxw;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const v1, 0x8

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_30
    iget-object p1, p0, Lmxu;->c:Lmxw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_31
    if-eq p1, p2, :cond_2

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p1, p2}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->setEnabled(Z)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method
