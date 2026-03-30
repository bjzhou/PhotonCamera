.class public Landroidx/constraintlayout/core/motion/utils/Oscillator;
.super Ljava/lang/Object;
.source "Oscillator.java"


# static fields
.field public static final BOUNCE:I = 0x6

.field public static final COS_WAVE:I = 0x5

.field public static final CUSTOM:I = 0x7

.field public static final REVERSE_SAW_WAVE:I = 0x4

.field public static final SAW_WAVE:I = 0x3

.field public static final SIN_WAVE:I = 0x0

.field public static final SQUARE_WAVE:I = 0x1

.field public static TAG:Ljava/lang/String; = null

.field public static final TRIANGLE_WAVE:I = 0x2


# instance fields
.field PI2:D

.field mArea:[D

.field mCustomCurve:Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

.field mCustomType:Ljava/lang/String;

.field private mNormalized:Z

.field mPeriod:[F

.field mPosition:[D

.field mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "Oscillator"

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
    sput-object v0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->TAG:Ljava/lang/String;

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
    return-void

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 3

    goto/32 :goto_f

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

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-wide v1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->PI2:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    :goto_5
    goto/32 :goto_11

    nop

    nop

    :goto_6
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mNormalized:Z

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

    :goto_8
    new-array v1, v0, [F

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_a
    goto/32 :goto_5

    nop

    :goto_b
    new-array v1, v0, [D

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

    :goto_c
    return-void

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

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

    :goto_f
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    const-wide v1, 0x401921fb54442d18L    # 6.283185307179586

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x14

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method


# virtual methods
.method public addPoint(DF)V
    .locals 5

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_12

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_5
    array-length v0, v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    const v1, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    add-int/lit8 v3, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

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

    :goto_a
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

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

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_c
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

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

    :goto_d
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_e
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_f
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    iput-boolean v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mNormalized:Z

    nop

    nop

    nop

    goto/32 :goto_11

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
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sub-int v4, v0, v1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v2, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_15

    nop

    nop

    :goto_15
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

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

    :goto_16
    add-int/lit8 v1, v2, -0x1

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_2

    nop

    :goto_19
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1a
    neg-int v2, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1b
    if-ltz v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    aput p3, v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1d
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mArea:[D

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x1e

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

    :goto_1f
    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_23
    aput-wide p1, v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_24
    new-array v2, v0, [D

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    add-int/lit8 v4, v4, -0x1

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
.end method

.method getDP(D)D
    .locals 18

    goto/32 :goto_15

    nop

    nop

    :goto_0
    float-to-double v14, v8

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

    :goto_1
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-gtz v5, :cond_0

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

    :cond_0
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move-object/from16 v0, p0

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

    :goto_5
    cmpg-double v3, p1, v1

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_6
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-wide v3, 0x3ee4f8b588e368f1L    # 1.0E-5

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

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_9
    mul-double v16, v16, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_a
    invoke-static {v5, v3, v4}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_b
    neg-int v1, v5

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

    :goto_c
    aget-wide v16, v11, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    sub-double/2addr v12, v14

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

    :goto_e
    move-wide/from16 v3, p1

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_17

    nop

    nop

    :goto_10
    if-nez v5, :cond_1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_f

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_6

    nop

    nop

    :goto_13
    add-int/lit8 v8, v5, -0x1

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

    :goto_14
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

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

    :goto_15
    const v0, 0xf

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

    :goto_16
    const-wide/16 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

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
    aget v9, v8, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_19
    sub-float/2addr v9, v10

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
    aget-wide v12, v11, v5

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1c
    if-gez v3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_1d
    add-int/lit8 v14, v5, -0x1

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

    :goto_1e
    move-wide v1, v3

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1f
    const-wide/16 v6, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_f

    nop

    nop

    :goto_21
    goto/32 :goto_e

    nop

    nop

    :goto_22
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1

    nop

    :goto_24
    add-double v6, v12, v14

    nop

    :goto_25
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-lez v3, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    add-int/lit8 v14, v5, -0x1

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    add-int/lit8 v10, v5, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_29
    float-to-double v9, v9

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

    :goto_2a
    aget v10, v8, v10

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    return-wide v1

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    add-int/lit8 v5, v1, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_2e
    sub-double v14, v14, v16

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_2f
    div-double/2addr v9, v12

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const v1, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_31
    return-wide v6

    nop

    :goto_32
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_33
    iget-object v11, v0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const-wide v3, 0x3feffffde7210be9L    # 0.999999

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_35
    aget v8, v8, v14

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_36
    mul-double v12, v9, v1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_37
    cmpl-double v3, p1, v3

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_38
    aget-wide v14, v11, v14

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method

.method getP(D)D
    .locals 20

    goto/32 :goto_3e

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_1
    aget-wide v14, v11, v14

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int/lit8 v13, v3, -0x1

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int/lit8 v8, v3, -0x1

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

    :goto_6
    goto/32 :goto_b

    nop

    :goto_7
    mul-double/2addr v14, v9

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

    :goto_8
    move-wide v6, v1

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

    :goto_9
    add-int/lit8 v14, v3, -0x1

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

    :goto_a
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    aget-wide v16, v11, v8

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_d
    mul-double v14, v6, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    const-wide/16 v1, 0x0

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

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_10
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_11
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x18

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_13
    return-wide v4

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_6

    nop

    nop

    :goto_15
    float-to-double v14, v8

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

    :goto_16
    aget v8, v8, v14

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_17
    aget v10, v8, v10

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sub-double/2addr v12, v14

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

    :goto_19
    goto :goto_1d

    nop

    nop

    :goto_1a
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    mul-double v16, v16, v18

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_1c
    move-wide/from16 v1, p1

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_26

    nop

    nop

    :goto_1e
    add-double v4, v12, v14

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_20
    float-to-double v9, v9

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    nop

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

    :goto_22
    add-int/lit8 v8, v3, -0x1

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_23
    iget-object v11, v0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_24
    div-double v14, v14, v16

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_25
    add-int/lit8 v10, v3, -0x1

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
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v12, v0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mArea:[D

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

    :goto_28
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_29
    invoke-static {v3, v1, v2}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_2a
    add-int/lit8 v14, v3, -0x1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2b
    neg-int v6, v3

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

    nop

    :goto_2c
    aget-wide v16, v11, v8

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

    :goto_2d
    if-gtz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    div-double/2addr v9, v12

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2f
    add-double/2addr v12, v14

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

    :goto_30
    sub-double v16, v6, v16

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_31
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

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

    :goto_32
    add-int/lit8 v8, v3, -0x1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_33
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_34
    sub-double v14, v14, v16

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

    :goto_35
    aget-wide v16, v11, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_36
    if-gtz v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_2
    goto/32 :goto_31

    nop

    nop

    :goto_37
    aget v9, v8, v3

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

    :goto_38
    cmpg-double v1, p1, v1

    nop

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

    :goto_39
    sub-float/2addr v9, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_3a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    add-int/lit8 v8, v3, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    cmpl-double v1, p1, v1

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_3d
    aget-wide v18, v11, v8

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_3e
    const v0, 0x12

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_3f
    mul-double v16, v16, v9

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const-wide/16 v1, 0x0

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_41
    mul-double v14, v14, v16

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

    :goto_42
    add-int/lit8 v3, v6, -0x1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_43
    if-ltz v1, :cond_3

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const-wide/16 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_45
    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    if-nez v3, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_48
    aget-wide v12, v12, v13

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_49
    aget-wide v12, v11, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4a
    sub-double v14, v14, v16

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
.end method

.method public getSlope(DDD)D
    .locals 16

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_0
    rem-double v6, v1, v6

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p2}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->getDP(D)D

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    mul-double/2addr v10, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_3
    mul-double v10, v3, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_4
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

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
    add-double v3, v3, p5

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_6
    add-double v1, p3, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_8
    mul-double v10, v3, v8

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

    nop

    :goto_9
    rem-double/2addr v12, v8

    nop

    goto/32 :goto_38

    nop

    nop

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

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_b
    return-wide v7

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_c
    iget-wide v5, v0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->PI2:D

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mCustomCurve:Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_e
    mul-double/2addr v7, v5

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

    :goto_f
    mul-double/2addr v6, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_10
    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    nop

    packed-switch v5, :pswitch_data_0

    goto/32 :goto_c

    nop

    nop

    :goto_11
    add-double/2addr v12, v14

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

    nop

    :goto_12
    neg-double v8, v3

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

    :goto_13
    neg-double v7, v5

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

    :goto_14
    return-wide v6

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual/range {p0 .. p2}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->getP(D)D

    move-result-wide v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_19
    const-wide/16 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v5, v6, v7, v8}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getSlope(DI)D

    move-result-wide v5

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1b
    add-double/2addr v12, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_1c
    return-wide v5

    nop

    :pswitch_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
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

    nop

    nop

    :goto_1e
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

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

    :goto_1f
    return-wide v10

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_19

    nop

    nop

    :goto_20
    iget v5, v0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mType:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_21
    mul-double/2addr v8, v6

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

    :goto_22
    const v0, 0xc

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_23
    mul-double/2addr v5, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_24
    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_25
    iget-wide v5, v0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->PI2:D

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_26
    invoke-static {v12, v13}, Ljava/lang/Math;->signum(D)D

    move-result-wide v5

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_27
    mul-double v12, v1, v8

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    mul-double/2addr v7, v3

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    return-wide v5

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_5
    .end packed-switch

    :goto_2a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    return-wide v8

    nop

    nop

    :pswitch_4
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2c
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2d
    if-lez v0, :cond_0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_2e
    mul-double/2addr v7, v5

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2f
    return-wide v7

    nop

    nop

    :pswitch_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_30
    sub-double/2addr v12, v6

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_31
    const/4 v8, 0x0

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

    :goto_32
    rem-double/2addr v12, v8

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

    :goto_33
    mul-double/2addr v10, v12

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

    :goto_34
    const v1, 0x1c

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
    mul-double v12, v1, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_36
    mul-double/2addr v5, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    mul-double v7, v5, v3

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_38
    sub-double/2addr v12, v6

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_39
    return-wide v10

    nop

    :pswitch_6
    goto/32 :goto_25

    nop

    nop

    :goto_3a
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    nop

    goto/32 :goto_10

    nop

    nop
.end method

.method public getValue(DD)D
    .locals 11

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    mul-double v2, v0, v5

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mCustomCurve:Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sub-double v2, v7, v2

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

    :goto_5
    return-wide v2

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_6
    .end packed-switch

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x10

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    rem-double v4, v0, v7

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_9
    return-wide v2

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sub-double/2addr v2, v7

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    rem-double/2addr v9, v3

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_c
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->PI2:D

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

    :goto_d
    mul-double v2, v0, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_e
    invoke-static {v2, v3}, Ljava/lang/Math;->signum(D)D

    move-result-wide v2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_10
    sub-double/2addr v7, v4

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

    :goto_11
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->getP(D)D

    move-result-wide v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_12
    mul-double/2addr v2, v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_13
    sub-double/2addr v2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v5, 0x0

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

    :goto_15
    return-wide v2

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_17
    mul-double v9, v0, v3

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_18
    mul-double/2addr v2, v4

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_19
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mType:I

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1a
    return-wide v2

    nop

    nop

    :pswitch_2
    goto/32 :goto_0

    nop

    nop

    :goto_1b
    return-wide v7

    nop

    :pswitch_3
    goto/32 :goto_c

    nop

    nop

    :goto_1c
    rem-double/2addr v2, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1d
    return-wide v7

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1e
    sub-double/2addr v9, v5

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_1f
    add-double/2addr v0, p3

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

    :goto_20
    mul-double v4, v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_21
    add-double/2addr v9, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_22
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_23
    sub-double/2addr v7, v2

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_25
    return-wide v7

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_26
    add-double/2addr v2, v7

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v2, v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getPos(DI)D

    move-result-wide v2

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

    :goto_28
    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_29
    return-wide v2

    nop

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2b
    sub-double/2addr v9, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2c
    add-double/2addr v2, v7

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

    :goto_2d
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_39

    nop

    :goto_2e
    rem-double v3, v0, v7

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    add-double v4, p3, v0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_30
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_31
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_32
    rem-double/2addr v2, v5

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

    :goto_33
    mul-double v9, v0, v3

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

    :goto_34
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->PI2:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_35
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

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

    :goto_36
    rem-double/2addr v9, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_37
    sub-double/2addr v7, v2

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_38
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    nop

    nop

    nop

    packed-switch v2, :pswitch_data_0

    goto/32 :goto_34

    nop

    nop

    :goto_39
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method

.method public normalize()V
    .locals 14

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_1
    div-float/2addr v6, v7

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    aput v6, v5, v4

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    array-length v6, v5

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

    :goto_4
    add-double/2addr v2, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_5
    array-length v6, v5

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

    :goto_6
    add-float/2addr v6, v5

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_2c

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4e

    nop

    nop

    :goto_9
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-wide/16 v2, 0x0

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

    :goto_b
    div-double v10, v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x12

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

    :goto_d
    iput-boolean v4, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mNormalized:Z

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_e
    aget v6, v5, v6

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

    :goto_f
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_10
    const/4 v4, 0x1

    nop

    :goto_11
    goto/32 :goto_26

    nop

    nop

    :goto_12
    add-double/2addr v0, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_13
    add-float/2addr v6, v5

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

    :goto_14
    const/4 v4, 0x1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    aput-wide v10, v5, v4

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_16
    float-to-double v9, v6

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_17
    mul-double/2addr v9, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_19
    sub-double/2addr v7, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1a
    const/4 v4, 0x0

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_57

    nop

    nop

    nop

    :goto_1c
    const-wide/16 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v1, 0x4

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

    :goto_1e
    double-to-float v6, v8

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1f
    add-int/lit8 v6, v4, -0x1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_20
    mul-double/2addr v8, v10

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_21
    add-int/lit8 v4, v4, 0x1

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

    :goto_22
    aget v5, v5, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_23
    if-lt v4, v6, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_24
    if-lt v4, v6, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2f

    nop

    nop

    :goto_25
    add-int/lit8 v6, v4, -0x1

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_27
    if-lt v4, v6, :cond_2

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_28
    aget-wide v10, v5, v10

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

    :goto_29
    array-length v6, v5

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_2a
    aget-wide v7, v5, v4

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mArea:[D

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    add-int/lit8 v10, v4, -0x1

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    aget v6, v5, v4

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_30
    float-to-double v5, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_31
    const/high16 v7, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_32
    if-lez v0, :cond_3

    nop

    goto/32 :goto_36

    nop

    :cond_3
    goto/32 :goto_35

    nop

    :goto_33
    div-float/2addr v6, v7

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_34
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

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

    :goto_35
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_37
    add-double/2addr v10, v12

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

    nop

    :goto_38
    return-void

    nop

    nop

    :goto_39
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    aget-wide v10, v5, v10

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    float-to-double v8, v6

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3c
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mArea:[D

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_3e
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3f
    aget-wide v9, v5, v9

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    aget v5, v5, v4

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_41
    goto/16 :goto_11

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_43
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_44
    add-int/lit8 v9, v4, -0x1

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

    :goto_45
    goto :goto_4f

    nop

    nop

    :goto_46
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_47
    float-to-double v12, v6

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_48
    aget v5, v5, v4

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

    :goto_49
    const/4 v5, 0x0

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

    :goto_4a
    add-int/lit8 v10, v4, -0x1

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_4b
    aget v6, v5, v6

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    array-length v6, v5

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_4d
    if-lt v4, v6, :cond_4

    nop

    nop

    goto/32 :goto_42

    nop

    :cond_4
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    const/4 v4, 0x1

    nop

    nop

    :goto_4f
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_50
    aput-wide v8, v4, v5

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

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

    :goto_52
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_53
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    sub-double/2addr v8, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_56
    mul-double/2addr v12, v8

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_57
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

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

    :goto_58
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_59
    aget-wide v8, v5, v4

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop
.end method

.method public setType(ILjava/lang/String;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mCustomCurve:Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    :goto_2
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mType:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    if-nez p2, :cond_0

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

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p2}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->buildWave(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mCustomType:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_8

    nop

    nop

    :goto_1
    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    :goto_4
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5
    return-object v0

    nop

    :goto_6
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_8
    const-string v1, "pos ="

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_f
    const-string v1, " period="

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_15
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop
.end method
