.class public final Lmha;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PG"


# instance fields
.field final synthetic a:Lmhb;


# direct methods
.method public constructor <init>(Lmhb;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lmha;->a:Lmhb;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

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

    nop

    nop
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lmha;->a:Lmhb;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    cmpl-float p2, p2, p3

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

    nop

    :goto_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_8
    if-ne v1, v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_9
    sub-float p2, p1, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sub-float/2addr p2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_b
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2c

    nop

    nop

    :goto_c
    if-nez p1, :cond_2

    nop

    goto/32 :goto_15

    nop

    :cond_2
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_e
    const/4 v3, 0x2

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

    :goto_f
    if-nez p0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/high16 p3, 0x42a00000    # 80.0f

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_12
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_13
    cmpg-float p3, p2, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_14
    return v2

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->e()V

    :goto_18
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0xb

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

    :goto_1a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-ne v1, v2, :cond_4

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_4
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lmha;->a:Lmhb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v1, v1, Lmhb;->s:Lnbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-gtz p1, :cond_5

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p0, p0, Lmhb;->C:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_21
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    nop

    nop

    :goto_22
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/high16 p3, -0x3d600000    # -80.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_26
    const/high16 p4, 0x43480000    # 200.0f

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_27
    return v0

    nop

    nop

    :goto_28
    goto/32 :goto_16

    nop

    nop

    :goto_29
    goto :goto_22

    nop

    nop

    :goto_2a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-gtz p2, :cond_6

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

    :cond_6
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->f()V

    :goto_2d
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_2e
    if-ltz p3, :cond_7

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object p0, p0, Lmhb;->C:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

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

    :goto_30
    iget-object v1, p0, Lmha;->a:Lmhb;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_31
    cmpl-float p3, p1, p4

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_32
    return v2

    nop

    :goto_33
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-eqz p2, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_35
    if-gtz p3, :cond_9

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_36
    goto/16 :goto_22

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_38
    if-lez v0, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_a
    goto/32 :goto_3

    nop

    :goto_39
    cmpl-float p1, p1, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const/4 v2, 0x1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_3e
    invoke-virtual {v1}, Lnbh;->ordinal()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_3f
    sub-float/2addr p2, p1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop
.end method
