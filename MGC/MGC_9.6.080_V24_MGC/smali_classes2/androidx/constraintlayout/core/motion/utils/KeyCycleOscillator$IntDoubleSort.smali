.class Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$IntDoubleSort;
.super Ljava/lang/Object;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntDoubleSort"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method private static partition([I[FII)I
    .locals 4

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_4
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p0, p1, v1, p3}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$IntDoubleSort;->swap([I[FII)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_7
    if-le v3, v0, :cond_1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p0, p1, v1, v2}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$IntDoubleSort;->swap([I[FII)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0xb

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

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    aget v3, p0, v2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c
    move v1, p2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_d
    aget v0, p0, p3

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

    :goto_e
    if-lt v2, p3, :cond_2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

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

    :goto_f
    goto :goto_15

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_12
    const v0, 0x8

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_13
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

    :goto_14
    move v2, p2

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_16
    return v1

    nop

    nop

    :goto_17
    goto/32 :goto_11

    nop

    nop

    nop

    nop
.end method

.method static sort([I[FII)V
    .locals 5

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p1, p2, p3}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$IntDoubleSort;->partition([I[FII)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_3
    aput v4, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4
    aput p3, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

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

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_6
    add-int/lit8 v0, v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_7
    add-int/lit8 v2, v1, 0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    aget p2, v0, v1

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

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lt p2, p3, :cond_1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x8

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_d
    aget p3, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    add-int/lit8 v1, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_f
    add-int v0, v0, v1

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

    :goto_10
    add-int/lit8 v4, v2, 0x1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_11
    aput p3, v0, v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int/lit8 v1, v1, -0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    add-int/lit8 v1, v3, 0x1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_14
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_16
    aput p2, v0, v3

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

    :goto_17
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_18
    new-array v0, v0, [I

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-gtz v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int/lit8 v4, v2, -0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1c
    add-int/lit8 v3, v1, 0x1

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

    :goto_1d
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1e
    add-int/lit8 v1, v1, -0x1

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
    array-length v0, p0

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

    :goto_20
    aput v4, v0, v3

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_21
    add-int/lit8 v1, v3, 0x1

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

    :goto_22
    const v1, 0xc

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_23
    add-int/lit8 v3, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_24
    aput p2, v0, v2

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_1a

    nop

    nop
.end method

.method private static swap([I[FII)V
    .locals 3

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0xd

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x7

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

    :goto_5
    goto/32 :goto_2

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    aget v0, p0, p2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_8
    aget v1, p1, p2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    aget v2, p1, p3

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_b
    aput v0, p0, p3

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    aput v1, p0, p2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    :goto_e
    add-int v0, v0, v1

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

    :goto_f
    aput v2, p1, p2

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

    :goto_10
    aget v1, p0, p3

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_11
    aput v1, p1, p3

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method
