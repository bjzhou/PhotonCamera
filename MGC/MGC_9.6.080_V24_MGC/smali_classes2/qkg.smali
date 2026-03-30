.class public final Lqkg;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/nio/ByteBuffer;

.field public final b:I

.field public final c:J


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

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

.method public constructor <init>(Ljava/nio/ByteBuffer;IJ)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lqkg;->a:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iput p2, p0, Lqkg;->b:I

    nop

    goto/32 :goto_5

    nop

    nop

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

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    iput-wide p3, p0, Lqkg;->c:J

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x2

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

    :goto_1
    iget-object v1, p0, Lqkg;->a:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v2, 0x0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_3
    cmp-long p0, v3, p0

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

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_6
    if-eq v1, v3, :cond_0

    nop

    nop

    goto/32 :goto_1d

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

    nop

    :goto_7
    if-eq p1, p0, :cond_1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_8
    iget-wide v3, p0, Lqkg;->c:J

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_a
    iget v1, p0, Lqkg;->b:I

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

    :goto_b
    if-nez v1, :cond_2

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    if-eqz p0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_3
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v3, p1, Lqkg;->a:Ljava/nio/ByteBuffer;

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

    :goto_10
    instance-of v1, p1, Lqkg;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_d

    nop

    :goto_12
    const/4 v0, 0x1

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

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

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

    :goto_14
    iget v3, p1, Lqkg;->b:I

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

    :goto_15
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast p1, Lqkg;

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

    :goto_18
    return v0

    nop

    :goto_19
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-wide p0, p1, Lqkg;->c:J

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

    :goto_1b
    const v0, 0xa

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return v0

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1e
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_17

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 6

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

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

    :goto_1
    iget p0, p0, Lqkg;->b:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    :goto_4
    const v1, 0xf4243

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/16 v4, 0x20

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

    :goto_6
    mul-int/2addr p0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_9
    xor-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_a
    iget-object v0, p0, Lqkg;->a:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_c
    xor-long/2addr v2, v4

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_d
    ushr-long v4, v2, v4

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    mul-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    long-to-int v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_10
    xor-int/2addr p0, v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_11
    xor-int/2addr p0, v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_12
    iget-wide v2, p0, Lqkg;->c:J

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_13
    return p0

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_17

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_17
    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    iget-wide v2, p0, Lqkg;->c:J

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    iget-object v0, p0, Lqkg;->a:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_13

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_d
    add-int v0, v0, v1

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

    :goto_e
    new-instance v1, Ljava/lang/StringBuilder;

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

    nop

    :goto_f
    const-string p0, "}"

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

    :goto_10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_11
    const-string v0, ", "

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    :goto_16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_18
    iget v2, p0, Lqkg;->b:I

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_19
    const-string v2, "{"

    nop

    goto/32 :goto_3

    nop

    nop
.end method
