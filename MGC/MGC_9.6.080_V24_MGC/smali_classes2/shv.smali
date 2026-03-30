.class public final Lshv;
.super Lshk;
.source "PG"


# instance fields
.field private b:J

.field private c:J

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    iput-wide v0, p0, Lshv;->b:J

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

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

    :goto_2
    invoke-direct {p0}, Lshk;-><init>()V

    goto/32 :goto_b

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

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x0

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    iput v0, p0, Lshv;->d:I

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

    :goto_a
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    const-wide/16 v0, 0x0

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

    :goto_c
    iput-wide v0, p0, Lshv;->c:J

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    const v1, 0xb

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

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop
.end method

.method private static j(J)J
    .locals 3

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-wide v1, -0xae502812aa7333L

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    ushr-long v1, p0, v0

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

    :goto_4
    const-wide v1, -0x3b314601e57a13adL    # -2.902039044684214E23

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

    :goto_5
    ushr-long v0, p0, v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_6
    return-wide p0

    nop

    :goto_7
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_8
    mul-long/2addr p0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    xor-long/2addr p0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    xor-long/2addr p0, v1

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

    :goto_b
    xor-long/2addr p0, v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    :goto_d
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_e
    mul-long/2addr p0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_f
    const v1, 0x14

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_c

    nop

    :goto_11
    ushr-long v1, p0, v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_13
    goto/32 :goto_d

    nop

    :goto_14
    const/16 v0, 0x21

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method private static k(J)J
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    const-wide v0, 0x4cf5ad432745937fL    # 5.573325460219186E62

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1, v0}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x12

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_4
    const v1, 0x14

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    mul-long/2addr p0, v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    return-wide p0

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    mul-long/2addr p0, v0

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

    :goto_a
    add-int v0, v0, v1

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

    :goto_b
    const/16 v0, 0x1f

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_d

    nop

    :goto_f
    const-wide v0, -0x783c846eeebdac2bL

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method private static l(J)J
    .locals 2

    goto/32 :goto_7

    nop

    nop

    :goto_0
    mul-long/2addr p0, v0

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

    :goto_1
    goto/32 :goto_9

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_3
    return-wide p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

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

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/16 v0, 0x21

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    const v0, 0x18

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    invoke-static {p0, p1, v0}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide p0

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

    :goto_c
    mul-long/2addr p0, v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0xf

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

    :goto_e
    const-wide v0, -0x783c846eeebdac2bL

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    const-wide v0, 0x4cf5ad432745937fL    # 5.573325460219186E62

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final c()Lshn;
    .locals 6

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x1e

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

    :goto_1
    xor-long/2addr v2, v4

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2
    iget v2, p0, Lshv;->d:I

    nop

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

    nop

    :goto_3
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_4
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_5
    iget-wide v1, p0, Lshv;->b:J

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x2

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

    :goto_7
    add-long/2addr v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-wide v4, p0, Lshv;->c:J

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    iput-wide v0, p0, Lshv;->b:J

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

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

    nop

    :goto_b
    add-long/2addr v0, v2

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

    :goto_c
    add-long/2addr v2, v0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    new-array v0, v0, [B

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-object v0

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v0, Lshl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v2, v3}, Lshv;->j(J)J

    move-result-wide v2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_e

    nop

    nop

    :goto_17
    sget v0, Lshn;->b:I

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_18
    xor-long/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_1b
    const/16 v0, 0x10

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

    :goto_1c
    int-to-long v2, v2

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1d
    iput-wide v2, p0, Lshv;->c:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1e
    iget-wide v1, p0, Lshv;->c:J

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1f
    invoke-static {v0, v1}, Lshv;->j(J)J

    move-result-wide v0

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

    :goto_20
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput-wide v0, p0, Lshv;->b:J

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_23
    iput-wide v0, p0, Lshv;->b:J

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

    :goto_24
    invoke-direct {v0, p0}, Lshl;-><init>([B)V

    goto/32 :goto_12

    nop

    nop

    :goto_25
    iget-wide v0, p0, Lshv;->b:J

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_26
    iput-wide v2, p0, Lshv;->c:J

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_27
    add-long/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop
.end method

.method protected final h(Ljava/nio/ByteBuffer;)V
    .locals 10

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v2, v3}, Lshv;->l(J)J

    move-result-wide v0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    iput-wide v0, p0, Lshv;->c:J

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_5
    const/16 p1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-wide v2, p0, Lshv;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_7
    invoke-static {v0, v1}, Lshv;->k(J)J

    move-result-wide v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    :goto_a
    add-long/2addr v0, v8

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

    :goto_b
    rem-int v0, v0, v1

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

    :goto_c
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_e
    iput-wide v0, p0, Lshv;->b:J

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

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

    :goto_10
    iget-wide v4, p0, Lshv;->c:J

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    xor-long/2addr v0, v4

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-wide v4, p0, Lshv;->b:J

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-wide/32 v8, 0x52dce729

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-long/2addr v0, v2

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_15
    const/16 p1, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_16
    iget p1, p0, Lshv;->d:I

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v0, v1, p1}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_18
    iput-wide v0, p0, Lshv;->c:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_19
    invoke-static {v0, v1, p1}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1a
    xor-long/2addr v0, v4

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1b
    iput-wide v0, p0, Lshv;->b:J

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-long/2addr v0, v4

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput p1, p0, Lshv;->d:I

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_20
    mul-long/2addr v0, v6

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

    nop

    nop

    :goto_21
    const v0, 0x10

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    mul-long/2addr v0, v6

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_23
    add-int/lit8 p1, p1, 0x10

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

    :goto_24
    const-wide/32 v2, 0x38495ab5

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_25
    add-long/2addr v0, v2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const-wide/16 v6, 0x5

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

    nop
