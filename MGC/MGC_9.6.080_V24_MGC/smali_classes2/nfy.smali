.class public final Lnfy;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PG"


# instance fields
.field final synthetic a:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iput-object p1, p0, Lnfy;->a:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

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

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 6

    goto/32 :goto_5

    nop

    nop

    :goto_0
    iput v2, v0, Landroid/graphics/RectF;->right:F

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1
    iget v1, v0, Landroid/graphics/RectF;->right:F

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2
    const/high16 v5, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->p()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_0
    goto/32 :goto_21

    nop

    :goto_5
    const v0, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_6
    sget-object v1, Lnga;->K:Lnga;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_7
    iget v2, v0, Landroid/graphics/RectF;->right:F

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_8
    iget-object v0, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->m:Landroid/graphics/RectF;

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

    :goto_9
    const v4, 0x3e4cccd0    # 0.20000005f

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_a
    sub-float/2addr v3, v2

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_22

    nop

    nop

    :goto_c
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_d
    iput v2, v0, Landroid/graphics/RectF;->left:F

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    sub-float/2addr v2, v1

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

    :goto_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

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

    :goto_10
    return-void

    nop

    nop

    :goto_11
    goto/32 :goto_b

    nop

    nop

    :goto_12
    div-float/2addr v1, v5

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget v3, v0, Landroid/graphics/RectF;->top:F

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->d()Lnga;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v1, :cond_2

    nop

    goto/32 :goto_18

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {v0}, Lngu;->h()V

    :goto_18
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_19
    div-float/2addr v2, v5

    nop

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

    :goto_1a
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_3
    goto/32 :goto_2a

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

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

    nop

    :goto_1c
    iget-object v0, p0, Lnfy;->a:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

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

    :goto_1f
    iget v3, v0, Landroid/graphics/RectF;->top:F

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

    :goto_20
    add-float/2addr v2, v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_21
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_23
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v0, p0, Lnfy;->a:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_26
    iget v2, v0, Landroid/graphics/RectF;->left:F

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

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

    :goto_28
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

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

    :goto_29
    iget-object v0, p0, Lnfy;->a:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

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

    nop

    nop

    :goto_2a
    iget-object p0, p0, Lnfy;->a:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    add-float/2addr v3, v2

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2c
    iput v3, v0, Landroid/graphics/RectF;->top:F

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

    :goto_2d
    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_2e
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_30
    iget-object v0, p0, Lnfy;->a:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_31
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->v:Landroid/view/MotionEvent;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v0, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->d:Lngu;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-nez v0, :cond_4

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_34
    iget v2, v0, Landroid/graphics/RectF;->left:F

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    sub-float/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_36
    iget-object v0, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->m:Landroid/graphics/RectF;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_37
    sub-float/2addr v1, v2

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_38
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_39
    if-eq v0, v1, :cond_5

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3a

    nop

    nop

    :goto_3a
    goto/16 :goto_18

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3c
    mul-float/2addr v2, v4

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_3d
    mul-float/2addr v1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop
.end method
