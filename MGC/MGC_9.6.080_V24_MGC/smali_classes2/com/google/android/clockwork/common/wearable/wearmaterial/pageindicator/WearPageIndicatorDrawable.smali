.class public Lcom/google/android/clockwork/common/wearable/wearmaterial/pageindicator/WearPageIndicatorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PG"


# static fields
.field private static final MAX_PAGE_POS_TO_CENTER_DISTANCE:F = 0.5f

.field private static final MAX_VISIBLE_INDICATORS:I = 0x6

.field private static final OVERFLOW_FADEOUT_LENGTH:F = 6.0f

.field private static final OVERFLOW_FADE_DISTANCE_TO_PAGE_POS:F = 1.0f


# instance fields
.field private canvasTransformer:Loah;

.field private dotRadius:I

.field private final indicatorPaint:Landroid/graphics/Paint;

.field private selectedAlpha:F

.field private final state:Load;

.field private unselectedAlpha:F


# direct methods
.method private 9eba8a98e299ab8e4447119664f4b634m(I)F
    .locals 3

    goto/32 :goto_25

    nop

    nop

    :goto_0
    add-float/2addr v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v0, v0, Load;->f:F

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    add-float/2addr v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    sub-float/2addr p1, v1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_5
    const/high16 v1, -0x3fc00000    # -3.0f

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v0, v2, v1}, Lnzk;->d(FFF)F

    move-result v0

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

    :goto_7
    const/high16 v1, -0x40800000    # -1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_8
    div-float/2addr p1, v2

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sub-float v0, p1, v0

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

    :goto_a
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    int-to-float p0, p0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_d
    iget p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/pageindicator/WearPageIndicatorDrawable;->dotRadius:I

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    :goto_f
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_10
    const/high16 v2, 0x40c00000    # 6.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

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
    mul-float/2addr p0, p1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    iget p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/pageindicator/WearPageIndicatorDrawable;->dotRadius:I

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

    :goto_14
    invoke-static {p1, v2, v1}, Lnzk;->d(FFF)F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_15
    mul-float/2addr p0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_17
    int-to-float p1, p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_19
    sub-float v0, v1, v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/pageindicator/WearPageIndicatorDrawable;->state:Load;

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

    :goto_1b
    iget v1, v0, Load;->e:F

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1e
    sub-float p1, v1, p1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1f
    const v1, 0x3

    nop

    nop

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

    :goto_20
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_21
    iget-boolean v1, v0, Load;->a:Z

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_22
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_24
    add-float/2addr p1, v1

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

    :goto_25
    const v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_26
    int-to-float p0, p0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

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

    nop

    :goto_28
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3
    const v0, 0xf

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_5

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
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    new-instance v0, Landroid/graphics/Paint;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_f

    nop

    nop

    :goto_a
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    goto/32 :goto_8

    nop

    nop

    :goto_c
    iput-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/pageindicator/WearPageIndicatorDrawable;->state:Load;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    :goto_e
    new-instance v1, Load;

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

    :goto_f
    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/pageindicator/WearPageIndicatorDrawable;->indicatorPaint:Landroid/graphics/Paint;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_11
    const v1, 0x19

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

    :goto_12
    invoke-direct {v1}, Load;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method private a358cc74be0d886788dd7583f0a73aa0m()Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/pageindicator/WearPageIndicatorDrawable;->getLayoutDirection()I

    move-result p0

    nop

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
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/pageindicator/WearPageIndicatorDrawable;->isAutoMirrored()Z

    move-result v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    :goto_3
    if-eq p0, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    :goto_4
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_0

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    const/4 v0, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    return v0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_0
    if-gtz v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_0
    goto/32 :goto_28

    nop

    nop

    :goto_1
    iget v1, v0, Load;->k:F

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_3
    iput v11, v0, Load;->l:I

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_4
    float-to-double v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    iget v1, v0, Load;->j:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_6
    invoke-static {v1, v2}, Ljava/lang/StrictMath;->ceil(D)D

    move-result-wide v1

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_7
    int-to-float v2, v2

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_8
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_9
    iget v1, v0, Load;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_a
    cmpg-float v1, v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_b
    iget v6, v0, Load;->k:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0, v1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/pageindicator/WearPageIndicatorDrawable;->9eba8a98e299ab8e4447119664f4b634m(I)F

    move-result v0

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {v0, v7, p1}, Loah;->b(Landroid/graphics/Rect;Landroid/graphics/Canvas;)V

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_e
    iget v2, v0, Load;->b:I

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_f
    iput v3, v0, Load;->f:F

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sub-float/2addr v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_11
    iget-boolean v1, v0, Load;->a:Z

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_13
    invoke-static {v4, v0}, Ldtz;->d(II)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_14
    iput v1, v0, Load;->d:I

    nop

    :goto_15
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_16
    sub-float/2addr v8, v7

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/pageindicator/WearPageIndicatorDrawable;->canvasTransformer:Loah;

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_18
    if-eq v8, v11, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_72

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_b5

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/high16 v2, -0x3fc00000    # -3.0f

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v0, 0x14

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1d
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    cmpg-float v8, v1, v8

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_1f
    iget v1, v0, Load;->b:I

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v3, v5, v1}, Lnzk;->d(FFF)F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_21
    int-to-float v1, v1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_23
    int-to-float v1, v1

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :goto_25
    add-float v8, v3, v6

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iput v3, v0, Load;->f:F

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1, v5, v5, v0, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/32 :goto_17

    nop

    nop

    :goto_28
    add-float/2addr v1, v7

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_29
    add-int/2addr v1, v4

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2a
    add-float/2addr v1, v6

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2b
    iget v2, v0, Load;->j:F

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_2c
    iget v8, v0, Load;->l:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-interface {v7, v8, p1, v1, v0}, Loah;->a(Landroid/graphics/Rect;Landroid/graphics/Canvas;IF)V

    :goto_2e
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v7, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/pageindicator/WearPageIndicatorDrawable;->indicatorPaint:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    :goto_30
    invoke-static {v1, v5, v2}, Lnzk;->d(FFF)F

    move-result v1

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_31
    add-int/2addr v1, v4

    nop

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

    :goto_32
    iget v1, v0, Load;->b:I

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_33
    add-float/2addr v1, v2

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-lez v0, :cond_3

    nop

    goto/32 :goto_b3

    nop

    nop

    :cond_3
    goto/32 :goto_b2

    nop

    :goto_35
    add-int/2addr v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_36
    iput v1, v0, Load;->i:F

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_37
    if-gt v1, v2, :cond_4

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget v7, v7, Load;->e:F

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_39
    const/4 v2, 0x1

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

    :goto_3a
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3b
    int-to-float v6, v2

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_3c
    sub-float/2addr v2, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_3d
    const/high16 v2, 0x40400000    # 3.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_3e
    iget v8, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/pageindicator/WearPageIndicatorDrawable;->selectedAlpha:F

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/pageindicator/WearPageIndicatorDrawable;->state:Load;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_40
    cmpl-float v8, v1, v9

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_41
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

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

    :goto_42
    goto/16 :goto_2

    nop

    :goto_43
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_44
    iput v3, v0, Load;->f:F

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_45
    iget v2, v0, Load;->g:F

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_46
    add-float v9, v3, v7

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_47
    iget v2, v0, Load;->k:F

    nop

    goto/32 :goto_b1

    nop

    nop

    :goto_48
    goto/16 :goto_9a

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_4a
    const/4 v11, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_4b
    sub-float/2addr v6, v7

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/pageindicator/WearPageIndicatorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_4d
    iput v1, v0, Load;->e:F

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_4e
    iget-boolean v3, v0, Load;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    double-to-float v1, v1

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/pageindicator/WearPageIndicatorDrawable;->state:Load;

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

    nop

    :goto_51
    add-float/2addr v7, v8

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_52
    iget v2, v0, Load;->f:F

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_53
    iget-object v7, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/pageindicator/WearPageIndicatorDrawable;->canvasTransformer:Loah;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    cmpl-float v3, v3, v7

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_55
    goto/16 :goto_2e

    nop

    :goto_56
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_57
    goto/16 :goto_9a

    nop

    :goto_58
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_59
    const/high16 v3, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_5a
    add-int/2addr v1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    float-to-int v0, v7

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

    :goto_5d
    invoke-static {v3, v1, v2}, Lnzk;->d(FFF)F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    add-float v3, v1, v6

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_5f
    if-le v1, v2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_60
    iput v1, v0, Load;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_61
    sub-float v0, v6, v0

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

    :goto_62
    iget v3, v0, Load;->e:F

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_63
    return-void

    nop

    :goto_64
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_65
    iget v2, v0, Load;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_66
    float-to-int v1, v1

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

    :goto_67
    add-float v6, v1, v3

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_68
    if-gtz v8, :cond_6

    nop

    nop

    goto/32 :goto_49

    nop

    :cond_6
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_69
    iput v2, v0, Load;->l:I

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_6a
    iget v1, v0, Load;->b:I

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_6b
    float-to-double v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_6c
    float-to-int v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    iget v6, v6, Load;->e:F

    nop

    nop

    nop

    nop

    :goto_6e
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_6f
    iput v1, v0, Load;->f:F

    nop

    nop

    nop

    nop

    nop

    :goto_70
    goto/32 :goto_b6

    nop

    nop

    :goto_71
    iput v1, v0, Load;->j:F

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_72
    add-float/2addr v1, v7

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    iget v1, v0, Load;->f:F

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_74
    iget v2, v0, Load;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_75
    goto :goto_70

    nop

    nop

    nop

    nop

    :goto_76
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_77
    iget-object v7, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/pageindicator/WearPageIndicatorDrawable;->indicatorPaint:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_78
    cmpl-float v8, v3, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_79
    goto/16 :goto_9a

    nop

    :goto_7a
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    const/high16 v2, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_7c
    iget v0, v0, Load;->f:F

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    iget v7, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/pageindicator/WearPageIndicatorDrawable;->unselectedAlpha:F

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_7f
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_80
    if-nez v1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_81
    goto/16 :goto_15

    nop

    nop

    :goto_82
    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_83
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_84
    iget-object v7, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/pageindicator/WearPageIndicatorDrawable;->state:Load;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    goto/16 :goto_6e

    nop

    nop

    nop

    nop

    :goto_86
    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_87
    int-to-float v1, v1

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_88
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_89
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/pageindicator/WearPageIndicatorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    const/4 v1, 0x0

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_8b
    iput v1, v0, Load;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    if-nez v3, :cond_8

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_8d
    iget v1, v0, Load;->h:F

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_8e
    if-eq v8, v2, :cond_9

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    :cond_9
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_8f
    iget-object v6, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/pageindicator/WearPageIndicatorDrawable;->state:Load;

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_90
    double-to-int v1, v1

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_91
    sub-float v3, v2, v1

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_92
    const/4 v4, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_93
    iget v3, v0, Load;->f:F

    nop

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

    :goto_94
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_95
    int-to-float v2, v2

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_96
    iget v2, v0, Load;->f:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_97
    add-float/2addr v1, v2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_98
    if-ltz v1, :cond_a

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :cond_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_99
    iput v3, v0, Load;->f:F

    nop

    nop

    :goto_9a
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_9b
    mul-float/2addr v8, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_9c
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_9d
    iget v1, v0, Load;->f:F

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

    :goto_9e
    iget v10, v0, Load;->i:F

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    add-int/2addr v2, v4

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a0
    iput v1, v0, Load;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_a2
    iput v1, v0, Load;->f:F

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    invoke-static {v1, v5, v2}, Lnzk;->d(FFF)F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    sub-float v0, v3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    int-to-float v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_a6
    const/high16 v7, 0x3f000000    # 0.5f

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_a7
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/pageindicator/WearPageIndicatorDrawable;->a358cc74be0d886788dd7583f0a73aa0m()Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_a8
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_a9
    div-float/2addr v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_aa
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/pageindicator/WearPageIndicatorDrawable;->canvasTransformer:Loah;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_ac
    if-ltz v8, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_ae

    nop

    nop

    :goto_ad
    const/high16 v6, -0x41000000    # -0.5f

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_ae
    add-float v3, v1, v7

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_af
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_c

    nop

    nop

    :goto_b0
    double-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_b1
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_b2
    goto/32 :goto_64

    nop

    nop

    :goto_b3
    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_b4
    add-float/2addr v1, v6

    nop

    nop

    :goto_b5
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    float-to-double v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    if-nez v6, :cond_c

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_b8
    if-nez v8, :cond_d

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    iput v6, v0, Load;->k:F

    nop

    goto/32 :goto_10

    nop

    nop

    nop
