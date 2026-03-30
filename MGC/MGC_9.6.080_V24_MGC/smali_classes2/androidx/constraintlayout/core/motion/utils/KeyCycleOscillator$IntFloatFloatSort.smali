.class Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$IntFloatFloatSort;
.super Ljava/lang/Object;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntFloatFloatSort"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method private static partition([I[F[FII)I
    .locals 4

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x19

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    aget v0, p0, p4

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3
    return v1

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_6

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-le v3, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

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

    :goto_a
    if-lt v2, p4, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    aget v3, p0, v2

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
    goto :goto_16

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p0, p1, p2, v1, p4}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$IntFloatFloatSort;->swap([I[F[FII)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    add-int/lit8 v1, v1, 0x1

    nop

    :goto_12
    goto/32 :goto_2

    nop

    nop

    :goto_13
    const v0, 0x17

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p0, p1, p2, v1, v2}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$IntFloatFloatSort;->swap([I[F[FII)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_15
    move v2, p3

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_17
    move v1, p3

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
.end method

.method static sort([I[F[FII)V
    .locals 5

    goto/32 :goto_7

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$IntFloatFloatSort;->partition([I[F[FII)I

    move-result v2

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
    aput p4, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    aput p3, v0, v2

    nop

    nop

    :goto_3
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4
    aput p4, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_5
    new-array v0, v0, [I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

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

    goto/32 :goto_25

    nop

    :cond_0
    goto/32 :goto_24

    nop

    :goto_7
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_9
    aget p4, v0, v1

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

    :goto_a
    add-int/lit8 v4, v2, 0x1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    add-int/lit8 v1, v3, 0x1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_c
    add-int/lit8 v0, v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    goto :goto_3

    nop

    nop

    :goto_e
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    aput v4, v0, v3

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
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

    nop

    nop

    :goto_11
    add-int/lit8 v1, v1, -0x1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_12
    if-gtz v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_13
    add-int/lit8 v1, v3, 0x1

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

    :goto_14
    add-int/lit8 v2, v1, 0x1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_15
    add-int/lit8 v1, v2, 0x1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_17
    add-int/lit8 v3, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_18
    aget p3, v0, v1

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

    :goto_19
    add-int/lit8 v3, v1, 0x1

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

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1d
    if-lt p3, p4, :cond_2

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    add-int/lit8 v1, v1, -0x1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1f
    add-int/lit8 v4, v2, -0x1

    nop

    nop

    nop

    goto/32 :goto_22

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

    goto/32 :goto_6

    nop

    nop

    :goto_21
    aput p3, v0, v3

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_22
    aput v4, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_23
    array-length v0, p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_24
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop
.end method

.method private static swap([I[F[FII)V
    .locals 3

    goto/32 :goto_9

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

    nop

    nop

    :goto_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    aput v1, p1, p4

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    aput v1, p2, p4

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    aget v2, p1, p4

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_5
    aget v0, p0, p3

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

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    aget v1, p0, p4

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    const v0, 0xf

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x6

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_c
    aget v2, p2, p4

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

    :goto_d
    aget v1, p2, p3

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_e
    aput v0, p0, p4

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_12
    aget v1, p1, p3

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_13
    aput v2, p1, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_14
    aput v2, p2, p3

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

    :goto_15
    aput v1, p0, p3

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop
.end method
