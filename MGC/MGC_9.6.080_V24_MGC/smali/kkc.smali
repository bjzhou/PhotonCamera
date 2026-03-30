.class public final Lkkc;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Linb;

.field public final b:J

.field public final c:J


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Linb;JJ)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    iput-wide p2, p0, Lkkc;->b:J

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
    return-void

    nop

    nop

    nop

    :goto_2
    iput-wide p4, p0, Lkkc;->c:J

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

    :goto_3
    iput-object p1, p0, Lkkc;->a:Linb;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1
    if-eqz p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    :goto_2
    cmp-long v1, v3, v5

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

    :goto_3
    return v0

    nop

    nop

    :goto_4
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_5
    return v0

    nop

    :goto_6
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_7
    iget-wide v3, p0, Lkkc;->c:J

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-wide p0, p1, Lkkc;->c:J

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz v1, :cond_2

    nop

    goto/32 :goto_6

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    :goto_a
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1e

    nop

    :goto_b
    const v0, 0x1c

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_f

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

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_10
    iget-object v1, p0, Lkkc;->a:Linb;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v0, 0x1

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

    :goto_14
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    :goto_15
    instance-of v1, p1, Lkkc;

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

    :goto_16
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_17
    iget-wide v5, p1, Lkkc;->b:J

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_18
    iget-object v3, p1, Lkkc;->a:Linb;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_19
    if-eq p1, p0, :cond_4

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_4
    goto/32 :goto_3

    nop

    nop

    :goto_1a
    cmp-long p0, v3, p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast p1, Lkkc;

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

    :goto_1c
    if-nez v1, :cond_5

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

    :cond_5
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1d
    iget-wide v3, p0, Lkkc;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_13

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 9

    goto/32 :goto_4

    nop

    nop

    :goto_0
    ushr-long v7, v5, v4

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

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_2
    iget-object v0, p0, Lkkc;->a:Linb;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    ushr-long v5, v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4
    const v0, 0x10

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

    :goto_5
    const/16 v4, 0x20

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    const v1, 0xf4243

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_7
    mul-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

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

    :goto_9
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a
    return p0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    xor-int/2addr p0, v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    xor-long/2addr v2, v5

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    :goto_10
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_11
    iget-wide v2, p0, Lkkc;->c:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_12
    xor-long v4, v7, v5

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_13
    mul-int/2addr p0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_14
    iget-wide v5, p0, Lkkc;->b:J

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    xor-int/2addr p0, v0

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

    :goto_17
    xor-int/2addr v0, v1

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

    :goto_18
    long-to-int p0, v4

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_19
    const v1, 0x14

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

    :goto_1a
    long-to-int v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v2, "{"

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2
    const-string v0, ", "

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lkkc;->a:Linb;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_4
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    :goto_9
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    :goto_a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    iget-wide v2, p0, Lkkc;->b:J

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_f
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    const-string p0, "}"

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_19

    nop

    :goto_12
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    iget-wide v2, p0, Lkkc;->c:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x20

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
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_3

    nop

    nop

    nop
.end method
