.class public Landroidx/constraintlayout/core/motion/utils/StepCurve;
.super Landroidx/constraintlayout/core/motion/utils/Easing;
.source "StepCurve.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field mCurveFit:Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 9

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/StepCurve;->str:Ljava/lang/String;

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

    :goto_1
    const v0, 0xe

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

    nop

    :goto_2
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

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

    :goto_4
    add-int/lit8 v6, v4, 0x1

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
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v4}, Landroidx/constraintlayout/core/motion/utils/StepCurve;->genSpline([D)Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    move-result-object v4

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_7
    aput-wide v7, v0, v4

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    const/16 v1, 0x28

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

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
    goto/16 :goto_23

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_f
    add-int/lit8 v4, v3, 0x1

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

    :goto_10
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_15

    nop

    :goto_12
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_13
    move v4, v6

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_16
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_18
    const/16 v2, 0x29

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
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1a
    div-int/lit8 v0, v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
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

    :goto_1c
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/StepCurve;->str:Ljava/lang/String;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_1e
    add-int/lit8 v1, v1, 0x1

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

    :goto_1f
    add-int/lit8 v5, v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_20
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_21
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_22
    const/4 v4, 0x0

    nop

    :goto_23
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_24
    iput-object v4, p0, Landroidx/constraintlayout/core/motion/utils/StepCurve;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_25
    move v1, v4

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_26
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/Easing;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_28
    if-ne v3, v5, :cond_1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    :goto_29
    const/4 v5, -0x1

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_2a
    aput-wide v6, v0, v4

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    new-array v0, v0, [D

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

    :goto_2c
    const/16 v2, 0x2c

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

    :goto_2d
    goto/32 :goto_12

    nop

    nop

    nop
.end method

.method private static genSpline(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;
    .locals 6

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    const v1, 0x13

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

    :goto_1
    array-length v2, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2
    return-object v3

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_6
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    :goto_9
    aput-wide v4, v2, v3

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

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

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_e
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    array-length v4, v2

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

    :goto_11
    const v0, 0x16

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_12
    new-array v2, v2, [D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_13
    invoke-static {v2}, Landroidx/constraintlayout/core/motion/utils/StepCurve;->genSpline([D)Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    move-result-object v3

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_16
    if-lt v3, v4, :cond_1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    move-object v0, p0

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

    :goto_18
    aget-object v4, v1, v3

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_19
    const-string v1, "\\s+"

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
.end method

.method private static genSpline([D)Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;
    .locals 18

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/lit8 v13, v10, -0x1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sub-int/2addr v1, v2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    aget-wide v11, v0, v10

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_4
    new-array v9, v1, [D

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-double/2addr v14, v7

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

    :goto_6
    aput v1, v2, v4

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_7
    if-lt v10, v11, :cond_0

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    aput-wide v14, v9, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_9
    array-length v3, v0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_a
    aput-wide v14, v13, v4

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_c
    add-int/2addr v13, v10

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_d
    aput-wide v14, v13, v4

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

    nop

    :goto_e
    array-length v1, v0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_f
    mul-int/lit8 v1, v1, 0x3

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_10
    add-int/2addr v13, v10

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

    :goto_11
    aput-wide v11, v13, v4

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

    nop

    :goto_12
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

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

    :goto_15
    aget-object v13, v2, v13

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_16
    mul-double/2addr v14, v5

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_17
    int-to-double v14, v10

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_18
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

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

    :goto_19
    div-double v5, v7, v5

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1a
    add-int/lit8 v10, v10, 0x1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1b
    sub-double v14, v11, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_1c
    aput v4, v2, v4

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v4, 0x1

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v9, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

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

    :goto_20
    mul-double/2addr v14, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_21
    invoke-virtual {v10, v7, v8, v4}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getPos(DI)D

    move-result-wide v7

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

    :goto_22
    new-array v2, v2, [I

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_25
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_36

    nop

    nop

    :goto_26
    int-to-double v5, v3

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_27
    array-length v11, v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_28
    const/4 v2, 0x2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_29
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_2a
    int-to-double v14, v10

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

    :goto_2b
    new-instance v12, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_2c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_2d
    const-wide/16 v13, 0x0

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_2e
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

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

    :goto_2f
    goto/16 :goto_4a

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const v0, 0x13

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    add-double v14, v11, v7

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_33
    int-to-double v14, v10

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_34
    new-instance v10, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_35
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_12

    nop

    :goto_36
    const-string v13, " 0 "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_37
    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_38
    sub-double/2addr v14, v5

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

    :goto_39
    aput-wide v14, v9, v13

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_1a

    nop

    nop

    :goto_3b
    mul-double/2addr v14, v5

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

    :goto_3c
    aget-object v13, v2, v13

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

    :goto_3d
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

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

    :goto_3e
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3f
    return-object v10

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_41
    add-int/lit8 v13, v10, -0x1

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

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

    :goto_43
    const-string v13, " 1 "

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_44
    add-int v13, v10, v3

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_45
    add-double v14, v14, v16

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

    :goto_46
    aget-object v13, v2, v13

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_47
    mul-int/lit8 v13, v3, 0x2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

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

    :goto_49
    const/4 v10, 0x0

    nop

    nop

    :goto_4a
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    check-cast v2, [[D

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4c
    sub-double/2addr v14, v5

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

    :goto_4d
    const v1, 0x1

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-direct {v10, v9, v2}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;-><init>([D[[D)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_50
    add-int v0, v0, v1

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

    :goto_51
    add-int v13, v10, v3

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    sub-int/2addr v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v10, v13, v14, v4}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getPos(DI)D

    move-result-wide v13

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_54
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

    nop

    :goto_55
    invoke-virtual {v11, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_56
    new-instance v12, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_57
    if-gtz v10, :cond_2

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_58
    mul-int/lit8 v13, v3, 0x2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_59
    aput-wide v14, v9, v13

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
.end method


# virtual methods
.method public get(D)D
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x7

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

    :goto_1
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_4

    nop

    :goto_2
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    :goto_6
    invoke-virtual {v0, p1, p2, v1}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getPos(DI)D

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/StepCurve;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

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
    return-wide v0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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
.end method

.method public getDiff(D)D
    .locals 2

    goto/32 :goto_8

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    :goto_3
    const v1, 0x1c

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/StepCurve;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    const v0, 0x12

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

    :goto_9
    invoke-virtual {v0, p1, p2, v1}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getSlope(DI)D

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
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

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method
