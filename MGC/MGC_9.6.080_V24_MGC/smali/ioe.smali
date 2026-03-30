.class public final Lioe;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:F

.field public final b:Lj$/util/Optional;

.field public final c:F

.field private final d:F


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

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

    :goto_1
    throw p0

    nop
.end method

.method public constructor <init>(FFLj$/util/Optional;F)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lioe;->b:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iput p1, p0, Lioe;->a:F

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    iput p4, p0, Lioe;->c:F

    nop

    nop

    nop

    goto/32 :goto_5

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

    nop

    nop

    :goto_4
    iput p2, p0, Lioe;->d:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v1, :cond_0

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

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_3
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_20

    nop

    :goto_4
    iget v1, p0, Lioe;->d:F

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v3, p1, Lioe;->b:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_6
    if-eq v1, v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    iget p0, p0, Lioe;->c:F

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eq p0, p1, :cond_3

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    :goto_9
    if-eq p1, p0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_4
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    instance-of v1, p1, Lioe;

    nop

    goto/32 :goto_10

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
    check-cast p1, Lioe;

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

    :goto_d
    return v0

    nop

    nop

    :goto_e
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_f
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_10
    const/4 v2, 0x0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-eq v1, v3, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_5
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_12
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_13
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_14
    iget v3, p1, Lioe;->a:F

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_15
    const v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_16
    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_17
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

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

    :goto_18
    iget-object v1, p0, Lioe;->b:Lj$/util/Optional;

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

    :goto_19
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v1, v3}, Lj$/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget p1, p1, Lioe;->c:F

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1c
    return v2

    nop

    :goto_1d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget v1, p0, Lioe;->a:F

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_20
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_25

    nop

    nop

    :goto_22
    return v0

    nop

    :goto_23
    goto/32 :goto_a

    nop

    nop

    :goto_24
    iget v3, p1, Lioe;->d:F

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

    :goto_25
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop
.end method

.method public final hashCode()I
    .locals 3

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2
    const v1, 0xf4243

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3
    iget v2, p0, Lioe;->d:F

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4
    iget p0, p0, Lioe;->c:F

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_5
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    xor-int/2addr p0, v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    mul-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

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

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    mul-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    iget v0, p0, Lioe;->a:F

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

    :goto_f
    iget-object v2, p0, Lioe;->b:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v2}, Lj$/util/Optional;->hashCode()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_12
    xor-int/2addr v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_14
    xor-int/2addr v0, v2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    mul-int/2addr v0, v1

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

    :goto_16
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

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

    :goto_17
    xor-int/2addr v0, v2

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

    :goto_18
    const v1, 0x1f

    nop

    goto/32 :goto_19

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

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

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

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v3, p0, Lioe;->d:F

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    :goto_9
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    const-string p0, "}"

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

    :goto_c
    const v1, 0x11

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    iget p0, p0, Lioe;->c:F

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    :goto_10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_11
    const v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_12
    iget v2, p0, Lioe;->a:F

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_14
    const-string v2, "{"

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_15
    const-string v2, ", "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_16
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_8

    nop

    :goto_17
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Lioe;->b:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_e

    nop

    nop
.end method
