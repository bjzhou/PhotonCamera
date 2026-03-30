.class Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PG"


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Paint;

.field public d:F

.field private final e:Landroid/graphics/RectF;

.field private f:F


# direct methods
.method public constructor <init>()V
    .locals 3

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;->c:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;->e:Landroid/graphics/RectF;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_6
    const/high16 p0, 0x3f800000    # 1.0f

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
    iput-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;->b:Landroid/graphics/Paint;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_8
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v1, Landroid/graphics/Paint;

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

    :goto_b
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v2, Landroid/graphics/Paint;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 p0, 0x1

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

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v0, Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_13
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_7

    nop

    nop

    :goto_14
    new-instance v1, Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_15
    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;->a:Landroid/graphics/Paint;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_17
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_15

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

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x16

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1c

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    :goto_1b
    goto/32 :goto_11

    nop

    nop

    :goto_1c
    goto/32 :goto_b

    nop

    nop
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 10

    goto/32 :goto_2a

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1
    const/high16 v6, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_2
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_46

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;->getLayoutDirection()I

    move-result v3

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

    nop

    :goto_8
    move v3, v9

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_9
    cmpg-float v2, v3, v2

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move v9, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_b
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_f
    int-to-float v3, v8

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    if-eqz v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/high16 v3, 0x40000000    # 2.0f

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

    :goto_12
    add-float/2addr v9, v1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_13
    div-float v3, v0, v3

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;->e:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_16
    div-float v4, v1, v3

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

    :goto_17
    goto/32 :goto_3d

    nop

    nop

    :goto_18
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_19
    iget v4, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;->f:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_18

    nop

    :goto_1b
    move v5, v9

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v4, 0x1

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_1d
    iget v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;->d:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_1e
    iput v4, v3, Landroid/graphics/RectF;->right:F

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

    nop

    :goto_1f
    iget-object v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;->e:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-int/lit8 v8, v8, 0x1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iput v0, v3, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_22
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/32 :goto_35

    nop

    nop

    :goto_23
    cmpl-float v3, v0, v2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;->c:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_26
    if-gtz v2, :cond_3

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

    :cond_3
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_27
    cmpl-float v3, v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v7, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;->b:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_29
    iget-object v4, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;->a:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const v0, 0xd

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

    :goto_2b
    move-object v2, p1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2d
    iget v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;->d:F

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_2f
    const v1, 0xa

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

    nop

    :goto_30
    invoke-virtual {p1, v5, v6, v4, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    :goto_31
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_33
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_34
    if-ltz v2, :cond_4

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

    :cond_4
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_35
    return-void

    nop

    nop

    :goto_36
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    move v6, v0

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_38
    if-eq v3, v4, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

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

    :goto_3a
    mul-float/2addr v4, v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_3b
    cmpl-float v2, v3, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_3c
    return-void

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_1a

    nop

    nop

    :goto_3e
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/32 :goto_1d

    nop

    nop

    :goto_3f
    const/high16 v5, -0x40800000    # -1.0f

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_40
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;->e:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_42
    goto :goto_36

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_44
    div-float/2addr v1, v3

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

    :goto_45
    move v8, v2

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_2d

    nop

    nop

    nop

    nop
.end method

.method public getFillAmount()F
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;->f:F

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
.end method

.method public final getOpacity()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 p0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop
.end method

.method public final setAlpha(I)V
    .locals 0

    goto/32 :goto_0

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
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public setFillAmount(F)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

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
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;->f:F

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;->invalidateSelf()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method
