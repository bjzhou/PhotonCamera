.class Landroidx/constraintlayout/core/motion/utils/CurveFit$Constant;
.super Landroidx/constraintlayout/core/motion/utils/CurveFit;
.source "CurveFit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/CurveFit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Constant"
.end annotation


# instance fields
.field mTime:D

.field mValue:[D


# direct methods
.method constructor <init>(D[D)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Landroidx/constraintlayout/core/motion/utils/CurveFit$Constant;->mValue:[D

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

    :goto_1
    iput-wide p1, p0, Landroidx/constraintlayout/core/motion/utils/CurveFit$Constant;->mTime:D

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public getPos(DI)D
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
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

    :goto_3
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

    :goto_4
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/CurveFit$Constant;->mValue:[D

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    aget-wide v0, v0, p3

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    goto/32 :goto_1

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x20

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public getPos(D[D)V
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    const/4 v2, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    :goto_5
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/CurveFit$Constant;->mValue:[D

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
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

    nop

    nop

    :goto_7
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_a
    return-void

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v0, v2, p3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    array-length v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public getPos(D[F)V
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/CurveFit$Constant;->mValue:[D

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    double-to-float v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3
    if-lt v0, v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_11

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    array-length v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_d
    aget-wide v1, v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_f
    add-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_13
    aput v1, p3, v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x7

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method public getSlope(DI)D
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

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

    :goto_5
    const v1, 0x1f

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

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_7
    return-wide v0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    :goto_9
    const v0, 0x13

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

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public getSlope(D[D)V
    .locals 3

    goto/32 :goto_3

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

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_1
    if-lt v0, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    :goto_2
    aput-wide v1, p3, v0

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

    :goto_3
    const v0, 0x13

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

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

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

    :goto_a
    const v1, 0xb

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

    :goto_b
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/CurveFit$Constant;->mValue:[D

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

    :goto_c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_12
    const-wide/16 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_13
    array-length v1, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public getTimePoints()[D
    .locals 4

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_d

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

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x16

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    aput-wide v1, v0, v3

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

    :goto_5
    return-object v0

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-array v0, v0, [D

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    const/4 v3, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-wide v1, p0, Landroidx/constraintlayout/core/motion/utils/CurveFit$Constant;->mTime:D

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

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    const v0, 0x1c

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    :goto_d
    goto/32 :goto_e

    nop

    nop

    :goto_e
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method
