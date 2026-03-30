.class public Landroidx/constraintlayout/utils/widget/MotionLabel;
.super Landroid/view/View;
.source "MotionLabel.java"

# interfaces
.implements Landroidx/constraintlayout/motion/widget/FloatLayout;


# static fields
.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field static TAG:Ljava/lang/String;


# instance fields
.field private mAutoSize:Z

.field private mAutoSizeTextType:I

.field mBackgroundPanX:F

.field mBackgroundPanY:F

.field private mBaseTextSize:F

.field private mDeltaLeft:F

.field private mFloatHeight:F

.field private mFloatWidth:F

.field private mFontFamily:Ljava/lang/String;

.field private mGravity:I

.field private mLayout:Landroid/text/Layout;

.field mNotBuilt:Z

.field mOutlinePositionMatrix:Landroid/graphics/Matrix;

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field mPaint:Landroid/text/TextPaint;

.field mPath:Landroid/graphics/Path;

.field mRect:Landroid/graphics/RectF;

.field mRotate:F

.field private mRound:F

.field private mRoundPercent:F

.field private mStyleIndex:I

.field mTempPaint:Landroid/graphics/Paint;

.field mTempRect:Landroid/graphics/Rect;

.field private mText:Ljava/lang/String;

.field private mTextBackground:Landroid/graphics/drawable/Drawable;

.field private mTextBackgroundBitmap:Landroid/graphics/Bitmap;

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextFillColor:I

.field private mTextOutlineColor:I

.field private mTextOutlineThickness:F

.field private mTextPanX:F

.field private mTextPanY:F

.field private mTextShader:Landroid/graphics/BitmapShader;

.field private mTextShaderMatrix:Landroid/graphics/Matrix;

.field private mTextSize:F

.field private mTextureEffect:I

.field private mTextureHeight:F

.field private mTextureWidth:F

.field private mTransformed:Ljava/lang/CharSequence;

.field private mTypefaceIndex:I

.field private mUseOutline:Z

.field mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

.field mZoom:F

.field paintCache:Landroid/graphics/Paint;

.field paintTextSize:F


# direct methods
.method private 294cd4c081547e33f0f4b9d19f1705e6m(FFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "l",
            "t",
            "r",
            "b"
        }
    .end annotation

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    sub-float v0, p3, p1

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
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    :goto_3
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextShaderMatrix:Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->887e4fb67dbfdf424bfc47c14f4babf8m()V

    goto/32 :goto_5

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatWidth:F

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatHeight:F

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

    :goto_8
    sub-float v0, p4, p2

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

    :goto_9
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_2

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
.end method

.method private 32a195efbd5c5e41ff9fc47f8377777cm()F
    .locals 7

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v3, :cond_0

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
    goto/16 :goto_30

    nop

    nop

    :goto_2
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatHeight:F

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

    :goto_4
    int-to-float v3, v3

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_6
    iget v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanY:F

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    sub-float/2addr v1, v6

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    iget v5, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getMeasuredHeight()I

    move-result v3

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    const/high16 v1, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    int-to-float v4, v4

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    int-to-float v4, v4

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget v4, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    div-float/2addr v5, v1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_10
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_11
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextSize:F

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_12
    mul-float/2addr v5, v1

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

    :goto_13
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return v5

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_18
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_19
    move v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1a
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto :goto_27

    nop

    :goto_1c
    goto/32 :goto_11

    nop

    nop

    :goto_1d
    sub-float v5, v3, v4

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x1f

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1f
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_20
    mul-float/2addr v1, v0

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_21
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    :goto_22
    if-nez v0, :cond_2

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_17

    nop

    :goto_24
    const/high16 v1, 0x3f800000    # 1.0f

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

    :goto_25
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getPaddingTop()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_26
    div-float/2addr v0, v2

    nop

    :goto_27
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_28
    sub-float/2addr v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_29
    sub-float/2addr v4, v5

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_2a
    sub-float/2addr v3, v4

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2b
    sub-float/2addr v5, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2c
    add-int v0, v0, v1

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

    :goto_2d
    mul-float/2addr v4, v0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getPaddingBottom()I

    move-result v4

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatHeight:F

    nop

    :goto_30
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_31
    iget v1, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_32
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

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

.method private 83ac8850eaaadbb179b08d4e502f7cbam(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    sget v2, Landroidx/appcompat/R$attr;->colorPrimary:I

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    iget v3, v0, Landroid/util/TypedValue;->data:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5
    const v1, 0xf

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

    :goto_6
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    :goto_9
    goto/32 :goto_13

    nop

    nop

    :goto_a
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_c
    const v0, 0xd

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_f
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextFillColor:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    :goto_12
    goto/32 :goto_3

    nop

    nop

    :goto_13
    new-instance v0, Landroid/util/TypedValue;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method private 87d03107583bfe40e8e90bd18a745a84m()F
    .locals 6

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    div-float/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v2, v3, v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;II)F

    move-result v2

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

    :goto_3
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

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

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_18

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_5
    int-to-float v4, v4

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getPaddingRight()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_7
    sub-float v4, v3, v2

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_8
    div-float/2addr v4, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_1

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/high16 v1, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_f
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_10
    sub-float/2addr v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    const v1, 0x11

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getPaddingLeft()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_13
    return v4

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextSize:F

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sub-float/2addr v3, v4

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1b
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatWidth:F

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1c
    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanX:F

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1e
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatWidth:F

    nop

    :goto_1f
    goto/32 :goto_12

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getMeasuredWidth()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_22
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

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

    :goto_23
    goto/32 :goto_18

    nop

    :goto_24
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_25
    add-float/2addr v5, v1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_26
    int-to-float v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_27
    if-nez v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_1
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_28
    int-to-float v3, v3

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

    :goto_29
    mul-float/2addr v4, v5

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2a
    move v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2b
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_2
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mText:Ljava/lang/String;

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

    :goto_2e
    mul-float/2addr v2, v0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop
.end method

