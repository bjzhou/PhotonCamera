.class public abstract Ltjn;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static volatile d:I = 0x64


# instance fields
.field a:I

.field final b:I

.field c:Ltjo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    goto/32 :goto_0

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
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    nop

    nop

    :goto_2
    sget v0, Ltjn;->d:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput v0, p0, Ltjn;->b:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public static H(I)I
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    neg-int v0, v0

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

    :goto_1
    xor-int/2addr p0, v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    and-int/lit8 v0, p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    ushr-int/lit8 p0, p0, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static I(ILjava/io/InputStream;)I
    .locals 4

    goto/32 :goto_13

    nop

    nop

    :goto_0
    if-ne v1, v3, :cond_0

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
    goto/32 :goto_28

    nop

    nop

    :goto_1
    if-eqz v0, :cond_1

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

    :cond_1
    goto/32 :goto_10

    nop

    nop

    :goto_2
    const/4 v0, 0x7

    nop

    nop

    :goto_3
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-ne v1, v3, :cond_2

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

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_5
    add-int/lit8 v0, v0, 0x7

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

    :goto_6
    goto/16 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

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

    :goto_9
    add-int/lit8 v0, v0, 0x7

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    const-string v2, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_b
    throw p0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0, p1}, Ltky;-><init>(Ljava/lang/String;)V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_e
    and-int/lit8 p0, p0, 0x7f

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    and-int/lit8 v2, v1, 0x7f

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return p0

    nop

    nop

    :goto_11
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance p0, Ltky;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/16 v1, 0x40

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_3
    goto/32 :goto_1d

    nop

    nop

    :goto_17
    const v1, 0x5

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_18
    invoke-direct {p0, v2}, Ltky;-><init>(Ljava/lang/String;)V

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_27

    nop

    :goto_1a
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1c
    and-int/lit16 v0, p0, 0x80

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1d
    return p0

    nop

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

    :goto_1f
    or-int/2addr p0, v2

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

    :goto_20
    invoke-direct {p0, v2}, Ltky;-><init>(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

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

    :goto_22
    and-int/lit16 v1, v1, 0x80

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_23
    throw p0

    nop

    nop

    :goto_24
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_25
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_26

    nop

    :goto_26
    goto/32 :goto_24

    nop

    nop

    :goto_27
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    and-int/lit16 v1, v1, 0x80

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

    :goto_29
    new-instance p0, Ltky;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_2a
    const-string p1, "CodedInputStream encountered a malformed varint."

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-eqz v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_33

    nop

    nop

    :goto_2c
    const/4 v3, -0x1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    shl-int/2addr v2, v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/16 v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2f
    new-instance p0, Ltky;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_30
    throw p0

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-lt v0, v1, :cond_6

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_33
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_5

    nop

    nop

    :goto_35
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_36
    if-lt v0, v1, :cond_7

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

    nop

    :cond_7
    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public static J(J)J
    .locals 3

    goto/32 :goto_7

    nop

    nop

    :goto_0
    const-wide/16 v0, 0x1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    return-wide p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    neg-long v0, v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    ushr-long/2addr p0, v2

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

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_7
    const v0, 0x14

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    xor-long/2addr p0, v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    and-long/2addr v0, p0

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
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    const/4 v2, 0x1

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

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public static K(Ljava/io/InputStream;)Ltjn;
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ltjl;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Ltjn;->M([B)Ltjn;

    move-result-object p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p0}, Ltjl;-><init>(Ljava/io/InputStream;)V

    goto/32 :goto_5

    nop

    nop

    :goto_4
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    move-object p0, v0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_6

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    sget-object p0, Ltkw;->b:[B

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public static L(Ljava/nio/ByteBuffer;)Ltjn;
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

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

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v0, v1, p0}, Ltjn;->O([BII)Ltjn;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Ltjm;

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

    :goto_8
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

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

    :goto_a
    invoke-static {v1, p0, v0}, Ltjn;->O([BII)Ltjn;

    move-result-object p0

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto/32 :goto_5

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

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

    :goto_e
    goto :goto_b

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_11
    return-object p0

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1c

    nop

    nop

    :goto_13
    new-array v1, v0, [B

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v0, p0}, Ltjm;-><init>(Ljava/nio/ByteBuffer;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

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
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1b
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_3
    goto/32 :goto_1

    nop

    :goto_1e
    sget-boolean v0, Ltmu;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1f
    add-int/2addr v1, v2

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

    :goto_20
    move-object p0, v0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

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

    :goto_22
    goto/16 :goto_b

    nop

    :goto_23
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static M([B)Ltjn;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, v0, v0}, Ltjn;->O([BII)Ltjn;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    :goto_3
    array-length v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method static O([BII)Ltjn;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ltjk;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-direct {v0, p0, p1, p2}, Ltjk;-><init>([BII)V

    :try_start_0
    invoke-virtual {v0, p2}, Ltjk;->e(I)I
    :try_end_0
    .catch Ltky; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object v0

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

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

    :goto_5
    throw p1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public abstract A(I)V
.end method

.method public abstract C()Z
.end method

.method public abstract D()Z
.end method

.method public abstract E(I)Z
.end method

.method public abstract F()[B
.end method

.method public final N()V
    .locals 3

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_0
    new-instance p0, Ltky;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1
    iput v1, p0, Ltjn;->a:I

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

    :goto_2
    iget v1, p0, Ltjn;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    add-int/lit8 v1, v1, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iget v2, p0, Ltjn;->b:I

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_12

    nop

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

    nop

    nop

    :goto_a
    goto/16 :goto_19

    nop

    :goto_b
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, v0}, Ltjn;->E(I)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    const v1, 0x1

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_e
    if-eqz v0, :cond_0

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

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string v0, "Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit."

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Ltjn;->m()I

    move-result v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_13
    add-int/lit8 v1, v1, 0x1

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

    :goto_14
    iput v1, p0, Ltjn;->a:I

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

    nop

    nop

    :goto_15
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    :goto_18
    if-eqz v0, :cond_2

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

    :cond_2
    :goto_19
    goto/32 :goto_6

    nop

    nop

    :goto_1a
    iget v1, p0, Ltjn;->a:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {p0, v0}, Ltky;-><init>(Ljava/lang/String;)V

    goto/32 :goto_11

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

    goto/32 :goto_17

    nop

    nop

    :goto_1d
    if-lt v1, v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public abstract b()D
.end method

.method public abstract c()F
.end method

.method public abstract d()I
.end method

.method public abstract e(I)I
.end method

.method public abstract f()I
.end method

.method public abstract g()I
.end method

.method public abstract h()I
.end method

.method public abstract j()I
.end method

.method public abstract k()I
.end method

.method public abstract l()I
.end method

.method public abstract m()I
.end method

.method public abstract n()I
.end method

.method public abstract o()J
.end method

.method public abstract p()J
.end method

.method public abstract r()J
.end method

.method public abstract t()J
.end method

.method public abstract u()J
.end method

.method public abstract v()J
.end method

.method public abstract w()Ltjj;
.end method

.method public abstract x()Ljava/lang/String;
.end method

.method public abstract y()Ljava/lang/String;
.end method

.method public abstract z(I)V
.end method
