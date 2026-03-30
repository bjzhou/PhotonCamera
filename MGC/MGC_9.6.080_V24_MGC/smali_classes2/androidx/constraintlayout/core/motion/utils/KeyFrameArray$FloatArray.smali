.class Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;
.super Ljava/lang/Object;
.source "KeyFrameArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/KeyFrameArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FloatArray"
.end annotation


# static fields
.field private static final EMPTY:I = 0x3e7


# instance fields
.field count:I

.field keys:[I

.field values:[[F


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
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

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

    :goto_4
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->clear()V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    new-array v0, v0, [[F

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    const/16 v0, 0x65

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->keys:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_e
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->values:[[F

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x13

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-array v1, v0, [I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public append(I[F)V
    .locals 3

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    aput-object p2, v0, p1

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

    :goto_1
    iput v2, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->count:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

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

    :goto_3
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->values:[[F

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    aget-object v0, v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_5
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->keys:[I

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

    :goto_6
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->remove(I)V

    :goto_7
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_8
    add-int/lit8 v2, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    aput p1, v0, v1

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

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_d
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    goto/32 :goto_a

    nop

    nop

    :goto_e
    const v0, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_10
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->count:I

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->values:[[F

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

    :goto_12
    goto/32 :goto_14

    nop

    nop

    :goto_13
    goto/32 :goto_b

    nop

    :goto_14
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x15

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

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public clear()V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->values:[[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x0

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

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->keys:[I

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

    nop

    :goto_3
    const v0, 0x10

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

    :goto_4
    return-void

    nop

    nop

    :goto_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x19

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

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/16 v1, 0x3e7

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_c

    nop

    :goto_c
    goto/32 :goto_5

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->count:I

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

    :goto_10
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x0

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
.end method

.method public dump()V
    .locals 4

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_25

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->count:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_7
    if-lt v0, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x16

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_b
    const-string v1, "]"

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_c
    const-string v3, ""

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string v2, "V: "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_e
    const v0, 0x6

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

    nop

    :goto_f
    goto/32 :goto_2d

    nop

    nop

    :goto_10
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_14
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

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

    :goto_16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->keys:[I

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1d
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->valueAt(I)[F

    move-result-object v3

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

    :goto_1e
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v3, ", "

    nop

    :goto_20
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_21
    iget v3, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->count:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_22
    add-int v0, v0, v1

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

    :goto_23
    invoke-static {v3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_24
    const/4 v0, 0x0

    nop

    :goto_25
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_26
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_27
    if-eqz v0, :cond_2

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

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_29
    new-instance v1, Ljava/lang/StringBuilder;

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

    :goto_2a
    const-string v1, "K: ["

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2b
    add-int/lit8 v0, v0, 0x1

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

    :goto_2c
    return-void

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

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

    nop

    :goto_2f
    new-instance v2, Ljava/lang/StringBuilder;

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

    :goto_30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

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

.method public keyAt(I)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    aget v0, v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->keys:[I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return v0

    nop

    nop

    nop
.end method

.method public remove(I)V
    .locals 4

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/lit8 v2, v2, -0x1

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

    nop

    :goto_1
    iput v2, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->count:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eq p1, v3, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    :goto_5
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->values:[[F

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_8
    aput v3, v2, v1

    nop

    nop

    :goto_9
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/16 v3, 0x3e7

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

    nop

    :goto_b
    const/4 v1, 0x0

    nop

    nop

    :goto_c
    goto/32 :goto_1c

    nop

    nop

    :goto_d
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    :goto_f
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_10
    goto :goto_c

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    aput-object v1, v0, p1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_14
    aput v3, v2, v1

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

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_16
    if-ne v1, v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    :goto_17
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_19
    aget v3, v2, v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    aget v3, v2, v1

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

    :goto_1b
    add-int/lit8 v1, v1, 0x1

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

    :goto_1c
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->count:I

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

    :goto_1d
    const v0, 0x1

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

    :goto_1e
    if-lt v1, v2, :cond_3

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

    :cond_3
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_21
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->keys:[I

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

    :goto_22
    const v1, 0x1c

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

.method public size()I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->count:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop
.end method

.method public valueAt(I)[F
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_b

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    :goto_2
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    const v1, 0x1b

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

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_5
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->keys:[I

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

    :goto_6
    const v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    aget v1, v1, p1

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

    :goto_9
    rem-int v0, v0, v1

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

    :goto_a
    return-object v0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->values:[[F

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_d
    aget-object v0, v0, v1

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
.end method
