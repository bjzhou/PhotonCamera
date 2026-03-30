.class public Landroidx/constraintlayout/core/parser/CLNumber;
.super Landroidx/constraintlayout/core/parser/CLElement;
.source "CLNumber.java"


# instance fields
.field value:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Landroidx/constraintlayout/core/parser/CLNumber;->value:F

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Landroidx/constraintlayout/core/parser/CLNumber;->value:F

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

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
    const/high16 v0, 0x7fc00000    # Float.NaN

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

    :goto_5
    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/parser/CLElement;-><init>([C)V

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public constructor <init>([C)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iput v0, p0, Landroidx/constraintlayout/core/parser/CLNumber;->value:F

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

    :goto_1
    const/high16 v0, 0x7fc00000    # Float.NaN

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/parser/CLElement;-><init>([C)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static allocate([C)Landroidx/constraintlayout/core/parser/CLElement;
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
    new-instance v0, Landroidx/constraintlayout/core/parser/CLNumber;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/parser/CLNumber;-><init>([C)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public getFloat()F
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/core/parser/CLNumber;->value:F

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

    :goto_2
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

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
    iget v0, p0, Landroidx/constraintlayout/core/parser/CLNumber;->value:F

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    iput v0, p0, Landroidx/constraintlayout/core/parser/CLNumber;->value:F

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    :goto_7
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLNumber;->content()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public getInt()I
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

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

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/core/parser/CLNumber;->value:F

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

    :goto_2
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLNumber;->content()Ljava/lang/String;

    move-result-object v0

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

    :goto_4
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput v0, p0, Landroidx/constraintlayout/core/parser/CLNumber;->value:F

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v0, p0, Landroidx/constraintlayout/core/parser/CLNumber;->value:F

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    float-to-int v0, v0

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
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public isInt()Z
    .locals 3

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    cmpl-float v2, v2, v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLNumber;->getFloat()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    int-to-float v2, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5
    float-to-int v1, v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

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

    :goto_7
    return v2

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    :goto_c
    goto :goto_11

    nop

    :goto_d
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_e
    const v0, 0x11

    nop

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

    nop

    :goto_f
    const v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_10
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_7

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

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_13
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public putValue(F)V
    .locals 0

    goto/32 :goto_1

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
    iput p1, p0, Landroidx/constraintlayout/core/parser/CLNumber;->value:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method protected toFormattedJSON(II)Ljava/lang/String;
    .locals 4

    goto/32 :goto_1

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

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0, p1}, Landroidx/constraintlayout/core/parser/CLNumber;->addIndent(Ljava/lang/StringBuilder;I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    float-to-int v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLNumber;->getFloat()F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x5

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

    :goto_8
    if-eqz v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

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

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :goto_c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_e
    goto :goto_c

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_11
    cmpl-float v3, v3, v1

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

    :goto_12
    int-to-float v3, v2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_14
    return-object v3

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_15

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

    nop

    nop
.end method

.method protected toJSON()Ljava/lang/String;
    .locals 4

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_0
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    const v1, 0x14

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    int-to-float v2, v1

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_4
    const-string v3, ""

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

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

    :goto_7
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_a

    nop

    :goto_8
    if-eqz v2, :cond_1

    nop

    goto/32 :goto_14

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_17

    nop

    :goto_b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

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

    :goto_d
    rem-int v0, v0, v1

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

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v2, Ljava/lang/StringBuilder;

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

    :goto_10
    new-instance v2, Ljava/lang/StringBuilder;

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
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLNumber;->getFloat()F

    move-result v0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-object v2

    nop

    :goto_14
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-object v2

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_18
    cmpl-float v2, v2, v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_19
    float-to-int v1, v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    goto/32 :goto_c

    nop

    nop
.end method
