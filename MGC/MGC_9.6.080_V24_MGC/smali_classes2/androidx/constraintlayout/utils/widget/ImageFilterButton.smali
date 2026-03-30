.class public Landroidx/constraintlayout/utils/widget/ImageFilterButton;
.super Landroidx/appcompat/widget/AppCompatImageButton;
.source "ImageFilterButton.java"


# instance fields
.field private mAltDrawable:Landroid/graphics/drawable/Drawable;

.field private mCrossfade:F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

.field mLayer:Landroid/graphics/drawable/LayerDrawable;

.field mLayers:[Landroid/graphics/drawable/Drawable;

.field private mOverlay:Z

.field private mPanX:F

.field private mPanY:F

.field private mPath:Landroid/graphics/Path;

.field mRect:Landroid/graphics/RectF;

.field private mRotate:F

.field private mRound:F

.field private mRoundPercent:F

.field mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

.field private mZoom:F


# direct methods
.method private 2b1cf9c380b2eacec6627ea81929002em()V
    .locals 1

    goto/32 :goto_10

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

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

    :goto_2
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_b

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
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->4eb1017aededb6aa4b2447b799468739m()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

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
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mZoom:F

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_c
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRotate:F

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanY:F

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

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

    :goto_f
    if-nez v0, :cond_3

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanX:F

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method private 2fc62698b35ccb6dd3fb99140e6acdbam(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "overlay"
        }
    .end annotation

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-boolean p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mOverlay:Z

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
.end method

.method private 4eb1017aededb6aa4b2447b799468739m()V
    .locals 14

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v2, :cond_0

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    div-float v11, v8, v11

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_4
    const/high16 v11, 0x3f000000    # 0.5f

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    mul-float/2addr v9, v3

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

    :goto_6
    goto/32 :goto_4d

    nop

    :goto_7
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mZoom:F

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

    :goto_8
    iget v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mZoom:F

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_a
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_b
    int-to-float v5, v5

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

    :goto_c
    mul-float v12, v9, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move v2, v1

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

    :goto_e
    iget v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanY:F

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_f
    if-nez v4, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    :goto_10
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanX:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_11
    add-float/2addr v10, v7

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_13
    mul-float/2addr v12, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_14
    goto :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_16
    iget v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRotate:F

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

    nop

    :goto_18
    iget v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mZoom:F

    nop

    :goto_19
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sub-float v10, v7, v10

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_6

    nop

    nop

    :goto_1d
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    sget-object v11, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance v4, Landroid/graphics/Matrix;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_21
    int-to-float v7, v7

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const v0, 0x20

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_25
    div-float v9, v8, v6

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_5

    nop

    nop

    :goto_27
    if-ltz v9, :cond_3

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_3
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_29
    goto :goto_26

    nop

    nop

    :goto_2a
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_2b
    int-to-float v6, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_2c
    if-nez v3, :cond_4

    nop

    goto/32 :goto_31

    nop

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

    nop

    :goto_2d
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_5
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_2f
    mul-float v10, v6, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_30
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const/high16 v11, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_33
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_34
    add-float/2addr v12, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_35
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

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

    :goto_36
    invoke-virtual {v4, v1, v13, v11}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto/32 :goto_20

    nop

    nop

    :goto_37
    div-float v13, v7, v11

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

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

    :goto_39
    mul-float/2addr v10, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_3a
    mul-float v9, v5, v8

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

    :goto_3b
    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_3c
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_53

    nop

    nop

    :goto_3d
    mul-float v11, v9, v5

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_3e
    const/high16 v3, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_3f
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanX:F

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v4, v10, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_42
    sub-float/2addr v10, v11

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_43
    mul-float v13, v9, v6

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    cmpg-float v9, v9, v10

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_45
    mul-float/2addr v10, v11

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

    :goto_46
    move v0, v1

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v4, v9, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto/32 :goto_64

    nop

    nop

    :goto_49
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4a
    sub-float/2addr v12, v13

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p0, v11}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_59

    nop

    nop

    :goto_4e
    sub-float v12, v8, v12

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_4f
    mul-float/2addr v12, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_50
    if-lez v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :cond_7
    goto/32 :goto_4c

    nop

    :goto_51
    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_53
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRotate:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_54
    const v1, 0xf

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

    nop

    :goto_55
    if-nez v0, :cond_8

    nop

    goto/32 :goto_2

    nop

    :cond_8
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    iget v4, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRotate:F

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

    nop

    :goto_57
    add-int v0, v0, v1

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

    :goto_58
    div-float v9, v7, v5

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_59
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanX:F

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_5a
    int-to-float v8, v8

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->getHeight()I

    move-result v8

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    if-nez v0, :cond_9

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

    :cond_9
    goto/32 :goto_1

    nop

    nop

    :goto_5d
    goto/16 :goto_40

    nop

    nop

    :goto_5e
    goto/32 :goto_3f

    nop

    nop

    :goto_5f
    iget v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanY:F

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanY:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_62
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->getWidth()I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_64
    mul-float v10, v9, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_65
    goto :goto_60

    nop

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop
.end method

