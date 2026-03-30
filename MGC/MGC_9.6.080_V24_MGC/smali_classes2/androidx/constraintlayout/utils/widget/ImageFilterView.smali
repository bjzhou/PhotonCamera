.class public Landroidx/constraintlayout/utils/widget/ImageFilterView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "ImageFilterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;
    }
.end annotation


# instance fields
.field private mAltDrawable:Landroid/graphics/drawable/Drawable;

.field private mCrossfade:F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

.field mLayer:Landroid/graphics/drawable/LayerDrawable;

.field mLayers:[Landroid/graphics/drawable/Drawable;

.field private mOverlay:Z

.field mPanX:F

.field mPanY:F

.field private mPath:Landroid/graphics/Path;

.field mRect:Landroid/graphics/RectF;

.field mRotate:F

.field private mRound:F

.field private mRoundPercent:F

.field mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

.field mZoom:F


# direct methods
.method private 2b1cf9c380b2eacec6627ea81929002em()V
    .locals 1

    goto/32 :goto_e

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_2

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
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->4eb1017aededb6aa4b2447b799468739m()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRotate:F

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPanY:F

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPanX:F

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mZoom:F

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    goto/32 :goto_8

    nop

    nop

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mOverlay:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method private 4eb1017aededb6aa4b2447b799468739m()V
    .locals 14

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    div-float v11, v8, v11

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

    nop

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPanY:F

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4b

    nop

    nop

    :goto_4
    add-float/2addr v10, v7

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_5
    sub-float/2addr v10, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_7
    div-float v13, v7, v11

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

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

    :goto_9
    mul-float/2addr v10, v0

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

    :goto_a
    sub-float v12, v8, v12

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

    :goto_b
    const v0, 0x6

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->getHeight()I

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_0
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPanX:F

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/high16 v11, 0x3f000000    # 0.5f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, v11}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_35

    nop

    nop

    :goto_13
    int-to-float v6, v6

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_14
    mul-float/2addr v9, v3

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_15
    cmpg-float v9, v9, v10

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    :goto_18
    goto/32 :goto_51

    nop

    nop

    :goto_19
    invoke-virtual {v4, v9, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1a
    mul-float v10, v6, v7

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_1e
    move v2, v1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_1f
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_2
    goto/32 :goto_57

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_21
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPanX:F

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

    :goto_22
    div-float v9, v7, v5

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_23
    mul-float v10, v9, v5

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_24
    return-void

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRotate:F

    nop

    nop

    :goto_27
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mZoom:F

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_29
    const v1, 0x11

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2a
    iget v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPanY:F

    nop

    :goto_2b
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    mul-float/2addr v12, v11

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_2d
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2e
    mul-float v12, v9, v6

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

    :goto_2f
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    div-float v9, v8, v6

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_35
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mZoom:F

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const/high16 v3, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v4, v1, v13, v11}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPanY:F

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_3c
    iget v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mZoom:F

    nop

    :goto_3d
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_3e
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_3
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_3f
    sub-float v10, v7, v10

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_40
    goto :goto_3d

    nop

    nop

    :goto_41
    goto/32 :goto_3c

    nop

    nop

    :goto_42
    if-nez v2, :cond_4

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_43
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

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

    :goto_44
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->getWidth()I

    move-result v7

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_45
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_5
    goto/32 :goto_2

    nop

    :goto_46
    mul-float v11, v9, v5

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

    :goto_47
    new-instance v4, Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_48
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_49
    mul-float v13, v9, v6

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_4a
    int-to-float v8, v8

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPanX:F

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4c
    sget-object v11, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4d
    goto/16 :goto_33

    nop

    nop

    :goto_4e
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    if-nez v0, :cond_6

    nop

    goto/32 :goto_25

    nop

    :cond_6
    goto/32 :goto_1

    nop

    nop

    :goto_50
    if-ltz v9, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :cond_7
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_3

    nop

    :goto_52
    goto/16 :goto_27

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRotate:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_56
    sub-float/2addr v12, v13

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_57
    move v0, v1

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

    :goto_58
    int-to-float v5, v5

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_59
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_5a
    iget v4, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRotate:F

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_5b
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

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

    nop

    nop

    :goto_5c
    if-nez v4, :cond_8

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    :cond_8
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    add-float/2addr v12, v8

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_5e
    mul-float v9, v5, v8

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    const/high16 v11, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_60
    mul-float/2addr v10, v11

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

    :goto_61
    int-to-float v7, v7

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_62
    mul-float/2addr v12, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

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

    :goto_64
    invoke-virtual {v4, v10, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/32 :goto_5f

    nop

    nop

    :goto_65
    if-nez v3, :cond_9

    nop

    goto/32 :goto_41

    nop

    :cond_9
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_54

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

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_1
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setBrightness(F)V

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eq v3, v4, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_brightness:I

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

    :goto_7
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_imagePanY:I

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_8
    if-eq v3, v4, :cond_1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-eq v3, v4, :cond_2

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

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    mul-float/2addr v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_d
    const/high16 v5, 0x437f0000    # 255.0f

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_f
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_roundPercent:I

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_10
    aput-object v3, v2, v5

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mAltDrawable:Landroid/graphics/drawable/Drawable;

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

    :goto_12
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_imageZoom:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_13
    sub-float/2addr v3, v4

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7e

    nop

    :goto_15
    iget v4, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mCrossfade:F

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_16
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_59

    nop

    nop

    :goto_18
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget v4, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPanY:F

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_1a
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_1d
    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_1e
    invoke-direct {p0, v4}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->2fc62698b35ccb6dd3fb99140e6acdbam(Z)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    aput-object v3, v2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_20
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayers:[Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_23
    goto/16 :goto_59

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_7d

    nop

    nop

    :goto_25
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayers:[Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_26
    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-eq v3, v4, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_28
    mul-float/2addr v3, v5

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    nop

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

    :goto_2b
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_imagePanX:I

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

    :goto_2c
    goto/16 :goto_59

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_59

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_crossfade:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_33
    if-lt v2, v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    :cond_5
    goto/32 :goto_21

    nop

    nop

    :goto_34
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setImagePanX(F)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_36
    const/4 v5, 0x1

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

    :goto_37
    if-nez p2, :cond_6

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_39
    goto/16 :goto_59

    nop

    :goto_3a
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_59

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_f

    nop

    nop

    :goto_3d
    const v0, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_3e
    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_3f
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_40
    if-eqz v2, :cond_7

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_41
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_42
    iget v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mCrossfade:F

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_59

    nop

    nop

    :goto_44
    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_45
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_46
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_contrast:I

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_48
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

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

    :goto_4a
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_4b
    if-nez v2, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v2, v5}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setSaturation(F)V

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_4e
    if-eq v3, v4, :cond_9

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_94

    nop

    nop

    :goto_4f
    iget v4, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPanX:F

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_50
    iput-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

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

    :goto_52
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setRoundPercent(F)V

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_53
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_overlay:I

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_54
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView:[I

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setContrast(F)V

    goto/32 :goto_6c

    nop

    nop

    :goto_56
    if-eq v3, v4, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_a
    goto/32 :goto_4f

    nop

    nop

    :goto_57
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setImageZoom(F)V

    :goto_59
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayers:[Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setRound(F)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setWarmth(F)V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    goto/16 :goto_9c

    nop

    :goto_5e
    goto/32 :goto_65

    nop

    nop

    :goto_5f
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_round:I

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_60
    invoke-super {p0, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_62
    const/16 v6, 0x15

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

    :goto_63
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_64
    if-ge v4, v6, :cond_b

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_66
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayers:[Landroid/graphics/drawable/Drawable;

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

    :goto_67
    if-eq v3, v4, :cond_c

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :cond_c
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_68
    if-nez v2, :cond_d

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_66

    nop

    nop

    :goto_69
    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mDrawable:Landroid/graphics/drawable/Drawable;

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

    :goto_6a
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_saturation:I

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_6b
    float-to-int v3, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6c
    goto/16 :goto_59

    nop

    nop

    :goto_6d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_6f
    goto/16 :goto_93

    nop

    nop

    nop

    :goto_70
    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    if-ge v4, v6, :cond_e

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :cond_e
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    if-eq v3, v4, :cond_f

    nop

    goto/32 :goto_74

    nop

    nop

    :cond_f
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_73
    goto/16 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_74
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_75
    if-eq v3, v4, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_78
    iget-boolean v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mOverlay:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_79
    const/4 v5, 0x0

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    if-nez v3, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-direct {v2, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_7c
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_7d
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_imageRotate:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    goto/32 :goto_37

    nop

    nop

    :goto_80
    float-to-int v3, v3

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_81
    if-eq v3, v4, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_82
    iget v4, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mZoom:F

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    iget v4, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRotate:F

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    if-eq v3, v4, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_29

    nop

    nop

    :goto_85
    iget-boolean v4, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mOverlay:Z

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_86
    const v1, 0x1c

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

    nop

    :goto_87
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setImagePanY(F)V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_88
    iput v4, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mCrossfade:F

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_89
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

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

    :goto_8a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_8b
    goto/16 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_8d
    goto/16 :goto_59

    nop

    :goto_8e
    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_8f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_90
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_altSrc:I

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_91
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mAltDrawable:Landroid/graphics/drawable/Drawable;

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

    nop

    :goto_92
    const/4 v2, 0x0

    nop

    nop

    nop

    :goto_93
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_94
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_95
    if-eq v3, v4, :cond_14

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_96
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setImageRotate(F)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    const/high16 v3, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_warmth:I

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

    :goto_9a
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    aput-object v2, v3, v4

    nop

    nop

    nop

    :goto_9c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    new-instance v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

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

    nop

    :goto_1
    const v0, 0x1

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

    :goto_2
    iput v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mZoom:F

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

    :goto_3
    iput v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRound:F

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_4
    iput v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPanX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mAltDrawable:Landroid/graphics/drawable/Drawable;

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

    :goto_6
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    :goto_9
    iput v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPanY:F

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/high16 v1, 0x7fc00000    # Float.NaN

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    :goto_c
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x0

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

    :goto_f
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_10
    iput v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mCrossfade:F

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_11
    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mOverlay:Z

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

    :goto_12
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->9e849c4a6f153b941faff3aa6310f73em(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_14
    invoke-direct {v0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;-><init>()V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_15
    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_16
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_17
    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayers:[Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_18
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_19
    iput v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1a
    iput v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRotate:F

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

    :goto_1b
    const v1, 0x1f

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1c
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    goto/32 :goto_0

    nop

    nop

    :goto_1d
    const/4 v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1f
    const/4 v0, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

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

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

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

    :goto_1
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_2
    iput-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayers:[Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3
    const v1, 0x1

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

    :goto_4
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_7
    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mOverlay:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/high16 v0, 0x7fc00000    # Float.NaN

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

    :goto_a
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

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

    :goto_c
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mCrossfade:F

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPanY:F

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x1b

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_f
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPanX:F

    nop

    nop

    nop

    goto/32 :goto_d

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
    goto/32 :goto_13

    nop

    nop

    :goto_12
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x2

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRotate:F

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

    :goto_16
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRound:F

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

    :goto_17
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_18
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mZoom:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_19
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->9e849c4a6f153b941faff3aa6310f73em(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    :goto_1b
    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1c
    const/4 v0, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_11

    nop

    nop

    :goto_1e
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_0

    nop

    nop

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

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->9e849c4a6f153b941faff3aa6310f73em(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1a

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayers:[Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_5
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/high16 v0, 0x7fc00000    # Float.NaN

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_8
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mCrossfade:F

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

    :goto_9
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRound:F

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    new-instance v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_d
    const/4 v1, 0x2

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_e
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mZoom:F

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRotate:F

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_11
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPanY:F

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPanX:F

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

    :goto_14
    invoke-direct {v0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;-><init>()V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_15
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_17
    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

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

    :goto_18
    const v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1f

    nop

    :goto_1a
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F

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

    :goto_1c
    rem-int v0, v0, v1

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
    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mOverlay:Z

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    :goto_1f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method static synthetic access$000(Landroidx/constraintlayout/utils/widget/ImageFilterView;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F

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
.end method

.method static synthetic access$100(Landroidx/constraintlayout/utils/widget/ImageFilterView;)F
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

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRound:F

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

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    add-int v0, v0, v1

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
    iget v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPath:Landroid/graphics/Path;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_12

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_5
    if-nez v0, :cond_1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->draw(Landroid/graphics/Canvas;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/16 v2, 0x15

    nop

    nop

    nop

    goto/32 :goto_d

    nop

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

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v2, 0x0

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

    :goto_b
    const v0, 0x3

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x12

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_d
    if-lt v1, v2, :cond_3

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

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_f
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_15

    nop

    :goto_12
    goto/32 :goto_0

    nop

    nop

    :goto_13
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    :goto_15
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_4
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPath:Landroid/graphics/Path;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    cmpl-float v1, v1, v2

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

    :goto_1b
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :goto_1c
    goto/32 :goto_6

    nop

    nop
.end method

.method public getBrightness()F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    :goto_2
    iget v0, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mBrightness:F

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

.method public getContrast()F
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

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

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
    iget v0, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mContrast:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public getCrossfade()F
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
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mCrossfade:F

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
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPanX:F

    nop

    goto/32 :goto_0

    nop

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

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPanY:F

    nop

    goto/32 :goto_0

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
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRotate:F

    nop

    goto/32 :goto_0

    nop

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

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mZoom:F

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

    nop
.end method

.method public getRound()F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRound:F

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

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F

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
.end method

.method public getSaturation()F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iget v0, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mSaturation:F

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return v0

    nop

    nop

    nop
.end method

.method public getWarmth()F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

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

    :goto_1
    return v0

    nop

    :goto_2
    iget v0, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mWarmth:F

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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->4eb1017aededb6aa4b2447b799468739m()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatImageView;->layout(IIII)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

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

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

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

    nop

    :goto_4
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    aput-object v0, v1, v2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayers:[Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->getContext()Landroid/content/Context;

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

    nop

    :goto_d
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayers:[Landroid/graphics/drawable/Drawable;

    nop

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

    :goto_e
    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_f
    const v1, 0xb

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_7

    nop

    :goto_11
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setCrossfade(F)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    aput-object v2, v1, v3

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_13
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_14
    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_16
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mCrossfade:F

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_17
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_18
    const v0, 0x17

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_19
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v3, 0x0

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

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->updateMatrix(Landroid/widget/ImageView;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mBrightness:F

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    return-void

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

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iput p1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mContrast:F

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

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

    :goto_4
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->updateMatrix(Landroid/widget/ImageView;)V

    goto/32 :goto_1

    nop

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

    nop

    :goto_1
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0xc

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_5
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

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

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_8
    add-int v0, v0, v1

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

    :goto_9
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    sub-float/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_b
    const v1, 0x3

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    const/4 v2, 0x0

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

    :goto_d
    iget-boolean v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mOverlay:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_e
    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_f
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mCrossfade:F

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_13
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_14
    mul-float/2addr v2, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_15
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mCrossfade:F

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_17
    const/high16 v1, 0x437f0000    # 255.0f

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

    :goto_18
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayer:Landroid/graphics/drawable/LayerDrawable;

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

    :goto_19
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1c
    float-to-int v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_11

    nop

    nop

    :goto_1e
    const/high16 v2, 0x3f800000    # 1.0f

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

    :goto_1f
    iget v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mCrossfade:F

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    float-to-int v2, v2

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

    :goto_21
    mul-float/2addr v2, v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_23
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayers:[Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_1a

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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2
    const v0, 0x3

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_3
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    :goto_7
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setCrossfade(F)V

    goto/32 :goto_14

    nop

    nop

    :goto_e
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayers:[Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mCrossfade:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_11
    goto/32 :goto_b

    nop

    nop

    :goto_12
    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_f

    nop

    nop

    :goto_14
    goto :goto_11

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_10

    nop

    nop

    :goto_16
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayers:[Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_17
    aput-object v2, v1, v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v1, 0x1a

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

    :goto_1c
    aput-object v0, v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    :goto_1e
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    nop

    nop

    nop

    goto/32 :goto_13

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

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPanX:F

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->2b1cf9c380b2eacec6627ea81929002em()V

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

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPanY:F

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
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->2b1cf9c380b2eacec6627ea81929002em()V

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

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1
    goto :goto_d

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mCrossfade:F

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

    :goto_4
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_5
    const/4 v2, 0x0

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_8
    aput-object v0, v1, v2

    nop

    goto/32 :goto_1b

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

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    const v0, 0x19

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_c
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :goto_d
    goto/32 :goto_9

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_f
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setCrossfade(F)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x10

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_12
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_16
    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_1c

    nop

    :goto_18
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_14

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

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1b
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayers:[Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1f
    aput-object v2, v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_20
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayers:[Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

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

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRotate:F

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->2b1cf9c380b2eacec6627ea81929002em()V

    goto/32 :goto_1

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

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->2b1cf9c380b2eacec6627ea81929002em()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mZoom:F

    nop

    nop

    nop

    goto/32 :goto_1

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

    goto/32 :goto_17

    nop

    nop

    :goto_0
    cmpl-float v0, v0, p1

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_1
    if-eqz v2, :cond_0

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->getWidth()I

    move-result v1

    nop

    goto/32 :goto_2d

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
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_5
    int-to-float v6, v1

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

    :goto_6
    const/high16 v1, -0x40800000    # -1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :goto_8
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v3, 0x0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_c
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_1
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_d
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPath:Landroid/graphics/Path;

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

    :goto_f
    new-instance v2, Landroid/graphics/RectF;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRect:Landroid/graphics/RectF;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move v0, v2

    nop

    :goto_12
    goto/32 :goto_3e

    nop

    nop

    :goto_13
    const v1, 0x18

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setRoundPercent(F)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    cmpl-float v4, p1, v3

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x1a

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

    :goto_18
    if-ge v2, v5, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :cond_3
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-ge v1, v5, :cond_4

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :cond_4
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v3, v4, v6, v6, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-eqz v2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_5
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRect:Landroid/graphics/RectF;

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

    :goto_1e
    if-ge v1, v5, :cond_6

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

    :cond_6
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_20
    if-lez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_9

    nop

    :goto_21
    iput v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_22
    goto/16 :goto_4e

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_24
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

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

    :goto_25
    if-nez v0, :cond_8

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_26
    move v0, v1

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->invalidateOutline()V

    :goto_28
    goto/32 :goto_4b

    nop

    nop

    :goto_29
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2a
    iget v6, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRound:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    new-instance v2, Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPath:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_2d
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->getHeight()I

    move-result v2

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-eqz v2, :cond_9

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setClipToOutline(Z)V

    :goto_31
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v4, v3, v3, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_12

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_37
    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRect:Landroid/graphics/RectF;

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_39
    const/16 v5, 0x15

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPath:Landroid/graphics/Path;

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_3d
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_3e
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRound:F

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3f
    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_40
    new-instance v2, Landroidx/constraintlayout/utils/widget/ImageFilterView$2;

    nop

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

    :goto_41
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

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

    :goto_42
    int-to-float v7, v2

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRect:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_44
    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRound:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_46
    invoke-direct {v2, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$2;-><init>(Landroidx/constraintlayout/utils/widget/ImageFilterView;)V

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_47
    if-nez v4, :cond_a

    nop

    goto/32 :goto_23

    nop

    :cond_a
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPath:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_49
    goto/32 :goto_a

    nop

    :goto_4a
    const/4 v1, 0x1

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

    :goto_4b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setClipToOutline(Z)V

    :goto_4e
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4f
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_50
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRound:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

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

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->invalidateOutline()V

    :goto_1
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2
    const/16 v5, 0x15

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_3
    if-eqz v2, :cond_0

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_29

    nop

    nop

    :goto_4
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_5
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F

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

    :goto_6
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPath:Landroid/graphics/Path;

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

    :goto_7
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_8
    if-ge v1, v5, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move v0, v2

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    int-to-float v7, v1

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_c
    invoke-direct {v2, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$1;-><init>(Landroidx/constraintlayout/utils/widget/ImageFilterView;)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_d
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

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

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0xb

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    div-float/2addr v4, v6

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget v6, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F

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

    :goto_12
    int-to-float v4, v4

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
    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRect:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setClipToOutline(Z)V

    :goto_16
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v1, 0x1

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_18
    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

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

    :goto_19
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    cmpl-float v4, p1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1b
    if-ge v2, v5, :cond_3

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v4, :cond_4

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1e
    iget-object v6, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRect:Landroid/graphics/RectF;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-eqz v2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_5
    goto/32 :goto_46

    nop

    nop

    :goto_20
    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_21
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPath:Landroid/graphics/Path;

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

    :goto_23
    const v0, 0x15

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v6, v3, v3, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_26
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPath:Landroid/graphics/Path;

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_27
    return-void

    nop

    nop

    :goto_28
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_29
    new-instance v2, Landroid/graphics/Path;

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

    :goto_2a
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

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

    :goto_2b
    const/high16 v6, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2c
    if-nez v0, :cond_6

    nop

    nop

    goto/32 :goto_40

    nop

    :cond_6
    goto/32 :goto_4b

    nop

    nop

    :goto_2d
    mul-float/2addr v4, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_2e
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :goto_2f
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_31
    if-lez v0, :cond_7

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_3a

    nop

    :goto_32
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_33
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setClipToOutline(Z)V

    :goto_34
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_36
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->getWidth()I

    move-result v1

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v3, v6, v4, v4, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto/32 :goto_48

    nop

    nop

    :goto_38
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRect:Landroid/graphics/RectF;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v6, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRect:Landroid/graphics/RectF;

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

    :goto_3a
    goto/32 :goto_28

    nop

    nop

    :goto_3b
    goto/32 :goto_32

    nop

    nop

    :goto_3c
    cmpl-float v0, v0, p1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3d
    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPath:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_3f
    goto/16 :goto_a

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_41
    if-ge v1, v5, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_8
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_42
    const/4 v2, 0x0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_43
    if-eqz v2, :cond_9

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_45
    add-int v0, v0, v1

    nop

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

    :goto_46
    new-instance v2, Landroid/graphics/RectF;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_47
    new-instance v2, Landroidx/constraintlayout/utils/widget/ImageFilterView$1;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/16 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_d

    nop

    nop

    :goto_4a
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->getHeight()I

    move-result v2

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_4b
    move v0, v1

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

    nop

    nop

    :goto_4c
    int-to-float v8, v2

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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mSaturation:F

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

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->updateMatrix(Landroid/widget/ImageView;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->updateMatrix(Landroid/widget/ImageView;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    iput p1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mWarmth:F

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
