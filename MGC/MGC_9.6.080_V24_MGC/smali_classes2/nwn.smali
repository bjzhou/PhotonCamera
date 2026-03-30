.class public Lnwn;
.super Lnvw;
.source "PG"


# instance fields
.field private a:F

.field final synthetic b:Lnwp;


# direct methods
.method public constructor <init>(Lnwp;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lnwn;->b:Lnwp;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lnvw;-><init>()V

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
.end method


# virtual methods
.method public final a()V
    .locals 3

    goto/32 :goto_5

    nop

    nop

    :goto_0
    iget-object v0, p0, Lnwn;->b:Lnwp;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lnwn;->b:Lnwp;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput v0, p0, Lnwn;->a:F

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_5
    const v0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string v2, "max zoom value hasn\'t been initialized properly"

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0, v2}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v2}, Lnwp;->L(I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lnwn;->b:Lnwp;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lnwn;->b:Lnwp;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lnwn;->b:Lnwp;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_d
    iget-object v0, p0, Lnwn;->b:Lnwp;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lnwn;->b:Lnwp;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_f
    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_10
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_13
    iget-object v0, v0, Lnwp;->l:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_14
    invoke-virtual {v0, v2}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->c(Z)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lnwn;->b:Lnwp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_17
    iget-object v0, v0, Lnwp;->n:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->d(Z)V

    :goto_1a
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1c
    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1d
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setAccessibilityLiveRegion(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v0, v0, Lnwp;->R:Lhoh;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    sget-object v2, Lhnz;->g:Lhmn;

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

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p0, p0, Lnwp;->n:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_24
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_25
    cmpl-float v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_30

    nop

    nop

    :goto_27
    iget v0, v0, Lnwp;->G:F

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const v1, 0x12

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0}, Lnwp;->z()V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2a
    goto/16 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v0, v0, Lnwp;->n:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

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

    :goto_2e
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_11

    nop

    :goto_30
    move v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_31
    check-cast v0, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop
.end method

.method public final b()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnwp;->n:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lnwn;->b:Lnwp;

    nop

    goto/32 :goto_0

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

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->c(Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public c()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

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

    :goto_1
    iget-object p0, p0, Lnwn;->b:Lnwp;

    nop

    nop

    goto/32 :goto_0

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

    :goto_3
    invoke-virtual {p0, v0}, Lnwp;->A(Z)V

    goto/32 :goto_2

    nop

    nop
.end method

.method public p()V
    .locals 4

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lnwn;->b:Lnwp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lnwp;->G()V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_23

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lnwn;->b:Lnwp;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v3, v1, v2}, Lnwp;->J(IFF)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v3, 0x5

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    if-nez v1, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Lnwp;->F()V

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    check-cast v2, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lnwn;->b:Lnwp;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_e
    iget-object v0, v0, Lnwp;->R:Lhoh;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_f
    iget-boolean v1, v0, Lnwp;->I:Z

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_12
    if-eqz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lnwn;->b:Lnwp;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x9

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->c(Z)V

    :goto_17
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Lnwn;->b:Lnwp;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1a
    iget-object v2, v0, Lnwp;->l:Loyn;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Lnwp;->z()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1e
    iget-object v0, p0, Lnwn;->b:Lnwp;

    nop

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

    :goto_1f
    iget v1, p0, Lnwn;->a:F

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_20
    invoke-interface {v2}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_21
    sget-object v1, Lhnz;->g:Lhmn;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_24
    iget-object v0, v0, Lnwp;->n:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

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
.end method
