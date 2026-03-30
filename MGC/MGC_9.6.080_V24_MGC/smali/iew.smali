.class public final Liew;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:D

.field public final b:D

.field public final c:F


# direct methods
.method public constructor <init>(DDF)V
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

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-wide p3, p0, Liew;->b:D

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iput-wide p1, p0, Liew;->a:D

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    iput p5, p0, Liew;->c:F

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    iget-wide v5, p1, Liew;->b:D

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    :goto_3
    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-wide v3, p0, Liew;->a:D

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_5
    return v2

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    :goto_7
    if-eqz v1, :cond_3

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    instance-of v1, p1, Liew;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_a
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return v2

    nop

    :goto_c
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x15

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_f
    iget p0, p0, Liew;->c:F

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0xc

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-wide v3, p0, Liew;->b:D

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return v0

    nop

    nop

    :goto_14
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_15
    check-cast p1, Liew;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_16
    return v0

    nop

    nop

    :goto_17
    goto/32 :goto_9

    nop

    nop

    :goto_18
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

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

    :goto_19
    return v2

    nop

    :goto_1a
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1b
    iget p1, p1, Liew;->c:F

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_14

    nop

    :goto_1e
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_4
    goto/32 :goto_5

    nop

    nop

    :goto_21
    if-eq p0, p1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_16

    nop

    nop

    :goto_22
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-wide v5, p1, Liew;->a:D

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    const v1, 0x3

    nop

    goto/32 :goto_7

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

    :goto_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_4
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-wide v1, p0, Liew;->b:D

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_9
    mul-int/lit8 v0, v0, 0x1f

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget p0, p0, Liew;->c:F

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0xf

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    iget-wide v0, p0, Liew;->a:D

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    mul-int/lit8 v0, v0, 0x1f

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

    :goto_f
    invoke-static {v0, v1}, Lhhg;->Q(D)I

    move-result v0

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

    nop

    :goto_10
    add-int/2addr v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_11
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v1, v2}, Lhhg;->Q(D)I

    move-result v1

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
    add-int/2addr v0, v1

    nop

    goto/32 :goto_a

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x4

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
    iget-wide v1, p0, Liew;->a:D

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

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_3
    iget p0, p0, Liew;->c:F

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_b
    const-string v1, ", y="

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-wide v1, p0, Liew;->b:D

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string v1, "BallPositionAndSize(x="

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    nop

    :goto_15
    const-string v1, ", completion="

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_16
    goto/32 :goto_13

    nop

    :goto_17
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const-string p0, ")"

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_14

    nop

    nop
.end method
