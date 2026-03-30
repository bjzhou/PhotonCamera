.class public final Ldzg;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:J

.field public final d:[B


# direct methods
.method public constructor <init>(IIJ[B)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput-object p5, p0, Ldzg;->d:[B

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Ldzg;->a:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Ldzg;->b:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    iput-wide p3, p0, Ldzg;->c:J

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(II[B)V
    .locals 6

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v0, p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    move-object v5, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

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

    :goto_4
    const v1, 0xa

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    const-wide/16 v3, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    move v1, p1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    move v2, p2

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

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    const v0, 0x3

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

    :goto_f
    invoke-direct/range {v0 .. v5}, Ldzg;-><init>(IIJ[B)V

    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public static b(Ljava/lang/String;)Ldzg;
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    array-length v2, p0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x2

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

    :goto_3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_12

    nop

    nop

    :goto_4
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_5
    invoke-direct {v0, v1, v2, p0}, Ldzg;-><init>(II[B)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object v0, Ldzi;->g:Ljava/nio/charset/Charset;

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

    :goto_7
    const v0, 0xd

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

    :goto_8
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    new-instance v0, Ldzg;

    nop

    nop

    nop

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

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

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

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_13
    const v1, 0x20

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

    :goto_14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public static c(JLjava/nio/ByteOrder;)Ldzg;
    .locals 3

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    aput-wide p0, v1, v2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    new-array p0, p0, [B

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p1, 0x4

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    new-array v1, v0, [J

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_d
    aget-wide v1, v1, v2

    nop

    nop

    goto/32 :goto_12

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

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_10
    sget-object p0, Ldzi;->e:[I

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p2, p1, v0, p0}, Ldzg;-><init>(II[B)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_12
    long-to-int p2, v1

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

    :goto_13
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-object p2

    nop

    :goto_15
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_17
    new-instance p2, Ldzg;

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

    nop

    :goto_18
    const/4 v2, 0x0

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

    :goto_19
    aget p0, p0, p1

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
.end method

.method public static d(Ldzh;Ljava/nio/ByteOrder;)Ldzg;
    .locals 4

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x1

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

    :goto_3
    new-instance p1, Ldzg;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v3, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_6
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    new-array v1, v0, [Ldzh;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    goto/32 :goto_15

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_b
    goto/32 :goto_18

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

    goto/32 :goto_1b

    nop

    nop

    :goto_d
    const v1, 0x1d

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

    :goto_e
    sget-object p0, Ldzi;->e:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    iget-wide v1, p1, Ldzh;->a:J

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_10
    long-to-int v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    new-array p0, p0, [B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_12
    long-to-int p1, v1

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

    :goto_13
    const/4 v2, 0x0

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

    :goto_14
    aget p0, p0, v3

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

    :goto_15
    aget-object p1, v1, v2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-wide v1, p1, Ldzh;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_12

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
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_19
    aput-object p0, v1, v2

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

    :goto_1a
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

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

    :goto_1c
    invoke-direct {p1, v3, v0, p0}, Ldzg;-><init>(II[B)V

    goto/32 :goto_6

    nop

    nop

    :goto_1d
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public static e(ILjava/nio/ByteOrder;)Ldzg;
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_12

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_1
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2
    aget v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    new-array v0, v0, [B

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

    :goto_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_5
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    aget p0, p0, p1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_7
    filled-new-array {p0}, [I

    move-result-object p0

    nop

    goto/32 :goto_a

    nop

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
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v0, Ldzi;->e:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_b
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    new-instance p0, Ldzg;

    nop

    goto/32 :goto_13

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

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

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

    :goto_10
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 p1, 0x1

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

    :goto_14
    invoke-direct {p0, v1, p1, v0}, Ldzg;-><init>(II[B)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v1, 0x3

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_16
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_17
    int-to-short p0, p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_12

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/nio/ByteOrder;)I
    .locals 3

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    aget-wide p0, p0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    :goto_2
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_3
    throw p0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    :goto_6
    goto/32 :goto_1a

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8
    const v0, 0x1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    instance-of p1, p0, [J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_d
    invoke-direct {p0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    :goto_e
    const v1, 0x15

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    array-length p1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_10
    if-eq p1, v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_12
    new-instance p0, Ljava/lang/NumberFormatException;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_14
    check-cast p0, [J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_15
    const/4 v2, 0x1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_16
    instance-of p1, p0, [I

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_17
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_b

    nop

    nop

    :goto_19
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1a
    new-instance p0, Ljava/lang/NumberFormatException;

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

    :goto_1b
    const-string p1, "Couldn\'t find a integer value"

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_1c
    if-nez p1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    aget p0, p0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1f
    if-eq p1, v2, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_5
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    instance-of p1, p0, Ljava/lang/String;

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

    :goto_21
    const-string p1, "NULL can\'t be converted to a integer value"

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

    :goto_22
    return p0

    nop

    :goto_23
    goto/32 :goto_2f

    nop

    nop

    :goto_24
    const-string v1, "There are more than one component"

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_25
    long-to-int p0, p0

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

    :goto_26
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_27
    throw p0

    nop

    nop

    :goto_28
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    new-instance p0, Ljava/lang/NumberFormatException;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0, p1}, Ldzg;->f(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-nez p1, :cond_6

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_6
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast p0, Ljava/lang/String;

    nop

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

    :goto_2d
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_12

    nop

    nop

    :goto_2f
    new-instance p0, Ljava/lang/NumberFormatException;

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_30
    invoke-direct {p0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_31
    array-length p1, p0

    nop

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

    :goto_32
    throw p0

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_34
    check-cast p0, [I

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_35
    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method final f(Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .locals 10

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x2

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_5
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    :try_start_0
    iget p1, p0, Ldzg;->b:I

    nop

    nop

    nop

    nop

    new-array p1, p1, [Ldzh;

    nop

    nop

    nop

    nop

    :goto_6
    iget v5, p0, Ldzg;->b:I

    nop

    nop

    nop

    nop

    if-ge v4, v5, :cond_1

    nop

    nop

    invoke-virtual {v3}, Ldzf;->readInt()I

    move-result v5

    nop

    nop

    int-to-long v5, v5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ldzf;->readInt()I

    move-result v7

    nop

    nop

    nop

    nop

    int-to-long v7, v7

    nop

    new-instance v9, Ldzh;

    nop

    nop

    nop

    nop

    invoke-direct {v9, v5, v6, v7, v8}, Ldzh;-><init>(JJ)V

    aput-object v9, p1, v4

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    goto :goto_10

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    return-object p1

    nop

    nop

    :pswitch_1
    :try_start_1
    iget p1, p0, Ldzg;->b:I

    nop

    nop

    nop

    nop

    nop

    new-array p1, p1, [I

    nop

    nop

    nop

    :goto_9
    iget v5, p0, Ldzg;->b:I

    nop

    if-ge v4, v5, :cond_c

    nop

    nop

    invoke-virtual {v3}, Ldzf;->readShort()S

    move-result v5

    nop

    nop

    nop

    aput v5, p1, v4

    nop

    nop
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_3d

    nop

    nop

    :goto_a
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_b
    const/4 v1, 0x0

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

    :goto_c
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d
    goto/32 :goto_59

    nop

    nop

    :goto_e
    goto/16 :goto_66

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_2
    invoke-virtual {v3}, Ldzf;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_f
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-object p1

    nop

    nop

    nop

    :pswitch_2
    :try_start_3
    iget p1, p0, Ldzg;->b:I

    nop

    new-array p1, p1, [Ldzh;

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v5, p0, Ldzg;->b:I

    nop

    if-ge v4, v5, :cond_3

    nop

    nop

    invoke-virtual {v3}, Ldzf;->a()J

    move-result-wide v5

    nop

    nop

    invoke-virtual {v3}, Ldzf;->a()J

    move-result-wide v7

    nop

    new-instance v9, Ldzh;

    nop

    nop

    nop

    invoke-direct {v9, v5, v6, v7, v8}, Ldzh;-><init>(JJ)V

    aput-object v9, p1, v4

    nop

    nop
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_e
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_6

    nop

    nop

    :cond_1
    :try_start_4
    invoke-virtual {v3}, Ldzf;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_14
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_15
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_16
    add-int/lit8 v4, v4, 0x1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :catch_1
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_18
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_19
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-object v2

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1c
    goto/16 :goto_34

    nop

    nop

    :cond_2
    :try_start_5
    invoke-virtual {v3}, Ldzf;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto :goto_19

    nop

    :catch_2
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1e
    goto :goto_23

    nop

    nop

    nop

    nop

    nop

    :catch_3
    move-exception p0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_12

    nop

    :cond_3
    :try_start_6
    invoke-virtual {v3}, Ldzf;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/32 :goto_1e

    nop

    nop

    :goto_20
    return-object p1

    nop

    nop

    nop

    :pswitch_3
    :try_start_7
    iget p1, p0, Ldzg;->b:I

    nop

    nop

    nop

    new-array p1, p1, [I

    nop

    nop

    nop

    :goto_21
    iget v5, p0, Ldzg;->b:I

    nop

    if-ge v4, v5, :cond_f

    nop

    invoke-virtual {v3}, Ldzf;->readInt()I

    move-result v5

    nop

    nop

    nop

    nop

    aput v5, p1, v4

    nop

    nop

    nop
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_e
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_23
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_25
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_26
    goto/32 :goto_1b

    nop

    nop

    :goto_27
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    :try_start_8
    iget p1, p0, Ldzg;->b:I

    nop

    nop

    nop

    nop

    nop

    sget-object v5, Ldzi;->f:[B

    nop

    array-length v5, v5

    nop

    nop

    nop

    nop

    nop

    const/16 v5, 0x8

    nop

    if-lt p1, v5, :cond_6

    nop

    nop

    move p1, v4

    nop

    nop

    :goto_28
    sget-object v6, Ldzi;->f:[B

    nop

    nop

    nop

    array-length v7, v6

    nop

    nop

    nop

    nop

    if-ge p1, v5, :cond_5

    nop

    nop

    nop

    nop

    nop

    iget-object v7, p0, Ldzg;->d:[B

    nop

    nop

    aget-byte v7, v7, p1

    nop

    nop

    nop

    nop

    aget-byte v6, v6, p1

    nop

    nop

    nop

    if-eq v7, v6, :cond_4

    nop

    nop

    goto :goto_29

    nop

    :cond_4
    add-int/lit8 p1, p1, 0x1

    nop

    goto :goto_28

    nop

    nop

    nop

    :cond_5
    move v4, v5

    nop

    nop

    nop

    nop

    :cond_6
    :goto_29
    new-instance p1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2a
    iget v5, p0, Ldzg;->b:I

    nop

    nop

    nop

    nop

    if-ge v4, v5, :cond_9

    nop

    nop

    nop

    nop

    iget-object v5, p0, Ldzg;->d:[B

    nop

    aget-byte v5, v5, v4

    nop

    nop

    nop

    nop

    if-nez v5, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_7
    const/16 v6, 0x20

    nop

    nop

    nop

    nop

    nop

    if-lt v5, v6, :cond_8

    nop

    int-to-char v5, v5

    nop

    nop

    nop

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2b

    nop

    nop

    :cond_8
    const/16 v5, 0x3f

    nop

    nop

    nop

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2b
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_9
    :goto_2c
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_e
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-virtual {v3}, Ldzf;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_f

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_5f

    nop

    nop

    :cond_a
    :try_start_a
    invoke-virtual {v3}, Ldzf;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2f
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_30
    goto/16 :goto_46

    nop

    nop

    :catch_4
    move-exception p1

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_31
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :try_start_b
    new-instance v3, Ldzf;

    nop

    nop

    nop

    iget-object v4, p0, Ldzg;->d:[B

    nop

    nop

    nop

    invoke-direct {v3, v4}, Ldzf;-><init>([B)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    iput-object p1, v3, Ldzf;->c:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    nop

    iget p1, p0, Ldzg;->a:I

    nop

    nop
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_e
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-lez v0, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_42

    nop

    :goto_33
    return-object p1

    nop

    nop

    :pswitch_5
    :try_start_d
    iget p1, p0, Ldzg;->b:I

    nop

    nop

    nop

    nop

    new-array p1, p1, [D

    nop

    nop

    nop

    nop

    :goto_34
    iget v5, p0, Ldzg;->b:I

    nop

    nop

    nop

    nop

    nop

    if-ge v4, v5, :cond_2

    nop

    invoke-virtual {v3}, Ldzf;->readFloat()F

    move-result v5

    nop

    nop

    nop

    float-to-double v5, v5

    nop

    aput-wide v5, p1, v4

    nop

    nop

    nop

    nop
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_e
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    :catch_5
    move-exception p0

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_36
    const-string v0, "IOException occurred while closing InputStream"

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

    nop

    :goto_37
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_38
    goto/16 :goto_9

    nop

    :cond_c
    :try_start_e
    invoke-virtual {v3}, Ldzf;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    move-object v3, v2

    nop

    nop

    :goto_3a
    :try_start_f
    const-string p1, "IOException occurred during reading a value"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/32 :goto_4a

    nop

    nop

    :goto_3b
    move-object v2, v3

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    add-int/lit8 v4, v4, 0x1

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_3e
    return-object p1

    nop

    nop

    nop

    nop

    :pswitch_6
    :try_start_10
    iget p1, p0, Ldzg;->b:I

    nop

    new-array p1, p1, [I

    nop

    nop

    nop

    nop

    :goto_3f
    iget v5, p0, Ldzg;->b:I

    nop

    nop

    if-ge v4, v5, :cond_e

    nop

    invoke-virtual {v3}, Ldzf;->readUnsignedShort()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    aput v5, p1, v4

    nop

    nop

    nop

    nop

    nop
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_e
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_40
    return-object v2

    nop

    :catchall_1
    move-exception p0

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_41
    sget-object v1, Lwireless/android/learning/acmi/p11/metadata/eGU/nQGhNZMKfLcyQ;->HgdjDBtxPh:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_42
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_44
    goto/16 :goto_5d

    nop

    nop

    nop

    :catch_6
    move-exception p0

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_46
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto :goto_4d

    nop

    nop

    nop

    nop

    nop

    :catch_7
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_49
    add-int/lit8 v4, v4, 0x1

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_4a
    if-nez v3, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :cond_d
    :try_start_11
    invoke-virtual {v3}, Ldzf;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_4b
    goto/16 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :catch_8
    move-exception p0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4d
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_7
    :try_start_12
    iget-object p0, p0, Ldzg;->d:[B

    nop

    nop

    array-length p1, p0

    nop

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    if-ne p1, v5, :cond_11

    nop

    nop

    nop

    nop

    aget-byte p1, p0, v4

    nop

    nop

    nop

    if-ltz p1, :cond_11

    nop

    nop

    nop

    nop

    nop

    if-gt p1, v5, :cond_11

    nop

    nop

    new-instance p0, Ljava/lang/String;

    nop

    nop

    nop

    add-int/lit8 p1, p1, 0x30

    nop

    nop

    nop

    nop

    nop

    int-to-char p1, p1

    nop

    nop

    nop

    new-array v5, v5, [C

    nop

    aput-char p1, v5, v4

    nop

    invoke-direct {p0, v5}, Ljava/lang/String;-><init>([C)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_e
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    :try_start_13
    invoke-virtual {v3}, Ldzf;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_4

    goto/32 :goto_30

    nop

    nop

    :goto_4f
    const v1, 0x4

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

    :goto_50
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_51
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_52
    const/4 v4, 0x0

    nop

    packed-switch p1, :pswitch_data_0

    :try_start_14
    invoke-virtual {v3}, Ldzf;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_b

    goto/32 :goto_5e

    nop

    nop

    :goto_53
    goto/16 :goto_3f

    nop

    nop

    :cond_e
    :try_start_15
    invoke-virtual {v3}, Ldzf;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_a

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_54
    goto/16 :goto_6a

    nop

    nop

    nop

    nop

    :catch_9
    move-exception p0

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_56
    goto/32 :goto_27

    nop

    nop

    :goto_57
    goto :goto_56

    nop

    nop

    nop

    nop

    nop

    :catch_a
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_58
    goto/16 :goto_21

    nop

    nop

    :cond_f
    :try_start_16
    invoke-virtual {v3}, Ldzf;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_59
    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_4
        :pswitch_6
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_8
    .end packed-switch

    :goto_5a
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_5b
    return-object p1

    nop

    nop

    :catch_b
    move-exception p0

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

    :goto_5c
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5d
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    nop

    :pswitch_8
    :try_start_17
    iget p1, p0, Ldzg;->b:I

    nop

    nop

    new-array p1, p1, [D

    nop

    :goto_5f
    iget v5, p0, Ldzg;->b:I

    nop

    nop

    nop

    nop

    if-ge v4, v5, :cond_a

    nop

    nop

    nop

    invoke-virtual {v3}, Ldzf;->readDouble()D

    move-result-wide v5

    nop

    aput-wide v5, p1, v4

    nop
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_e
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_60
    if-nez v2, :cond_10

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_10
    :try_start_18
    invoke-virtual {v2}, Ldzf;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_d

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_61
    goto/16 :goto_3

    nop

    nop

    :catch_c
    move-exception p0

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

    :goto_62
    goto/16 :goto_3a

    nop

    nop

    nop

    nop

    :cond_11
    :try_start_19
    new-instance p1, Ljava/lang/String;

    nop

    sget-object v4, Ldzi;->g:Ljava/nio/charset/Charset;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p1, p0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_e
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    :try_start_1a
    invoke-virtual {v3}, Ldzf;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_9

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_63
    goto/16 :goto_d

    nop

    nop

    :catch_d
    move-exception p1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_64
    return-object p0

    nop

    nop

    :catch_e
    move-exception p0

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    return-object p1

    nop

    nop

    nop

    nop

    :pswitch_9
    :try_start_1b
    iget p1, p0, Ldzg;->b:I

    nop

    nop

    nop

    nop

    new-array p1, p1, [J

    nop

    nop

    nop

    nop

    :goto_66
    iget v5, p0, Ldzg;->b:I

    nop

    nop

    nop

    nop

    if-ge v4, v5, :cond_0

    nop

    invoke-virtual {v3}, Ldzf;->a()J

    move-result-wide v5

    nop

    nop

    nop

    nop

    nop

    aput-wide v5, p1, v4

    nop

    nop
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_e
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    goto/32 :goto_16

    nop

    nop

    :goto_67
    add-int/lit8 v4, v4, 0x1

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

    :goto_68
    goto/16 :goto_1

    nop

    nop

    :catch_f
    move-exception p1

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

    :goto_69
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6a
    goto/32 :goto_5b

    nop

    nop

    nop
.end method

.method public final g(Ljava/nio/ByteOrder;)Ljava/lang/String;
    .locals 5

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-wide v3, v3, Ldzh;->b:J

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_1
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_45

    nop

    nop

    :goto_4
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3e

    nop

    nop

    :goto_5
    add-int/lit8 v2, v2, 0x1

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

    :goto_6
    check-cast p0, [I

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_9
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast p0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_b
    if-eqz p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_c
    array-length v0, p0

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

    :goto_d
    if-lt v2, v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_7

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    instance-of p1, p0, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_11
    aget-wide v3, p0, v2

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

    :goto_12
    goto/32 :goto_48

    nop

    :goto_13
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_14
    check-cast p0, [J

    nop

    :goto_15
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_17
    instance-of v0, p0, [I

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_18
    array-length v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_19
    if-ne v2, v0, :cond_3

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    aget-object v3, p0, v2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1b
    instance-of v0, p0, [D

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0x5

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-ne v2, v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_4
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    return-object p0

    nop

    :goto_20
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    aget-object v3, p0, v2

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_24
    if-lt v2, v0, :cond_5

    nop

    nop

    goto/32 :goto_3f

    nop

    :cond_5
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_25
    instance-of v0, p0, [Ldzh;

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_26
    if-ne v2, v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-nez v0, :cond_7

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_6

    nop

    nop

    :goto_2a
    aget v3, p0, v2

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_2b
    if-nez v0, :cond_8

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    :goto_2d
    aget-wide v3, p0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_4d

    nop

    nop

    :goto_2f
    if-lt v2, v0, :cond_a

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const-string v1, ","

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p0, p1}, Ldzg;->f(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_34
    if-nez v0, :cond_b

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_35
    array-length v0, p0

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_36
    add-int v0, v0, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-nez p1, :cond_c

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_a

    nop

    nop

    :goto_38
    if-lt v2, v0, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    instance-of v0, p0, [J

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_54

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    :goto_3d
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_4e

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const/16 v3, 0x2f

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_41
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_42
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_43
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_44
    if-ne v2, v0, :cond_e

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_45
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_47
    return-object p0

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    array-length v0, p0

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    new-instance p1, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_4b
    goto/16 :goto_52

    nop

    nop

    :goto_4c
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4d
    check-cast p0, [Ldzh;

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget-wide v3, v3, Ldzh;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_50
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_51
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_53
    check-cast p0, [D

    nop

    nop

    :goto_54
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v1, "("

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    const v1, 0x1c

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9
    array-length p0, p0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    :goto_b
    goto/32 :goto_1

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
    aget-object v1, v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_e
    const-string p0, ")"

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

    :goto_f
    iget v2, p0, Ldzg;->a:I

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
    iget-object p0, p0, Ldzg;->d:[B

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_3

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

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sget-object v1, Ldzi;->d:[Ljava/lang/String;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string v1, ", data length:"

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_18
    const v0, 0xd

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

    nop
.end method
