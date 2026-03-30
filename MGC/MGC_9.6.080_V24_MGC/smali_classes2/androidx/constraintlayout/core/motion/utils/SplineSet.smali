.class public abstract Landroidx/constraintlayout/core/motion/utils/SplineSet;
.super Ljava/lang/Object;
.source "SplineSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;,
        Landroidx/constraintlayout/core/motion/utils/SplineSet$CoreSpline;,
        Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;,
        Landroidx/constraintlayout/core/motion/utils/SplineSet$Sort;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SplineSet"


# instance fields
.field private count:I

.field protected mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

.field protected mTimePoints:[I

.field private mType:Ljava/lang/String;

.field protected mValues:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

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

    :goto_1
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mTimePoints:[I

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

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-array v1, v0, [I

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
    const v1, 0x6

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

    :goto_8
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mValues:[F

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/16 v0, 0xa

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-array v0, v0, [F

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_f
    const v0, 0xd

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public static makeCustomSpline(Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;)Landroidx/constraintlayout/core/motion/utils/SplineSet;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, p0, p1}, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;)V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;

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

.method public static makeCustomSplineSet(Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;)Landroidx/constraintlayout/core/motion/utils/SplineSet;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-direct {v0, p0, p1}, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    :goto_2
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static makeSpline(Ljava/lang/String;J)Landroidx/constraintlayout/core/motion/utils/SplineSet;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-direct {v0, p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/SplineSet$CoreSpline;-><init>(Ljava/lang/String;J)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CoreSpline;

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public get(F)F
    .locals 4

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    add-int v0, v0, v1

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

    :goto_2
    float-to-double v1, p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

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

    :goto_4
    const v1, 0xb

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    :goto_7
    const v0, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(DI)D

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    return v0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    double-to-float v0, v0

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
.end method

.method public getCurveFit()Landroidx/constraintlayout/core/motion/utils/CurveFit;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

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

.method public getSlope(F)F
    .locals 4

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1
    double-to-float v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    float-to-double v1, p1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(DI)D

    move-result-wide v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0xb

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

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
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    :goto_d
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_9

    nop

    :goto_e
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method public setPoint(IF)V
    .locals 3

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    aput p2, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1
    array-length v1, v0

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

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mTimePoints:[I

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mValues:[F

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
    aput p1, v0, v1

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

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mValues:[F

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

    :goto_8
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput v1, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->count:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    array-length v1, v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_b
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_c
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mValues:[F

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_f
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mTimePoints:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_10
    mul-int/lit8 v1, v1, 0x2

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
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_12
    add-int/lit8 v1, v1, 0x1

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

    :goto_13
    mul-int/lit8 v1, v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_14
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

    :goto_15
    if-lt v1, v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    :goto_16
    array-length v1, v0

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

    :goto_17
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mTimePoints:[I

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->count:I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_6

    nop

    nop

    :goto_1a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1b
    const v0, 0x13

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1e
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1f
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->count:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public setProperty(Landroidx/constraintlayout/core/motion/utils/TypedValues;F)V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_2
    const v0, 0xa

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

    :goto_3
    goto/32 :goto_d

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

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
    const v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->get(F)F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    invoke-interface {p1, v0, v1}, Landroidx/constraintlayout/core/motion/utils/TypedValues;->setValue(IF)Z

    goto/32 :goto_8

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

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    :goto_a
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mType:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0}, Landroidx/constraintlayout/core/motion/utils/TypedValues$AttributesType;->getId(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_1

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
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mType:Ljava/lang/String;

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

.method public setup(I)V
    .locals 10

    goto/32 :goto_a

    nop

    nop

    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mTimePoints:[I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mValues:[F

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

    :goto_2
    new-array v1, v0, [D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_3
    aget v6, v6, v5

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
    if-eq v7, v6, :cond_0

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    :goto_5
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_7
    if-ne v5, v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_8
    aget-object v6, v2, v3

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

    nop

    :goto_9
    aget v2, v2, v1

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

    :goto_a
    const v0, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_b
    if-lt v1, v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    :goto_c
    mul-double/2addr v6, v8

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    :goto_e
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_31

    nop

    nop

    :goto_10
    if-lt v5, v6, :cond_3

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_3
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_38

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

    nop

    :goto_13
    const/4 v3, 0x1

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_15
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_16
    goto :goto_20

    nop

    nop

    :goto_17
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_18
    iget-object v6, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mTimePoints:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_19
    aput v0, v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_1a
    aget v6, v6, v8

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

    :goto_1b
    iget-object v6, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mTimePoints:[I

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mTimePoints:[I

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_1d
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_1f
    const/4 v5, 0x0

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_27

    nop

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

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_22
    int-to-double v6, v6

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v3, 0x0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    aget v7, v7, v5

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_25
    aput-wide v6, v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_26
    add-int/lit8 v8, v5, -0x1

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

    :goto_27
    iget v6, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->count:I

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_28
    check-cast v2, [[D

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2a
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->count:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2b
    aput-wide v7, v6, v4

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    return-void

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_f

    nop

    nop

    :goto_2e
    const/4 v4, 0x0

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

    nop

    :goto_2f
    aget v7, v6, v5

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_2d

    nop

    :goto_31
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    add-int v0, v0, v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_34
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

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

    :goto_35
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->count:I

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_36
    aput v3, v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_37
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    :goto_38
    goto/32 :goto_15

    nop

    nop

    :goto_39
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mValues:[F

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_3a
    iput-object v4, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_3b
    sub-int/2addr v0, v3

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_3d
    if-gtz v5, :cond_5

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_5
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    add-int/lit8 v5, v1, -0x1

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    aget v5, v2, v5

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_40
    const v1, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_41
    if-lez v0, :cond_6

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

    :cond_6
    goto/32 :goto_30

    nop

    :goto_42
    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_43
    invoke-static {p1, v1, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    move-result-object v4

    nop

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

    :goto_44
    const/4 v2, 0x2

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-static {v1, v2, v4, v0}, Landroidx/constraintlayout/core/motion/utils/SplineSet$Sort;->doubleQuickSort([I[FII)V

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_48
    float-to-double v7, v7

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_49
    new-array v2, v2, [I

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
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    goto/32 :goto_b

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

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

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

    :goto_2
    goto/32 :goto_1c

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

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
    goto/32 :goto_2

    nop

    :goto_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v1, Ljava/text/DecimalFormat;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_9
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mType:Ljava/lang/String;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    new-instance v3, Ljava/lang/StringBuilder;

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
    const v0, 0x12

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_c
    float-to-double v4, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_d
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    aget v4, v4, v2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mTimePoints:[I

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

    :goto_12
    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_13
    const-string v4, " , "

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mValues:[F

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

    :goto_15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_17
    const-string v4, "["

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

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

    :goto_1a
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1b
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-lt v2, v3, :cond_1

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

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

    :goto_20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_21
    const-string v4, "] "

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_23
    iget v3, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->count:I

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_24
    const-string v2, "##.##"

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

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

    :goto_26
    aget v4, v4, v2

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop
.end method
