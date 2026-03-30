.class Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;
.super Landroidx/constraintlayout/core/motion/utils/Easing;
.source "Easing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/Easing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CubicEasing"
.end annotation


# static fields
.field private static d_error:D

.field private static error:D


# instance fields
.field x1:D

.field x2:D

.field y1:D

.field y2:D


# direct methods
.method private 27087c23af2e57562bfc4c922e689219m(D)D
    .locals 15

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    mul-double v7, v3, v5

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    iget-wide v13, v0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->x2:D

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
    mul-double/2addr v7, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x1

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_6
    sub-double v9, v13, v9

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_7
    mul-double v11, v11, p1

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

    :goto_8
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    mul-double/2addr v7, v3

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_e
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_f
    sub-double/2addr v1, v13

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-double/2addr v7, v5

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_11
    mul-double/2addr v5, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_9

    nop

    :goto_13
    return-wide v7

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_12

    nop

    nop

    :goto_15
    mul-double v5, v5, p1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_17
    mul-double/2addr v11, v9

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_18
    iget-wide v9, v0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->x1:D

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_19
    mul-double/2addr v11, v3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1a
    mul-double v5, v5, p1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sub-double v3, v1, p1

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1c
    const-wide/high16 v11, 0x4018000000000000L    # 6.0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-double/2addr v7, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop
.end method

.method private 528206730878934af604cebab34113f3m(D)D
    .locals 12

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    add-double/2addr v8, v6

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1
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

    :goto_2
    mul-double/2addr v8, v4

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

    :goto_3
    mul-double/2addr v10, v2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    mul-double/2addr v4, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5
    const v0, 0x1d

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

    :goto_6
    mul-double/2addr v6, p1

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

    :goto_7
    if-lez v0, :cond_0

    nop

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

    :goto_8
    mul-double/2addr v2, v0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_9
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_12

    nop

    :goto_b
    sub-double/2addr v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    mul-double v4, v0, v2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    mul-double/2addr v2, p1

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

    :goto_e
    iget-wide v8, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->x1:D

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

    :goto_f
    mul-double/2addr v4, p1

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

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_11
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x9

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_14
    add-double/2addr v8, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_15
    return-wide v8

    nop

    nop

    :goto_16
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_17
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_18
    iget-wide v10, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->x2:D

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_19
    mul-double v6, p1, p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1a
    mul-double/2addr v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop
.end method

.method private 636bca27d889afd1e45cac1e02c5d28bm(D)D
    .locals 15

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    mul-double/2addr v11, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_2
    mul-double v5, v5, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3
    return-wide v7

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_15

    nop

    nop

    :goto_5
    add-double/2addr v7, v11

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

    :goto_6
    mul-double/2addr v7, v9

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

    :goto_7
    mul-double v11, v11, p1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    mul-double v7, v3, v5

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_a
    mul-double v5, v5, p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_c

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

    goto/32 :goto_19

    nop

    nop

    :goto_d
    iget-wide v13, v0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->y2:D

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_e
    mul-double/2addr v7, v3

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sub-double v3, v1, p1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_10
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

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

    :goto_11
    move-object v0, p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-wide v9, v0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->y1:D

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
    mul-double/2addr v5, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_14
    add-double/2addr v7, v5

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_16
    sub-double/2addr v1, v13

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1a
    sub-double v9, v13, v9

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

    :goto_1b
    const-wide/high16 v5, 0x4008000000000000L    # 3.0

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

    :goto_1c
    const-wide/high16 v11, 0x4018000000000000L    # 6.0

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1d
    mul-double/2addr v11, v3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

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

    :goto_9
    goto/32 :goto_1

    nop

    nop

    :goto_a
    sput-wide v0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->d_error:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    sput-wide v0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->error:D

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

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

    :goto_d
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public constructor <init>(DDDD)V
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

    :goto_1
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/Easing;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-virtual/range {p0 .. p8}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->setup(DDDD)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 7

    goto/32 :goto_28

    nop

    nop

    :goto_0
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1
    add-int/lit8 v3, v0, 0x1

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

    :goto_2
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

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
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4
    iput-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->x2:D

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_5
    iput-wide v5, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->y2:D

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/16 v1, 0x2c

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

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

    :goto_9
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->indexOf(II)I

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

    :goto_a
    add-int/lit8 v4, v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

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

    :goto_c
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_d
    const/16 v5, 0x29

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

    :goto_e
    iput-wide v3, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->x1:D

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
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_10
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

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

    :goto_11
    if-lez v0, :cond_0

    nop

    goto/32 :goto_24

    nop

    :cond_0
    goto/32 :goto_23

    nop

    :goto_12
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_13
    iput-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->y1:D

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

    :goto_14
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_15
    add-int/lit8 v3, v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_16
    const/16 v0, 0x28

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

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_18
    add-int/lit8 v4, v1, 0x1

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

    nop

    :goto_19
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1a
    add-int/lit8 v4, v2, 0x1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1b
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

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

    :goto_1c
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1e
    add-int/lit8 v5, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

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

    :goto_20
    add-int/lit8 v4, v3, 0x1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_21
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/Easing;-><init>()V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_25
    return-void

    nop

    :goto_26
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->str:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_28
    const v0, 0x1b

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

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
.end method

