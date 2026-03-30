.class public final Lhqy;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Z

.field public final b:J

.field public final c:Llxo;


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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop
.end method

.method public constructor <init>(ZJLlxo;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Lhqy;->a:Z

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p4, p0, Lhqy;->c:Llxo;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

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

    :goto_4
    iput-wide p2, p0, Lhqy;->b:J

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_1b

    nop

    :goto_1
    check-cast p1, Lhqy;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    iget-boolean v1, p0, Lhqy;->a:Z

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

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

    :cond_0
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_5
    iget-wide v3, p0, Lhqy;->b:J

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    cmp-long v1, v3, v5

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_8
    if-nez v1, :cond_1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-boolean v3, p1, Lhqy;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1}, Llxo;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    return v2

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    :goto_d
    iget-object p1, p1, Lhqy;->c:Llxo;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lhqy;->c:Llxo;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x4

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    if-eq p1, p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    :goto_11
    return v0

    nop

    nop

    :goto_12
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-wide v5, p1, Lhqy;->b:J

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_14
    instance-of v1, p1, Lhqy;

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

    :goto_15
    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_e

    nop

    nop

    :goto_16
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_17
    if-eq v1, v3, :cond_4

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v0, 0x1

    nop

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

    :goto_19
    if-lez v0, :cond_5

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1a

    nop

    :goto_1a
    goto/32 :goto_c

    nop

    nop

    :goto_1b
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

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

    :goto_1d
    return v0

    nop

    nop

    :goto_1e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 7

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lhqy;->c:Llxo;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1
    mul-int/2addr p0, v0

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

    :goto_2
    xor-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5
    const/16 v0, 0x4cf

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Llxo;->hashCode()I

    move-result p0

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

    :goto_8
    xor-int/2addr p0, v2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x1a

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_a
    ushr-long v5, v3, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_c
    const v1, 0xf4243

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    const v0, -0x2aff6277

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    long-to-int v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_f
    iget-wide v3, p0, Lhqy;->b:J

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
    iget-boolean v1, p0, Lhqy;->a:Z

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

    nop

    nop

    :goto_11
    goto/32 :goto_14

    nop

    nop

    :goto_12
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_13
    return p0

    nop

    :goto_14
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_15
    xor-int/2addr p0, v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x20

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_17
    move v0, v2

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_18
    const/16 v2, 0x4d5

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_19
    xor-long/2addr v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1a
    xor-int/2addr v0, v3

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    mul-int/2addr v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
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

    :goto_1f
    if-ne v0, v1, :cond_1

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_20
    mul-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_21
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_22
    const/16 v1, 0x20

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

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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
    return-object p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lhqy;->c:Llxo;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_6
    const-string v2, "{"

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    const v1, 0x16

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    :goto_c
    iget-wide v3, p0, Lhqy;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_d
    const-string v2, ", "

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

    :goto_e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_c

    nop

    nop

    :goto_f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_7

    nop

    :goto_11
    const-string p0, ", null, false}"

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

    :goto_12
    iget-boolean v2, p0, Lhqy;->a:Z

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

    :goto_13
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_17

    nop

    nop

    :goto_17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    :goto_19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method