.method private 887e4fb67dbfdf424bfc47c14f4babf8m()V
    .locals 17

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v8, v0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureHeight:F

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_2
    div-float v1, v7, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_3
    const/high16 v14, 0x3f000000    # 0.5f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_4
    const/high16 v4, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v13, v0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextShaderMatrix:Landroid/graphics/Matrix;

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_7
    goto/16 :goto_68

    nop

    :goto_8
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_b
    mul-float v11, v9, v6

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_c
    mul-float/2addr v15, v14

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_d
    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v7, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    :goto_10
    iget v4, v0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mZoom:F

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_65

    nop

    nop

    :goto_12
    iget-object v5, v0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextShaderMatrix:Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_13
    div-float v10, v12, v13

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget v8, v0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatHeight:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_16
    iget v7, v0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatWidth:F

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

    :goto_17
    add-float/2addr v12, v7

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_18
    mul-float/2addr v9, v4

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_19
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

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

    nop

    :goto_1a
    goto/16 :goto_6c

    nop

    :goto_1b
    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_1d
    goto/16 :goto_1

    nop

    nop

    :goto_1e
    goto/32 :goto_0

    nop

    nop

    :goto_1f
    if-eqz v12, :cond_1

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_51

    nop

    nop

    :goto_22
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

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

    :goto_23
    int-to-float v6, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_25
    sub-float/2addr v12, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_26
    iget-object v6, v0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBackgroundBitmap:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_27
    mul-float v15, v3, v11

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_28
    div-float v13, v8, v13

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_29
    const v1, 0xb

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget v7, v0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureWidth:F

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_2b
    sub-float v15, v15, v16

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2c
    iget v12, v0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureHeight:F

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_2d
    cmpg-float v9, v9, v10

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    sub-float v10, v7, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2f
    mul-float v12, v1, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_30
    mul-float v10, v6, v7

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

    :goto_31
    if-nez v3, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    :cond_2
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_32
    if-eqz v12, :cond_3

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    move v3, v2

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_34
    goto/16 :goto_48

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_36
    sub-float v11, v8, v11

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_37
    div-float v11, v12, v13

    nop

    nop

    :goto_38
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v1, v0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextShader:Landroid/graphics/BitmapShader;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_5e

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v14, v0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextShaderMatrix:Landroid/graphics/Matrix;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_3d
    if-nez v4, :cond_4

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :cond_4
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3e
    iget v1, v0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanX:F

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v10, v9, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_41
    iget v12, v0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureWidth:F

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_42
    if-nez v5, :cond_5

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_6
    goto/32 :goto_9

    nop

    :goto_44
    iget v8, v0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureHeight:F

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_45
    iget v12, v0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureWidth:F

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_46
    if-nez v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_7
    goto/32 :goto_69

    nop

    nop

    nop

    :goto_47
    iget v7, v0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureWidth:F

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v14, v12, v15}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_4b
    iget-object v10, v0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextShaderMatrix:Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_4c
    iget v12, v0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureHeight:F

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_4e
    if-ltz v9, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_8
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    mul-float v9, v5, v8

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

    :goto_50
    iget-object v14, v0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextShaderMatrix:Landroid/graphics/Matrix;

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_51
    iget v1, v0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanX:F

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_6a

    nop

    nop

    :goto_53
    invoke-virtual {v1, v13}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_54
    iget v4, v0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mZoom:F

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_56
    const/high16 v13, 0x40000000    # 2.0f

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

    :goto_57
    move-object/from16 v0, p0

    nop

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

    nop

    :goto_58
    if-nez v8, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_9
    goto/32 :goto_15

    nop

    nop

    :goto_59
    iget-object v5, v0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBackgroundBitmap:Landroid/graphics/Bitmap;

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_5b
    return-void

    nop

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_5d
    iget v3, v0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanY:F

    nop

    :goto_5e
    goto/32 :goto_54

    nop

    nop

    :goto_5f
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_60
    div-float v9, v7, v5

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_61
    mul-float v10, v9, v5

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    add-float/2addr v15, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_63
    mul-float/2addr v12, v14

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_64
    int-to-float v5, v5

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_65
    iget v5, v0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRotate:F

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_66
    mul-float v16, v9, v6

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    div-float v9, v8, v6

    nop

    nop

    nop

    :goto_68
    goto/32 :goto_18

    nop

    nop

    :goto_69
    move v1, v2

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iget v3, v0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanY:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_6b
    iget v2, v0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRotate:F

    nop

    nop

    nop

    :goto_6c
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6d
    goto/16 :goto_11

    nop

    :goto_6e
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6f
    const v0, 0x13

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v14, v2, v1, v13}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_71
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_72
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

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

    :goto_73
    move/from16 v16, v1

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

    :goto_74
    mul-float v14, v9, v5

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop
.end method

