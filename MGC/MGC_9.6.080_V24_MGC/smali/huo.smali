.class public final synthetic Lhuo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lhut;

.field public final synthetic b:Lhvf;


# direct methods
.method public synthetic constructor <init>(Lhut;Lhvf;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p1, p0, Lhuo;->a:Lhut;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lhuo;->b:Lhvf;

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p1, Lhum;->b:Lhum;

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

    :goto_1
    invoke-virtual {p0, p1}, Lhuj;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    aget p2, p2, v3

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_3
    iget-object p0, p0, Lhuo;->b:Lhvf;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_4
    const v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    return v2

    nop

    :goto_6
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_7
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_f

    nop

    :goto_9
    invoke-virtual {p0, p2, p1}, Lhvb;->f(FLhum;)V

    :goto_a
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_b
    sget-object p1, Lhum;->a:Lhum;

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_3e

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

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_3c

    nop

    nop

    :goto_11
    goto/16 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0, p1}, Lhvb;->d(Lhum;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, v0, Lhut;->m:Loyn;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_15
    sget-object p1, Lhuj;->c:Lhuj;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_16
    aget v0, p2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_13

    nop

    nop

    :goto_18
    invoke-virtual {p0, v0, v1}, Lhvb;->f(FLhum;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_19
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1a
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1, v0}, Lhum;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1c
    iget-object p0, v0, Lhut;->k:Lcom/google/android/apps/camera/evcomp/EvCompView;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1d
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/camera/evcomp/EvCompView;->m(Landroid/view/View;Landroid/view/MotionEvent;)[F

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

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

    :goto_1f
    check-cast v1, Lhum;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_20
    move v2, v3

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_21
    aget v0, p2, v2

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :cond_2
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v0, 0x19

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

    nop

    :goto_24
    const/4 v4, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0, v3, v3}, Lhut;->m(ZZ)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v0, v0, Lhut;->k:Lcom/google/android/apps/camera/evcomp/EvCompView;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_28
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-nez v0, :cond_3

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v1}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getVisibility()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_12

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_c

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-eqz p0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_4
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_30
    cmpl-float v0, v0, v1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_31
    check-cast p1, Lhum;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_32
    sget-object v0, Lhum;->a:Lhum;

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

    :goto_33
    if-eq v1, v3, :cond_5

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_35
    if-eqz v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_6
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v0, v3}, Lhut;->j(Z)V

    :goto_37
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-interface {p0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_3a
    check-cast p0, Lhuj;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v0, p0, Lhuo;->a:Lhut;

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_3d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_40
    check-cast p1, Lhum;

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

    :goto_41
    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/camera/evcomp/EvCompView;->m(Landroid/view/View;Landroid/view/MotionEvent;)[F

    move-result-object p2

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

    :goto_42
    goto/16 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_3d

    nop

    nop

    :goto_44
    return v3

    nop

    nop

    :goto_45
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_46
    if-eq v1, v4, :cond_7

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_47
    const/high16 v1, -0x40800000    # -1.0f

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v1, v0, Lhut;->k:Lcom/google/android/apps/camera/evcomp/EvCompView;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop
.end method
