.class public Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;
.super Ljava/lang/Object;
.source "VelocityMatrix.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field mDRotate:F

.field mDScaleX:F

.field mDScaleY:F

.field mDTranslateX:F

.field mDTranslateY:F

.field mRotate:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

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
    const-string v0, "VelocityMatrix"

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
    sput-object v0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->TAG:Ljava/lang/String;

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

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public applyTransform(FFII[F)V
    .locals 16

    goto/32 :goto_48

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sub-float v7, p2, v7

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_2
    move-object/from16 v0, p0

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
    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_4
    add-float/2addr v6, v9

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/high16 v9, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_6
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    float-to-double v10, v10

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_8
    mul-double/2addr v11, v13

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_9
    float-to-double v13, v9

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

    :goto_a
    aput v6, p5, v3

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_b
    aget v4, p5, v3

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_c
    int-to-float v11, v11

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

    :goto_d
    float-to-double v13, v9

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

    :goto_e
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    :goto_10
    float-to-double v11, v11

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_11
    float-to-double v11, v11

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    aget v6, p5, v5

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

    :goto_13
    float-to-double v11, v9

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_14
    mul-float/2addr v5, v10

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    mul-float/2addr v9, v7

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-float/2addr v6, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_17
    int-to-float v11, v2

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

    :goto_18
    int-to-float v5, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_19
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1a
    move/from16 v1, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1b
    iget v9, v0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mRotate:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_1c
    const/4 v5, 0x1

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

    :goto_1d
    double-to-float v9, v9

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1e
    double-to-float v10, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    mul-float/2addr v11, v7

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

    :goto_20
    iget v9, v0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleY:F

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_21
    iget v9, v0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateY:F

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

    :goto_22
    add-float/2addr v4, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_23
    iget v10, v0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDRotate:F

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_24
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

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

    :goto_25
    double-to-float v5, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_26
    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

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

    :goto_27
    mul-double/2addr v5, v11

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

    :goto_28
    move/from16 v2, p4

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_29
    float-to-double v5, v5

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2a
    add-float v6, v15, v5

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget v9, v0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_2c
    sub-float v8, p1, v7

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2d
    add-float/2addr v4, v9

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v3, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2f
    mul-float/2addr v11, v8

    nop

    nop

    nop

    goto/32 :goto_10

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
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_32
    mul-float/2addr v5, v10

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

    :goto_33
    add-float/2addr v4, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_34
    mul-double/2addr v11, v13

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    float-to-double v5, v9

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_36
    rem-int v0, v0, v1

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

    :goto_37
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_39
    mul-float/2addr v8, v9

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

    :goto_3a
    sub-double/2addr v5, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_3b
    mul-float/2addr v5, v8

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_3c
    mul-float/2addr v13, v7

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_3d
    double-to-float v5, v11

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

    :goto_3e
    const v1, 0xf

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3f
    mul-double/2addr v13, v5

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_40
    mul-float/2addr v7, v9

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

    nop

    :goto_41
    iget v9, v0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateX:F

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    move v15, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_43
    sub-double/2addr v11, v13

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_44
    int-to-float v13, v2

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_46
    float-to-double v13, v13

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_47
    neg-int v11, v1

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

    :goto_48
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_49
    aput v4, p5, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_4a
    mul-float/2addr v9, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_4b
    float-to-double v9, v9

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

    :goto_4c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_4d
    const/high16 v7, 0x3f000000    # 0.5f

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
.end method

.method public clear()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateX:F

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

    :goto_1
    const/4 v0, 0x0

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

    :goto_2
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleX:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDRotate:F

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleY:F

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateY:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public setRotationVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_4

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
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDRotate:F

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->getSlope(F)F

    move-result v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public setRotationVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->getSlope(F)F

    move-result v0

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
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->get(F)F

    move-result v0

    nop

    nop

    goto/32 :goto_3

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

    :goto_3
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mRotate:F

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDRotate:F

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public setScaleVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->getSlope(F)F

    move-result v0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->getSlope(F)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p1, :cond_0

    nop

    goto/32 :goto_7

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

    :goto_3
    if-nez p2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleY:F

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    :goto_6
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleX:F

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

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
.end method

.method public setScaleVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_6

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

    :goto_1
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->getSlope(F)F

    move-result v0

    nop

    nop

    goto/32 :goto_7

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

    :goto_3
    if-nez p2, :cond_1

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->getSlope(F)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleX:F

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    :goto_7
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleY:F

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public setTranslationVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateX:F

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->getSlope(F)F

    move-result v0

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

    :goto_3
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateY:F

    nop

    nop

    :goto_4
    goto/32 :goto_5

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
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez p2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->getSlope(F)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public setTranslationVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_4

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

    :goto_1
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->getSlope(F)F

    move-result v0

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

    :goto_2
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->getSlope(F)F

    move-result v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateX:F

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateY:F

    nop

    nop

    :goto_6
    goto/32 :goto_7

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
    if-nez p2, :cond_1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop
.end method
