.class public Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;
.super Landroidx/constraintlayout/core/motion/utils/CurveFit;
.source "ArcCurveFit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;
    }
.end annotation


# static fields
.field public static final ARC_START_FLIP:I = 0x3

.field public static final ARC_START_HORIZONTAL:I = 0x2

.field public static final ARC_START_LINEAR:I = 0x0

.field public static final ARC_START_VERTICAL:I = 0x1

.field private static final START_HORIZONTAL:I = 0x2

.field private static final START_LINEAR:I = 0x3

.field private static final START_VERTICAL:I = 0x1


# instance fields
.field mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

.field private mExtrapolate:Z

.field private final mTime:[D


# direct methods
.method public constructor <init>([I[D[[D)V
    .locals 22

    goto/32 :goto_2b

    nop

    nop

    :goto_0
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_15

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_14

    nop

    nop

    :goto_2
    goto/16 :goto_15

    nop

    :pswitch_2
    goto/32 :goto_20

    nop

    nop

    :goto_3
    add-int/lit8 v7, v5, 0x1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move v3, v8

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

    :goto_5
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_6
    aput-object v21, v6, v5

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x1

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

    :goto_8
    goto/32 :goto_38

    nop

    :goto_9
    add-int/lit8 v7, v5, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_a
    move v4, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_c
    move-object/from16 v1, p2

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

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_0
    goto/32 :goto_37

    nop

    :goto_e
    move v8, v3

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_f
    new-array v3, v3, [Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_10
    aget v7, p1, v5

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

    :goto_11
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

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

    :goto_12
    aget-wide v11, v1, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_13
    const/4 v8, 0x2

    nop

    packed-switch v7, :pswitch_data_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v3, 0x3

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
    new-instance v21, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

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

    :goto_17
    iput-boolean v2, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mExtrapolate:Z

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

    :goto_18
    move v8, v2

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1a
    aget-wide v9, v1, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :goto_1d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    move v3, v8

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-eq v4, v2, :cond_1

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

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_21
    move-object/from16 v7, v21

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_22
    goto :goto_19

    nop

    :goto_23
    goto/32 :goto_18

    nop

    nop

    :goto_24
    iput-object v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_25
    invoke-direct/range {v7 .. v20}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;-><init>(IDDDDDD)V

    goto/32 :goto_6

    nop

    nop

    :goto_26
    const/4 v5, 0x0

    nop

    nop

    :goto_27
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_28
    aget-object v7, p3, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_29
    const/4 v4, 0x1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2a
    aget-object v7, p3, v7

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_2b
    const v0, 0x2

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2c
    aget-wide v17, v7, v8

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2d
    if-lt v5, v7, :cond_2

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const v1, 0x16

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_30
    move v4, v2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_31
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mTime:[D

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

    :goto_32
    goto :goto_27

    nop

    :goto_33
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_34
    array-length v7, v6

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    aget-object v7, p3, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_36
    aget-wide v13, v7, v8

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_1d

    nop

    nop

    :goto_38
    goto/32 :goto_39

    nop

    nop

    :goto_39
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3a
    aget-wide v19, v7, v2

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_3b
    add-int/lit8 v7, v5, 0x1

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    aget-object v7, p3, v5

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_3d
    add-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_3e
    move v4, v3

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    aget-wide v15, v7, v2

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_40
    sub-int/2addr v3, v2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_41
    move v3, v2

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_42
    array-length v3, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_43
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop
.end method


# virtual methods
.method public getPos(DI)D
    .locals 10

    goto/32 :goto_7c

    nop

    nop

    :goto_0
    if-nez v5, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :cond_0
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v5, v2, v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide v5

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

    :goto_2
    invoke-virtual {v7, v2, v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDX(D)D

    move-result-wide v7

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v7}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDX()D

    move-result-wide v7

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_4
    add-double/2addr v6, v8

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

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

    :goto_6
    aget-object v5, v5, v4

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    array-length v1, v0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_8
    aget-object v4, v4, v5

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_9
    aget-object v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x0

    nop

    :goto_b
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_c
    iget-wide v0, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_d
    mul-double/2addr v7, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-wide v0, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getX()D

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_10
    add-double/2addr v5, v7

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    :goto_12
    mul-double/2addr v7, v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_14
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_15
    aget-object v0, v0, v1

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

    nop

    nop

    :goto_16
    add-int/lit8 v1, v1, -0x1

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v1, :cond_2

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    aget-object v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    aget-object v1, v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_88

    nop

    :goto_1b
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

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

    :goto_1d
    return-wide v1

    nop

    nop

    :goto_1e
    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    sub-double v2, p1, v0

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_20
    if-nez v0, :cond_3

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

    :cond_3
    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    aget-object v5, v5, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mExtrapolate:Z

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

    :goto_23
    add-int/lit8 v1, v1, -0x1

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_24
    mul-double/2addr v7, v0

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    return-wide v5

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_27
    add-double/2addr v6, v8

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-ltz v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_80

    nop

    nop

    :goto_29
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

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

    :goto_2a
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v4, v0, v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide v6

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_2e
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_2f
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_30
    cmpl-double v0, p1, v0

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_31
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_32
    array-length v5, v4

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v5}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getY()D

    move-result-wide v5

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_1b

    nop

    nop

    :goto_35
    aget-object v4, v4, v5

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    aget-object v5, v5, v4

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_37
    if-eqz p3, :cond_5

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getY()D

    move-result-wide v1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_39
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_3a
    sub-double v0, p1, v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-wide v2, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_3c
    aget-object v7, v7, v4

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const v1, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_3e
    const/4 v1, 0x0

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_3f
    iget-wide v2, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide v1

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_41
    aget-object v5, v5, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_42
    iget-wide v1, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_43
    if-nez v1, :cond_6

    nop

    goto/32 :goto_46

    nop

    :cond_6
    goto/32 :goto_59

    nop

    nop

    nop

    :goto_44
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

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

    :goto_45
    return-wide v1

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_47
    aget-object v7, v7, v4

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v5}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getX()D

    move-result-wide v5

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_49
    cmpg-double v0, p1, v2

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_4a
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_4b
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    move-result-wide v1

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

    :goto_4d
    aget-object v0, v0, v1

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_4f
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

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

    :goto_50
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

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

    :goto_51
    invoke-virtual {v7}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDY()D

    move-result-wide v7

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

    :goto_52
    array-length v2, v1

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_53
    array-length v1, v0

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    aget-object v5, v5, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_55
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_56
    array-length v1, v0

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_57
    add-int/lit8 v1, v1, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    aget-object v4, v4, v5

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_59
    if-eqz p3, :cond_7

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2e

    nop

    nop

    :goto_5a
    iget-boolean v5, v5, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

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

    :goto_5b
    aget-object v0, v0, v1

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

    :goto_5c
    aget-object v1, v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_5d
    invoke-virtual {v5, v2, v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    move-result-wide v5

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_5e
    invoke-virtual {v5, v2, v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    add-int v0, v0, v1

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

    :goto_60
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_61
    if-gtz v0, :cond_8

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_62
    cmpg-double v0, p1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iget-wide v0, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_64
    iget-wide v2, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_65
    add-double/2addr v5, v7

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_67
    return-wide v6

    nop

    nop

    nop

    :goto_68
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_69
    aget-object v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    :goto_6a
    invoke-virtual {v4, v0, v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    move-result-wide v6

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

    :goto_6b
    add-int/lit8 v5, v5, -0x1

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

    :goto_6c
    aget-object v1, v1, v0

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_6d
    add-int/lit8 v1, v1, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_6e
    aget-object v1, v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_6f
    add-double/2addr v5, v7

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

    :goto_70
    iget-wide p1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_71
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_72
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_73
    return-wide v1

    nop

    nop

    nop

    :goto_74
    goto/32 :goto_39

    nop

    nop

    :goto_75
    cmpg-double v1, p1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_76
    aget-object v1, v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_77
    invoke-virtual {v4, v0, v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDX(D)D

    move-result-wide v8

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    cmpl-double v0, p1, v0

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_7a
    if-gtz v0, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    :cond_9
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_7b
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

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

    :goto_7c
    const v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_7d
    goto/16 :goto_9e

    nop

    nop

    nop

    nop

    :goto_7e
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    aget-object v4, v4, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_80
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_81
    array-length v1, v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_83
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_84
    aget-object v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_85
    iget-boolean v1, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_86
    aget-object v0, v0, v1

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    return-wide v0

    nop

    nop

    :goto_88
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_89
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8a
    mul-double/2addr v7, v0

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-virtual {v7, v2, v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDY(D)D

    move-result-wide v7

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

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

    nop

    :goto_8d
    if-eqz p3, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    return-wide v5

    nop

    nop

    nop

    :goto_8f
    goto/32 :goto_89

    nop

    nop

    :goto_90
    if-eqz p3, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    aget-object v1, v1, v0

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

    :goto_92
    return-wide v5

    nop

    :goto_93
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_94
    aget-object v7, v7, v4

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

    :goto_95
    invoke-virtual {v4, v0, v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDY(D)D

    move-result-wide v8

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    :goto_96
    if-lt v0, v2, :cond_c

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_6c

    nop

    nop

    :goto_97
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_98
    aget-object v7, v7, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_99
    goto/16 :goto_b

    nop

    :goto_9a
    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    return-wide v6

    nop

    nop

    :goto_9c
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    iget-wide p1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9f
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    add-double/2addr v5, v7

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

    nop

    nop

    :goto_a1
    mul-double/2addr v8, v2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a2
    if-ltz v0, :cond_d

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    aget-object v1, v1, v0

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

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

    :goto_a5
    aget-object v0, v0, v1

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_a6
    return-wide v5

    nop

    nop

    nop

    nop

    :goto_a7
    goto/32 :goto_44

    nop

    nop

    :goto_a8
    mul-double/2addr v8, v2

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    iget-wide v0, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

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

    :goto_aa
    return-wide v1

    nop

    nop

    nop

    :goto_ab
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    if-eqz p3, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    aget-object v5, v5, v4

    nop

    goto/32 :goto_5a

    nop

    nop
.end method

.method public getPos(D[D)V
    .locals 12

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    cmpg-double v0, p1, v3

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDX()D

    move-result-wide v10

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_2
    sub-int/2addr v7, v2

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_3
    if-nez v3, :cond_0

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_4
    mul-double/2addr v9, v5

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-ltz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_6
    aget-object v1, v1, v0

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v8, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_8
    add-double/2addr v0, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_9
    sub-double v5, p1, v3

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_d
    aget-object v1, v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_e
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v9, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDY(D)D

    move-result-wide v9

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    mul-double/2addr v9, v5

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    :goto_12
    aget-object v0, v0, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_13
    aput-wide v8, p3, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    :goto_14
    aget-object v0, v0, v3

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_15
    aget-object v0, v0, v7

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_17
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDX(D)D

    move-result-wide v10

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    aget-object v1, v1, v0

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_19
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x10

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

    :goto_1b
    iget-object v9, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

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

    nop

    :goto_1c
    array-length v7, v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sub-int/2addr v3, v2

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_1f
    if-lez v3, :cond_2

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :cond_2
    goto/32 :goto_9c

    nop

    nop

    :goto_20
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    :goto_21
    iget-boolean v3, v3, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_22
    aput-wide v3, p3, v1

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_23
    if-ltz v0, :cond_3

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide v8

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_25
    iget-boolean v0, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

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

    :goto_26
    invoke-virtual {v9, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDX(D)D

    move-result-wide v9

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_27
    add-double/2addr v7, v9

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    aget-object v0, v0, v7

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_29
    aput-wide v3, p3, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_2a
    aget-object v0, v0, v1

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

    :goto_2b
    aput-wide v7, p3, v1

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    aget-object v0, v0, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_2e
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v9}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDX()D

    move-result-wide v9

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_30
    aget-object v7, v7, v0

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    aget-object v1, v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_32
    iget-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_33
    return-void

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_35
    if-lez v0, :cond_4

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_5d

    nop

    :goto_36
    invoke-virtual {v7, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_37
    if-lt v0, v4, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    :cond_5
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-wide p1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    nop

    :goto_39
    goto/32 :goto_4c

    nop

    nop

    :goto_3a
    if-nez v0, :cond_6

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    aget-object v3, v3, v0

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-boolean v7, v7, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_3d
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_3e
    cmpl-double v0, p1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_3f
    if-nez v7, :cond_7

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_40
    return-void

    nop

    nop

    :goto_41
    goto/32 :goto_c2

    nop

    nop

    :goto_42
    iget-object v8, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    aget-object v0, v0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_44
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

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
    cmpg-double v3, p1, v3

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    :goto_47
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_48
    aput-wide v0, p3, v2

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_49
    add-double/2addr v7, v9

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

    nop

    :goto_4a
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4b
    array-length v4, v3

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_50
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_51
    rem-int v0, v0, v1

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

    :goto_52
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_53
    aget-object v0, v0, v3

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_54
    iget-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_55
    iget-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_56
    if-nez v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :cond_8
    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_57
    aput-wide v3, p3, v2

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    aput-wide v3, p3, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_59
    sub-int/2addr v3, v2

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_5a
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    aget-object v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_5c
    aget-object v0, v0, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5d
    goto/32 :goto_34

    nop

    :goto_5e
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_5f
    aget-object v3, v3, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_60
    invoke-virtual {v7}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getX()D

    move-result-wide v7

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

    :goto_61
    aget-object v0, v0, v7

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    goto :goto_69

    nop

    nop

    :goto_63
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {v7, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide v7

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_65
    mul-double/2addr v8, v5

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_66
    invoke-virtual {v1, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    move-result-wide v7

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_67
    iget-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

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

    :goto_68
    aput-wide v7, p3, v2

    nop

    nop

    :goto_69
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_6a
    return-void

    nop

    :goto_6b
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    aget-object v0, v0, v3

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_6d
    aput-wide v0, p3, v2

    nop

    nop

    nop

    nop

    :goto_6e
    goto/32 :goto_93

    nop

    nop

    nop

    :goto_6f
    goto/16 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_70
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mExtrapolate:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_72
    aget-object v3, v3, v0

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_73
    invoke-virtual {v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getX()D

    move-result-wide v3

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_74
    array-length v3, v0

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_75
    mul-double/2addr v10, v5

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_76
    mul-double/2addr v10, v5

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_77
    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    move-result-wide v3

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

    :goto_78
    aget-object v7, v7, v0

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_79
    add-double/2addr v7, v9

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

    :goto_7a
    if-gtz v0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_9
    goto/32 :goto_be

    nop

    nop

    :goto_7b
    aget-object v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_7d
    add-double/2addr v0, v8

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    add-double/2addr v8, v10

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {v8, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDY(D)D

    move-result-wide v8

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

    :goto_80
    cmpg-double v0, p1, v3

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_81
    aput-wide v8, p3, v1

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_82
    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_83
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_84
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getX()D

    move-result-wide v8

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_85
    aget-object v7, v7, v0

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_86
    aget-object v9, v9, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_87
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getY()D

    move-result-wide v3

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_88
    aget-object v3, v3, v0

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_89
    iget-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_8a
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_8b
    mul-double/2addr v8, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_8c
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_8d
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_8e
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

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

    :goto_8f
    aput-wide v7, p3, v2

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_90
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getY()D

    move-result-wide v7

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_91
    sub-double v5, p1, v5

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_92
    aget-object v3, v3, v0

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_93
    return-void

    nop

    nop

    nop

    nop

    :goto_94
    goto/32 :goto_b

    nop

    nop

    :goto_95
    invoke-virtual {v3, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    goto/32 :goto_8a

    nop

    nop

    :goto_96
    if-gtz v0, :cond_a

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_a
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_97
    goto/16 :goto_6e

    nop

    nop

    nop

    :goto_98
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_99
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_9b
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_9c
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_9d
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    move-result-wide v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9f
    iget-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_a0
    aget-object v9, v9, v0

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    cmpl-double v0, p1, v3

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

    :goto_a2
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getY()D

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_a3
    sub-int/2addr v3, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_a4
    array-length v3, v0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    aget-object v8, v8, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_a6
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    :goto_a7
    add-double/2addr v7, v9

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

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

    :goto_a9
    iget-wide p1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_ab
    mul-double/2addr v9, v5

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_ac
    aget-object v0, v0, v1

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_ad
    mul-double/2addr v9, v5

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    aget-object v1, v1, v0

    nop

    goto/32 :goto_b6

    nop

    nop

    :goto_af
    aput-wide v7, p3, v1

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    iget-wide v3, v3, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_b1
    const/4 v0, 0x0

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_b2
    aget-object v1, v1, v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    array-length v3, v0

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_b4
    aget-object v0, v0, v7

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_b5
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_b6
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDY()D

    move-result-wide v9

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

    :goto_b7
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_b8
    aget-object v8, v8, v7

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_ba
    iget-wide v5, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_bb
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

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

    :goto_bc
    aget-object v0, v0, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_bd
    sub-int/2addr v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_be
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_bf
    add-double/2addr v8, v10

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_c0
    aget-object v7, v7, v0

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_c1
    array-length v3, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_c3
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_c4
    invoke-virtual {v3, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide v3

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_c5
    invoke-virtual {v8}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDY()D

    move-result-wide v8

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

    :goto_c6
    aget-object v0, v0, v1

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public getPos(D[F)V
    .locals 12

    goto/32 :goto_2c

    nop

    nop

    :goto_0
    aget-object v1, v1, v0

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_1
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_2
    aget-object v8, v8, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_3
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_4
    iget-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_ab

    nop

    nop

    :goto_6
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_7
    iget-wide p1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

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

    :goto_9
    iget-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    nop

    nop

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

    :goto_a
    invoke-virtual {v1, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDY(D)D

    move-result-wide v9

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    double-to-float v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    :goto_c
    double-to-float v0, v8

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getY()D

    move-result-wide v3

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    double-to-float v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getX()D

    move-result-wide v3

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    aget-object v1, v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_13
    aget-object v0, v0, v7

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_14
    aput v1, p3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_16
    aget-object v1, v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_17
    invoke-virtual {v9}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDX()D

    move-result-wide v9

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sub-double v5, p1, v3

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    double-to-float v7, v7

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    cmpg-double v0, p1, v3

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    :cond_0
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_1c
    aget-object v9, v9, v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    double-to-float v7, v7

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_1e
    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mExtrapolate:Z

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_1f
    double-to-float v1, v7

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

    :goto_20
    iget-boolean v0, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

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

    :goto_21
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    double-to-float v3, v3

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_23
    return-void

    nop

    nop

    :goto_24
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_25
    iget-wide p1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    nop

    :goto_26
    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getX()D

    move-result-wide v8

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_28
    sub-int/2addr v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_29
    sub-int/2addr v3, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    :goto_2a
    mul-double/2addr v9, v5

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

    :goto_2b
    aget-object v7, v7, v0

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_2c
    const v0, 0x15

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2d
    aget-object v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2e
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_2f
    aput v1, p3, v2

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_31
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_78

    nop

    nop

    :goto_33
    return-void

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_be

    nop

    nop

    :goto_35
    iget-object v9, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

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

    :goto_36
    double-to-float v1, v7

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

    :goto_37
    aget-object v1, v1, v0

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_38
    double-to-float v1, v3

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_39
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_3a
    aput v7, p3, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3b
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_3c
    aput v3, p3, v1

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

    :goto_3d
    aget-object v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_40
    add-double/2addr v7, v9

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_41
    aput v1, p3, v2

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_42
    add-double/2addr v7, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_43
    iget-wide v3, v3, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_44
    aput v3, p3, v1

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDY()D

    move-result-wide v9

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    :goto_47
    aget-object v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    add-int v0, v0, v1

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

    :goto_49
    aget-object v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_4a
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    cmpg-double v0, p1, v3

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_4c
    aget-object v9, v9, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_4d
    add-double/2addr v8, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v7, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide v7

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_4f
    cmpg-double v3, p1, v3

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

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

    nop

    :goto_51
    if-gtz v0, :cond_1

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

    :cond_1
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v3, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_53
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

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

    :goto_54
    aput v7, p3, v1

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v7, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_56
    if-gtz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    aput v0, p3, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_58
    aget-object v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_59
    iget-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_5a
    iget-wide v5, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_5b
    aput v1, p3, v2

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide v8

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

    :goto_5d
    if-ltz v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    :cond_3
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v7}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getX()D

    move-result-wide v7

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_60
    invoke-virtual {v3, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide v3

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_61
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_5

    nop

    :goto_62
    iget-boolean v3, v3, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    nop

    goto/32 :goto_af

    nop

    nop

    :goto_63
    sub-double v5, p1, v5

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

    :goto_64
    invoke-virtual {v8, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDY(D)D

    move-result-wide v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_65
    mul-double/2addr v8, v5

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_66
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_67
    if-nez v7, :cond_5

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_99

    nop

    nop

    :goto_68
    aget-object v0, v0, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_69
    add-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_6a
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_6b
    double-to-float v0, v0

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_6c
    aput v0, p3, v1

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    iget-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    return-void

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_69

    nop

    nop

    nop

    :goto_70
    if-ltz v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_b1

    nop

    nop

    :goto_71
    mul-double/2addr v9, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_72
    aget-object v3, v3, v0

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

    :goto_73
    sub-int/2addr v7, v2

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_74
    iget-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    nop

    nop

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

    :goto_75
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getY()D

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_76
    add-double/2addr v0, v8

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_77
    sub-int/2addr v3, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_78
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_79
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_7a
    aget-object v0, v0, v7

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

    :goto_7b
    const/4 v0, 0x0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_7d
    aget-object v7, v7, v0

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    iget-boolean v7, v7, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_7f
    mul-double/2addr v9, v5

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_81
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_82
    array-length v3, v0

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

    :goto_83
    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    move-result-wide v3

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

    :goto_84
    aget-object v0, v0, v7

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_85
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_86
    if-nez v0, :cond_7

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_87
    mul-double/2addr v10, v5

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_88
    aget-object v1, v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    :goto_89
    array-length v3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_8a
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    :goto_8b
    rem-int v0, v0, v1

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

    :goto_8c
    add-double/2addr v7, v9

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

    :goto_8d
    add-double/2addr v7, v9

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

    :goto_8e
    array-length v4, v3

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

    :goto_8f
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    move-result-wide v0

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

    :goto_90
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getY()D

    move-result-wide v7

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_91
    iget-object v9, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_92
    aget-object v7, v7, v0

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_93
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    aget-object v0, v0, v7

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    :goto_95
    double-to-float v0, v8

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

    :goto_96
    iget-object v8, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_97
    array-length v3, v0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    cmpl-double v0, p1, v3

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

    :goto_99
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

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

    :goto_9a
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    goto/32 :goto_9f

    nop

    nop

    :goto_9d
    if-lt v0, v4, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    :cond_8
    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    aget-object v1, v1, v0

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

    :goto_9f
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

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

    :goto_a0
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    :goto_a1
    aget-object v0, v0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_a2
    const/4 v1, 0x0

    nop

    goto/32 :goto_a4

    nop

    nop

    :goto_a3
    mul-double/2addr v9, v5

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_a4
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_a5
    aput v0, p3, v2

    nop

    nop

    :goto_a6
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_a8
    aget-object v3, v3, v0

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

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

    :goto_aa
    return-void

    nop

    nop

    nop

    nop

    :goto_ab
    goto/32 :goto_5e

    nop

    nop

    :goto_ac
    cmpl-double v0, p1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_ad
    aget-object v3, v3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_ae
    aput v0, p3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    if-nez v3, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_a0

    nop

    nop

    :goto_b0
    invoke-virtual {v9, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDX(D)D

    move-result-wide v9

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

    :goto_b1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_b2
    if-lez v3, :cond_a

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    :cond_a
    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    iget-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_b4
    aget-object v0, v0, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_b5
    sub-int/2addr v3, v2

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    goto/16 :goto_a6

    nop

    nop

    nop

    nop

    :goto_b7
    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    :goto_b8
    aget-object v3, v3, v0

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_b9
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    goto/32 :goto_c4

    nop

    nop

    :goto_ba
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDX(D)D

    move-result-wide v10

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_bb
    aget-object v3, v3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_bc
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    double-to-float v3, v3

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_be
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    aget-object v0, v0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_c0
    goto/16 :goto_30

    nop

    nop

    nop

    :goto_c1
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    array-length v7, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_c3
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_c4
    aget-object v0, v0, v7

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_c5
    aget-object v7, v7, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_c6
    array-length v3, v0

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    aget-object v0, v0, v3

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_c8
    aget-object v0, v0, v3

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    invoke-virtual {v1, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    move-result-wide v7

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop
.end method

.method public getSlope(DI)D
    .locals 4

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    aget-object v1, v1, v0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-wide v0

    nop

    :goto_2
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3
    iget-wide v0, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_4
    aget-object v0, v0, v1

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

    :goto_5
    if-eqz p3, :cond_0

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

    :cond_0
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_6
    cmpg-double v1, p1, v1

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    aget-object v1, v1, v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_8
    if-eqz p3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_1
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_a
    return-wide v1

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_49

    nop

    nop

    :goto_c
    if-gtz v0, :cond_2

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

    :cond_2
    goto/32 :goto_9

    nop

    nop

    :goto_d
    aget-object v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_e
    aget-object v1, v1, v0

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

    :goto_f
    if-ltz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDY(D)D

    move-result-wide v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_12
    return-wide v1

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_14
    const v0, 0xb

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_16
    array-length v1, v0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    aget-object v0, v0, v1

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDX(D)D

    move-result-wide v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    aget-object v1, v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1b
    if-nez v1, :cond_4

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return-wide v1

    nop

    nop

    :goto_1d
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_1e
    aget-object v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_1f
    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v1, 0x0

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_21
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_45

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_2

    nop

    :goto_25
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v1, 0x11

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

    nop

    :goto_28
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDX()D

    move-result-wide v1

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

    :goto_2a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_2b
    array-length v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_2c
    add-int/lit8 v1, v1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2d
    iget-wide v2, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_2e
    iget-wide p1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    nop

    :goto_2f
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_30
    iget-wide v1, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

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

    :goto_31
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDY()D

    move-result-wide v1

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_32
    cmpg-double v0, p1, v2

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_33
    array-length v1, v0

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_35
    return-wide v1

    nop

    :goto_36
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_38
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_5
    goto/32 :goto_24

    nop

    :goto_39
    cmpl-double v0, p1, v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3a
    iget-wide p1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    nop

    nop

    :goto_3b
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    add-int/lit8 v1, v1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3d
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-boolean v1, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

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

    :goto_41
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_42
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_43
    if-lt v0, v2, :cond_6

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const/4 v0, 0x0

    nop

    :goto_45
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_46
    aget-object v1, v1, v0

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_47
    aget-object v1, v1, v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    if-lez v1, :cond_7

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_7
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_49
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

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

    :goto_4a
    aget-object v1, v1, v0

    nop

    goto/32 :goto_1f

    nop

    nop
.end method

.method public getSlope(D[D)V
    .locals 5

    goto/32 :goto_13

    nop

    nop

    :goto_0
    invoke-virtual {v3, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    aget-object v3, v3, v0

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

    :goto_2
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

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

    :goto_3
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDY()D

    move-result-wide v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_5
    aget-object v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_6
    aget-object v1, v1, v0

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

    :goto_7
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_8
    if-lt v0, v4, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_9
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_24

    nop

    :goto_d
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-wide p1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_f
    sub-int/2addr v3, v2

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x16

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

    :goto_11
    iget-wide v3, v3, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

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

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    :cond_1
    goto/32 :goto_3a

    nop

    :goto_13
    const v0, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_14
    cmpg-double v0, p1, v2

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_15
    aput-wide v3, p3, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_17
    if-nez v3, :cond_2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_18
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_19
    iget-wide v2, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1a
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1c
    sub-int/2addr v3, v2

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

    :goto_1d
    goto/16 :goto_47

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_42

    nop

    nop

    :goto_1f
    aput-wide v3, p3, v2

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_20
    aget-object v0, v0, v3

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_21
    aget-object v3, v3, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_22
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_23
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_25
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_27
    iget-boolean v3, v3, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_28
    array-length v4, v3

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_29
    cmpl-double v0, p1, v3

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

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
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-lez v3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_3
    goto/32 :goto_49

    nop

    nop

    :goto_2d
    if-gtz v0, :cond_4

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

    nop

    :cond_4
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_2e
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_2f
    aput-wide v3, p3, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDY(D)D

    move-result-wide v3

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_31
    array-length v3, v0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    aget-object v3, v3, v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDX()D

    move-result-wide v3

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_34
    aget-object v3, v3, v0

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

    :goto_35
    aget-object v0, v0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v3, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDX(D)D

    move-result-wide v3

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

    :goto_37
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_38
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_39
    aget-object v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_1b

    nop

    nop

    :goto_3c
    aget-object v1, v1, v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_3e
    cmpg-double v3, p1, v3

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_3f
    if-ltz v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_40
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_41
    aget-object v3, v3, v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_43
    array-length v3, v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_45
    aput-wide v3, p3, v2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_46
    iget-wide p1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    nop

    :goto_47
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

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

    :goto_49
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

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
.end method

.method public getTimePoints()[D
    .locals 1

    goto/32 :goto_1

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

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mTime:[D

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