.method private 9e849c4a6f153b941faff3aa6310f73em(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    goto/32 :goto_2f

    nop

    nop

    :goto_0
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textBackgroundZoom:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

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

    :goto_2
    goto/16 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mZoom:F

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_5
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textOutlineColor:I

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eq v4, v5, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureEffect:I

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_8
    if-eq v4, v5, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_ac

    nop

    nop

    :goto_9
    iput v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mZoom:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_27

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_d
    goto/32 :goto_6e

    nop

    nop

    :goto_e
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MotionLabel;->83ac8850eaaadbb179b08d4e502f7cbam(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureWidth:F

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_11
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanX:F

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_15
    if-eq v4, v5, :cond_2

    nop

    nop

    goto/32 :goto_35

    nop

    :cond_2
    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    :goto_16
    iput v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineThickness:F

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    int-to-float v5, v5

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_18
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textBackgroundRotate:I

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_19
    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRoundPercent:F

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-eq v4, v5, :cond_3

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureWidth:F

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_1c
    goto/16 :goto_27

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-eq v4, v5, :cond_4

    nop

    nop

    goto/32 :goto_87

    nop

    :cond_4
    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_20
    if-eq v4, v5, :cond_5

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_5
    goto/32 :goto_66

    nop

    nop

    nop

    :goto_21
    iput-object v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFontFamily:Ljava/lang/String;

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

    nop

    :goto_22
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_23
    if-eq v4, v5, :cond_6

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_7

    nop

    nop

    :goto_24
    float-to-int v5, v5

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

    :goto_25
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setGravity(I)V

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iput v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureEffect:I

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2a
    goto :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-eq v4, v5, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :cond_7
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_2e
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_2f
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_31
    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineThickness:F

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_32
    iput-boolean v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mUseOutline:Z

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iput v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRotate:F

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

    :goto_34
    goto/16 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_36
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_android_textSize:I

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanY:F

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_38
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_borderRound:I

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_39
    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mStyleIndex:I

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRound:F

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-eq v4, v5, :cond_8

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3c
    if-lez v0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    :cond_9
    goto/32 :goto_6d

    nop

    :goto_3d
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_3e
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textOutlineThickness:I

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const/16 v6, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_40
    goto/16 :goto_27

    nop

    nop

    :goto_41
    goto/32 :goto_c2

    nop

    nop

    :goto_42
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textureWidth:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :goto_44
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    return-void

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iput v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextFillColor:I

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextSize:F

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    int-to-float v5, v5

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

    :goto_4d
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_android_fontFamily:I

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_4e
    if-nez p2, :cond_a

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :cond_a
    goto/32 :goto_12

    nop

    nop

    :goto_4f
    if-ge v5, v6, :cond_b

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_50
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setupPath()V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_52
    if-eq v4, v5, :cond_c

    nop

    goto/32 :goto_94

    nop

    nop

    :cond_c
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_54
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_55
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_56
    goto/16 :goto_27

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iput v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mAutoSizeTextType:I

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textPanY:I

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iput v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRound:F

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_5c
    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRoundPercent:F

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_5e
    if-eq v4, v5, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    :cond_d
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iput v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mStyleIndex:I

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setRound(F)V

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_61
    if-eq v4, v5, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :cond_e
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_62
    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineColor:I

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_63
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->a77b23f65e0ded691623f8e34412842fm()V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_65
    if-eq v4, v5, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    :cond_f
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

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

    :goto_67
    if-eq v4, v5, :cond_10

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_c3

    nop

    nop

    :goto_68
    iput v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanX:F

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

    :goto_69
    iput-object v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBackground:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_6a
    if-eq v4, v5, :cond_11

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_6b
    goto/16 :goto_27

    nop

    nop

    :goto_6c
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    goto/32 :goto_49

    nop

    nop

    :goto_6e
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    if-eq v4, v5, :cond_12

    nop

    nop

    goto/32 :goto_41

    nop

    :cond_12
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_70
    const/4 v5, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    :goto_71
    goto/16 :goto_27

    nop

    nop

    :goto_72
    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    iput v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanY:F

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_75
    iput v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureHeight:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_76
    goto/16 :goto_27

    nop

    nop

    :goto_77
    goto/32 :goto_b2

    nop

    nop

    :goto_78
    iput v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTypefaceIndex:I

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_79
    if-lt v3, v1, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    :cond_13
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_7a
    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureHeight:F

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextFillColor:I

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_7d
    goto/16 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_7f
    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_80
    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    iput v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineColor:I

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_82
    goto/16 :goto_27

    nop

    nop

    nop

    nop

    :goto_83
    goto/32 :goto_b0

    nop

    nop

    :goto_84
    if-eq v4, v5, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_85
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_86
    goto/16 :goto_27

    nop

    nop

    nop

    nop

    :goto_87
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_88
    const/4 v3, 0x0

    nop

    nop

    :goto_89
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_android_textStyle:I

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    if-eq v4, v5, :cond_15

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    float-to-int v5, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_8d
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    :goto_8e
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_8f
    goto/16 :goto_27

    nop

    nop

    :goto_90
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_91
    if-eq v4, v5, :cond_16

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_16
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textBackgroundPanY:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_93
    goto/16 :goto_27

    nop

    nop

    nop

    nop

    :goto_94
    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_95
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_android_textColor:I

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_96
    goto/16 :goto_27

    nop

    nop

    nop

    nop

    :goto_97
    goto/32 :goto_c7

    nop

    nop

    nop

    :goto_98
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setRoundPercent(F)V

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_99
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel:[I

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9a
    const/4 v2, 0x0

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_9b
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

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

    nop

    :goto_9c
    goto/16 :goto_89

    nop

    nop

    nop

    nop

    :goto_9d
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_9e
    iput v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextSize:F

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_9f
    goto/16 :goto_27

    nop

    nop

    :goto_a0
    goto/32 :goto_b6

    nop

    nop

    :goto_a1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    if-ge v5, v6, :cond_17

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_17
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    iput-boolean v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mUseOutline:Z

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    iput-boolean v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mUseOutline:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    goto/16 :goto_27

    nop

    nop

    nop

    nop

    :goto_a7
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_android_autoSizeTextType:I

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

    :goto_a9
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textBackgroundPanX:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_aa
    goto/16 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_ac
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_scaleFromTextSize:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    :goto_af
    iput v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanY:F

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textBackground:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b1
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_android_text:I

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_b2
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_borderRoundPercent:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_b3
    goto/16 :goto_27

    nop

    nop

    nop

    :goto_b4
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_b5
    iput v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRoundPercent:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_b6
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_android_gravity:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    iput v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanX:F

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    if-eq v4, v5, :cond_18

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanX:F

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanY:F

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_bb
    if-eq v4, v5, :cond_19

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textureEffect:I

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

    :goto_bd
    if-eq v4, v5, :cond_1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_5c

    nop

    nop

    :goto_be
    if-eq v4, v5, :cond_1b

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_7f

    nop

    nop

    :goto_bf
    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRound:F

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    goto/16 :goto_27

    nop

    nop

    nop

    nop

    :goto_c1
    goto/32 :goto_c9

    nop

    nop

    :goto_c2
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textPanX:I

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_c3
    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTypefaceIndex:I

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

    :goto_c4
    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRotate:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_c5
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textureHeight:I

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_c8
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_c9
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_android_typeface:I

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

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

    :goto_1
    sput-object v0, Landroidx/constraintlayout/utils/widget/MotionLabel;->TAG:Ljava/lang/String;

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
    const-string v0, "MotionLabel"

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanX:F

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v1, Landroid/graphics/Paint;

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_2
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0xffff

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_4
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRotate:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_5
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRoundPercent:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_6
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBounds:Landroid/graphics/Rect;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mGravity:I

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Landroid/text/TextPaint;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_a
    new-instance v0, Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_d
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mZoom:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mAutoSizeTextType:I

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v4, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_10
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_11
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingBottom:I

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mText:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->paintCache:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_18
    const/4 v0, 0x0

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

    :goto_19
    const-string v3, "Hello World"

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_1b
    const/high16 v2, 0x7fc00000    # Float.NaN

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureWidth:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1e
    iput-boolean v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mNotBuilt:Z

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

    :goto_1f
    const/4 v0, 0x0

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_20
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingTop:I

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

    :goto_21
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextFillColor:I

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

    :goto_22
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanY:F

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

    :goto_23
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureEffect:I

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v1, 0x0

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

    :goto_25
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_26
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRound:F

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v3, 0x800033

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanY:F

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_29
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextSize:F

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_2b
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->9e849c4a6f153b941faff3aa6310f73em(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2c
    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mAutoSize:Z

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const v1, 0xf

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

    :goto_2e
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mUseOutline:Z

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

    :goto_30
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingLeft:I

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

    :goto_31
    const/high16 v3, 0x42400000    # 48.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_32
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureHeight:F

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_33
    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_34
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineColor:I

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_35
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto/32 :goto_9

    nop

    nop

    :goto_36
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanX:F

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_37
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineThickness:F

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_39
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingRight:I

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_31

    nop

    nop

    :goto_1
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mUseOutline:Z

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanX:F

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_5
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextSize:F

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_6
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureEffect:I

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

    :goto_7
    const/high16 v2, 0x7fc00000    # Float.NaN

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_8
    const v3, 0x800033

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_9
    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mAutoSize:Z

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRotate:F

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_b
    iput-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBounds:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_c
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_e
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextFillColor:I

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_10
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingRight:I

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_11
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_13
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingLeft:I

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_14
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mZoom:F

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

    :goto_15
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureHeight:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_17
    iput-boolean v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mNotBuilt:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_18
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mText:Ljava/lang/String;

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
    rem-int v0, v0, v1

    nop

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

    :goto_1b
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureWidth:F

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

    :goto_1c
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanY:F

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

    nop

    :goto_1d
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance v4, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1f
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingBottom:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_20
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineColor:I

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_21
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mGravity:I

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

    :goto_22
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanY:F

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

    :goto_23
    new-instance v0, Landroid/text/TextPaint;

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

    :goto_24
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRoundPercent:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_25
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingTop:I

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_26
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRound:F

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_27
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineThickness:F

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MotionLabel;->9e849c4a6f153b941faff3aa6310f73em(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const v0, 0xffff

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const v0, 0x6

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2b
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mAutoSizeTextType:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2c
    new-instance v0, Landroid/graphics/Path;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2d
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanX:F

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_2f
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    return-void

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_2e

    nop

    nop

    :goto_32
    new-instance v1, Landroid/graphics/Paint;

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

    :goto_33
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_37

    nop

    nop

    :goto_34
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_23

    nop

    nop

    :goto_35
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_36
    const-string v3, "Hello World"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_37
    iput-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->paintCache:Landroid/graphics/Paint;

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

    :goto_38
    add-int v0, v0, v1

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

    nop

    :goto_39
    const/high16 v3, 0x42400000    # 48.0f

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
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextSize:F

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanY:F

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v3, 0x1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineThickness:F

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

    :goto_6
    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mAutoSize:Z

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    new-instance v4, Landroid/graphics/Rect;

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

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_11

    nop

    nop

    :goto_b
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingBottom:I

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRoundPercent:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_e
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_f
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanX:F

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_16

    nop

    nop

    :goto_12
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanY:F

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_13
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureEffect:I

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_14
    iput-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->paintCache:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mUseOutline:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_18
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mZoom:F

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBounds:Landroid/graphics/Rect;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingRight:I

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_1b
    new-instance v0, Landroid/text/TextPaint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1c
    iput-boolean v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mNotBuilt:Z

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

    :goto_1d
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingLeft:I

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

    :goto_1e
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineColor:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanX:F

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_21
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextFillColor:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_22
    const v3, 0x800033

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureHeight:F

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_24
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureWidth:F

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

    nop

    :goto_25
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_26
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_27
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mAutoSizeTextType:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MotionLabel;->9e849c4a6f153b941faff3aa6310f73em(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_9

    nop

    nop

    :goto_29
    new-instance v1, Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2a
    const v0, 0xffff

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/high16 v2, 0x7fc00000    # Float.NaN

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_2d
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_19

    nop

    nop

    :goto_2e
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

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

    :goto_2f
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRotate:F

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_30
    iput-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mText:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_32
    const/high16 v3, 0x42400000    # 48.0f

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

    :goto_33
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_34
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRound:F

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingTop:I

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

    :goto_36
    const-string v3, "Hello World"

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

    :goto_37
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_38
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_39
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mGravity:I

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private a77b23f65e0ded691623f8e34412842fm()V
    .locals 7

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_0
    if-nez v2, :cond_0

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

    :cond_0
    goto/32 :goto_7

    nop

    nop

    :goto_1
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_19

    nop

    nop

    :goto_2
    sget-object v6, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    float-to-int v2, v2

    nop

    :goto_6
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_7
    div-int/lit8 v0, v0, 0x2

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_8
    const/16 v2, 0x80

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_9
    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureHeight:F

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

    nop

    :goto_a
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/32 :goto_33

    nop

    nop

    :goto_b
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1b

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

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBackgroundBitmap:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_f
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v3, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_3
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getWidth()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_12
    new-instance v3, Landroid/graphics/BitmapShader;

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

    :goto_13
    float-to-int v4, v4

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBackground:Landroid/graphics/drawable/Drawable;

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

    :goto_16
    const/4 v6, 0x0

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_17
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBackgroundBitmap:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_18
    move v4, v2

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_19
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextShaderMatrix:Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureHeight:F

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance v0, Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v4, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBackgroundBitmap:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0, v3, v4}, Landroidx/constraintlayout/utils/widget/MotionLabel;->blur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_21
    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureWidth:F

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBackground:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_24
    div-int/lit8 v1, v1, 0x2

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_42

    nop

    nop

    :goto_26
    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBackgroundBitmap:Landroid/graphics/Bitmap;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    move v1, v3

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getHeight()I

    move-result v3

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

    :goto_2a
    if-eqz v3, :cond_5

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    :cond_5
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_2b
    if-eqz v3, :cond_6

    nop

    goto/32 :goto_2e

    nop

    :cond_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBackground:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2d
    move v3, v2

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBackground:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_30
    goto/16 :goto_6

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

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

    :goto_33
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureEffect:I

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_34
    move v3, v4

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_15

    nop

    nop

    :goto_38
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBackground:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBackgroundBitmap:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    sget-object v5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_3c
    new-instance v2, Landroid/graphics/Canvas;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3e
    const v1, 0x10

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3f
    goto/16 :goto_14

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_41
    invoke-direct {v3, v4, v5, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    goto/32 :goto_44

    nop

    nop

    :goto_42
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_43
    if-lez v1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_44
    iput-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextShader:Landroid/graphics/BitmapShader;

    nop

    nop

    :goto_45
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_46
    const v0, 0x19

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureWidth:F

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_49
    move v0, v3

    nop

    nop

    :goto_4a
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_4b
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_4c
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBackground:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_4d
    const/4 v4, 0x1

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_4e
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureEffect:I

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

    :goto_4f
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    goto/32 :goto_2c

    nop

    nop

    :goto_51
    const/4 v4, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    if-nez v4, :cond_8

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_54
    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_55
    if-lez v0, :cond_9

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :cond_9
    goto/32 :goto_36

    nop
.end method

.method static synthetic access$000(Landroidx/constraintlayout/utils/widget/MotionLabel;)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRoundPercent:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method static synthetic access$100(Landroidx/constraintlayout/utils/widget/MotionLabel;)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRound:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method private fa1c72bc68bf727f6fa51310ddc7635bm(Ljava/lang/String;II)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "familyName",
            "typefaceIndex",
            "styleIndex"
        }
    .end annotation

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x0

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

    :goto_1
    and-int/lit8 v5, v4, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_1b

    nop

    :pswitch_0
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_4
    if-nez v6, :cond_0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move v3, v2

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_8
    goto/32 :goto_c

    nop

    nop

    :goto_9
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_1b

    nop

    :pswitch_1
    goto/32 :goto_1a

    nop

    nop

    :goto_b
    and-int/2addr v4, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :goto_d
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    not-int v4, v3

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_1
    goto/32 :goto_39

    nop

    nop

    :goto_10
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_11
    invoke-static {p1, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v0, 0x0

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_13
    goto/16 :goto_37

    nop

    nop

    :goto_14
    goto/32 :goto_36

    nop

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

    :goto_16
    packed-switch p2, :pswitch_data_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1f

    nop

    :goto_18
    goto/16 :goto_8

    nop

    :goto_19
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1a
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_d

    nop

    :goto_1f
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v2, 0x1

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_23

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v3

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v5, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto/32 :goto_34

    nop

    nop

    :goto_24
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setTypeface(Landroid/graphics/Typeface;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_26
    const v0, 0xd

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_27
    goto :goto_1b

    nop

    nop

    :pswitch_2
    goto/32 :goto_2

    nop

    nop

    :goto_28
    if-nez v0, :cond_2

    nop

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

    :cond_2
    goto/32 :goto_2d

    nop

    nop

    :goto_29
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2b
    if-gtz p3, :cond_4

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2c
    and-int/lit8 v6, v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setTypeface(Landroid/graphics/Typeface;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2e
    const/high16 v1, -0x41800000    # -0.25f

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setTextSkewX(F)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_31
    if-nez v5, :cond_5

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_32
    if-nez p1, :cond_6

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v2, 0x0

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

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

    :goto_35
    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-static {v0, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    nop

    nop

    :goto_37
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setTextSkewX(F)V

    goto/32 :goto_7

    nop

    nop

    :goto_39
    invoke-static {p3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3a
    add-int v0, v0, v1

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-lez v0, :cond_7

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_7
    goto/32 :goto_1e

    nop

    :goto_3c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_3d
    iget-object v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method blur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitmapOriginal",
            "factor"
        }
    .end annotation

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    invoke-static {p1, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

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

    :goto_3
    if-lt v5, p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-ge v1, v6, :cond_1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    div-int/lit8 v2, v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

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

    :goto_a
    rem-int v0, v0, v1

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

    nop

    :goto_b
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-object v4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1f

    nop

    nop

    :goto_f
    div-int/lit8 v1, v1, 0x2

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

    :goto_10
    div-int/lit8 v1, v1, 0x2

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

    nop

    :goto_11
    const/4 v5, 0x0

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_3

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_14
    const v0, 0x11

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v4, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_16
    if-lt v2, v6, :cond_2

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_17
    goto :goto_12

    nop

    nop

    :goto_18
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_19
    const/16 v6, 0x20

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

    :goto_1a
    if-lez v0, :cond_3

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4

    nop

    :goto_1b
    goto :goto_18

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    div-int/lit8 v2, v2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1e
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method buildShape(F)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v1, Landroidx/constraintlayout/utils/widget/MotionLabel;->TAG:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_2
    cmpl-float v0, p1, v1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int/lit8 v2, v2, 0x1

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

    :goto_4
    iput v2, v1, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_5
    cmpl-float v1, p1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_0
    goto/32 :goto_2b

    nop

    :goto_7
    const/4 v10, 0x0

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBounds:Landroid/graphics/Rect;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_a
    iput v2, v1, Landroid/graphics/Rect;->right:I

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_b
    iput v2, v1, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mUseOutline:Z

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBounds:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_e
    new-instance v1, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_f
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_1d

    nop

    nop

    :goto_10
    invoke-static {}, Landroidx/constraintlayout/motion/widget/Debug;->getLoc()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto/32 :goto_43

    nop

    nop

    :goto_12
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mText:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_13
    const v0, 0x6

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

    :goto_14
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getWidth()I

    move-result v2

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_18
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v2, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :goto_1a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const-string v3, " scale "

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_1c
    int-to-float v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance v1, Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    add-int/lit8 v2, v2, -0x1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_20
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iput v2, v1, Landroid/graphics/RectF;->right:F

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_22
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_23
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

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

    :goto_25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

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

    :goto_26
    move v5, v9

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBounds:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_28
    return-void

    nop

    nop

    :goto_29
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_2a
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_c

    nop

    nop

    :goto_2d
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v2, v0, v10, v9, v3}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_30
    if-nez v1, :cond_2

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

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_32
    int-to-float v2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_33
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBounds:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_34
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

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

    nop

    :goto_37
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_38
    invoke-virtual/range {v2 .. v8}, Landroid/text/TextPaint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    goto/32 :goto_5

    nop

    nop

    :goto_39
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    goto/32 :goto_12

    nop

    nop

    :goto_3a
    iget v2, v1, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

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

    :goto_3c
    const/4 v7, 0x0

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget v2, v1, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getHeight()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_40
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBounds:Landroid/graphics/Rect;

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

    :goto_41
    iget-object v8, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_42
    move-object v3, v0

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

    :goto_43
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_44
    iput-boolean v10, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mNotBuilt:Z

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_45
    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_47
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_48
    iget v2, v1, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_49
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4a
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_4b
    add-int/lit8 v2, v2, -0x1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public getRound()F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRound:F

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop
.end method

.method public getRoundPercent()F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRoundPercent:F

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
    return v0

    nop

    nop
.end method

.method public getScaleFromTextSize()F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public getTextBackgroundPanX()F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanX:F

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
    return v0

    nop

    nop

    nop
.end method

.method public getTextBackgroundPanY()F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanY:F

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

.method public getTextBackgroundRotate()F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRotate:F

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop
.end method

.method public getTextBackgroundZoom()F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mZoom:F

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

.method public getTextOutlineColor()I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineColor:I

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
    return v0

    nop

    nop
.end method

.method public getTextPanX()F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanX:F

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop
.end method

.method public getTextPanY()F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanY:F

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
.end method

.method public getTextureHeight()F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureHeight:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return v0

    nop
.end method

.method public getTextureWidth()F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureWidth:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

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
    return-object v0

    nop
.end method

.method public layout(FFFF)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "l",
            "t",
            "r",
            "b"
        }
    .end annotation

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_0
    mul-float/2addr v6, v5

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_1
    iget v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingBottom:I

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

    :goto_2
    iget v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingTop:I

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_3
    goto/16 :goto_7e

    nop

    :goto_4
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_5
    int-to-float v4, v4

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempPaint:Landroid/graphics/Paint;

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-float v3, p2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/utils/widget/MotionLabel;->294cd4c081547e33f0f4b9d19f1705e6m(FFFF)V

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz v6, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    :cond_0
    :goto_d
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_e
    const/high16 v0, 0x3f000000    # 0.5f

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_f
    iget v7, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->paintTextSize:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-boolean v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mUseOutline:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_11
    mul-float/2addr v4, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_12
    invoke-virtual {p0, v4, v3}, Landroidx/constraintlayout/utils/widget/MotionLabel;->measure(II)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempRect:Landroid/graphics/Rect;

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-gtz v6, :cond_1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getMeasuredWidth()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_16
    add-float v6, p2, v0

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_18
    sub-float v0, p3, p1

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    float-to-int v0, v0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    :goto_1b
    goto/32 :goto_10

    nop

    nop

    :goto_1c
    int-to-float v5, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_1d
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_74

    nop

    nop

    nop

    :goto_1e
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_1f
    goto :goto_1b

    nop

    nop

    :goto_20
    goto/32 :goto_35

    nop

    nop

    :goto_21
    int-to-float v5, v5

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

    nop

    :goto_22
    invoke-super {p0, v3, v4, v5, v0}, Landroid/view/View;->layout(IIII)V

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_23
    float-to-int v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_24
    const v1, 0x16

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_25
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_26
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_27
    int-to-float v6, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_28
    sub-float v3, p3, p1

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_29
    add-float v3, p1, v0

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2b
    sub-float/2addr v5, v6

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

    :goto_2c
    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingRight:I

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    sub-float v1, p1, v1

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    int-to-float v8, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_2f
    add-float v7, p3, v0

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_31
    sub-float/2addr v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_32
    sub-float v0, p4, p2

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_33
    float-to-int v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_34
    cmpl-float v6, v6, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_35
    iget-object v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_36
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mDeltaLeft:F

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_37
    float-to-int v5, v5

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    sub-float v3, p4, p2

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_3c
    int-to-float v6, v6

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_3d
    add-float v1, p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_3e
    iget v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    sub-float/2addr v5, v6

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_40
    iget v7, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->paintTextSize:F

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_41
    new-instance v0, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_42
    iget v7, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    float-to-int v1, v1

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

    :goto_44
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mText:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_45
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_46
    div-float/2addr v7, v4

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatHeight:F

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

    :goto_48
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_49
    add-float v5, p1, v0

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    add-float v2, p4, v0

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

    :goto_4b
    div-float/2addr v6, v7

    nop

    nop

    :goto_4c
    goto/32 :goto_58

    nop

    nop

    nop

    :goto_4d
    sub-float v5, p4, p2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    if-nez v6, :cond_3

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    add-float/2addr v0, p4

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-super {p0, v5, v6, v7, v0}, Landroid/view/View;->layout(IIII)V

    nop

    :goto_51
    goto/32 :goto_83

    nop

    nop

    nop

    :goto_52
    float-to-int v7, v7

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    float-to-int v3, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->paintTextSize:F

    nop

    :goto_55
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    const v3, 0x3fa66666    # 1.3f

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_58
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/utils/widget/MotionLabel;->buildShape(F)V

    :goto_59
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_5a
    iget v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextSize:F

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

    :goto_5b
    if-eqz v6, :cond_4

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempPaint:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5e
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatWidth:F

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_5f
    float-to-int v5, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_60
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

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

    :goto_61
    if-ne v3, v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3

    nop

    nop

    :goto_62
    goto/16 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    add-float v5, p3, v0

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingLeft:I

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    sub-int/2addr v2, v3

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_68
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getMeasuredHeight()I

    move-result v3

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_69
    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempRect:Landroid/graphics/Rect;

    nop

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

    :goto_6a
    mul-float v7, v4, v3

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_6b
    const/4 v4, 0x0

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_6c
    float-to-int v6, v6

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_6d
    add-float/2addr v0, p4

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_6e
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempRect:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_6f
    const/high16 v6, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_70
    const/high16 v3, 0x40000000    # 2.0f

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_71
    float-to-int v0, v0

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_72
    float-to-int v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_73
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempPaint:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_74
    new-instance v0, Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_75
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempRect:Landroid/graphics/Rect;

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

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

    nop

    :goto_77
    float-to-int v2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_78
    iget v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_79
    add-float v2, p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    sub-int/2addr v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_7b
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatHeight:F

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_7c
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

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

    :goto_7d
    goto/16 :goto_51

    nop

    :goto_7e
    goto/32 :goto_70

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatWidth:F

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_81
    if-nez v0, :cond_6

    nop

    goto/32 :goto_59

    nop

    nop

    :cond_6
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_82
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempRect:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_83
    iget-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mAutoSize:Z

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

    :goto_84
    if-eq v3, v2, :cond_7

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    :cond_7
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempPaint:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    float-to-int v3, v3

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_87
    sub-float v3, p3, p1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_88
    add-float v4, p2, v0

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_89
    mul-float/2addr v7, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_8a
    int-to-float v6, v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8b
    if-lez v0, :cond_8

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_38

    nop

    :goto_8c
    return-void

    nop

    nop

    nop

    nop

    :goto_8d
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_8e
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_8f
    div-float/2addr v7, v8

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_90
    mul-float/2addr v7, v3

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_91
    sub-float/2addr v3, v5

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_92
    add-float v1, p3, v0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop
.end method

.method public layout(IIII)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "l",
            "t",
            "r",
            "b"
        }
    .end annotation

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    int-to-float v4, v4

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-boolean v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mAutoSize:Z

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

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

    :goto_4
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_5
    mul-float/2addr v7, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempPaint:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_7
    const v0, 0x8

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    int-to-float v6, v3

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/utils/widget/MotionLabel;->buildShape(F)V

    :goto_b
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_c
    mul-float/2addr v7, v4

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_f
    int-to-float v7, v3

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

    :goto_10
    const v3, 0x3fa66666    # 1.3f

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

    nop

    nop

    :goto_11
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_12
    mul-float/2addr v7, v4

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_13
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_14
    int-to-float v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_15
    if-gtz v6, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    :cond_0
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sub-int v2, p4, p2

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

    :goto_17
    div-float/2addr v7, v8

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->paintTextSize:F

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatHeight:F

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_1d
    iget-object v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_1e
    sub-int v2, p3, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_1f
    iget v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingTop:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_20
    int-to-float v5, v5

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

    :goto_21
    new-instance v2, Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_22
    int-to-float v6, v6

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_23
    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempRect:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempPaint:Landroid/graphics/Paint;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_25
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempRect:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

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

    :goto_28
    div-float/2addr v1, v2

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2a
    new-instance v2, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_2b
    int-to-float v8, v2

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    sub-float/2addr v5, v6

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    int-to-float v6, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_2e
    sub-float/2addr v4, v5

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

    nop

    :goto_2f
    if-nez v2, :cond_2

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4c

    nop

    nop

    :goto_30
    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingLeft:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_31
    mul-float/2addr v7, v5

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_32
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

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

    nop

    :goto_33
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_34
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempRect:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_36
    int-to-float v4, p3

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatWidth:F

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_38
    div-float/2addr v7, v8

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_39
    return-void

    nop

    nop

    :goto_3a
    goto/32 :goto_41

    nop

    nop

    :goto_3b
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3c
    int-to-float v2, v2

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_3d
    iget v7, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->paintTextSize:F

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3e
    iget v7, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->paintTextSize:F

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    int-to-float v6, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_40
    int-to-float v6, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextSize:F

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-direct {p0, v2, v3, v4, v5}, Landroidx/constraintlayout/utils/widget/MotionLabel;->294cd4c081547e33f0f4b9d19f1705e6m(FFFF)V

    goto/32 :goto_a

    nop

    nop

    :goto_44
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempPaint:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_45
    int-to-float v8, v3

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_46
    move v1, v6

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_48
    if-gtz v6, :cond_4

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingRight:I

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_4a
    if-eqz v0, :cond_5

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_5
    :goto_4b
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempRect:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_4d
    goto :goto_47

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_50
    if-eqz v2, :cond_6

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

    :cond_6
    goto/32 :goto_21

    nop

    nop

    :goto_51
    int-to-float v5, v5

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_52
    goto :goto_47

    nop

    :goto_53
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

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

    :goto_55
    int-to-float v5, p4

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

    nop

    :goto_56
    cmpl-float v6, v6, v7

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    int-to-float v3, p2

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_58
    div-float v6, v5, v6

    nop

    nop

    :goto_59
    goto/32 :goto_46

    nop

    nop

    :goto_5a
    float-to-int v3, v4

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempRect:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    mul-float/2addr v4, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_5d
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatHeight:F

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5e
    div-float v6, v4, v6

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    cmpl-float v6, v6, v7

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    int-to-float v7, v3

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

    :goto_61
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_63
    mul-float/2addr v6, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_66
    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iget v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingBottom:I

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_68
    int-to-float v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_69
    sub-float/2addr v4, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_6a
    goto/16 :goto_59

    nop

    nop

    :goto_6b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mText:Ljava/lang/String;

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

    :goto_6d
    int-to-float v6, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatWidth:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_6f
    if-lez v0, :cond_7

    nop

    goto/32 :goto_65

    nop

    :cond_7
    goto/32 :goto_64

    nop

    :goto_70
    mul-float/2addr v6, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_71
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_72
    sub-float/2addr v5, v6

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    if-eqz v2, :cond_8

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :cond_8
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_74
    iget-boolean v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mUseOutline:Z

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

    :goto_75
    goto/16 :goto_29

    nop

    nop

    nop

    :goto_76
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempPaint:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_0
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_9e

    nop

    nop

    :goto_1
    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_2
    add-float/2addr v2, v3

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_6
    int-to-float v1, v1

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_7
    int-to-float v1, v1

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/32 :goto_77

    nop

    nop

    :goto_9
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_a
    cmpl-float v1, v0, v1

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_b
    int-to-float v2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_c
    add-float/2addr v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_d
    new-instance v1, Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextShader:Landroid/graphics/BitmapShader;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_11
    if-eqz v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    :goto_12
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_16
    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingLeft:I

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_17
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->32a195efbd5c5e41ff9fc47f8377777cm()F

    move-result v3

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_18
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_19
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1c
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

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

    :goto_1d
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_1e
    int-to-float v2, v2

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-boolean v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mUseOutline:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_3e

    nop

    nop

    :goto_22
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->32a195efbd5c5e41ff9fc47f8377777cm()F

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_23
    neg-float v4, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_24
    add-float/2addr v4, v1

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineColor:I

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_26
    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_27
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    goto/32 :goto_71

    nop

    nop

    :goto_29
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    goto/32 :goto_4d

    nop

    nop

    :goto_2c
    if-nez v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_31
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->paintCache:Landroid/graphics/Paint;

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

    nop

    :goto_34
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->paintCache:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_36
    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->set(Landroid/graphics/Paint;)V

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_38
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_39
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_6b

    nop

    nop

    :goto_3b
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v3, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    goto/32 :goto_3b

    nop

    nop

    :goto_3d
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-boolean v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mNotBuilt:Z

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

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

    :goto_40
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->87d03107583bfe40e8e90bd18a745a84m()F

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_41
    if-eqz v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    if-nez v3, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_44
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->buildShape(F)V

    :goto_45
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_46
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextShader:Landroid/graphics/BitmapShader;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingTop:I

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_48
    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mDeltaLeft:F

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_4a
    goto/16 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_5b

    nop

    nop

    :goto_4c
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_4e
    add-float/2addr v1, v2

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_50
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingTop:I

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

    :goto_51
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_52
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/32 :goto_63

    nop

    nop

    :goto_53
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_54
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_55
    neg-float v5, v2

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_56
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

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

    :goto_57
    invoke-virtual {v3, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setFilterBitmap(Z)V

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_59
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_5a
    if-nez v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    :cond_5
    goto/32 :goto_33

    nop

    nop

    :goto_5b
    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingLeft:I

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_5f
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_60
    add-float/2addr v1, v2

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineThickness:F

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_63
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_64
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_39

    nop

    :goto_65
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->32a195efbd5c5e41ff9fc47f8377777cm()F

    move-result v3

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_67
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_68
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->87d03107583bfe40e8e90bd18a745a84m()F

    move-result v2

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_6a
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingTop:I

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_6b
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    :goto_6d
    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_6e
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextSize:F

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_71
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

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

    :goto_73
    add-float/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    if-eqz v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual {v3, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_77
    goto/16 :goto_6d

    nop

    :goto_78
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_7a
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_7b
    move v0, v1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_7c
    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineThickness:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_7d
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mText:Ljava/lang/String;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_7e
    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextShader:Landroid/graphics/BitmapShader;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7f
    neg-float v4, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_80
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_81
    return-void

    nop

    :goto_82
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

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

    :goto_84
    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_85
    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextFillColor:I

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_86
    add-float/2addr v2, v3

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    if-nez v1, :cond_8

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_44

    nop

    nop

    :goto_88
    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextFillColor:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_89
    div-float/2addr v0, v2

    nop

    nop

    :goto_8a
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8b
    neg-float v5, v2

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_8c
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->87d03107583bfe40e8e90bd18a745a84m()F

    move-result v2

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_90
    invoke-virtual {v3, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :goto_91
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_92
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_93
    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_94
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    int-to-float v2, v2

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_96
    const/4 v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_97
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    goto/32 :goto_65

    nop

    nop

    :goto_98
    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_99
    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_9a
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_9b
    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineThickness:F

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    iget-boolean v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mUseOutline:Z

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    const/high16 v1, 0x3f800000    # 1.0f

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

    :goto_9e
    iput-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

    nop

    nop

    nop

    :goto_9f
    goto/32 :goto_9c

    nop

    nop

    :goto_a0
    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_a1
    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingLeft:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a2
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_a3
    const v1, 0x1f

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_a4
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

    nop

    goto/32 :goto_12

    nop

    nop
.end method

.method protected onMeasure(II)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    if-ne v1, v7, :cond_0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_48

    nop

    nop

    :goto_2
    if-ne v0, v7, :cond_1

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getPaddingLeft()I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_5
    const/high16 v7, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_6
    float-to-int v6, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_7
    iput v7, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingLeft:I

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_8
    goto/16 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_33

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v6, 0x1

    nop

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

    :goto_c
    if-eq v1, v7, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getPaddingTop()I

    move-result v7

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

    nop

    :goto_e
    int-to-float v7, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_f
    iget-object v8, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_10
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

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

    nop

    :goto_11
    goto/16 :goto_2e

    nop

    nop

    :goto_12
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_13
    add-int/2addr v4, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_15
    iget v9, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingRight:I

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v8, 0x0

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0, v4, v5}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setMeasuredDimension(II)V

    goto/32 :goto_2a

    nop

    nop

    :goto_18
    move v4, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto :goto_12

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    int-to-float v8, v8

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1c
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1d
    add-float/2addr v8, v6

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput v7, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingRight:I

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1f
    iput v7, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingTop:I

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_20
    iget-object v9, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mText:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v8, v9, v6, v10, v11}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_22
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_23
    add-float/2addr v7, v6

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

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

    nop

    :goto_26
    iput v7, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingBottom:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_27
    const/high16 v7, -0x80000000

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

    :goto_28
    const v1, 0x18

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_2a
    return-void

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_1

    nop

    nop

    :goto_2c
    move v5, v3

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

    :goto_2d
    add-int/2addr v5, v7

    nop

    nop

    :goto_2e
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getPaddingRight()I

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_30
    if-ne v1, v7, :cond_3

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_31
    iput-boolean v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mAutoSize:Z

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_32
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_33
    move v5, v6

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_35
    if-eq v0, v7, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_36
    iget v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mAutoSizeTextType:I

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_37
    float-to-int v4, v8

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v7, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_3a
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_47

    nop

    :goto_3b
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3c
    iget v7, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingTop:I

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iput-boolean v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mAutoSize:Z

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getPaddingBottom()I

    move-result v7

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v8, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBounds:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_40
    add-int/2addr v7, v8

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_41
    iget-object v11, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBounds:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_43
    add-int/2addr v8, v9

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_44
    const v6, 0x3f7fff58    # 0.99999f

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_45
    if-nez v6, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    :cond_6
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_46
    iget v8, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingLeft:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_10

    nop

    nop

    :goto_49
    iget v8, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingBottom:I

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public setGravity(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gravity"
        }
    .end annotation

    goto/32 :goto_5

    nop

    nop

    :goto_0
    and-int/lit8 v2, p1, 0x70

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    :goto_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_3
    and-int v1, p1, v0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanX:F

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

    :goto_5
    const v0, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    nop

    :sswitch_0
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanX:F

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/high16 v4, 0x3f800000    # 1.0f

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

    :goto_9
    and-int/2addr v0, p1

    nop

    nop

    sparse-switch v0, :sswitch_data_1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_b
    or-int/lit8 p1, p1, 0x30

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-ne p1, v3, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    :goto_e
    const v0, 0x800007

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_f
    goto :goto_18

    nop

    nop

    nop

    nop

    :sswitch_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_10
    or-int/2addr p1, v1

    nop

    nop

    :goto_11
    goto/32 :goto_21

    nop

    nop

    :goto_12
    const v1, 0x800003

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_13
    and-int v2, p1, v0

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanY:F

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_17
    iput v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanY:F

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mGravity:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1a
    goto/32 :goto_2c

    nop

    nop

    :goto_1b
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1c
    goto :goto_26

    nop

    nop

    :sswitch_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    and-int v4, v3, v0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_1e
    goto/32 :goto_1b

    nop

    :goto_1f
    const/4 v3, 0x0

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

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_21
    and-int/lit8 v1, p1, 0x70

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    :goto_23
    goto :goto_18

    nop

    nop

    nop

    nop

    nop

    :sswitch_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iput v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanX:F

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanY:F

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

    :goto_28
    const v1, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2a
    if-ne v2, v4, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_15

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

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_3
        0x50 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_2
        0x800003 -> :sswitch_0
        0x800005 -> :sswitch_2
    .end sparse-switch

    :goto_2c
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2d
    const/high16 v5, -0x40800000    # -1.0f

    nop

    nop

    nop

    nop

    nop

    sparse-switch v2, :sswitch_data_0

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-eqz v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_12

    nop

    nop

    :goto_2f
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mGravity:I

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop
.end method

.method public setRound(F)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "round"
        }
    .end annotation

    goto/32 :goto_24

    nop

    nop

    :goto_0
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v2, Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getHeight()I

    move-result v2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRound:F

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_40

    nop

    :goto_8
    goto/32 :goto_3f

    nop

    nop

    :goto_9
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRound:F

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    :goto_c
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    cmpl-float v4, p1, v3

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

    :goto_e
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRect:Landroid/graphics/RectF;

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_f
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_10
    if-nez v4, :cond_0

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

    :cond_0
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRound:F

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_12
    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRect:Landroid/graphics/RectF;

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

    nop

    :goto_13
    const/16 v5, 0x15

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setRoundPercent(F)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_15
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRound:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_16
    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_18
    int-to-float v7, v2

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-ge v1, v5, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1a
    int-to-float v6, v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v2, p0}, Landroidx/constraintlayout/utils/widget/MotionLabel$2;-><init>(Landroidx/constraintlayout/utils/widget/MotionLabel;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_3
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_1d
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_1e
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-ge v1, v5, :cond_4

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidateOutline()V

    :goto_21
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setClipToOutline(Z)V

    :goto_23
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_25
    if-eqz v2, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_5
    goto/32 :goto_26

    nop

    nop

    :goto_26
    new-instance v2, Landroidx/constraintlayout/utils/widget/MotionLabel$2;

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

    :goto_27
    invoke-virtual {v4, v3, v3, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v3, 0x0

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

    :goto_2a
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-eqz v2, :cond_6

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :cond_6
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2c
    cmpl-float v0, v0, p1

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-lez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_a

    nop

    :goto_2e
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :goto_2f
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_30
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_31
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    move v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setClipToOutline(Z)V

    :goto_37
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const/high16 v1, -0x40800000    # -1.0f

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-ge v2, v5, :cond_8

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    return-void

    nop

    :goto_3d
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_3e
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_3f
    move v0, v2

    nop

    :goto_40
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_41
    new-instance v2, Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_42
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_43
    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRect:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_44
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getWidth()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_45
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRoundPercent:F

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_46
    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_47
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v3, v4, v6, v6, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRect:Landroid/graphics/RectF;

    nop

    nop

    :goto_4b
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_4c
    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_e

    nop

    nop

    :goto_4e
    if-nez v0, :cond_9

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_9
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRoundPercent:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_50
    if-eqz v2, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_41

    nop

    nop

    nop
.end method

.method public setRoundPercent(F)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "round"
        }
    .end annotation

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v2, p0}, Landroidx/constraintlayout/utils/widget/MotionLabel$1;-><init>(Landroidx/constraintlayout/utils/widget/MotionLabel;)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1
    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v4, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRoundPercent:F

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz v2, :cond_1

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_1
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    goto/16 :goto_47

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2f

    nop

    nop

    :goto_a
    int-to-float v4, v4

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

    :goto_b
    if-ge v1, v5, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_2
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_d
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    goto/32 :goto_41

    nop

    nop

    :goto_e
    invoke-virtual {v6, v3, v3, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_f
    new-instance v2, Landroid/graphics/Path;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_10
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_12
    cmpl-float v4, p1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getWidth()I

    move-result v1

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRect:Landroid/graphics/RectF;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_15
    const/16 v5, 0x15

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

    :goto_16
    int-to-float v7, v1

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

    nop

    nop

    :goto_17
    iget-object v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRect:Landroid/graphics/RectF;

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

    :goto_18
    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRoundPercent:F

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v3, v6, v4, v4, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto/32 :goto_8

    nop

    nop

    :goto_1c
    cmpl-float v0, v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_3b

    nop

    :goto_1e
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_1f
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_20
    if-eqz v2, :cond_3

    nop

    goto/32 :goto_29

    nop

    :cond_3
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRect:Landroid/graphics/RectF;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-ge v2, v5, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    move v0, v1

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

    :goto_24
    const/4 v3, 0x0

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

    :goto_25
    mul-float/2addr v4, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_26
    int-to-float v8, v2

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_27
    new-instance v2, Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :goto_29
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

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

    :goto_2b
    if-nez v0, :cond_5

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

    :cond_5
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidateOutline()V

    :goto_2d
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_2e
    if-nez v0, :cond_6

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

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

    :goto_30
    const/4 v2, 0x0

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_31
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_32
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_33
    if-lez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2

    nop

    :goto_34
    div-float/2addr v4, v6

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

    :goto_35
    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRect:Landroid/graphics/RectF;

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_1f

    nop

    nop

    :goto_37
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_38
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

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

    :goto_39
    if-eqz v2, :cond_8

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3a
    move v0, v2

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3c
    if-ge v1, v5, :cond_9

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_3d
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getHeight()I

    move-result v2

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_40
    const/high16 v6, 0x40000000    # 2.0f

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

    nop

    :goto_41
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_42
    iget v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRoundPercent:F

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    return-void

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    new-instance v2, Landroidx/constraintlayout/utils/widget/MotionLabel$1;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_46
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setClipToOutline(Z)V

    :goto_47
    goto/32 :goto_2b

    nop

    nop

    :goto_48
    const v0, 0x1c

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

    :goto_49
    goto/32 :goto_3

    nop

    nop

    :goto_4a
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setClipToOutline(Z)V

    :goto_4b
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    const v1, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop
.end method

.method public setScaleFromTextSize(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mText:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public setTextBackgroundPanX(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pan"
        }
    .end annotation

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->887e4fb67dbfdf424bfc47c14f4babf8m()V

    goto/32 :goto_0

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
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanX:F

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public setTextBackgroundPanY(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pan"
        }
    .end annotation

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->887e4fb67dbfdf424bfc47c14f4babf8m()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanY:F

    nop

    goto/32 :goto_1

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
.end method

.method public setTextBackgroundRotate(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotation"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRotate:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->887e4fb67dbfdf424bfc47c14f4babf8m()V

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop
.end method

.method public setTextBackgroundZoom(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoom"
        }
    .end annotation

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->887e4fb67dbfdf424bfc47c14f4babf8m()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mZoom:F

    nop

    nop

    nop

    nop

    goto/32 :goto_0

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

.method public setTextFillColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    goto/32 :goto_2

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

    nop

    :goto_1
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextFillColor:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public setTextOutlineColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    goto/32 :goto_2

    nop

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

    nop

    :goto_1
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineColor:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mUseOutline:Z

    nop

    goto/32 :goto_1

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
.end method

.method public setTextOutlineThickness(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "width"
        }
    .end annotation

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineThickness:F

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
    const/4 v0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mUseOutline:Z

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mUseOutline:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :goto_9
    const/high16 v0, 0x3f800000    # 1.0f

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

    :goto_a
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineThickness:F

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public setTextPanX(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textPanX"
        }
    .end annotation

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanX:F

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public setTextPanY(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textPanY"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanY:F

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public setTextSize(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_22

    nop

    nop

    :goto_1
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v2, " / "

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

    nop

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_4
    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

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

    :goto_6
    goto/32 :goto_15

    nop

    nop

    :goto_7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_c
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

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

    nop

    :goto_d
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->buildShape(F)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

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

    :goto_12
    goto/16 :goto_2d

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_15
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_18
    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    :goto_1b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_26

    nop

    nop

    :goto_1d
    const v1, 0x5

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

    :goto_1e
    sget-object v0, Landroidx/constraintlayout/utils/widget/MotionLabel;->TAG:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1f
    move v1, p1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_20
    const-string v2, "  "

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    nop

    nop

    :goto_22
    goto/32 :goto_2a

    nop

    nop

    :goto_23
    if-nez v0, :cond_2

    nop

    goto/32 :goto_13

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->requestLayout()V

    goto/32 :goto_d

    nop

    nop

    :goto_25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_26
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextSize:F

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_27
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextSize:F

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2b
    invoke-static {}, Landroidx/constraintlayout/motion/widget/Debug;->getLoc()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    div-float/2addr v0, v1

    nop

    nop

    :goto_2d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public setTextureHeight(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mTextureHeight"
        }
    .end annotation

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->887e4fb67dbfdf424bfc47c14f4babf8m()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureHeight:F

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

.method public setTextureWidth(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mTextureWidth"
        }
    .end annotation

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureWidth:F

    nop

    goto/32 :goto_3

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

    :goto_3
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->887e4fb67dbfdf424bfc47c14f4babf8m()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tf"
        }
    .end annotation

    goto/32 :goto_b

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

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mLayout:Landroid/text/Layout;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

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
    if-ne v0, p1, :cond_1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->requestLayout()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mLayout:Landroid/text/Layout;

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

.method setupPath()V
    .locals 3

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingBottom:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getPaddingTop()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_4
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextSize:F

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_5
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    goto/32 :goto_4

    nop

    nop

    :goto_7
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mStyleIndex:I

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

    nop

    :goto_8
    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextFillColor:I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    const/16 v1, 0x80

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_b
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFontFamily:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTypefaceIndex:I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineThickness:F

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_10
    goto/32 :goto_25

    nop

    :goto_11
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getPaddingLeft()I

    move-result v0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_14
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/utils/widget/MotionLabel;->fa1c72bc68bf727f6fa51310ddc7635bm(Ljava/lang/String;II)V

    goto/32 :goto_26

    nop

    nop

    :goto_16
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setTextSize(F)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingTop:I

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_18
    goto/32 :goto_11

    nop

    :goto_19
    const/4 v1, 0x1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getPaddingBottom()I

    move-result v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1c
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1f
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingRight:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_20
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingLeft:I

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getPaddingRight()I

    move-result v0

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

    :goto_23
    rem-int v0, v0, v1

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

    :goto_24
    return-void

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

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
.end method
