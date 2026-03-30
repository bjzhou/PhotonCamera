.class public final Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PG"


# static fields
.field private static final DEFAULT_PROGRESS_COLOR:I = -0x1

.field private static final DEFAULT_TRACK_COLOR:I = 0x1affffff

.field private static final DEFAULT_TRACK_WIDTH_DP:F = 3.0f

.field private static final DEGREES_PER_RADIAN:F = 57.295776f

.field private static final LEVEL_RANGE:I = 0x2710

.field private static final MAX_DEGREES:F = 360.0f

.field private static final START_OFFSET:F = 270.0f

.field private static final TINY_SWEEP_ANGLE_SIZE:F = 0.01f

.field private static final TRACK_ALPHA:I = 0x1a


# instance fields
.field private capRadiusInDegrees:F

.field private final destSquare:Landroid/graphics/Rect;

.field private direction:Lobb;

.field private gravity:I

.field private final paintProgress:Landroid/graphics/Paint;

.field private final paintTrack:Landroid/graphics/Paint;

.field private progressColor:Landroid/content/res/ColorStateList;

.field private rotation:F

.field private showEmptySweepAngle:Z

.field private startAngle:F

.field private sweepAngle:F

.field private final themeState:Lobc;

.field private trackColor:Landroid/content/res/ColorStateList;

.field private trackEndAngle:F

.field private trackStartAngle:F

.field private trackWidth:F

.field private final typedArrayHelper:Lobe;


# direct methods
.method private 22460fd9bcbc6afd2bbeafd55ca5b6cdm()V
    .locals 3

    goto/32 :goto_11

    nop

    nop

    :goto_0
    div-float/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackWidth:F

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->a569c38a69903f243b199a3e0e82293fm()F

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->paintProgress:Landroid/graphics/Paint;

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

    :goto_8
    mul-float/2addr v0, v2

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

    :goto_9
    mul-float/2addr v1, p0

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

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_b
    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->sweepAngle:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v2, 0x42652ee0

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_e
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_10
    div-float/2addr v0, v2

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_3

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_17
    iget-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->showEmptySweepAngle:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_19
    iget v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackWidth:F

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method private 67e99f742908d222f95584965db0f58dm(Landroid/content/res/TypedArray;)V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x2

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

    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

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

    :goto_3
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lobc;->b:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0xb

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/16 v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_a
    invoke-static {p1, v0}, Lobe;->a(Landroid/content/res/TypedArray;I)Z

    move-result v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_b
    invoke-static {p1, v0}, Lobe;->a(Landroid/content/res/TypedArray;I)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v0, Lobd;->a:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_d
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->themeState:Lobc;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_f
    if-nez v1, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    :goto_11
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    :goto_13
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->themeState:Lobc;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_14
    iput-object v0, v1, Lobc;->a:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_16
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop

    :goto_17
    const/4 v0, 0x4

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop
.end method

.method private 68d4e82f584e6c0f0f137777cb194718m(Landroid/graphics/Canvas;FF)V
    .locals 14

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    div-float/2addr v1, v3

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget v2, v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackStartAngle:F

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_2
    iget-object v1, v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->destSquare:Landroid/graphics/Rect;

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

    :goto_3
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_4
    iget-object v8, v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->paintProgress:Landroid/graphics/Paint;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_5
    move v2, v12

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->getMaximumSweepAngle()F

    move-result v7

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x7

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v8, 0x0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_9
    iget-object v1, v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->destSquare:Landroid/graphics/Rect;

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

    :goto_a
    iget v1, v1, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move v3, v13

    nop

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

    :goto_c
    move v4, v13

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_d
    sub-float v13, v1, v12

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    double-to-float v12, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto/32 :goto_2

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v11

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move-object v0, p0

    nop

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

    :goto_13
    move-object v1, p1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_14
    iget v1, v1, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    int-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1, v2, v1, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_17
    int-to-float v2, v2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_19
    const/high16 v3, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move/from16 v6, p3

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

    :goto_1c
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1d
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1e
    iget-object v1, v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->destSquare:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    float-to-double v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_20
    move v3, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_21
    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v7, 0x0

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

    :goto_23
    move v5, v13

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget v2, v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->rotation:F

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_25
    div-float/2addr v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_2d

    nop

    nop

    :goto_27
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v9, v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->paintTrack:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_29
    move/from16 v5, p2

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

    :goto_2a
    move v1, v12

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2b
    int-to-float v1, v1

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_2c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2e
    const/high16 v3, 0x43870000    # 270.0f

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    goto/32 :goto_3

    nop

    nop

    :goto_30
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_31
    int-to-float v1, v1

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

    :goto_32
    move-object v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_33
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_34
    move-object v10, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_26

    nop

    :goto_36
    add-float v6, v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_37
    iget-object v2, v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->destSquare:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v1, v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->destSquare:Landroid/graphics/Rect;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget v2, v2, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v1, v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->paintTrack:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop
