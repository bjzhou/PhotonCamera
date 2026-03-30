.class public Lcom/google/android/apps/camera/ui/widget/ReviewImageView;
.super Landroid/widget/ImageView;
.source "PG"


# direct methods
.method private final 33f5b80483094659737b73d90f80a8a4m()V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :goto_4
    goto/32 :goto_5

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
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/widget/ReviewImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v0, 0x8

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

    :goto_1
    invoke-direct {p0}, Lcom/google/android/apps/camera/ui/widget/ReviewImageView;->33f5b80483094659737b73d90f80a8a4m()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/widget/ReviewImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/widget/ReviewImageView;->setVisibility(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Landroid/graphics/Bitmap;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/widget/ReviewImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/32 :goto_4

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lcom/google/android/apps/camera/ui/widget/ReviewImageView;->33f5b80483094659737b73d90f80a8a4m()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/widget/ReviewImageView;->setVisibility(I)V

    goto/32 :goto_0

    nop

    nop

    :goto_4
    return-void

    nop

    nop
.end method

.method protected final onLayout(ZIIII)V
    .locals 2

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_0
    int-to-float p2, p2

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz p2, :cond_0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p5}, Lcom/google/android/apps/camera/ui/widget/ReviewImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    new-instance p5, Landroid/graphics/Matrix;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    mul-float/2addr p1, v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_8
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    int-to-float p1, p1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

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

    :goto_b
    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p5}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    div-float v0, p4, p1

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_e
    const v1, 0x16

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/widget/ReviewImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/widget/ReviewImageView;->getHeight()I

    move-result p4

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_12
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_14
    const/high16 v0, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_15
    mul-float/2addr p2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_16
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

    :goto_17
    int-to-float p3, p3

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/widget/ReviewImageView;->getWidth()I

    move-result p3

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_19
    div-float/2addr p1, v0

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1a
    div-float/2addr p3, v0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_1b
    int-to-float p4, p4

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1c
    sub-float/2addr p3, p2

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_22

    nop

    :goto_1e
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p5, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

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

    :goto_25
    invoke-virtual {p5, p3, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/32 :goto_4

    nop

    nop

    :goto_26
    const v0, 0x5

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/widget/ReviewImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_29
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    div-float/2addr p2, v0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2b
    sub-float/2addr p4, p1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2c
    div-float/2addr p4, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2d
    div-float v1, p3, p2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop
.end method
