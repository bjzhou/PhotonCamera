.class public final Lgoj;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:J

.field public final d:I

.field public final e:I

.field public final f:F


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

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

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(ZZJIIF)V
    .locals 0

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    iput p5, p0, Lgoj;->d:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput-wide p3, p0, Lgoj;->c:J

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput p6, p0, Lgoj;->e:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean p1, p0, Lgoj;->a:Z

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

    :goto_4
    iput p7, p0, Lgoj;->f:F

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    iput-boolean p2, p0, Lgoj;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    goto/32 :goto_20

    nop

    nop

    :goto_0
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1
    iget v1, p0, Lgoj;->d:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iget v3, p1, Lgoj;->d:I

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

    nop

    :goto_3
    if-eq p1, p0, :cond_0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_5
    iget v1, p0, Lgoj;->e:I

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

    :goto_6
    iget-boolean v1, p0, Lgoj;->b:Z

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eq v1, v3, :cond_1

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

    :cond_1
    goto/32 :goto_25

    nop

    nop

    :goto_8
    if-nez v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-wide v5, p1, Lgoj;->c:J

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return v0

    nop

    nop

    :goto_b
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_c
    iget-boolean v3, p1, Lgoj;->b:Z

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

    :goto_d
    iget-boolean v1, p0, Lgoj;->a:Z

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

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_f
    iget p1, p1, Lgoj;->f:F

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_11
    iget v3, p1, Lgoj;->e:I

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    instance-of v1, p1, Lgoj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_13
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

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

    :goto_14
    return v2

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-eq v1, v3, :cond_3

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-boolean v3, p1, Lgoj;->a:Z

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_15

    nop

    nop

    :goto_19
    goto/32 :goto_1c

    nop

    nop

    :goto_1a
    if-eq v1, v3, :cond_4

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_4
    goto/32 :goto_6

    nop

    nop

    :goto_1b
    check-cast p1, Lgoj;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1d
    const/4 v2, 0x0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1f
    if-eq v1, v3, :cond_5

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0x17

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

    :goto_21
    if-lez v0, :cond_6

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

    :cond_6
    goto/32 :goto_18

    nop

    :goto_22
    if-eqz v1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_23
    iget p0, p0, Lgoj;->f:F

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_24
    cmp-long v1, v3, v5

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-wide v3, p0, Lgoj;->c:J

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_26
    if-eq p0, p1, :cond_8

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

    :cond_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_27
    return v0

    nop

    nop

    :goto_28
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 7

    goto/32 :goto_2

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_1
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_2
    const v0, 0xc

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-ne v3, v4, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/16 v5, 0x20

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

    :goto_5
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v1, p0, Lgoj;->e:I

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move v0, v2

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    const v2, 0xf4243

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    mul-int/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_b
    xor-int/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-boolean v4, p0, Lgoj;->b:Z

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_1d

    nop

    :goto_e
    xor-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_f
    long-to-int v1, v3

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

    :goto_10
    xor-int/2addr p0, v0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_24

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_23

    nop

    nop

    :goto_13
    iget v1, p0, Lgoj;->d:I

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_14
    mul-int/2addr v0, v2

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_15
    xor-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

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

    :goto_17
    mul-int/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_18
    xor-int/2addr v0, v1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_19
    return p0

    nop

    nop

    :goto_1a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1b
    mul-int/2addr v0, v2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1c
    const/16 v1, 0x4d5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_1d
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1f
    ushr-long v5, v3, v5

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_20
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_21
    xor-long/2addr v3, v5

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_22
    move v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    move v1, v2

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_7

    nop

    nop

    :goto_27
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_28
    xor-int/2addr v0, v1

    nop

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

    :goto_29
    if-ne v3, v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_26

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

    :goto_2a
    const/16 v2, 0x4cf

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_2b
    mul-int/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2c
    iget-boolean v0, p0, Lgoj;->a:Z

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget p0, p0, Lgoj;->f:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2e
    iget-wide v3, p0, Lgoj;->c:J

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean v1, p0, Lgoj;->a:Z

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2
    const-string v1, ", getAudioFrameCount="

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3
    const-string v1, ", getAudioFrameDropCount="

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_4
    const v0, 0x18

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    :goto_7
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    :goto_a
    iget-boolean v1, p0, Lgoj;->b:Z

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    iget p0, p0, Lgoj;->f:F

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

    :goto_c
    const v1, 0x1b

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

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1c

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

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
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v1, ", getAudioMaxFrameDropCount="

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v1, "CocktailPartyStats{isAudioFallback="

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

    :goto_14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

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

    :goto_16
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_19
    const-string p0, "}"

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v1, p0, Lgoj;->e:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget v1, p0, Lgoj;->d:I

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1c
    iget-wide v1, p0, Lgoj;->c:J

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    :goto_21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_22
    const-string v1, ", isMouthCovered="

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const-string v1, ", getNoiseFraction="

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop
.end method
