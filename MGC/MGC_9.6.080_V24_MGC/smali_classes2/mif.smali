.class public final Lmif;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:D

.field public final d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public constructor <init>(IIDI)V
    .locals 0

    goto/32 :goto_1

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p5, p0, Lmif;->d:I

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
    iput-wide p3, p0, Lmif;->c:D

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

    :goto_4
    iput p1, p0, Lmif;->a:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput p2, p0, Lmif;->b:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    goto/32 :goto_4

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_1
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iget v1, p0, Lmif;->a:I

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_4
    const v0, 0x18

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    if-eq v1, v3, :cond_2

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return v2

    nop

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_a
    instance-of v1, p1, Lmif;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_b
    const v1, 0x1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_c
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_d
    const/4 v2, 0x0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-wide v3, p0, Lmif;->c:D

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_f
    cmp-long v1, v3, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_11
    iget p0, p0, Lmif;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_12
    if-eq v1, v3, :cond_4

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_14
    iget v3, p1, Lmif;->a:I

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget v3, p1, Lmif;->b:I

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

    :goto_16
    const/4 v0, 0x1

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

    :goto_17
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_16

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget p1, p1, Lmif;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1b
    return v0

    nop

    nop

    :goto_1c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    throw p0

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-eq p1, p0, :cond_5

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-wide v5, p1, Lmif;->c:D

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

    :goto_21
    return v0

    nop

    nop

    :goto_22
    goto/32 :goto_a

    nop

    nop

    :goto_23
    if-eq p0, p1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_24
    check-cast p1, Lmif;

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

    :goto_25
    iget v1, p0, Lmif;->b:I

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_26
    if-nez p0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_7
    goto/32 :goto_23

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 5

    goto/32 :goto_14

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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget v2, p0, Lmif;->d:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-wide v2, p0, Lmif;->c:D

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_6
    xor-int/2addr p0, v0

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

    :goto_7
    goto/32 :goto_1b

    nop

    nop

    :goto_8
    const/16 v2, 0x20

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v2}, La;->ac(I)V

    goto/32 :goto_10

    nop

    nop

    :goto_a
    mul-int/2addr v3, v4

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_b
    xor-int/2addr p0, v3

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

    nop

    :goto_c
    mul-int/2addr p0, v4

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_d
    iget-wide v0, p0, Lmif;->c:D

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    ushr-long/2addr v0, v2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    iget v3, p0, Lmif;->a:I

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_11
    mul-int/2addr p0, v4

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_12
    long-to-int v0, v0

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

    :goto_13
    xor-int/2addr v3, v4

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_14
    const v0, 0x1b

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_15
    xor-long/2addr v0, v2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0xa

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

    :goto_17
    iget p0, p0, Lmif;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_18
    const v4, 0xf4243

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_19
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_3

    nop

    :goto_1b
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    :goto_1d
    xor-int/2addr p0, v2

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
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

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

    :goto_1
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_c

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    :goto_5
    const-string v0, "AUDIO_VISUAL"

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string v5, "CocktailPartyConfig{sampleRate="

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    :goto_9
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_a
    iget v0, p0, Lmif;->d:I

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_b
    iget v3, p0, Lmif;->b:I

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x13

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

    :goto_f
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_10
    const-string p0, ", noiseFraction="

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_6

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-string p0, "}"

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-string p0, ", inputType="

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const-string v0, "null"

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_6

    nop

    :goto_1c
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1d
    const-string p0, ", numberOfChannels="

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_20
    const v0, 0xb

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget p0, p0, Lmif;->a:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_22
    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v1, 0x2

    nop

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

    :goto_24
    iget-wide v1, p0, Lmif;->c:D

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

    :goto_25
    const-string v0, "AUDIO_ONLY"

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_29
    if-ne v0, v1, :cond_2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_23

    nop

    nop

    nop
.end method