.method private edf5a28cf06831dcf8b1d7f75c0e8f09m(D)D
    .locals 12

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    const v1, 0x12

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2
    const v0, 0x9

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

    :goto_3
    mul-double/2addr v2, v0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_4
    mul-double/2addr v10, v2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_5
    mul-double/2addr v4, v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    mul-double/2addr v2, p1

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    :goto_8
    mul-double/2addr v4, p1

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
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    mul-double/2addr v6, p1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

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

    :goto_d
    iget-wide v10, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->y2:D

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    iget-wide v8, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->y1:D

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    mul-double/2addr v8, v4

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

    :goto_10
    rem-int v0, v0, v1

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

    :goto_11
    sub-double/2addr v0, p1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_12
    return-wide v8

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    mul-double v4, v0, v2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_17
    add-double/2addr v8, v10

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_18
    mul-double/2addr v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_19
    add-double/2addr v8, v6

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1a
    mul-double v6, p1, p1

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
.end method


# virtual methods
.method public get(D)D
    .locals 17

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, v11, v12}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->edf5a28cf06831dcf8b1d7f75c0e8f09m(D)D

    move-result-wide v11

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    return-wide v1

    nop

    :goto_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sub-double v15, p1, v5

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

    :goto_4
    if-gez v3, :cond_0

    nop

    goto/32 :goto_21

    nop

    :cond_0
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_5
    add-double/2addr v13, v9

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    div-double/2addr v13, v15

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
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

    :goto_8
    if-ltz v7, :cond_1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_9
    sub-double v13, v11, v9

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    if-lez v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_c
    return-wide v13

    nop

    :goto_d
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, v7, v8}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->528206730878934af604cebab34113f3m(D)D

    move-result-wide v7

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

    nop

    :goto_f
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sub-double v15, v7, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x1b

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_13
    const-wide/16 v1, 0x0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_15
    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_16
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_17
    if-gtz v5, :cond_3

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v0, v5, v6}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->528206730878934af604cebab34113f3m(D)D

    move-result-wide v5

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_19
    add-double v7, v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1a
    cmpl-double v5, v3, v5

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    cmpg-double v3, p1, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_10

    nop

    nop

    :goto_1d
    goto/32 :goto_2c

    nop

    nop

    :goto_1e
    goto/32 :goto_d

    nop

    nop

    :goto_1f
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_20
    return-wide v1

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_15

    nop

    nop

    :goto_22
    goto :goto_2b

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_1f

    nop

    :goto_25
    add-double/2addr v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_26
    invoke-direct {v0, v9, v10}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->edf5a28cf06831dcf8b1d7f75c0e8f09m(D)D

    move-result-wide v9

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

    :goto_27
    mul-double/2addr v3, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_28
    sget-wide v5, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->error:D

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_29
    cmpl-double v3, p1, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2a
    sub-double/2addr v1, v3

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    sub-double v5, v1, v3

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

    :goto_2d
    mul-double/2addr v13, v15

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    cmpg-double v7, v5, p1

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

    :goto_2f
    sub-double v9, v1, v3

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

    :goto_30
    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->528206730878934af604cebab34113f3m(D)D

    move-result-wide v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_31
    const v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_32
    add-double v11, v1, v3

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_33
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1e

    nop

    :goto_34
    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop
.end method

.method public getDiff(D)D
    .locals 17

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_0
    sub-double v13, v11, v9

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, v11, v12}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->edf5a28cf06831dcf8b1d7f75c0e8f09m(D)D

    move-result-wide v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    sub-double v15, v7, v5

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    div-double/2addr v13, v15

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_4
    move-object/from16 v0, p0

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

    :goto_5
    const v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_6
    add-double v11, v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    add-double v7, v1, v3

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

    :goto_8
    invoke-direct {v0, v5, v6}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->528206730878934af604cebab34113f3m(D)D

    move-result-wide v5

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

    :goto_9
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    :goto_b
    goto/16 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_23

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-gtz v5, :cond_0

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

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    nop

    :goto_11
    goto/32 :goto_19

    nop

    nop

    :goto_12
    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_13
    mul-double/2addr v3, v7

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_14
    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->528206730878934af604cebab34113f3m(D)D

    move-result-wide v5

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v0, v7, v8}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->528206730878934af604cebab34113f3m(D)D

    move-result-wide v7

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_16
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

    :goto_17
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_18
    cmpl-double v5, v3, v5

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_19
    sget-wide v5, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->d_error:D

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1a
    sub-double v5, v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1b
    add-double/2addr v1, v3

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

    :goto_1c
    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_11

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    sub-double v9, v1, v3

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_20
    cmpg-double v7, v5, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_21
    return-wide v13

    nop

    nop

    :goto_22
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_23
    sub-double/2addr v1, v3

    nop

    nop

    :goto_24
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const v0, 0x20

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

    :goto_26
    invoke-direct {v0, v9, v10}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->edf5a28cf06831dcf8b1d7f75c0e8f09m(D)D

    move-result-wide v9

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-ltz v7, :cond_2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    nop
.end method

.method setup(DDDD)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput-wide p1, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->x1:D

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput-wide p3, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->y1:D

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
    return-void

    nop

    nop

    nop

    :goto_3
    iput-wide p5, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->x2:D

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    iput-wide p7, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->y2:D

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method
