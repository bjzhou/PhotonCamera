.class public final Lfja;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:[B

.field public b:Ljava/nio/ByteBuffer;

.field public c:Lfiz;

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Lfja;->d:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Lfja;->a:[B

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    new-array v0, v0, [B

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/16 v0, 0x100

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lfja;->b:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    iput v0, p0, Lfiz;->b:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    goto :goto_7

    nop

    :catch_0
    goto/32 :goto_5

    nop

    nop

    :goto_3
    and-int/lit16 p0, p0, 0xff

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x1

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

    :goto_5
    iget-object p0, p0, Lfja;->c:Lfiz;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    const/4 p0, 0x0

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop
.end method

.method public final b()I
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lfja;->b:Ljava/nio/ByteBuffer;

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
.end method

.method public final c()V
    .locals 4

    goto/32 :goto_c

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_2
    :try_start_0
    iget v1, p0, Lfja;->d:I

    nop

    if-ge v0, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    sub-int/2addr v1, v0

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lfja;->b:Ljava/nio/ByteBuffer;

    nop

    nop

    iget-object v3, p0, Lfja;->a:[B

    nop

    nop

    nop

    invoke-virtual {v2, v3, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_6

    nop

    nop

    :goto_3
    iget-object p0, p0, Lfja;->c:Lfiz;

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

    :goto_4
    iput v0, p0, Lfiz;->b:I

    nop

    nop

    :cond_0
    :goto_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int/2addr v0, v1

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

    :goto_7
    if-gtz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

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

    :goto_8
    invoke-virtual {p0}, Lfja;->a()I

    move-result v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_12

    nop

    :goto_a
    goto :goto_2

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_3

    nop

    nop

    :goto_b
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput v0, p0, Lfja;->d:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_10

    nop

    :goto_13
    goto/32 :goto_8

    nop

    nop

    :goto_14
    goto/32 :goto_13

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_a

    nop

    :goto_6
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    iget-object v1, p0, Lfja;->b:Ljava/nio/ByteBuffer;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v2, p0, Lfja;->b:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x1

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

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_e
    iget-object v2, p0, Lfja;->b:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lfja;->a()I

    move-result v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int/2addr v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public final e()Z
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lfiz;->b:I

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

    :goto_1
    return p0

    nop

    :goto_2
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_5
    iget-object p0, p0, Lfja;->c:Lfiz;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f(I)[I
    .locals 9

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lfiz;->b:I

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0xa

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    if-lt v2, p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    new-array v0, v0, [B

    nop

    :try_start_0
    iget-object v1, p0, Lfja;->b:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/16 v1, 0x100

    nop

    new-array v1, v1, [I

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lfja;->c:Lfiz;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_7
    mul-int/lit8 v0, p1, 0x3

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    add-int/lit8 v4, v3, 0x1

    nop

    nop

    nop

    :try_start_1
    aget-byte v5, v0, v3

    nop

    nop

    nop

    and-int/lit16 v5, v5, 0xff

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v6, v3, 0x2

    nop

    nop

    nop

    nop

    aget-byte v4, v0, v4

    nop

    nop

    nop

    nop

    nop

    and-int/lit16 v4, v4, 0xff

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v3, v3, 0x3

    nop

    nop

    nop

    aget-byte v6, v0, v6

    nop

    nop

    nop

    and-int/lit16 v6, v6, 0xff

    nop

    add-int/lit8 v7, v2, 0x1

    nop

    nop

    nop

    shl-int/lit8 v5, v5, 0x10

    nop

    nop

    nop

    nop

    const/high16 v8, -0x1000000

    nop

    nop

    nop

    nop

    nop

    or-int/2addr v5, v8

    nop

    shl-int/lit8 v4, v4, 0x8

    nop

    nop

    nop

    nop

    or-int/2addr v4, v5

    nop

    nop

    or-int/2addr v4, v6

    nop

    nop

    nop

    nop

    nop

    aput v4, v1, v2

    nop

    nop
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_c

    nop

    nop

    :goto_9
    return-object v1

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move-object v1, p1

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move v2, v7

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_d
    const/4 p1, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_13

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    move v3, v2

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_3

    nop

    nop

    :goto_12
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto :goto_11

    nop

    :catch_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    :goto_16
    const/4 p1, 0x0

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

    :goto_17
    const/4 v2, 0x0

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
    const v0, 0x1b

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
.end method
