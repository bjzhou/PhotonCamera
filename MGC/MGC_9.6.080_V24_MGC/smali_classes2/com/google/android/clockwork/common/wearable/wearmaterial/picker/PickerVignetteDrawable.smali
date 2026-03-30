.class public final Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "PG"


# static fields
.field private static final DEFAULT_VIGNETTE_COLOR:I = -0x1000000

.field public static final HORIZONTAL:I = 0x0

.field public static final VERTICAL:I = 0x1


# instance fields
.field private final endGradientRect:Landroid/graphics/Rect;

.field private endOfClearArea:I

.field private final gradientColors:[I

.field private final gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private isVertical:Z

.field private final startGradientRect:Landroid/graphics/Rect;

.field private startOfClearArea:I

.field private vignetteAlpha:I

.field private vignetteColor:Landroid/content/res/ColorStateList;


# direct methods
.method private 09dfde88c76d9725fe6d5ddc50746baam([I)Z
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_12

    nop

    nop

    :goto_1
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    return v1

    nop

    nop

    :goto_5
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->9a6393e01ad8ebea5e3ea93fdfadb360m()V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->getVignetteColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    const v0, 0x12

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/high16 v1, -0x1000000

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_f
    aget v2, v0, v1

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

    :goto_10
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->gradientColors:[I

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

    :goto_11
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    aput p1, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-ne v2, p1, :cond_2

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->c0c40eca50d0a2d795aadb2b62f54f92m()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_5

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method private 54f6240622507376c60e6c228795bd03m(I)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    if-eq p1, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

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

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->setVignetteColor(Landroid/content/res/ColorStateList;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/high16 p1, -0x1000000

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

    :goto_4
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    iput-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->isVertical:Z

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_a

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    :goto_9
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method private 9a6393e01ad8ebea5e3ea93fdfadb360m()V
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_1
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_5
    invoke-static {v0, v1}, Ldtz;->d(II)I

    move-result v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    iget v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->vignetteAlpha:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    const v1, 0x18

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->gradientColors:[I

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    aget v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->gradientColors:[I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    aput v0, p0, v1

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

    :goto_11
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 2

    goto/32 :goto_15

    nop

    nop

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->isVertical:Z

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

    :goto_1
    new-instance v1, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

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

    :goto_3
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->startGradientRect:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_6
    const v1, 0xc

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

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_8
    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    :goto_9
    iput v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->startOfClearArea:I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_a
    new-instance v1, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_b
    const/4 v1, -0x1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    new-array v0, v0, [I

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

    :goto_d
    invoke-virtual {p0, v1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_1d

    nop

    nop

    :goto_e
    iput v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->endOfClearArea:I

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_11
    const/4 v1, 0x1

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

    :goto_12
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x8

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->endGradientRect:Landroid/graphics/Rect;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

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

    :goto_1b
    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->gradientColors:[I

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1c
    iput-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

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

    :goto_1d
    return-void

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_f

    nop

    nop

    nop
.end method

.method private c0c40eca50d0a2d795aadb2b62f54f92m()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->gradientColors:[I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

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

    :goto_3
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

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

    :goto_4
    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop
.end method

.method public static create(I)Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->54f6240622507376c60e6c228795bd03m(I)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method private dbe69785888f0ac3c39bacc0b73a4b04m(Landroid/graphics/Rect;)V
    .locals 5

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
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

    :goto_1
    const v0, 0x4

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

    :goto_2
    invoke-virtual {v3, v0, v1, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3
    invoke-static {p0, v0, v2}, Ldvu;->z(III)I

    move-result p0

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_a
    iget v1, p1, Landroid/graphics/Rect;->top:I

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->endGradientRect:Landroid/graphics/Rect;

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

    :goto_c
    add-int v3, v0, v2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_d
    iget v0, p1, Landroid/graphics/Rect;->left:I

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

    :goto_e
    iget p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->endOfClearArea:I

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_f
    div-int/lit8 v3, v3, 0x2

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x15

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

    :goto_11
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

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

    :goto_12
    invoke-virtual {v3, v0, p0, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v4, v0, v2}, Ldvu;->z(III)I

    move-result v4

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->endOfClearArea:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_15
    add-int v3, v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_16
    div-int/lit8 v3, v3, 0x2

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_17
    goto/32 :goto_7

    nop

    :goto_18
    rem-int v0, v0, v1

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
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v3, v0, v1, v4, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->startGradientRect:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->endGradientRect:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1d
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_1
    goto/32 :goto_6

    nop

    :goto_1e
    return-void

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {p0, v1, p1}, Ldvu;->z(III)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_21
    iget v2, p1, Landroid/graphics/Rect;->right:I

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    nop

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

    :goto_23
    invoke-virtual {v3, p0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {p0, v3}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->fb038d2d872fecc9e4949b3a058efb02m(I)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_25
    invoke-direct {p0, v3}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->fb038d2d872fecc9e4949b3a058efb02m(I)V

    goto/32 :goto_28

    nop

    nop

    :goto_26
    iget v4, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->startOfClearArea:I

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

    :goto_27
    if-nez v3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->startGradientRect:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_29
    iget-boolean v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->isVertical:Z

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2a
    iget v4, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->startOfClearArea:I

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v4, v1, p1}, Ldvu;->z(III)I

    move-result v4

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method private fb038d2d872fecc9e4949b3a058efb02m(I)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->startOfClearArea:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->endOfClearArea:I

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

    :goto_2
    iput p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->endOfClearArea:I

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    iput p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->startOfClearArea:I

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    if-ltz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    :goto_8
    if-ltz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    goto/32 :goto_6

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

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->startGradientRect:Landroid/graphics/Rect;

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

    :goto_6
    const v0, 0x17

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_27

    nop

    nop

    :goto_8
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_28

    nop

    :goto_a
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->startGradientRect:Landroid/graphics/Rect;

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

    :goto_d
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    :goto_e
    goto/32 :goto_32

    nop

    nop

    :goto_f
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_3
    :goto_10
    goto/32 :goto_c

    nop

    nop

    :goto_11
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_12
    iget-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->isVertical:Z

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    :goto_15
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_16
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

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

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1a
    if-eqz v0, :cond_4

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

    :cond_4
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_20
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    nop

    nop

    :goto_21
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    add-int v0, v0, v1

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

    :goto_23
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    nop

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

    nop

    :goto_24
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->startGradientRect:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_5
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_26
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    nop

    :goto_27
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_2c

    nop

    nop

    :goto_29
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-eqz v0, :cond_6

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

    :cond_6
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->endGradientRect:Landroid/graphics/Rect;

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

    :goto_2e
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2f
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->endGradientRect:Landroid/graphics/Rect;

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

    :goto_30
    iget-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->isVertical:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_31
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

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

    :goto_32
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->endGradientRect:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_21

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_20

    nop

    nop

    nop
.end method

.method getEndGradientRect()Landroid/graphics/Rect;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->endGradientRect:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

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

    nop

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

    :goto_1
    return p0

    nop

    nop

    nop
.end method

.method public getOrientation()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->isVertical:Z

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    return p0

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    goto/32 :goto_4

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

    :goto_5
    if-nez p0, :cond_0

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
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x1

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
.end method

.method getStartGradientRect()Landroid/graphics/Rect;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->startGradientRect:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public getVignetteAlpha()I
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

    :goto_1
    iget p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->vignetteAlpha:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public getVignetteColor()Landroid/content/res/ColorStateList;
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    const/high16 v0, -0x1000000

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

    :goto_1
    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->vignetteColor:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    :goto_5
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->vignetteColor:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->vignetteColor:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

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

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    if-eq p4, p3, :cond_0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1
    sget-object p4, Loau;->b:[I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    if-nez p4, :cond_1

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

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    goto :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object p1, Loau;->b:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_8
    invoke-virtual {p0, p2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->setVignetteColor(Landroid/content/res/ColorStateList;)V

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/DrawableWrapper;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, p3, p4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    const/4 p2, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p4, p3, p1, p2, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

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

    :goto_f
    const/4 p3, 0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    iput-boolean p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->isVertical:Z

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_11
    if-nez p2, :cond_2

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

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_13
    move p2, p3

    nop

    :goto_14
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    goto/32 :goto_4

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
    invoke-interface {p0, p1}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_2

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

    :goto_4
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

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
    if-ne p1, v0, :cond_1

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p0

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
.end method

.method public isStateful()Z
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->getVignetteColor()Landroid/content/res/ColorStateList;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->onBoundsChange(Landroid/graphics/Rect;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->dbe69785888f0ac3c39bacc0b73a4b04m(Landroid/graphics/Rect;)V

    goto/32 :goto_2

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

.method protected onStateChange([I)Z
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_a

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
    goto/32 :goto_3

    nop

    nop

    :goto_3
    const/4 p0, 0x1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->09dfde88c76d9725fe6d5ddc50746baam([I)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    goto :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    :goto_8
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->onStateChange([I)Z

    move-result v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public setClearArea(II)V
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->endOfClearArea:I

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

    :goto_1
    if-eq v0, p1, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    nop

    goto/32 :goto_6

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

    nop

    nop

    :goto_4
    iput p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->endOfClearArea:I

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    iput p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->startOfClearArea:I

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

    :goto_6
    invoke-direct {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->dbe69785888f0ac3c39bacc0b73a4b04m(Landroid/graphics/Rect;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->invalidateSelf()V

    goto/32 :goto_3

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
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->startOfClearArea:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    if-eq v0, p2, :cond_1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public setVignetteAlpha(I)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->9a6393e01ad8ebea5e3ea93fdfadb360m()V

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->vignetteAlpha:I

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

    :goto_3
    return-void

    nop

    :goto_4
    aget p1, p1, v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->invalidateSelf()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    if-nez p1, :cond_0

    nop

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

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->c0c40eca50d0a2d795aadb2b62f54f92m()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->gradientColors:[I

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public setVignetteColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->vignetteColor:Landroid/content/res/ColorStateList;

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

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->getState()[I

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->09dfde88c76d9725fe6d5ddc50746baam([I)Z

    goto/32 :goto_4

    nop

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
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->invalidateSelf()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method
