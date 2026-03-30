.class public Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;
.super Landroidx/constraintlayout/core/motion/utils/CurveFit;
.source "LinearCurveFit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LinearCurveFit"


# instance fields
.field private mExtrapolate:Z

.field mSlopeTemp:[D

.field private mT:[D

.field private mTotalLength:D

.field private mY:[[D


# direct methods
.method private 3c8e901db670edb97a22f806a41430c8m(D)D
    .locals 35

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    :cond_0
    goto/32 :goto_61

    nop

    nop

    :goto_1
    return-wide v6

    nop

    nop

    :goto_2
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    aget-object v20, v12, v1

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_4
    add-double v31, v31, v33

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

    :goto_5
    move-wide/from16 v20, v8

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sub-double v2, v13, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_8
    aget-object v12, v12, v1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v15, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_a
    const v1, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_b
    if-gez v1, :cond_1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    :goto_c
    const-wide/16 v1, 0x0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_d
    add-int/lit8 v3, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_e
    add-int/lit8 v5, v1, 0x1

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

    :goto_f
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_11
    aget-object v23, v12, v23

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_12
    return-wide v2

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-wide v1, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mTotalLength:D

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_15
    cmpl-double v1, p1, v6

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_16
    const-wide/16 v8, 0x0

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

    :goto_17
    move-wide/from16 v10, v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_18
    return-wide v1

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v1, 0x0

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v12, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2f

    nop

    :goto_1e
    aget-wide v25, v20, v15

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

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_20
    if-ltz v3, :cond_3

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_24

    nop

    nop

    :goto_21
    aget-wide v13, v12, v5

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_22
    add-double/2addr v6, v15

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    sub-double v31, v29, v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_24
    add-int/lit8 v3, v1, 0x1

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

    nop

    :goto_25
    cmpl-double v3, p1, v20

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_26
    aget-wide v22, v2, v3

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_27
    move-wide/from16 v20, v8

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

    :goto_28
    aget-wide v27, v5, v15

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_29
    return-wide v1

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_f

    nop

    nop

    :goto_2b
    add-int/lit8 v23, v1, 0x1

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

    :goto_2c
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2e
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_2a

    nop

    :goto_30
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_31
    const v0, 0x17

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_32
    aget-wide v6, v1, v5

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    div-double v18, v18, v2

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_34
    move-wide/from16 v33, v2

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_35
    cmpg-double v6, p1, v6

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_36
    if-gtz v1, :cond_4

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

    :cond_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_37
    const-wide/16 v2, 0x0

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_38
    sub-double v13, v13, v29

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_39
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-static {v2, v3, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v15

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    mul-double v33, v27, v18

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3c
    sub-double v18, p1, v20

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/16 :goto_6

    nop

    nop

    :goto_3e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    cmpg-double v3, p1, v22

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_40
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

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

    nop

    :goto_41
    sub-double v8, v16, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_42
    sub-double v2, v2, v20

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const-wide/16 v2, 0x0

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

    :goto_44
    aget-wide v6, v1, v6

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_45
    move-wide v8, v13

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

    :goto_46
    mul-double v15, v23, v18

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_48
    const-wide/high16 v29, 0x3ff0000000000000L    # 1.0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_49
    sub-double v2, v16, v31

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_4a
    aget-wide v16, v12, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_4b
    add-double/2addr v6, v2

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_4c
    if-nez v1, :cond_5

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_4d
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

    :goto_4e
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_4f
    const-wide/16 v6, 0x0

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

    nop

    :goto_50
    sub-double v29, v29, v18

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_51
    add-double v29, v29, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_52
    iget-object v12, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

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

    :goto_53
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_54
    aget-wide v21, v20, v5

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_55
    if-lt v1, v12, :cond_6

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

    :cond_6
    goto/32 :goto_52

    nop

    nop

    nop

    :goto_56
    aget-wide v20, v2, v1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_57
    add-int/lit8 v6, v4, -0x1

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_58
    add-int/lit8 v12, v4, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_59
    if-lez v6, :cond_7

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    array-length v4, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5b
    aget-object v5, v12, v5

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

    nop

    :goto_5c
    return-wide v2

    nop

    nop

    nop

    nop

    :goto_5d
    goto/32 :goto_57

    nop

    nop

    nop

    :goto_5e
    aget-wide v2, v2, v3

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_5f
    iget-wide v1, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mTotalLength:D

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_60
    aget-wide v23, v23, v5

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    return-wide v6

    nop

    :goto_62
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_63
    mul-double v31, v31, v25

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_64
    mul-double v29, v29, v21

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_65
    const-wide/16 v10, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop
.end method

.method public constructor <init>([D[[D)V
    .locals 18

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mTotalLength:D

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v6, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

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

    :goto_2
    new-array v6, v5, [D

    nop

    nop

    nop

    nop

    goto/32 :goto_1

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
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sub-double v4, v13, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_1c

    nop

    :goto_7
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    array-length v13, v1

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

    nop

    :goto_9
    aget-object v5, v2, v4

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

    :goto_a
    const/4 v6, 0x2

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

    :goto_b
    move-object/from16 v2, p2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move-object/from16 v0, p0

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_d
    iput-object v2, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

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
    const-wide/16 v6, 0x0

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

    :goto_f
    move/from16 v17, v5

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    :goto_11
    sub-double v1, v15, v10

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_12
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_13
    move/from16 v5, v17

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_16
    move-object/from16 v1, p1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_17
    if-gtz v12, :cond_0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    :goto_18
    if-gt v5, v6, :cond_1

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    :goto_19
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    aget-wide v15, v15, v4

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v12, 0x0

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_2

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_36

    nop

    :goto_1e
    array-length v3, v1

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

    nop

    nop

    :goto_1f
    move/from16 v17, v5

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

    :goto_20
    rem-int v0, v0, v1

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

    :goto_21
    aget-object v13, v2, v12

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

    :goto_22
    goto/16 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_24
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_25
    iput-boolean v3, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mExtrapolate:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_26
    const v1, 0x1a

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

    :goto_27
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-lt v12, v13, :cond_3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_3
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_29
    aget-object v15, v2, v12

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

    :goto_2a
    add-double/2addr v6, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_2b
    move-wide v8, v13

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_2c
    const v0, 0xa

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_2d
    iput-wide v1, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mTotalLength:D

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_2e
    move/from16 v17, v5

    nop

    nop

    :goto_2f
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_30
    const-wide/16 v10, 0x0

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

    :goto_31
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_32
    move-object/from16 v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_33
    array-length v5, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_34
    move/from16 v17, v5

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const-wide/16 v1, 0x0

    nop

    nop

    goto/32 :goto_2d

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
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_38
    const-wide/16 v8, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_39
    aget-wide v13, v13, v4

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

    :goto_3a
    add-int/lit8 v12, v12, 0x1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3d
    const/4 v4, 0x0

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

    :goto_3e
    move-wide v10, v15

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

    nop

    :goto_3f
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_40
    move-object/from16 v2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop
.end method


# virtual methods
.method public getPos(DI)D
    .locals 17

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_1
    aget-wide v4, v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_2
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    aget-wide v4, v2, v4

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_4
    aget-wide v6, v2, v5

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

    :goto_5
    aget-wide v8, v2, v8

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_6
    aget-wide v5, v4, v2

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_7
    return-wide v4

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-double/2addr v13, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_a
    add-int/lit8 v4, v3, -0x1

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_c
    aget-object v6, v6, v11

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_d
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_f
    goto :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_63

    nop

    nop

    nop

    :goto_11
    sub-double/2addr v7, v5

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_12
    return-wide v4

    nop

    nop

    :goto_13
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_14
    aget-wide v7, v4, v7

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_15
    aget-wide v6, v2, v6

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    cmpg-double v7, p1, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_17
    return-wide v4

    nop

    :goto_18
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_19
    aget-object v4, v4, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_1a
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v6, v7, v1}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->getSlope(DI)D

    move-result-wide v6

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

    :goto_1d
    array-length v3, v2

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-wide v13

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_20
    aget-object v9, v6, v2

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_21
    add-int/lit8 v4, v3, -0x1

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_22
    add-int/lit8 v7, v2, 0x1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_23
    add-int/lit8 v8, v3, -0x1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_24
    aget-wide v6, v2, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_25
    add-int/lit8 v2, v2, 0x1

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

    :goto_26
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_27
    if-gez v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    :cond_0
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_28
    cmpl-double v4, p1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_29
    add-int/lit8 v6, v3, -0x1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    cmpl-double v7, p1, v5

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_2b
    aget-wide v9, v9, v1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_2c
    sub-double v8, p1, v6

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2d
    add-int/lit8 v7, v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_2e
    aget-object v2, v2, v5

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_2f
    cmpg-double v4, p1, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_30
    aget-wide v4, v2, v1

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

    :goto_31
    aget-wide v7, v4, v7

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    add-double/2addr v4, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_33
    cmpl-double v2, p1, v4

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_34
    add-int/lit8 v11, v2, 0x1

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_35
    mul-double/2addr v8, v6

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-boolean v4, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mExtrapolate:Z

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_37
    move/from16 v1, p3

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_38
    sub-double v6, p1, v6

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

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

    :goto_3a
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_3b
    aget-wide v4, v4, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_3c
    return-wide v4

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3e
    sub-double/2addr v13, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_3f
    const v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_40
    aget-object v4, v4, v2

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    add-int/lit8 v4, v3, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_42
    if-eqz v7, :cond_1

    nop

    goto/32 :goto_4e

    nop

    nop

    :cond_1
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_44
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v0, v8, v9, v1}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->getSlope(DI)D

    move-result-wide v8

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_18

    nop

    :goto_47
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_49
    if-lez v4, :cond_2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    aget-wide v11, v6, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_4b
    cmpg-double v4, p1, v6

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    mul-double/2addr v13, v9

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_4d
    return-wide v4

    nop

    nop

    :goto_4e
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    if-ltz v7, :cond_3

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_50
    add-double/2addr v4, v8

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_51
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    :cond_4
    goto/32 :goto_46

    nop

    :goto_52
    return-wide v4

    nop

    nop

    :goto_53
    goto/32 :goto_24

    nop

    nop

    :goto_54
    mul-double v15, v11, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_55
    if-gez v4, :cond_5

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_26

    nop

    nop

    :goto_56
    aget-object v2, v2, v4

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    aget-object v2, v2, v5

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_58
    aget-wide v4, v2, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_59
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    div-double/2addr v4, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_5b
    if-lez v4, :cond_6

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_5d
    if-lt v2, v4, :cond_7

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    mul-double/2addr v6, v8

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_60
    aget-wide v4, v4, v1

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_61
    if-nez v4, :cond_8

    nop

    nop

    goto/32 :goto_53

    nop

    :cond_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_62
    aget-wide v4, v2, v4

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_63
    const-wide/16 v4, 0x0

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

    :goto_64
    add-int/lit8 v4, v3, -0x1

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_65
    add-int/lit8 v5, v3, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_66
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

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

    :goto_67
    sub-double v4, p1, v5

    nop

    nop

    goto/32 :goto_5a

    nop

    nop
.end method

.method public getPos(D[D)V
    .locals 18

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_0
    aput-wide v5, p3, v1

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

    :goto_1
    goto/16 :goto_9b

    nop

    :goto_2
    goto/32 :goto_29

    nop

    nop

    :goto_3
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_6
    if-lt v4, v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_7
    mul-double v16, v12, v7

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

    :goto_8
    goto/16 :goto_78

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_64

    nop

    nop

    :goto_a
    goto/16 :goto_8d

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1b

    nop

    nop

    :goto_c
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_d
    aget-wide v5, v5, v1

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-double/2addr v5, v7

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_10
    aput-wide v5, p3, v4

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_11
    aget-object v5, v5, v1

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_12
    cmpg-double v5, p1, v5

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    goto/32 :goto_84

    nop

    nop

    :cond_1
    goto/32 :goto_83

    nop

    :goto_14
    if-lt v1, v3, :cond_2

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

    :cond_2
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    :goto_16
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    aget-wide v4, v1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_18
    aget-wide v7, v7, v4

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_19
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_5d

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

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1e
    sub-double v7, p1, v7

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

    :goto_1f
    const/4 v1, 0x0

    nop

    :goto_20
    goto/32 :goto_46

    nop

    nop

    :goto_21
    aget-object v9, v9, v12

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

    :goto_22
    aput-wide v14, p3, v4

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_24
    cmpg-double v7, p1, v5

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_26
    aget-wide v4, v4, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_27
    const v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    add-int/lit8 v5, v2, -0x1

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_29
    return-void

    nop

    nop

    :goto_2a
    goto/32 :goto_53

    nop

    nop

    :goto_2b
    aget-wide v10, v10, v4

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

    nop

    :goto_2c
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

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

    :goto_2d
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_2e
    cmpg-double v5, p1, v5

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_2f
    add-int/lit8 v5, v1, 0x1

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

    :goto_30
    goto/16 :goto_54

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_32
    add-int/lit8 v4, v2, -0x1

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    aput-wide v4, p3, v1

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_34
    return-void

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
    aget-wide v4, v4, v1

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

    :goto_37
    add-int/lit8 v7, v2, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_38
    cmpl-double v4, p1, v4

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_39
    mul-double/2addr v6, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_3a
    if-lt v4, v3, :cond_3

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

    :cond_3
    goto/32 :goto_4b

    nop

    nop

    :goto_3b
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_3c
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3d
    aget-wide v5, v4, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_3e
    aget-wide v4, v1, v4

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_3f
    sub-double/2addr v14, v7

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_40
    aget-wide v8, v8, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_41
    mul-double/2addr v14, v10

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_42
    if-gez v4, :cond_4

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_43
    if-nez v5, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_5
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_44
    cmpl-double v4, p1, v4

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_46
    if-lt v1, v3, :cond_6

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_3b

    nop

    nop

    :goto_47
    invoke-virtual {v0, v5, v6, v1}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->getSlope(D[D)V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_48
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v0, v4, v5, v1}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->getSlope(D[D)V

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    add-double v14, v14, v16

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_4b
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

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

    :goto_4c
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_84

    nop

    :goto_4e
    if-lt v1, v3, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    aget-wide v6, v6, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_52
    if-gez v1, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_8
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_53
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    add-int/lit8 v12, v1, 0x1

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

    :goto_56
    if-lez v7, :cond_9

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_63

    nop

    nop

    nop

    :goto_57
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_59
    aget-wide v5, v1, v4

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

    :goto_5a
    add-int/lit8 v4, v2, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_5b
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_5c
    aget-wide v5, v4, v5

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_5e
    if-eqz v4, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_5f
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_60
    add-int/lit8 v5, v2, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    goto/16 :goto_20

    nop

    nop

    nop

    :goto_62
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_64
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_65
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_66
    aput-wide v5, p3, v1

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    aget-object v5, v5, v4

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_68
    aget-wide v7, v4, v1

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_69
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_6a
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6b
    aget-object v4, v4, v5

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_6c
    cmpl-double v1, p1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_6d
    aget-object v4, v4, v5

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_6e
    if-lt v1, v4, :cond_b

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

    :cond_b
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    aget-wide v5, v1, v4

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_70
    if-lez v5, :cond_c

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_71
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_72
    array-length v3, v3

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_73
    aget-wide v5, v5, v4

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

    :goto_74
    aget-object v3, v3, v4

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

    :goto_75
    goto/16 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_76
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_77
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_78
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    array-length v2, v1

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

    :goto_7a
    if-ltz v5, :cond_d

    nop

    goto/32 :goto_1c

    nop

    :cond_d
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7c
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

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

    :goto_7d
    aget-object v10, v9, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_7e
    sub-double v6, p1, v6

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    add-int/lit8 v4, v2, -0x1

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_80
    sub-double/2addr v5, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_81
    add-int/lit8 v4, v2, -0x1

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_82
    aget-object v5, v5, v4

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_83
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_84
    goto/32 :goto_65

    nop

    nop

    :goto_85
    sub-double v7, p1, v7

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_86
    add-double/2addr v4, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_87
    mul-double/2addr v7, v9

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_88
    goto/16 :goto_50

    nop

    :goto_89
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    aget-wide v4, v4, v1

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

    :goto_8b
    add-int/lit8 v5, v1, 0x1

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_8c
    const/4 v4, 0x0

    nop

    nop

    nop

    :goto_8d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    if-lt v1, v3, :cond_e

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

    :cond_e
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    aget-wide v5, v5, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_90
    aput-wide v4, p3, v1

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_91
    const v1, 0x14

    nop

    nop

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

    :goto_92
    aget-wide v4, v1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_93
    const/4 v1, 0x0

    nop

    nop

    :goto_94
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_95
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_96
    aget-wide v12, v9, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_97
    div-double/2addr v7, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_98
    iget-boolean v5, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mExtrapolate:Z

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_99
    aget-wide v9, v9, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_9a
    const/4 v1, 0x0

    nop

    nop

    :goto_9b
    goto/32 :goto_8e

    nop

    nop
.end method

.method public getPos(D[F)V
    .locals 18

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_0
    double-to-float v5, v5

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_1
    cmpg-double v7, p1, v5

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2
    add-int/lit8 v4, v2, -0x1

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

    :goto_3
    aget-wide v4, v4, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_4
    add-int/lit8 v4, v2, -0x1

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_5
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    :goto_7
    invoke-virtual {v0, v4, v5, v1}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->getSlope(D[D)V

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_8
    aput v5, p3, v4

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_a
    cmpl-double v1, p1, v4

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_b
    aput v5, p3, v1

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_c
    aget-wide v4, v1, v4

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_94

    nop

    :goto_e
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_10
    sub-double/2addr v5, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_11
    aget-wide v5, v4, v5

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_13
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_14
    iget-boolean v5, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mExtrapolate:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_15
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    nop

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

    :goto_16
    aget-object v3, v3, v4

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_17
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_18
    cmpg-double v5, p1, v5

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    :goto_1a
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    aget-object v4, v4, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_1e
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    sub-double/2addr v14, v7

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_20
    cmpl-double v4, p1, v4

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_21
    aget-wide v4, v4, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    aget-wide v9, v9, v1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_23
    if-lez v7, :cond_0

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_24
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_25
    double-to-float v9, v14

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_26
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_58

    nop

    :goto_28
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_29
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    nop

    nop

    goto/32 :goto_3e

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

    nop

    nop

    :goto_2b
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    aput v4, p3, v1

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

    :goto_2d
    aget-object v4, v4, v5

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_2e
    aget-object v5, v5, v4

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

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

    :goto_30
    add-int/lit8 v5, v2, -0x1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_31
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_32
    const/4 v4, 0x0

    nop

    :goto_33
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_34
    mul-double/2addr v7, v9

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

    :goto_35
    cmpg-double v5, p1, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_36
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_64

    nop

    :goto_37
    cmpl-double v4, p1, v4

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

    nop

    :goto_38
    const/4 v1, 0x0

    nop

    nop

    :goto_39
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-lez v5, :cond_2

    nop

    goto/32 :goto_4b

    nop

    :cond_2
    goto/32 :goto_57

    nop

    nop

    :goto_3b
    aget-wide v7, v7, v4

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    mul-double v16, v12, v7

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

    nop

    nop

    :goto_3d
    if-ltz v5, :cond_3

    nop

    goto/32 :goto_2b

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

    :goto_3e
    aget-object v5, v5, v4

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

    :goto_3f
    mul-double/2addr v6, v8

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_40
    aput v4, p3, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_41
    mul-double/2addr v14, v10

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

    :goto_42
    sub-double v7, p1, v7

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

    :goto_43
    aput v9, p3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_44
    aget-wide v5, v1, v4

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_45
    add-int/lit8 v4, v2, -0x1

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    add-int/lit8 v7, v2, -0x1

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    add-double/2addr v5, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_48
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_4a
    return-void

    nop

    nop

    :goto_4b
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_4d
    if-lt v1, v3, :cond_4

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :cond_4
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/16 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_50
    aget-wide v4, v1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_51
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_52
    if-eqz v4, :cond_5

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_32

    nop

    nop

    :goto_53
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_54
    aget-wide v5, v5, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_56
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_57
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_59
    sub-double v6, p1, v6

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    add-double/2addr v4, v6

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

    :goto_5b
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_5c
    aget-wide v7, v4, v1

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

    :goto_5d
    array-length v2, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_5e
    return-void

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_61
    aget-wide v12, v9, v4

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

    :goto_62
    return-void

    nop

    nop

    :goto_63
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_63

    nop

    :goto_65
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    if-lt v1, v3, :cond_6

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_67
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_68
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    if-lt v1, v3, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_6b
    aget-wide v4, v4, v1

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_6c
    aput v5, p3, v1

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_6d
    if-lt v4, v3, :cond_8

    nop

    goto/32 :goto_90

    nop

    nop

    :cond_8
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    add-int/lit8 v12, v1, 0x1

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

    :goto_6f
    array-length v3, v3

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

    :goto_70
    aget-wide v5, v1, v4

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_71
    aget-wide v6, v6, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    add-int/lit8 v5, v1, 0x1

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_73
    if-lt v1, v3, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_9
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    div-double/2addr v7, v5

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_75
    sub-double v7, p1, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_76
    const/4 v4, 0x0

    nop

    nop

    nop

    :goto_77
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    goto :goto_84

    nop

    :goto_79
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_7a
    double-to-float v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_7b
    aget-wide v5, v5, v1

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    if-lt v4, v3, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    :cond_a
    goto/32 :goto_9

    nop

    nop

    :goto_7d
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {v0, v5, v6, v1}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->getSlope(D[D)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    aget-wide v8, v8, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_80
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    aget-wide v4, v1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_82
    add-int/lit8 v4, v2, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_83
    const/4 v1, 0x0

    nop

    nop

    :goto_84
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_85
    if-nez v5, :cond_b

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_87
    const v0, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    :goto_88
    if-gez v1, :cond_c

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_89
    aget-object v9, v9, v12

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_8a
    add-int/lit8 v5, v1, 0x1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    return-void

    nop

    nop

    :goto_8c
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8d
    double-to-float v5, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8e
    aget-wide v10, v10, v4

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    goto/16 :goto_33

    nop

    nop

    nop

    nop

    :goto_90
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_91
    goto/16 :goto_77

    nop

    nop

    :goto_92
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_93
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_94
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_95
    aget-wide v5, v5, v4

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_96
    aget-object v10, v9, v1

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_97
    add-double v14, v14, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_98
    if-gez v4, :cond_d

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_99
    add-int/lit8 v5, v2, -0x1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    aget-wide v5, v4, v5

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_9c
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    double-to-float v4, v4

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

    :goto_9e
    if-lt v1, v4, :cond_e

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_9f
    const v1, 0x4

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    double-to-float v5, v5

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

    :goto_a1
    aget-object v5, v5, v1

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public getSlope(DI)D
    .locals 16

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    aget-wide v3, v1, v3

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    add-int/lit8 v1, v1, 0x1

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

    :goto_2
    div-double/2addr v14, v6

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_4
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_5
    add-int/lit8 v3, v2, -0x1

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

    :goto_6
    aget-wide v3, v1, v3

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    cmpg-double v4, p1, v4

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

    :goto_8
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_9
    aget-wide v8, v5, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_38

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v6, :cond_0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    :goto_d
    goto/16 :goto_38

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-wide v14

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    cmpl-double v3, p1, v3

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_12
    add-int/lit8 v5, v2, -0x1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_13
    aget-object v5, v5, v12

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_14
    add-int/lit8 v12, v1, 0x1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    array-length v2, v1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_16
    aget-wide v4, v1, v3

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
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_2c

    nop

    :goto_18
    aget-wide v3, v1, v3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_19
    aget-object v10, v5, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1a
    div-double/2addr v8, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_1b
    return-wide v5

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v1, 0x0

    nop

    nop

    :goto_1e
    goto/32 :goto_12

    nop

    nop

    :goto_1f
    add-int/lit8 v6, v1, 0x1

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_20
    goto :goto_1e

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_22
    cmpg-double v6, v3, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_24
    sub-double v8, v3, v8

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_25
    aget-wide v12, v5, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_26
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_27
    aget-wide v6, v5, v6

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_28
    sub-double/2addr v6, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_29
    add-int/lit8 v3, v2, -0x1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const-wide/16 v5, 0x0

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
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_3

    nop

    nop

    :goto_2e
    if-lt v1, v5, :cond_2

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    aget-wide v10, v10, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_30
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_31
    if-gez v3, :cond_3

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    sub-double v14, v12, v10

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_2d

    nop

    nop

    :goto_34
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_35
    aget-wide v6, v5, v6

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_36
    add-int/lit8 v6, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_37
    move-wide/from16 v3, p1

    nop

    :goto_38
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_39
    if-ltz v4, :cond_4

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_6

    nop

    nop

    :goto_3a
    const v1, 0x8

    nop

    nop

    goto/32 :goto_30

    nop

    nop
.end method

.method public getSlope(D[D)V
    .locals 18

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_0
    div-double v16, v16, v7

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

    :goto_1
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    array-length v3, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

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
    if-gez v4, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_36

    nop

    nop

    :goto_7
    const v1, 0x10

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

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_37

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_22

    nop

    nop

    :goto_b
    sub-double v16, v14, v12

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

    :goto_c
    aget-wide v4, v1, v4

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

    :goto_d
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_f

    nop

    :goto_f
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    aget-wide v9, v6, v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_12
    aget-wide v4, v1, v4

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

    :goto_13
    div-double/2addr v9, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_14
    add-int/lit8 v6, v2, -0x1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_15
    cmpl-double v4, p1, v4

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
    goto/16 :goto_34

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_41

    nop

    nop

    :goto_18
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_19
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v6, 0x0

    nop

    nop

    :goto_1b
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_1c
    aget-wide v7, v6, v7

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v11, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

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

    :goto_1e
    aget-object v11, v11, v14

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_1f
    add-int/lit8 v7, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_20
    if-lez v5, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_21
    sub-double/2addr v7, v9

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_22
    add-int/lit8 v4, v2, -0x1

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

    :goto_23
    if-lt v1, v6, :cond_3

    nop

    goto/32 :goto_17

    nop

    :cond_3
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_24
    add-int/lit8 v4, v2, -0x1

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

    :goto_25
    sub-double v9, v4, v9

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_26
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_27
    aget-object v12, v11, v1

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_29
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2a
    aput-wide v16, p3, v6

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_17

    nop

    nop

    :goto_2c
    goto/32 :goto_d

    nop

    nop

    :goto_2d
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    aget-wide v7, v6, v7

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

    :goto_30
    cmpg-double v5, p1, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_31
    rem-int v0, v0, v1

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

    :goto_32
    cmpg-double v7, v4, v7

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_33
    const/4 v1, 0x0

    nop

    nop

    :goto_34
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_35
    aget-object v3, v3, v4

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

    :goto_36
    move-wide/from16 v4, p1

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_38
    array-length v2, v1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_39
    aget-wide v12, v12, v6

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_3a
    if-lt v6, v3, :cond_4

    nop

    nop

    nop

    goto/32 :goto_2e

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

    nop

    :goto_3b
    add-int/lit8 v7, v1, 0x1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_3c
    if-lez v7, :cond_5

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3b

    nop

    nop

    :goto_3d
    aget-wide v4, v1, v4

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3e
    aget-wide v5, v1, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_3f
    aget-wide v14, v11, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_40
    add-int/lit8 v14, v1, 0x1

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

    :goto_41
    return-void

    nop

    nop

    :goto_42
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    nop

    goto/32 :goto_1f

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

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method