.end method

.method private 7b78da294d812f3380e6c8f1159f1434m([I)Z
    .locals 5

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1
    move v0, v3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_14

    nop

    nop

    :goto_3
    if-ne v0, v1, :cond_0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    :goto_4
    goto :goto_12

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v1, -0x1

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2a

    nop

    :goto_8
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->paintTrack:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_b
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->paintTrack:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_c
    goto :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v4, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->paintProgress:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_f
    move v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_10
    if-ne p1, v0, :cond_2

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_11
    return v3

    nop

    nop

    :goto_12
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, p1, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_14
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move v0, v2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_17
    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2f

    nop

    nop

    :goto_18
    invoke-virtual {v0, v4}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1a
    const/16 v4, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1d
    const v1, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_1e
    const/4 v2, 0x1

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

    :goto_1f
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_20
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackColor:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->paintProgress:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->progressColor:Landroid/content/res/ColorStateList;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_25
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_26
    const v4, 0x1affffff

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v3, 0x0

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

    :goto_28
    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_29
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2b
    goto :goto_32

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_2e
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->progressColor:Landroid/content/res/ColorStateList;

    nop

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

    :goto_30
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_31
    move v1, v3

    nop

    nop

    :goto_32
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-nez v1, :cond_6

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_34
    if-eqz v1, :cond_7

    nop

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

    :cond_7
    goto/32 :goto_25

    nop

    nop
.end method

.method private 834295ee0ce2495d616ee74a30889771m()V
    .locals 2

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

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

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto :goto_6

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x4

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

    :goto_5
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    nop

    nop

    :goto_6
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->getMaximumSweepAngle()F

    move-result v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_d
    cmpl-float v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/high16 v1, 0x43b40000    # 360.0f

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
    goto/32 :goto_8

    nop

    nop

    :goto_10
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->paintTrack:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_12
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto/32 :goto_9

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 4

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

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
    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_3
    const/high16 v0, 0x43b40000    # 360.0f

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_5
    new-instance v1, Landroid/graphics/Paint;

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

    :goto_6
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_32

    nop

    nop

    :goto_8
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto/32 :goto_24

    nop

    nop

    :goto_a
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->paintTrack:Landroid/graphics/Paint;

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

    :goto_c
    new-instance v0, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_d
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_6

    nop

    nop

    :goto_f
    const/4 v2, 0x1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->typedArrayHelper:Lobe;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_11
    invoke-direct {v0, p0}, Lobc;-><init>(Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_14
    new-instance v0, Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_16
    const/high16 v3, 0x40400000    # 3.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_17
    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->themeState:Lobc;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_18
    mul-float/2addr v2, v3

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->progressColor:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1b
    iput v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->gravity:I

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

    nop

    :goto_1c
    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->destSquare:Landroid/graphics/Rect;

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

    :goto_1d
    iput v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackWidth:F

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1e
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/16 v0, 0x11

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->progressColor:Landroid/content/res/ColorStateList;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    sget-object v0, Lobb;->a:Lobb;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_23
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackWidth:F

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_25
    iput v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackEndAngle:F

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

    nop

    nop

    :goto_26
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_27
    const v0, 0x20

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_28
    new-instance v0, Lobc;

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

    nop

    :goto_29
    const/4 v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->direction:Lobb;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2b
    goto/32 :goto_8

    nop

    :goto_2c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const v1, 0x6

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2f
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_30
    invoke-direct {v2, v3}, Lobe;-><init>([I)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    return-void

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_33
    new-instance v2, Lobe;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_21

    nop

    nop

    :goto_35
    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->paintProgress:Landroid/graphics/Paint;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackWidth:F

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_38
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_39
    sget-object v3, Lobd;->a:[I

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->progressColor:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    nop

    nop

    goto/32 :goto_2d

    nop

    nop
.end method

.method private a569c38a69903f243b199a3e0e82293fm()F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->destSquare:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

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

    :goto_3
    const/high16 v0, 0x40000000    # 2.0f

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

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    :goto_5
    sub-float/2addr v0, p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    iget p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackWidth:F

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    div-float/2addr p0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method private a58ee42ecf09d6c64addd4609d0bc1fcm(Landroid/graphics/Rect;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->e025c8baec1154d537c89fca00350bb2m(Landroid/graphics/Rect;)V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->22460fd9bcbc6afd2bbeafd55ca5b6cdm()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->a6c764868369069e4a9aec7ffee490c9m()V

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method private a6c764868369069e4a9aec7ffee490c9m()V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    div-float/2addr v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    mul-float/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_4
    const v1, 0x42652ee0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x1d

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->a569c38a69903f243b199a3e0e82293fm()F

    move-result v1

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

    :goto_7
    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackWidth:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    :goto_a
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    iput v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->capRadiusInDegrees:F

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_e
    const v0, 0x2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop
.end method

.method private e025c8baec1154d537c89fca00350bb2m(Landroid/graphics/Rect;)V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x3

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    const v1, 0x20

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

    :goto_6
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->destSquare:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_a
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->gravity:I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_d
    invoke-static {p0, v0, v0, p1, v1}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/32 :goto_3

    nop

    nop

    :goto_e
    goto/32 :goto_8

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop
.end method

.method private eb3ba3cc19a0540066cd1a7aadab144em(Landroid/content/res/TypedArray;)V
    .locals 3

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_1
    sget-object v0, Lobd;->a:[I

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

    :goto_2
    const/4 v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->setGravity(I)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4
    iget v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->sweepAngle:F

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_5
    invoke-direct {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->67e99f742908d222f95584965db0f58dm(Landroid/content/res/TypedArray;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->setRotation(F)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->startAngle:F

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_9
    if-eq v0, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->direction:Lobb;

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

    :goto_b
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_c
    iget v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackEndAngle:F

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    iget-boolean v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->showEmptySweepAngle:Z

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

    :goto_f
    const v0, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_13
    iget v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackStartAngle:F

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

    :goto_14
    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

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

    :goto_16
    invoke-virtual {p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->setTrackEndAngle(F)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_17
    const/4 v0, 0x5

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

    nop

    :goto_18
    goto/32 :goto_1e

    nop

    nop

    :goto_19
    const/4 v0, 0x2

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sget-object v0, Lobb;->b:Lobb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

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

    :goto_1c
    iget v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->gravity:I

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1d
    goto/32 :goto_12

    nop

    nop

    :goto_1e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1f
    const v1, 0xb

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

    :goto_20
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_1d

    nop

    :goto_21
    sget-object v0, Lobb;->a:Lobb;

    nop

    nop

    :goto_22
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v1, 0x1

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

    nop

    :goto_24
    const/4 v0, 0x6

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->setTrackStartAngle(F)V

    goto/32 :goto_32

    nop

    nop

    :goto_26
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

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

    :goto_28
    invoke-virtual {p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->setStartAngle(F)V

    goto/32 :goto_2

    nop

    nop

    :goto_29
    invoke-virtual {p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->setLevel(I)Z

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->rotation:F

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2b
    iget v0, v0, Lobb;->c:I

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2c
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->getLevel()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->setTrackWidth(F)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->showEmptySweepAngle(Z)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2f
    const/16 v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_30
    goto/16 :goto_22

    nop

    nop

    :goto_31
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const/16 v0, 0x9

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_33
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->setSweepAngle(F)V

    goto/32 :goto_2c

    nop

    nop

    :goto_35
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_36
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_37
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_38
    const/16 v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->paintTrack:Landroid/graphics/Paint;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->setDirection(Lobb;)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

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
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->typedArrayHelper:Lobe;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->67e99f742908d222f95584965db0f58dm(Landroid/content/res/TypedArray;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v0, [I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->themeState:Lobc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    iget-object v0, v0, Lobe;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lobc;->a()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public canApplyTheme()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->typedArrayHelper:Lobe;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-boolean p0, p0, Lobe;->a:Z

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

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    div-float v1, v0, v2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    iget-boolean v4, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->showEmptySweepAngle:Z

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    const v1, -0x445c28f6    # -0.005f

    nop

    :goto_3
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_5
    mul-float/2addr v2, v1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v4, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_8
    move v3, v4

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

    :goto_9
    const/high16 v1, 0x43870000    # 270.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_a
    goto/16 :goto_36

    nop

    nop

    :goto_b
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

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

    :goto_d
    invoke-direct {p0, p1, v0, v3}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->68d4e82f584e6c0f0f137777cb194718m(Landroid/graphics/Canvas;FF)V

    :goto_e
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-float/2addr v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v3, 0x3c23d70a    # 0.01f

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->destSquare:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_12
    if-nez v0, :cond_1

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

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

    nop

    :goto_14
    iget v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->capRadiusInDegrees:F

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_15
    sub-float/2addr v2, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_17
    sub-float/2addr v0, v1

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

    :goto_18
    goto/16 :goto_36

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1f

    nop

    nop

    :goto_1a
    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackStartAngle:F

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    cmpl-float v5, v0, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0x18

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1d
    const v0, 0x2

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1e
    iget v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->sweepAngle:F

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1f
    if-lez v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->direction:Lobb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_21
    add-float/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_22
    sub-float/2addr v2, v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_23
    add-float/2addr v0, v2

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->isVisible()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_26
    const/4 v4, 0x0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_28
    return-void

    nop

    nop

    :goto_29
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2a
    iget v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->startAngle:F

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const/high16 v2, 0x43b40000    # 360.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2c
    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->sweepAngle:F

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2d
    sub-float/2addr v0, v3

    nop

    :goto_2e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2f
    sget-object v1, Lobb;->a:Lobb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_30
    cmpg-float v2, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_31
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_35
    move v3, v0

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto :goto_2e

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_39
    sub-float/2addr v0, v1

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_3a
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    :cond_4
    goto/32 :goto_31

    nop

    :goto_3b
    iget v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->startAngle:F

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_3c
    if-eq v0, v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    :cond_5
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3d
    if-eqz v5, :cond_6

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackStartAngle:F

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->startAngle:F

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

    :goto_40
    add-float/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_41
    goto/16 :goto_e

    nop

    nop

    :goto_42
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_43
    if-lez v2, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_44
    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackEndAngle:F

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public getAlpha()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->paintProgress:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

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
    return p0

    nop
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->paintProgress:Landroid/graphics/Paint;

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

    :goto_2
    invoke-virtual {p0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public getMaximumSweepAngle()F
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

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
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackEndAngle:F

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

    :goto_3
    iget p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackStartAngle:F

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

    :goto_4
    sub-float/2addr v0, p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public getOpacity()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 p0, -0x3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .locals 5

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, v2, v3, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v4, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->destSquare:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_5
    sub-int/2addr v0, v2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->destSquare:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    sub-int/2addr v1, p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    iget v2, v2, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    nop

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

    nop

    :goto_b
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->destSquare:Landroid/graphics/Rect;

    nop

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

    :goto_d
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

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

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_10
    iget v2, v1, Landroid/graphics/Rect;->left:I

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

    nop

    :goto_11
    iget v3, v1, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v0, v0, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->destSquare:Landroid/graphics/Rect;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_14
    sub-int/2addr v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_15
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget v3, v1, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_18
    iget v4, v4, Landroid/graphics/Rect;->right:I

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sub-int/2addr v2, v3

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop
.end method

.method public getRotation()F
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    iget p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->rotation:F

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public getStartAngle()F
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->startAngle:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop
.end method

.method public getSweepAngle()F
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->sweepAngle:F

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public getTrackStartAngle()F
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackStartAngle:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public getTrackWidth()F
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackWidth:F

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    :goto_0
    iget p4, p3, Landroid/util/TypedValue;->type:I

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p1, [I

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p4, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    nop

    :goto_3
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_5
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-boolean p4, p2, Lobe;->a:Z

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    goto/32 :goto_10

    nop

    nop

    :goto_9
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast p4, [I

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_b
    const/4 p4, 0x1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    check-cast p4, [I

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_10
    iget-object p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->typedArrayHelper:Lobe;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p4, p3, p1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_12
    iget-object p4, p2, Lobe;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_13
    goto/32 :goto_22

    nop

    nop

    :goto_14
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lt v0, p4, :cond_1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->typedArrayHelper:Lobe;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eq p4, v1, :cond_2

    nop

    goto/32 :goto_7

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    :goto_18
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_19
    iget-boolean p1, p1, Lobe;->a:Z

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1a
    new-instance p3, Landroid/util/TypedValue;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Lobc;->a()V

    :goto_1c
    goto/32 :goto_21

    nop

    nop

    :goto_1d
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    :goto_1e
    if-eqz p4, :cond_4

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1f
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_24
    iget-object p1, p2, Lobe;->b:Ljava/lang/Object;

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

    :goto_25
    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    :goto_26
    goto/32 :goto_27

    nop

    nop

    :goto_27
    const/16 p4, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_28
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->themeState:Lobc;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/16 :goto_7

    nop

    :goto_2b
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p1, p3, p4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2e
    if-eqz p1, :cond_5

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-direct {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->eb3ba3cc19a0540066cd1a7aadab144em(Landroid/content/res/TypedArray;)V

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_30
    goto :goto_2d

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_32
    aput v1, p4, v0

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

    nop

    :goto_33
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_34
    iget v1, p3, Landroid/util/TypedValue;->data:I

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

    :goto_35
    iget-object p4, p2, Lobe;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop
.end method

.method public isStateful()Z
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x19

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4
    return v1

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->progressColor:Landroid/content/res/ColorStateList;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0xf

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    :goto_e
    if-nez p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_f
    move v1, v0

    nop

    :goto_10
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_14
    return v0

    nop

    nop

    :goto_15
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackColor:Landroid/content/res/ColorStateList;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto :goto_10

    nop

    :goto_18
    goto/32 :goto_14

    nop

    nop

    nop

    nop
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->a58ee42ecf09d6c64addd4609d0bc1fcm(Landroid/graphics/Rect;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method protected onLevelChange(I)Z
    .locals 3

    goto/32 :goto_1c

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1
    const v1, 0x18

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

    :goto_2
    iput p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->sweepAngle:F

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

    :goto_3
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    return v1

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v2, 0x461c4000    # 10000.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_7
    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->sweepAngle:F

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    iget-boolean p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->showEmptySweepAngle:Z

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_9
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    mul-float/2addr p1, v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    cmpl-float v0, v0, p1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/16 v0, 0x2710

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->invalidateSelf()V

    goto/32 :goto_0

    nop

    nop

    :goto_10
    div-float/2addr p1, v2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_12
    rem-int v0, v0, v1

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

    :goto_13
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->getMaximumSweepAngle()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-eqz p1, :cond_1

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

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    :goto_17
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    :goto_18
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1a
    int-to-float p1, p1

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

    nop

    :goto_1b
    invoke-static {p1, v1, v0}, Ldvu;->z(III)I

    move-result p1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1c
    const v0, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1d
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->22460fd9bcbc6afd2bbeafd55ca5b6cdm()V

    :goto_1e
    goto/32 :goto_f

    nop

    nop

    nop
.end method

.method protected onStateChange([I)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->7b78da294d812f3380e6c8f1159f1434m([I)Z

    move-result p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public setAlpha(I)V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->paintTrack:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->paintProgress:Landroid/graphics/Paint;

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

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->invalidateSelf()V

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_0

    nop

    nop

    :goto_5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    if-ne v0, p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->paintTrack:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->paintProgress:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->invalidateSelf()V

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

    :goto_3
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->paintTrack:Landroid/graphics/Paint;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public setDirection(Lobb;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-ne v0, p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->invalidateSelf()V

    :goto_2
    goto/32 :goto_3

    nop

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
    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->direction:Lobb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->direction:Lobb;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public setGravity(I)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->invalidateSelf()V

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->gravity:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->gravity:I

    nop

    goto/32 :goto_7

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

    nop

    :goto_6
    invoke-direct {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->a58ee42ecf09d6c64addd4609d0bc1fcm(Landroid/graphics/Rect;)V

    goto/32 :goto_0

    nop

    nop

    :goto_7
    if-ne v0, p1, :cond_0

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public setProgressColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->7b78da294d812f3380e6c8f1159f1434m([I)Z

    move-result p1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->invalidateSelf()V

    :goto_2
    goto/32 :goto_3

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
    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->progressColor:Landroid/content/res/ColorStateList;

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

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->getState()[I

    move-result-object p1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez p1, :cond_0

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

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public setRotation(F)V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    :goto_6
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    cmpl-float v0, v0, p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->invalidateSelf()V

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x11

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    const/high16 v1, 0x43b40000    # 360.0f

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_d
    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->rotation:F

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_f
    iput p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->rotation:F

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_11
    rem-float/2addr p1, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method public setStartAngle(F)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    cmpl-float v0, v0, p1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    rem-float/2addr p1, v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->startAngle:F

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    iput p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->startAngle:F

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->getMaximumSweepAngle()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->invalidateSelf()V

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public setSweepAngle(F)V
    .locals 1

    goto/32 :goto_9

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
    const v0, 0x461c4000    # 10000.0f

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    div-float/2addr p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    mul-float/2addr p1, v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

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

    :goto_5
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->setLevel(I)Z

    goto/32 :goto_0

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->getMaximumSweepAngle()F

    move-result v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->getMaximumSweepAngle()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

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
.end method

.method public setTrackColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->7b78da294d812f3380e6c8f1159f1434m([I)Z

    move-result p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackColor:Landroid/content/res/ColorStateList;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->invalidateSelf()V

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->getState()[I

    move-result-object p1

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

.method public setTrackEndAngle(F)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->invalidateSelf()V

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackEndAngle:F

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

    nop

    :goto_4
    iput p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackEndAngle:F

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

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->834295ee0ce2495d616ee74a30889771m()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    cmpl-float v0, v0, p1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public setTrackStartAngle(F)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackStartAngle:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    iput p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackStartAngle:F

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->invalidateSelf()V

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->834295ee0ce2495d616ee74a30889771m()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    cmpl-float v0, v0, p1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop
.end method

.method public setTrackWidth(F)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    cmpl-float v0, v0, p1

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
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->a6c764868369069e4a9aec7ffee490c9m()V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->invalidateSelf()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->22460fd9bcbc6afd2bbeafd55ca5b6cdm()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    iput p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackWidth:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackWidth:F

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->paintTrack:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public showEmptySweepAngle(Z)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->showEmptySweepAngle:Z

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    if-ne v0, p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->22460fd9bcbc6afd2bbeafd55ca5b6cdm()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->invalidateSelf()V

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->showEmptySweepAngle:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop
.end method
