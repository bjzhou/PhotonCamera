.class public final Lhkp;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0, v0}, Lhkp;-><init>([B)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public constructor <init>(FFF)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    iput p2, p0, Lhkp;->b:F

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p3, p0, Lhkp;->c:F

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iput p1, p0, Lhkp;->a:F

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
    return-void

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public synthetic constructor <init>([B)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p1, p1}, Lhkp;-><init>(FFF)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/high16 p1, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

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

    :goto_3
    instance-of v1, p1, Lhkp;

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

    :goto_4
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_5
    iget v3, p1, Lhkp;->b:F

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz v1, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return v2

    nop

    :goto_8
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_a
    return v0

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    :goto_d
    return v2

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_20

    nop

    nop

    :goto_f
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

    :goto_10
    const/4 v0, 0x1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v1, p0, Lhkp;->a:F

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_23

    nop

    nop

    :goto_14
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

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

    :goto_16
    if-nez v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    :goto_17
    if-nez p0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_19
    const v1, 0x12

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v2, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1b
    return v2

    nop

    nop

    :goto_1c
    goto/32 :goto_1e

    nop

    nop

    :goto_1d
    if-eq p0, p1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget v1, p0, Lhkp;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1f
    iget v3, p1, Lhkp;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_20
    iget p0, p0, Lhkp;->c:F

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_21
    iget p1, p1, Lhkp;->c:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_22
    return v0

    nop

    :goto_23
    goto/32 :goto_4

    nop

    nop

    :goto_24
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

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

    :goto_25
    check-cast p1, Lhkp;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_4
    return v0

    nop

    :goto_5
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    iget v1, p0, Lhkp;->b:F

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    add-int/2addr v0, p0

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

    nop

    :goto_8
    iget p0, p0, Lhkp;->c:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_a
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

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

    :goto_c
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    nop

    nop

    goto/32 :goto_b

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

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    add-int/2addr v0, v1

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
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

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

    :goto_10
    goto/32 :goto_12

    nop

    :goto_11
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_13
    iget v0, p0, Lhkp;->a:F

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
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    iget v1, p0, Lhkp;->a:F

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

    :goto_3
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string v1, ", maxZoom="

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    const-string v1, "ZoomLimit(minZoom="

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_c
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x1d

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

    :goto_f
    const-string v1, ", normalizationFactor="

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_10
    iget v1, p0, Lhkp;->b:F

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    :goto_12
    const v0, 0x10

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_13
    const-string p0, ")"

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

    :goto_14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    :goto_15
    iget p0, p0, Lhkp;->c:F

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_4

    nop

    :goto_18
    return-object p0

    nop

    nop

    :goto_19
    goto/32 :goto_17

    nop

    nop
.end method
