.class public final Lhag;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lndc;


# instance fields
.field public final synthetic a:Lhak;

.field final synthetic b:Lndd;

.field public final synthetic c:Lhah;


# direct methods
.method public constructor <init>(Lhah;Lhak;Lndd;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lhag;->c:Lhah;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iput-object p2, p0, Lhag;->a:Lhak;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p3, p0, Lhag;->b:Lndd;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/view/View;Z)V
    .locals 3

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->removeAllViews()V

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_20

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p2, p2, Lhah;->d:Ljdc;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p2, p0, Lhag;->c:Lhah;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v1, p2, Lhah;->g:Lngo;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1}, Lhah;->b()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    iget-boolean p2, p2, Lhak;->c:Z

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p2, v1, v2}, Lhah;->i(II)V

    :goto_d
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_e
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1, v2}, Lglm;->m(Z)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p2, v0}, Lhah;->e(Z)V

    goto/32 :goto_2c

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {v1, v2}, Lndu;->j(Z)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->b()I

    move-result v2

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v0, Lhaf;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-eq p2, v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p2, p0, Lhag;->c:Lhah;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p2, p0, Lhag;->c:Lhah;

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

    nop

    :goto_1b
    iget-object v1, p0, Lhag;->c:Lhah;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-ne p2, v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_1
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {v1, v2}, Lngo;->K(Z)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x1c

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p2, v2}, Ljdc;->j(I)V

    :goto_20
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v1, p0, Lhag;->a:Lhak;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_22
    if-nez p2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p1}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->b()I

    move-result v1

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

    nop

    :goto_24
    const v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_25
    if-nez p2, :cond_3

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

    :cond_3
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_26
    const v1, 0x7f020007

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_28
    iget v1, v1, Lhak;->e:I

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object p2, p2, Lhah;->b:Ljava/util/concurrent/atomic/AtomicInteger;

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

    :goto_2a
    iget-object p2, p0, Lhag;->c:Lhah;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p1}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_2d
    invoke-virtual {p2, v0}, Lhah;->e(Z)V

    goto/32 :goto_3a

    nop

    nop

    :goto_2e
    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2f
    invoke-direct {v0, p0}, Lhaf;-><init>(Lhag;)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    check-cast p1, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p1}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->b()I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_32
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_3c

    nop

    :cond_4
    goto/32 :goto_3b

    nop

    :goto_33
    iget-object p2, p0, Lhag;->a:Lhak;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v1, p2, Lhah;->c:Lglm;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object p2, p0, Lhag;->c:Lhah;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_36
    iget-object p2, p2, Lhah;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v1, p2, Lhah;->f:Lndu;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p2, v1, v0}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    goto/32 :goto_17

    nop

    nop

    :goto_39
    invoke-virtual {p2, v0}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object p2, p0, Lhag;->c:Lhah;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p1}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->j()Z

    move-result p2

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_3e
    iget v2, v1, Lhah;->m:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p1}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->b()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_3c

    nop

    nop

    nop

    nop
.end method

.method public final b(Z)V
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean p1, p1, Lhak;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_3
    invoke-virtual {p0}, Lhah;->b()V

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v1, p0, Lhag;->b:Lndd;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lhag;->c:Lhah;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lhag;->c:Lhah;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_b
    return-void

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_14

    nop

    :goto_10
    invoke-interface {v1}, Lndd;->b()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, v0, Lhah;->b:Ljava/util/concurrent/atomic/AtomicInteger;

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

    :goto_12
    const v0, 0x5

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_13
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p1, p0, Lhag;->a:Lhak;

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

    nop
.end method