.end method

.method protected final i(Ljava/nio/ByteBuffer;)V
    .locals 13

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_0
    xor-long/2addr v0, v2

    nop

    :goto_1
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_2
    int-to-long v9, v5

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Lsgj;->aa(B)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    xor-long/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_5
    int-to-long v2, v2

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

    :goto_6
    const/16 v0, 0xe

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_8
    const/16 v4, 0x10

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_9
    xor-long/2addr v0, v2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/16 v0, 0xd

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_b
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p1}, Lsgj;->aa(B)I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_d
    invoke-static {v0, v1}, Lshv;->k(J)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_e
    shl-long/2addr v0, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_f
    shl-long v0, v9, v1

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_10
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    int-to-long v11, v0

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_12
    shl-long/2addr v0, v3

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_13
    int-to-long v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_14
    xor-long/2addr v7, v0

    nop

    :pswitch_0
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_15
    new-instance p0, Ljava/lang/AssertionError;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/16 v0, 0x9

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_17
    xor-long/2addr v7, v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_56

    nop

    nop

    :goto_18
    const/16 v1, 0x28

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto :goto_23

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v0}, Lsgj;->aa(B)I

    move-result v0

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_1e
    const-string p1, "Should never get here."

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    shl-long/2addr v9, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    int-to-long v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_1

    nop

    :pswitch_3
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_22
    move-wide v0, v7

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    throw p0

    nop

    :pswitch_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_39

    nop

    :pswitch_5
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_27
    invoke-static {v0}, Lsgj;->aa(B)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/16 v5, 0x30

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    xor-long/2addr v0, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_2b
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    shl-long/2addr v2, v6

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_2f
    const v1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_30
    invoke-static {v5}, Lsgj;->aa(B)I

    move-result v5

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_31
    int-to-long v9, v2

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_32
    add-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_33
    shl-long/2addr v7, v5

    nop

    :pswitch_6
    goto/32 :goto_a

    nop

    nop

    :goto_34
    xor-long/2addr v0, v2

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

    :goto_35
    int-to-long v9, v0

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

    :goto_36
    move-wide v9, v7

    nop

    nop

    :goto_37
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_38
    move-wide v0, v7

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget v0, p0, Lshv;->d:I

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_3c
    xor-long/2addr v7, v0

    nop

    nop

    :pswitch_7
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_3e
    int-to-long v2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const/4 v2, 0x3

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const v0, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_41
    xor-long/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-wide v2, p0, Lshv;->b:J

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_43
    shl-long v2, v9, v3

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/16 :goto_37

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_36

    nop

    nop

    :goto_45
    invoke-static {v2}, Lsgj;->aa(B)I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_46
    shl-long/2addr v2, v4

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

    :goto_47
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_e
        :pswitch_2
        :pswitch_d
        :pswitch_c
        :pswitch_8
        :pswitch_3
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_1
        :pswitch_0
        :pswitch_b
        :pswitch_6
        :pswitch_4
    .end packed-switch

    :goto_48
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_49
    xor-long/2addr v7, v0

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_4a
    move-wide v0, v7

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_4c
    xor-long/2addr v7, v0

    nop

    :pswitch_a
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget-wide v0, p0, Lshv;->c:J

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_4f
    const-wide/16 v7, 0x0

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_50
    shl-long/2addr v0, v6

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_51
    invoke-static {v0}, Lsgj;->aa(B)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_52
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_53
    const/4 v5, 0x4

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-static {v0}, Lsgj;->aa(B)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_55
    const/16 v3, 0x18

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_56
    const/16 v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_57
    invoke-static {v0}, Lsgj;->aa(B)I

    move-result v0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_58
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6a

    nop

    :goto_59
    int-to-long v2, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5a
    int-to-long v0, v0

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-static {v0}, Lsgj;->aa(B)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_5c
    invoke-static {v0}, Lsgj;->aa(B)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_5d
    invoke-static {v0}, Lsgj;->aa(B)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    const/4 v0, 0x5

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_60
    xor-long/2addr v7, v0

    nop

    nop

    :pswitch_b
    goto/32 :goto_85

    nop

    nop

    nop

    :goto_61
    shl-long/2addr v9, v2

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_62
    goto/16 :goto_4b

    nop

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_64
    invoke-static {v2}, Lsgj;->aa(B)I

    move-result v2

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

    :goto_65
    iput-wide v0, p0, Lshv;->c:J

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_67
    int-to-long v0, v0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_68
    xor-long/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_69
    const/16 v6, 0x8

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_6a
    goto/32 :goto_48

    nop

    :goto_6b
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    move-wide v0, v7

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    goto/32 :goto_66

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_6f
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_70
    xor-long/2addr v0, v9

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_71
    int-to-long v0, v0

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_72
    goto :goto_75

    nop

    nop

    :pswitch_d
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_74
    move-wide v0, v7

    nop

    :goto_75
    goto/32 :goto_3f

    nop

    nop

    :goto_76
    int-to-long v9, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_77
    int-to-long v7, v0

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_78
    iput v0, p0, Lshv;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_79
    invoke-static {v7, v8}, Lshv;->l(J)J

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_7b
    goto/16 :goto_6d

    nop

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    shl-long v0, v11, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_7d
    iput-wide v0, p0, Lshv;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_7e
    invoke-static {v2}, Lsgj;->aa(B)I

    move-result v2

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_7f
    const/4 v0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_80
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    const/16 v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_82
    const/16 v2, 0x20

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_83
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

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

    :goto_84
    shl-long/2addr v0, v2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_85
    const/16 v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop
.end method
