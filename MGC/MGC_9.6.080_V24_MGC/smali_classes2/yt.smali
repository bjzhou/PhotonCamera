.class public final Lyt;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:F

.field public final b:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iput p1, p0, Lyt;->a:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Lyt;->b:F

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

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1c

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
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_3
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return v2

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p1, Lyt;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_a
    if-eqz v1, :cond_2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    iget p0, p0, Lyt;->b:F

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_e

    nop

    :goto_d
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_f
    if-eq p0, p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_3
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_10
    iget p1, p1, Lyt;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_11
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_4
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v1, p0, Lyt;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_13
    iget v3, p1, Lyt;->a:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_14
    return v2

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_16
    return v0

    nop

    :goto_17
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_18
    return v0

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return v2

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1c
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1d
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1e
    instance-of v1, p1, Lyt;

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

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    iget p0, p0, Lyt;->b:F

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    iget v0, p0, Lyt;->a:F

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    add-int/2addr v0, p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v1, p0, Lyt;->a:F

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v1, ", velocityCoefficient="

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

    :goto_3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    const/16 p0, 0x29

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

    :goto_6
    const-string v1, "FlingResult(distanceCoefficient="

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

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

    :goto_a
    const v0, 0xf

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_b
    return-object p0

    nop

    :goto_c
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    :goto_11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_e

    nop

    :goto_14
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_15
    iget p0, p0, Lyt;->b:F

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method
