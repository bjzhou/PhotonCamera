.class public Lnwo;
.super Lnvw;
.source "PG"


# instance fields
.field final synthetic b:Lnwp;


# direct methods
.method public constructor <init>(Lnwp;)V
    .locals 0

    goto/32 :goto_1

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

    nop

    :goto_1
    iput-object p1, p0, Lnwo;->b:Lnwp;

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

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lnvw;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 4

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_38

    nop

    :goto_3
    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->setEnabled(Z)V

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move v0, v1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_6
    iget-object v0, v0, Lnwp;->R:Lhoh;

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

    nop

    :goto_7
    iget-object v0, p0, Lnwo;->b:Lnwp;

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

    nop

    :goto_8
    iget-object p0, p0, Lnwp;->n:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget v0, v0, Lnwp;->H:F

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lnwo;->b:Lnwp;

    nop

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

    :goto_d
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget v0, v0, Lnwp;->G:F

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string v0, "min zoom value hasn\'t been initialized properly"

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_10
    if-eqz v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_14
    iget-boolean v1, v0, Lnwp;->J:Z

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

    nop

    nop

    :goto_15
    cmpl-float v0, v0, v3

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Lnwp;->D()V

    :goto_17
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lnwo;->b:Lnwp;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_19
    invoke-static {v1, v0}, Lrrf;->m(ZLjava/lang/Object;)V

    :goto_1a
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1b
    const/4 v1, 0x1

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

    nop

    :goto_1c
    if-nez v1, :cond_3

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_3
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1d
    move v1, v2

    nop

    :goto_1e
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Lnwo;->b:Lnwp;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_20
    if-gez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_4
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, v0, Lnwp;->v:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_22
    sget-object v1, Lhnz;->g:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_23
    goto :goto_26

    nop

    nop

    :goto_24
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_25
    move v0, v2

    nop

    nop

    :goto_26
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v0, v1}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_28
    cmpl-float v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v0, p0, Lnwo;->b:Lnwp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-boolean v1, v0, Lnwp;->I:Z

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

    :goto_2b
    iget-object v0, p0, Lnwo;->b:Lnwp;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    sget-object v3, Lhmq;->ae:Lhmn;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v0, v0, Lnwp;->R:Lhoh;

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

    :goto_2e
    if-eqz v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_5
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object p0, p0, Lnwo;->b:Lnwp;

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

    :goto_30
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_37

    nop

    :goto_31
    invoke-virtual {v0, v1}, Lnwp;->L(I)V

    goto/32 :goto_2f

    nop

    nop

    :goto_32
    goto/16 :goto_1e

    nop

    :goto_33
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_34
    const/high16 v3, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_35
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_3a

    nop

    nop

    :goto_39
    invoke-virtual {v0, v3}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v0, p0, Lnwo;->b:Lnwp;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3b
    invoke-static {v0, v3}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_18

    nop

    nop

    :goto_3c
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const-string v3, "max zoom value hasn\'t been initialized properly"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setAccessibilityLiveRegion(I)V

    goto/32 :goto_35

    nop

    nop
.end method

.method public final b()V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->setEnabled(Z)V

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lnwo;->b:Lnwp;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    sget-object v1, Lhnz;->g:Lhmn;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    iget-object v0, v0, Lnwp;->R:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lnwo;->b:Lnwp;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x12

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

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lnwp;->v:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_1
    goto/32 :goto_8

    nop
.end method

.method public c()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnwo;->b:Lnwp;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lnwp;->A(Z)V

    goto/32 :goto_2

    nop

    nop

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

    nop

    :goto_3
    const/4 v0, 0x1

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

    nop
.end method

.method public m()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-static {p0}, Lnvd;->a(Lnwo;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public p()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lnvd;->a(Lnwo;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public q()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lnvd;->a(Lnwo;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final t(F)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0, p1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lnwp;->z()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    iget-object p0, p0, Lnwo;->b:Lnwp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    iget-object v0, v0, Lnwp;->l:Loyn;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lnwo;->b:Lnwp;

    nop

    goto/32 :goto_5

    nop

    nop
.end method
