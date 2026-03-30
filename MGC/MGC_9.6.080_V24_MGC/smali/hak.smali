.class public final Lhak;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Z

.field public final d:Lj$/util/Optional;

.field public final e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

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
.end method

.method public constructor <init>(IIZLj$/util/Optional;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lhak;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    iput p1, p0, Lhak;->e:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean p3, p0, Lhak;->c:Z

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput p2, p0, Lhak;->b:I

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    const/4 p1, 0x1

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
    return-void

    nop

    nop

    :goto_7
    iput-object p4, p0, Lhak;->d:Lj$/util/Optional;

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
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_1f

    nop

    nop

    :goto_0
    iget v1, p0, Lhak;->b:I

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
    iget v3, p1, Lhak;->a:I

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

    :goto_2
    if-eq v1, v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    nop

    :goto_3
    iget v3, p1, Lhak;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p1, Lhak;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_5
    if-eq v1, v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x1

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

    :goto_7
    invoke-virtual {v1, v3}, Lj$/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_8
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

    nop

    nop

    nop

    :goto_9
    if-eq p1, v0, :cond_2

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_2
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_a
    iget p1, p1, Lhak;->e:I

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x1d

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

    :goto_c
    const/4 v2, 0x0

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

    :goto_d
    const/4 p0, 0x0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

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
    return v0

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_11
    iget p0, p0, Lhak;->e:I

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_12
    iget v1, p0, Lhak;->a:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_13
    if-eq p1, p0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v1, p0, Lhak;->d:Lj$/util/Optional;

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

    nop

    :goto_15
    instance-of v1, p1, Lhak;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    :goto_17
    throw p0

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_19
    if-eq v1, v3, :cond_5

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1a
    iget-object v3, p1, Lhak;->d:Lj$/util/Optional;

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

    :goto_1b
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v1, :cond_6

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

    :cond_6
    goto/32 :goto_11

    nop

    nop

    :goto_1d
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_6

    nop

    nop

    :goto_1f
    const v0, 0x13

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_20
    iget-boolean v1, p0, Lhak;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_21
    return v0

    nop

    :goto_22
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_23
    return v2

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-boolean v3, p1, Lhak;->c:Z

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

    :goto_27
    if-nez p0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 6

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    xor-int/2addr v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    iget v4, p0, Lhak;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    invoke-static {p0}, La;->ac(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4
    mul-int/2addr v0, v5

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_5
    iget-boolean v0, p0, Lhak;->c:Z

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_6
    const v5, 0xf4243

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_7
    const/16 v0, 0x4cf

    nop

    nop

    :goto_8
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    iget p0, p0, Lhak;->e:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    :goto_b
    const/4 v2, 0x1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    mul-int/2addr v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_e
    xor-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    if-ne v2, v0, :cond_1

    nop

    goto/32 :goto_1c

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget v3, p0, Lhak;->b:I

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

    :goto_11
    xor-int/2addr v4, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_12
    mul-int/2addr v0, v5

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    xor-int/2addr v0, v3

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x4

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

    :goto_15
    mul-int/2addr v4, v5

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
    xor-int/lit8 p0, v0, 0x1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/16 v0, 0x4d5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_18
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v1}, Lj$/util/Optional;->hashCode()I

    move-result v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_8

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_7

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

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

    :goto_1e
    iget-object v1, p0, Lhak;->d:Lj$/util/Optional;

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

    :goto_1f
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    goto/32 :goto_14

    nop

    nop

    :goto_3
    const-string v3, ", "

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_4
    iget-object v1, p0, Lhak;->d:Lj$/util/Optional;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string v0, "null"

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_8
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

    :goto_9
    iget v0, p0, Lhak;->e:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    :goto_b
    const v0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_d
    const-string p0, "}"

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_e
    goto/16 :goto_23

    nop

    nop

    :goto_f
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v2, 0x1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_12
    const v1, 0xb

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_18

    nop

    :goto_14
    goto/32 :goto_9

    nop

    nop

    :goto_15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_17
    return-object p0

    nop

    :goto_18
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const-string v3, "{"

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1c
    iget v4, p0, Lhak;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1d
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-ne v0, v2, :cond_1

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_22
    const-string v0, "NONE"

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_24
    iget-boolean p0, p0, Lhak;->c:Z

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget v3, p0, Lhak;->a:I

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop
.end method