.method private 9e849c4a6f153b941faff3aa6310f73em(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
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

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz v3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_36

    nop

    nop

    :goto_2
    if-eq v4, v5, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3
    if-eq v4, v5, :cond_2

    nop

    nop

    goto/32 :goto_4f

    nop

    :cond_2
    goto/32 :goto_46

    nop

    nop

    :goto_4
    if-eq v4, v5, :cond_3

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget v5, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRotate:F

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_4f

    nop

    nop

    :goto_8
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-boolean v5, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mOverlay:Z

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_a
    iget v4, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_b
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eq v4, v5, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_f
    const/high16 v5, 0x437f0000    # 255.0f

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

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

    :goto_11
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_altSrc:I

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1e

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget v5, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_15
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_overlay:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_17
    goto/16 :goto_7b

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_19
    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_4f

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setContrast(F)V

    goto/32 :goto_5a

    nop

    nop

    :goto_1d
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    aput-object v4, v3, v5

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

    nop

    :goto_20
    if-eq v4, v5, :cond_5

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_34

    nop

    nop

    :goto_21
    iput-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_22
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_warmth:I

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v3, :cond_6

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    :cond_6
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_24
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_imagePanY:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_25
    if-eq v4, v5, :cond_7

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_26
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_round:I

    nop

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

    :goto_27
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const v0, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p0, v0, v0, v0, v0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setPadding(IIII)V

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-eq v4, v5, :cond_8

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_8
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_crossfade:I

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/32 :goto_40

    nop

    nop

    :goto_2f
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_imageZoom:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_32
    float-to-int v4, v4

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

    nop

    :goto_33
    if-nez v3, :cond_9

    nop

    goto/32 :goto_82

    nop

    :cond_9
    goto/32 :goto_3a

    nop

    nop

    :goto_34
    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_35
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setImagePanX(F)V

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_36
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_39
    iput-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_3a
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_3c
    aput-object v4, v3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_3d
    goto/16 :goto_4f

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_40
    iget-boolean v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mOverlay:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_41
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_42
    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_43
    if-eq v4, v5, :cond_a

    nop

    goto/32 :goto_74

    nop

    nop

    :cond_a
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    sget-object v2, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_45
    if-eq v4, v5, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    :cond_b
    goto/32 :goto_68

    nop

    nop

    nop

    :goto_46
    iget v5, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mZoom:F

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

    :goto_47
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setRound(F)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iput-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_49
    iput-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_imagePanX:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4b
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_contrast:I

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

    :goto_4c
    iput-object v4, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_4d
    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setImageZoom(F)V

    :goto_4f
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    const/16 v7, 0x15

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

    :goto_51
    iput-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_52
    iget v4, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

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

    :goto_53
    if-eq v4, v5, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    :cond_c
    goto/32 :goto_59

    nop

    nop

    nop

    :goto_54
    aput-object v3, v4, v0

    nop

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    return-void

    nop

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_12

    nop

    nop

    :goto_58
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_59
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    goto :goto_4f

    nop

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    mul-float/2addr v3, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_5d
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_imageRotate:I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_5e
    goto/16 :goto_4f

    nop

    :goto_5f
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setImageRotate(F)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_61
    goto/16 :goto_4f

    nop

    nop

    nop

    :goto_62
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_63
    float-to-int v3, v3

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_64
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

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

    :goto_65
    if-eq v4, v5, :cond_d

    nop

    goto/32 :goto_8

    nop

    :cond_d
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    if-nez p2, :cond_e

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_67
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_69
    invoke-direct {p0, v5}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->2fc62698b35ccb6dd3fb99140e6acdbam(Z)V

    goto/32 :goto_73

    nop

    nop

    :goto_6a
    const/4 v0, 0x0

    nop

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

    :goto_6b
    if-lt v3, v2, :cond_f

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_f
    goto/32 :goto_7d

    nop

    nop

    :goto_6c
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    if-ge v5, v7, :cond_10

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_8e

    nop

    nop

    :goto_6e
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_roundPercent:I

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

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

    :goto_70
    goto/16 :goto_4f

    nop

    nop

    :goto_71
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_72
    iget v5, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanY:F

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_73
    goto/16 :goto_4f

    nop

    nop

    nop

    :goto_74
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_76
    mul-float/2addr v4, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_77
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_78
    goto/16 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_79
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_7a
    const/4 v3, 0x0

    nop

    :goto_7b
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_7c
    const/4 v5, 0x1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_7d
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_7e
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_7f
    sub-float/2addr v3, v4

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    iput v5, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    goto/16 :goto_55

    nop

    nop

    :goto_82
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    if-lez v0, :cond_11

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_11
    goto/32 :goto_1d

    nop

    :goto_84
    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_85
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setWarmth(F)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_86
    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

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

    :goto_88
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_31

    nop

    nop

    :goto_89
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_saturation:I

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    const/high16 v3, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8b
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setImagePanY(F)V

    goto/32 :goto_96

    nop

    nop

    :goto_8c
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setSaturation(F)V

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_8f
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_90
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_91
    if-ge v5, v7, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    :cond_12
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    if-nez v4, :cond_13

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_93
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_94
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setRoundPercent(F)V

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_95
    invoke-direct {v3, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_96
    goto/16 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_97
    goto/32 :goto_5d

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mZoom:F

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_f

    nop

    :goto_2
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRoundPercent:F

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_3
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_4
    const v0, 0x8

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

    :goto_5
    iput-boolean v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mOverlay:Z

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

    :goto_6
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanX:F

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x1

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
    add-int v0, v0, v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0, p1, v1}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->9e849c4a6f153b941faff3aa6310f73em(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_d
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRound:F

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_12

    nop

    nop

    :goto_10
    iput-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_11
    new-instance v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_12
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_14
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanY:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;-><init>()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_17
    const v1, 0xa

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    :goto_1b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

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

    :goto_1d
    const/high16 v0, 0x7fc00000    # Float.NaN

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1f
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRotate:F

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
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
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

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

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

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRound:F

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x17

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mZoom:F

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_8
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanX:F

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->9e849c4a6f153b941faff3aa6310f73em(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-boolean v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mOverlay:Z

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x0

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

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRoundPercent:F

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;-><init>()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_11
    const v0, 0x19

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_12
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

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

    :goto_13
    const/4 v1, 0x2

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

    :goto_14
    iput-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_15
    iput-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_16
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRotate:F

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/high16 v0, 0x7fc00000    # Float.NaN

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_18
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanY:F

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mDrawable:Landroid/graphics/drawable/Drawable;

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

    :goto_1b
    new-instance v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1d
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

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

    :goto_1e
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
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

    goto/32 :goto_9

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

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRoundPercent:F

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

    :goto_2
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

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

    :goto_3
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_4
    iput-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

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

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

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

    :goto_8
    new-instance v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_a
    iput-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_16

    nop

    :goto_c
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_f
    iput-boolean v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mOverlay:Z

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x3

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
    const/4 v0, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_13
    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_14
    iput-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_15
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->9e849c4a6f153b941faff3aa6310f73em(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_6

    nop

    :goto_17
    goto/32 :goto_12

    nop

    nop

    :goto_18
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_19
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mZoom:F

    nop

    goto/32 :goto_1e

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

    goto/32 :goto_b

    nop

    nop

    :goto_1b
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1c
    const/high16 v0, 0x7fc00000    # Float.NaN

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanY:F

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRotate:F

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRound:F

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop
.end method

.method static synthetic access$000(Landroidx/constraintlayout/utils/widget/ImageFilterButton;)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRoundPercent:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method static synthetic access$100(Landroidx/constraintlayout/utils/widget/ImageFilterButton;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRound:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return v0

    nop
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_13

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    if-lt v1, v2, :cond_0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v2, 0x0

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

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_7
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_8
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_9
    const/16 v2, 0x15

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

    :goto_a
    iget v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRound:F

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

    :goto_b
    add-int v0, v0, v1

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

    :goto_c
    if-nez v1, :cond_1

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x1

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_e
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->draw(Landroid/graphics/Canvas;)V

    goto/32 :goto_10

    nop

    nop

    :goto_f
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    cmpl-float v1, v1, v2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    :goto_13
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_4

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

    :cond_4
    goto/32 :goto_0

    nop

    :goto_15
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPath:Landroid/graphics/Path;

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

    :goto_16
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :goto_19
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPath:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public getContrast()F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iget v0, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mContrast:F

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
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    nop

    goto/32 :goto_0

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
.end method

.method public getCrossfade()F
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

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public getImagePanX()F
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
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanX:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public getImagePanY()F
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
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanY:F

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
.end method

.method public getImageRotate()F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRotate:F

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

.method public getImageZoom()F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mZoom:F

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

    :goto_1
    return v0

    nop

    nop

    nop

    nop
.end method

.method public getRound()F
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

    nop

    nop

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRound:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public getRoundPercent()F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRoundPercent:F

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

.method public getSaturation()F
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

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iget v0, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mSaturation:F

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

.method public getWarmth()F
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iget v0, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mWarmth:F

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

    :goto_1
    return v0

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

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

.method public layout(IIII)V
    .locals 0
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

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatImageButton;->layout(IIII)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->4eb1017aededb6aa4b2447b799468739m()V

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public setAltImageResource(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1
    aput-object v2, v1, v3

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_5
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

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
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_3

    nop

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    :goto_f
    const/4 v2, 0x1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_10
    aput-object v0, v1, v2

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

    :goto_11
    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_5

    nop

    nop

    :goto_12
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setCrossfade(F)V

    goto/32 :goto_a

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_15
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

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

    :goto_16
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_17
    const v1, 0x2

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

    :goto_18
    const/4 v3, 0x0

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

    :goto_19
    const v0, 0x3

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->getContext()Landroid/content/Context;

    move-result-object v0

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
.end method

.method public setBrightness(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brightness"
        }
    .end annotation

    goto/32 :goto_1

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
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mBrightness:F

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->updateMatrix(Landroid/widget/ImageView;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

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
.end method

.method public setContrast(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contrast"
        }
    .end annotation

    goto/32 :goto_4

    nop

    nop

    :goto_0
    iput p1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mContrast:F

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
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->updateMatrix(Landroid/widget/ImageView;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    nop

    nop

    goto/32 :goto_1

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

    nop

    :goto_4
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public setCrossfade(F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "crossfade"
        }
    .end annotation

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/high16 v1, 0x437f0000    # 255.0f

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2
    iget-boolean v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mOverlay:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    const/4 v2, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_7
    float-to-int v1, v2

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

    :goto_8
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1f

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

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

    :goto_d
    float-to-int v2, v2

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_e
    mul-float/2addr v2, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_f
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_10
    mul-float/2addr v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_14
    sub-float/2addr v2, v3

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_15
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_16
    const v0, 0xc

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_19
    goto/32 :goto_4

    nop

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

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1d
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_23

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop

    :goto_1e
    goto/32 :goto_5

    nop

    :goto_1f
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayer:Landroid/graphics/drawable/LayerDrawable;

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

    :goto_21
    iget v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_22
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_23
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2
    goto/16 :goto_19

    nop

    :goto_3
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_4
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_12

    nop

    :goto_6
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_b

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_9
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_a
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_c
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_d
    if-nez v0, :cond_2

    nop

    goto/32 :goto_3

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    aput-object v2, v1, v0

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

    :goto_f
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

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

    :goto_10
    rem-int v0, v0, v1

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
    goto/32 :goto_1f

    nop

    nop

    :goto_12
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_14
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mDrawable:Landroid/graphics/drawable/Drawable;

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
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

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

    :goto_17
    const v1, 0x17

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

    :goto_18
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_19
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setCrossfade(F)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_13

    nop

    nop

    :goto_1c
    aput-object v0, v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1e
    return-void

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

.method public setImagePanX(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pan"
        }
    .end annotation

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->2b1cf9c380b2eacec6627ea81929002em()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanX:F

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

    :goto_2
    return-void

    nop

    nop
.end method

.method public setImagePanY(F)V
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

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->2b1cf9c380b2eacec6627ea81929002em()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanY:F

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
.end method

.method public setImageResource(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1e

    nop

    :goto_2
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_0

    nop

    nop

    :goto_4
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

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

    :goto_5
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_6
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x1

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

    :goto_9
    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    aput-object v0, v1, v2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    aput-object v2, v1, v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    const/4 v2, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_f
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_10
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageResource(I)V

    :goto_11
    goto/32 :goto_1b

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_14
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

    :goto_15
    goto :goto_11

    nop

    nop

    :goto_16
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setCrossfade(F)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

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

    :goto_1a
    if-lez v0, :cond_1

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

    :goto_1b
    return-void

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1c

    nop

    :goto_1e
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_20
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method public setImageRotate(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotation"
        }
    .end annotation

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRotate:F

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->2b1cf9c380b2eacec6627ea81929002em()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public setImageZoom(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoom"
        }
    .end annotation

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->2b1cf9c380b2eacec6627ea81929002em()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mZoom:F

    nop

    goto/32 :goto_0

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

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_0
    if-ge v1, v5, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_1
    goto/32 :goto_22

    nop

    nop

    :goto_2
    new-instance v2, Landroid/graphics/RectF;

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

    :goto_3
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setClipToOutline(Z)V

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    :goto_6
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3e

    nop

    nop

    :goto_7
    iput v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRoundPercent:F

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

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

    :goto_a
    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPath:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4c

    nop

    nop

    :goto_c
    const/high16 v1, -0x40800000    # -1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_d
    goto/16 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_f
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

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

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

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
    goto/32 :goto_44

    nop

    nop

    :goto_13
    cmpl-float v4, p1, v3

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

    :goto_14
    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_16
    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRect:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_17
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v2, Landroid/graphics/Path;

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_19
    if-eqz v2, :cond_3

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_1a
    cmpl-float v0, v0, p1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v4, v3, v3, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto/32 :goto_28

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->getWidth()I

    move-result v1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v4, :cond_4

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

    :cond_4
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRect:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_31

    nop

    :goto_22
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setRoundPercent(F)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_24
    const/4 v1, 0x1

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

    :goto_25
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_5
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_27
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_28
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPath:Landroid/graphics/Path;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->getHeight()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setClipToOutline(Z)V

    :goto_2b
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2c
    if-ge v1, v5, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

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

    nop

    nop

    :goto_2d
    if-lez v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_7
    goto/32 :goto_21

    nop

    :goto_2e
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRound:F

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-ge v2, v5, :cond_8

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_8
    goto/32 :goto_15

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
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v2, 0x0

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

    :goto_33
    goto/16 :goto_4

    nop

    :goto_34
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_35
    new-instance v2, Landroidx/constraintlayout/utils/widget/ImageFilterButton$2;

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_36
    add-int v0, v0, v1

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

    :goto_37
    int-to-float v6, v1

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_38
    invoke-direct {v2, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton$2;-><init>(Landroidx/constraintlayout/utils/widget/ImageFilterButton;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->invalidateOutline()V

    :goto_3a
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_3b
    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRect:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_f

    nop

    nop

    :goto_3d
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    move v0, v1

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

    :goto_3f
    move v0, v2

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    int-to-float v7, v2

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

    :goto_42
    const v1, 0x1b

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

    :goto_43
    invoke-virtual {v3, v4, v6, v6, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRound:F

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_45
    const/16 v5, 0x15

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

    :goto_46
    iget v6, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRound:F

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :goto_48
    goto/32 :goto_2a

    nop

    nop

    :goto_49
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRoundPercent:F

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4a
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPath:Landroid/graphics/Path;

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPath:Landroid/graphics/Path;

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_4c
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRect:Landroid/graphics/RectF;

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

    :goto_4d
    if-eqz v2, :cond_9

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4f
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRound:F

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_50
    if-eqz v2, :cond_a

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_2

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

    goto/32 :goto_27

    nop

    nop

    :goto_0
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setClipToOutline(Z)V

    :goto_1
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v2, Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setClipToOutline(Z)V

    :goto_4
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPath:Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3e

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

    :goto_9
    div-float/2addr v4, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v6, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRect:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_b
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRoundPercent:F

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_c
    new-instance v2, Landroidx/constraintlayout/utils/widget/ImageFilterButton$1;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_f
    const/high16 v6, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_13
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

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

    :goto_14
    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRect:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_16
    new-instance v2, Landroid/graphics/RectF;

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eqz v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-ge v1, v5, :cond_2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_26

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_1d
    move v0, v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->getWidth()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_1f
    int-to-float v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_20
    int-to-float v7, v1

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    cmpl-float v4, p1, v3

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-eqz v2, :cond_3

    nop

    nop

    goto/32 :goto_32

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_23
    cmpl-float v0, v0, p1

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

    :goto_24
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPath:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_25
    move v0, v2

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_27
    const v0, 0x20

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

    :goto_28
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-ge v1, v5, :cond_5

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v6, v3, v3, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2d
    iget v6, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRoundPercent:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_2e
    mul-float/2addr v4, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2f
    const/4 v3, 0x0

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_30
    const/4 v2, 0x0

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_31
    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPath:Landroid/graphics/Path;

    nop

    nop

    :goto_32
    goto/32 :goto_43

    nop

    nop

    :goto_33
    if-nez v0, :cond_6

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :goto_35
    goto/32 :goto_0

    nop

    nop

    :goto_36
    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

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

    :goto_37
    if-ge v2, v5, :cond_7

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v3, v6, v4, v4, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_39
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRoundPercent:F

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-nez v4, :cond_8

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :cond_8
    goto/32 :goto_24

    nop

    nop

    :goto_3c
    if-eqz v2, :cond_9

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_9
    goto/32 :goto_16

    nop

    nop

    :goto_3d
    return-void

    nop

    nop

    :goto_3e
    goto/32 :goto_4c

    nop

    nop

    :goto_3f
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->getHeight()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_40
    const/16 v5, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_41
    int-to-float v8, v2

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

    :goto_42
    invoke-direct {v2, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton$1;-><init>(Landroidx/constraintlayout/utils/widget/ImageFilterButton;)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRect:Landroid/graphics/RectF;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget-object v6, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRect:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_45
    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_46
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPath:Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->invalidateOutline()V

    :goto_49
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto/16 :goto_4

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public setSaturation(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "saturation"
        }
    .end annotation

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iput p1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mSaturation:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->updateMatrix(Landroid/widget/ImageView;)V

    goto/32 :goto_2

    nop

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

    :goto_3
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public setWarmth(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "warmth"
        }
    .end annotation

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->updateMatrix(Landroid/widget/ImageView;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    iput p1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mWarmth:F

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method
