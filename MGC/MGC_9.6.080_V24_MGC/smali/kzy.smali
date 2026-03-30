.class public final Lkzy;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PG"


# instance fields
.field final synthetic a:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lkzy;->a:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->getScrollY()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_5
    const v1, 0x6

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

    :goto_6
    invoke-virtual {p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->getChildCount()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->getHeight()I

    move-result v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p1, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    add-int/lit8 v0, v0, -0x1

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

    :goto_a
    return p1

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    :goto_10
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sub-int/2addr v0, v1

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

    :goto_12
    iget-object p1, p0, Lkzy;->a:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_13
    const v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_14
    move v0, p1

    nop

    nop

    :goto_15
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_16
    iput-boolean v0, p0, Lkzy;->b:Z

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

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

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_1a
    add-int/2addr v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-ne v1, v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3b

    nop

    nop

    nop

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

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return v0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return v2

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1}, Lnbh;->ordinal()I

    move-result v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_8
    cmpl-float p1, p1, p3

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->getPaddingBottom()I

    move-result p1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_a
    if-gtz p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int/2addr p2, p4

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->getHeight()I

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_d
    if-gtz p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p1, p0, Lkzy;->a:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_11
    if-ne v1, v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

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

    :goto_13
    goto/16 :goto_3f

    nop

    :goto_14
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez p1, :cond_5

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

    :cond_5
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_16
    sub-float/2addr p1, p2

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

    :goto_17
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_18
    sub-float p1, p2, p1

    nop

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

    :goto_19
    if-eqz p2, :cond_6

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sget-object p2, Lnbh;->a:Lnbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p1, p0, Lkzy;->a:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

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

    nop

    :goto_1d
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1e
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1f
    if-eqz p1, :cond_7

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->getPaddingTop()I

    move-result p4

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_21
    const/4 v3, 0x2

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_22
    iput-boolean v0, p0, Lkzy;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_23
    sub-float/2addr p1, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_24
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_26
    iget-object v1, p0, Lkzy;->a:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

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

    :goto_27
    iget-object v1, v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->i:Lnbh;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    nop

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

    :goto_29
    const p2, 0x7f0b0335

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_2a
    iget-boolean p1, p0, Lkzy;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object p1, p1, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->i:Lnbh;

    nop

    nop

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

    :goto_2c
    if-lez v0, :cond_8

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_31

    nop

    :goto_2d
    const/high16 p1, 0x43960000    # 300.0f

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

    :goto_2e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/high16 p3, 0x42a00000    # 80.0f

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
    add-int/2addr p2, p1

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_3

    nop

    nop

    :goto_32
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p2, p1}, Lnbh;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/16 :goto_5

    nop

    :goto_35
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_37
    goto :goto_3f

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3a
    cmpl-float p1, p2, p1

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

    :goto_3b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_3c
    invoke-virtual {p1, p2}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    nop

    :goto_3f
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_40
    if-ge p3, p2, :cond_9

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_9
    :goto_41
    goto/32 :goto_22

    nop

    nop

    nop
.end method
