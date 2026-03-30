.class public final Liny;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:[B

.field public final b:[B

.field public final c:[B

.field private final d:J

.field private final e:J


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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop
.end method

.method public constructor <init>(JJ[B[B[B)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p6, p0, Liny;->b:[B

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput-object p7, p0, Liny;->c:[B

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p5, p0, Liny;->a:[B

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iput-wide p1, p0, Liny;->d:J

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    iput-wide p3, p0, Liny;->e:J

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    goto/32 :goto_2b

    nop

    nop

    :goto_0
    if-eqz v1, :cond_0

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_0
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-wide v3, p0, Liny;->e:J

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    :goto_5
    iget-object v4, p1, Liny;->b:[B

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    const v1, 0x6

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

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

    :goto_9
    goto/16 :goto_1e

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-wide v5, p1, Liny;->e:J

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

    nop

    :goto_c
    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    iget-wide v5, p1, Liny;->d:J

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

    :goto_e
    if-nez p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    :cond_2
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v1, :cond_3

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    return v2

    nop

    :goto_11
    goto/32 :goto_3

    nop

    nop

    :goto_12
    if-nez v3, :cond_4

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2f

    nop

    nop

    :goto_13
    iget-object v1, p0, Liny;->b:[B

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

    :goto_14
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_5

    nop

    nop

    :goto_18
    if-nez v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_19
    cmp-long v1, v3, v5

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p1, p1, Liny;->c:[B

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1b
    iget-object v4, p1, Liny;->a:[B

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-eq p1, p0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v4, p1, Liny;->a:[B

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1f
    return v0

    nop

    :goto_20
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_21
    instance-of v3, p1, Liny;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p0, p0, Liny;->c:[B

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_23
    if-nez v3, :cond_7

    nop

    goto/32 :goto_a

    nop

    :cond_7
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    check-cast p1, Liny;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_25
    iget-wide v3, p0, Liny;->d:J

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_26
    cmp-long v1, v3, v5

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_27
    instance-of v1, p1, Liny;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_28
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_29
    return v0

    nop

    :goto_2a
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2b
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2c
    if-nez v1, :cond_8

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_2e
    if-lez v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_30

    nop

    :goto_2f
    iget-object v4, p1, Liny;->b:[B

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_30
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v1, p0, Liny;->a:[B

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop
.end method

.method public final hashCode()I
    .locals 7

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

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

    :goto_3
    xor-long/2addr v2, v5

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4
    iget-wide v0, p0, Liny;->e:J

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_5
    const v0, 0x7

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_6
    xor-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    xor-int/2addr v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Liny;->c:[B

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

    :goto_9
    xor-int/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v1, p0, Liny;->b:[B

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    xor-int/2addr v2, v4

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

    :goto_c
    long-to-int v2, v2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    :goto_e
    iget-object v3, p0, Liny;->a:[B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_f
    ushr-long v5, v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_11
    long-to-int v0, v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_12
    mul-int/2addr v2, v4

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_13
    xor-long/2addr v0, v4

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_14
    return p0

    nop

    nop

    :goto_15
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_16
    ushr-long v4, v0, v4

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_17
    mul-int/2addr v0, v4

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_18
    const/16 v4, 0x20

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_19
    mul-int/2addr v0, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_4

    nop

    nop

    :goto_1c
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v4, 0xf4243

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1f
    mul-int/2addr v0, v4

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_21
    xor-int/2addr p0, v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_22
    iget-wide v2, p0, Liny;->d:J

    nop

    goto/32 :goto_18

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_0
    const-string p0, " AWB"

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Liny;->c:[B

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

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

    :goto_6
    const-wide/16 v3, 0x0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-gtz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string v1, " AEC"

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

    :goto_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_b
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_c
    iget-wide v1, p0, Liny;->e:J

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    :goto_10
    const-string v1, "Camera3ADebugMetadata{"

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    const-string p0, "}"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_12
    iget-object v1, p0, Liny;->b:[B

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v1, :cond_3

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

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_15
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_16
    cmp-long v1, v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_17
    iget-wide v1, p0, Liny;->e:J

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_2

    nop

    :goto_19
    goto/32 :goto_1e

    nop

    nop

    :goto_1a
    iget-wide v1, p0, Liny;->d:J

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1c
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-string v1, " "

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_21
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_4
    goto/32 :goto_18

    nop

    :goto_23
    const v1, 0xe

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    sget-object v1, Lcom/google/android/apps/camera/jni/microvideotonemap/EeD/yHEIcF;->zDOgrzM:Ljava/lang/String;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_28
    iget-object v1, p0, Liny;->a:[B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2a
    const v0, 0x9

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop
.end method