.end method

.method public getOpacity()I
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

    :goto_1
    const/4 p0, -0x3

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 1

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p4, Loae;->a:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p1, Loag;

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

    :goto_2
    iput-object p4, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/pageindicator/WearPageIndicatorDrawable;->canvasTransformer:Loah;

    nop

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p1, p4, p2}, Loag;-><init>(FF)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_5
    const/4 p4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_1f

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v0, Loae;->a:[I

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_9
    goto :goto_3

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_c
    int-to-float p2, p2

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

    :goto_d
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    int-to-float p4, p4

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_28

    nop

    nop

    :goto_10
    invoke-virtual {p3, p4, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p4

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_11
    const p4, 0x7f070a22

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

    :goto_12
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_13
    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/pageindicator/WearPageIndicatorDrawable;->canvasTransformer:Loah;

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

    :goto_14
    if-nez p4, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    :goto_15
    const/4 p4, 0x2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_16
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_17
    new-instance p4, Loaf;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {p4, v0, p1, p2}, Loaf;-><init>(FFF)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    int-to-float p4, p4

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p3, p4, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    nop

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

    :goto_1b
    int-to-float p1, p1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1c
    iget p4, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/pageindicator/WearPageIndicatorDrawable;->dotRadius:I

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/pageindicator/WearPageIndicatorDrawable;->dotRadius:I

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1, p3, p4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_20
    if-nez p4, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_21
    iput p4, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/pageindicator/WearPageIndicatorDrawable;->dotRadius:I

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p3, p4, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p4

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p3, p2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_24
    iput p4, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/pageindicator/WearPageIndicatorDrawable;->selectedAlpha:F

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_25
    invoke-virtual {p4}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result p4

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p4, p3, v0, p2, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_27
    const/4 p4, 0x3

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_28
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/4 p2, 0x0

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_2a
    iput p4, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/pageindicator/WearPageIndicatorDrawable;->unselectedAlpha:F

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_2b
    int-to-float p4, p4

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
.end method

.method public isAutoMirrored()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

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

    :goto_1
    return p0

    nop
.end method

.method public setAlpha(I)V
    .locals 0

    goto/32 :goto_0

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
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
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
.end method

.method public setPageCount(I)V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    if-le p1, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_14

    nop

    :goto_4
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-boolean v1, v0, Load;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x12

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

    :goto_c
    const/high16 v1, 0x40200000    # 2.5f

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_d
    iput p1, v0, Load;->g:F

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

    :goto_e
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_f
    int-to-float p1, p1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_10
    const/high16 v1, -0x3fe00000    # -2.5f

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_6

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

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_13
    const/4 v1, 0x0

    nop

    :goto_14
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-float/2addr p1, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/pageindicator/WearPageIndicatorDrawable;->invalidateSelf()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_17
    iput p1, v0, Load;->b:I

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

    :goto_18
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput v1, v0, Load;->h:F

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/pageindicator/WearPageIndicatorDrawable;->state:Load;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1b
    const/4 v1, 0x6

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public setPagePosition(F)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iput p1, v0, Load;->e:F

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
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/pageindicator/WearPageIndicatorDrawable;->invalidateSelf()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/pageindicator/WearPageIndicatorDrawable;->state:Load;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method
