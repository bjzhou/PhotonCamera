.class public final Lurw;
.super Ljava/io/InputStream;
.source "PG"

# interfaces
.implements Lj$/io/InputStreamRetargetInterface;


# instance fields
.field private final a:Lurx;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object p1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p1}, Lurx;-><init>(Ljava/nio/channels/ReadableByteChannel;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Lurw;->a:Lurx;

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

    :goto_4
    new-instance v0, Lurx;

    nop

    nop

    nop

    goto/32 :goto_0

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
.end method


# virtual methods
.method public final available()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lurx;->a:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    iget-object p0, p0, Lurw;->a:Lurx;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

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

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lurx;->b()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lurw;->a:Lurx;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final read()I
    .locals 2

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0xf

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    iget-boolean v0, v0, Lurx;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lurw;->a:Lurx;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    const-string v0, "read after close"

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Lurx;->a()I

    move-result v0

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

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    :goto_9
    goto/32 :goto_1b

    nop

    nop

    :goto_a
    if-eq v0, v1, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    const/4 v1, -0x1

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

    :goto_c
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_d
    goto/32 :goto_18

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

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lurx;->a:Ljava/nio/ByteBuffer;

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

    :goto_11
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :goto_12
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Lurw;->a:Lurx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_14
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

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

    :goto_16
    and-int/lit16 p0, p0, 0xff

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Lurw;->a:Lurx;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_3
    goto/32 :goto_17

    nop

    :goto_1b
    new-instance p0, Ljava/io/IOException;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    throw p0

    nop

    :goto_1d
    goto/32 :goto_d

    nop

    nop
.end method

.method public final read([B)I
    .locals 2

    goto/32 :goto_5

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lurw;->read([BII)I

    move-result p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0xa

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    :goto_7
    array-length v1, p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

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

    :goto_b
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop
.end method

.method public final read([BII)I
    .locals 4

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3
    if-gtz p3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_5
    iget-object v2, v2, Lurx;->a:Ljava/nio/ByteBuffer;

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

    :goto_6
    sub-int/2addr p3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v3, p1, p2, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v3, v3, Lurx;->a:Ljava/nio/ByteBuffer;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    iget-object v2, p0, Lurw;->a:Lurx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

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

    :goto_b
    new-instance p0, Ljava/io/IOException;

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

    :goto_c
    iget-object v2, p0, Lurw;->a:Lurx;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_11
    const/4 v1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Lurx;->a()I

    move-result v0

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

    :goto_13
    const v1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_14
    iget-boolean v1, v0, Lurx;->b:Z

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

    :goto_15
    const-string p1, "read after close"

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_16
    throw p0

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return v0

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

    nop

    :goto_1a
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_3

    nop

    nop

    :goto_1c
    add-int/2addr v0, v2

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1e
    if-eqz v1, :cond_2

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Lurw;->a:Lurx;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v3, p0, Lurw;->a:Lurx;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_21
    return v1

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-ne v0, v1, :cond_3

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

    :cond_3
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    add-int/2addr p2, v2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_25
    invoke-virtual {v2}, Lurx;->a()I

    move-result v2

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_26
    if-eq v2, v1, :cond_4

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

    nop

    :cond_4
    :goto_27
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop
.end method

.method public final skip(J)J
    .locals 8

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iget-object v6, v5, Lurx;->a:Ljava/nio/ByteBuffer;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2
    if-eq v4, v5, :cond_0

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

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v5, -0x1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string p1, "read after close"

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    goto :goto_d

    nop

    nop

    :goto_7
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    cmp-long v4, p1, v0

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
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-gtz v4, :cond_1

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

    :cond_1
    goto/32 :goto_14

    nop

    nop

    :goto_c
    goto :goto_18

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int/2addr v7, v4

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_f
    iget-object v5, p0, Lurw;->a:Lurx;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v6, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    nop

    :goto_11
    return-wide v2

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_13
    iget-boolean v0, v0, Lurx;->b:Z

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_14
    iget-object v4, p0, Lurw;->a:Lurx;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_15
    iput-object v6, v5, Lurx;->a:Ljava/nio/ByteBuffer;

    nop

    nop

    :goto_16
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    move-wide v2, v0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

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

    :goto_1a
    long-to-int v4, v4

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v4, v4, Lurx;->a:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1c
    throw p0

    nop

    :goto_1d
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2b

    nop

    :goto_1f
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    new-instance p0, Ljava/io/IOException;

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

    :goto_21
    invoke-virtual {v6, v7}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v4}, Lurx;->a()I

    move-result v4

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_23
    iget-object v4, p0, Lurw;->a:Lurx;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

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

    :goto_25
    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const v1, 0x8

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

    :goto_27
    iget-object v6, v5, Lurx;->a:Ljava/nio/ByteBuffer;

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

    :goto_28
    add-long/2addr v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    sub-long/2addr p1, v4

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

    :goto_2a
    int-to-long v4, v4

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_1d

    nop

    :goto_2c
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_2d
    int-to-long v4, v4

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

    :goto_2e
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_2f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_30
    if-eqz v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_32
    iget-object v0, p0, Lurw;->a:Lurx;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic transferTo(Ljava/io/OutputStream;)J
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-wide p0

    nop

    :goto_1
    invoke-static {p0, p1}, Lj$/io/DesugarInputStream;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
