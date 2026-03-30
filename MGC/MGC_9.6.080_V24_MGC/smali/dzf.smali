.class final Ldzf;
.super Ljava/io/InputStream;
.source "PG"

# interfaces
.implements Ljava/io/DataInput;
.implements Lj$/io/InputStreamRetargetInterface;


# instance fields
.field protected final a:Ljava/io/DataInputStream;

.field protected b:I

.field public c:Ljava/nio/ByteOrder;

.field public d:I

.field private e:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, v0}, Ldzf;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    goto/32 :goto_1

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
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p1, -0x1

    nop

    nop

    :goto_3
    goto/32 :goto_15

    nop

    nop

    :goto_4
    check-cast p1, Ldzf;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_7
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->mark(I)V

    goto/32 :goto_1a

    nop

    nop

    :goto_9
    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    :goto_c
    new-instance v0, Ljava/io/DataInputStream;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_d
    const v0, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_f
    iput-object p2, p0, Ldzf;->c:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_10
    instance-of p2, p1, Ldzf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
    const/4 v1, 0x0

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

    :goto_12
    if-nez p2, :cond_1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-object v0, p0, Ldzf;->a:Ljava/io/DataInputStream;

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

    :goto_14
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_15
    iput p1, p0, Ldzf;->d:I

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget p1, p1, Ldzf;->d:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_b

    nop

    :goto_18
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

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

    :goto_1a
    iput v1, p0, Ldzf;->b:I

    nop

    nop

    goto/32 :goto_f

    nop

    nop
.end method

.method public constructor <init>(Ljava/io/InputStream;[B)V
    .locals 0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/io/DataInputStream;->mark(I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string p1, "Cannot create SeekableByteOrderedDataInputStream with stream that does not support mark/reset"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    const p1, 0x7fffffff

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Ldzf;->a:Ljava/io/DataInputStream;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, p1}, Ldzf;-><init>(Ljava/io/InputStream;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    throw p0

    nop

    nop

    nop
.end method

.method public constructor <init>([B)V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto/32 :goto_e

    nop

    nop

    :goto_1
    invoke-direct {p0, v0, v1}, Ldzf;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    array-length p1, p1

    nop

    nop

    nop

    goto/32 :goto_6

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
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    const v0, 0x14

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_6
    iput p1, p0, Ldzf;->d:I

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    :goto_9
    new-instance v0, Ljava/io/ByteArrayInputStream;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_f
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public constructor <init>([B[B)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/DataInputStream;->mark(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Ldzf;->a:Ljava/io/DataInputStream;

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

    :goto_2
    invoke-direct {p0, p1}, Ldzf;-><init>([B)V

    goto/32 :goto_1

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

    :goto_4
    const p1, 0x7fffffff

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
.end method


# virtual methods
.method public final a()J
    .locals 4

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-wide v2, 0xffffffffL

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    int-to-long v0, p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    :goto_4
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    :goto_6
    and-long/2addr v0, v2

    nop

    nop

    goto/32 :goto_4

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

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Ldzf;->readInt()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x18

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

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop
.end method

.method public final available()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->available()I

    move-result p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Ldzf;->a:Ljava/io/DataInputStream;

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

    :goto_2
    return p0

    nop

    nop

    nop
.end method

.method public final b(I)V
    .locals 6

    goto/32 :goto_24

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v2, :cond_0

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

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/16 v4, 0x2000

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_4
    add-int/2addr p1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_2c

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v2, p0, Ldzf;->e:[B

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v2, p0, Ldzf;->e:[B

    nop

    :goto_9
    goto/32 :goto_27

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_1

    nop

    nop

    :goto_f
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_10
    iput p1, p0, Ldzf;->b:I

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int/2addr v1, v2

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

    :goto_12
    iget-object v2, p0, Ldzf;->a:Ljava/io/DataInputStream;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v3, p0, Ldzf;->a:Ljava/io/DataInputStream;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_15
    const/4 v3, -0x1

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_16
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_18
    if-eqz v2, :cond_1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p1, v0, v1}, La;->br(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x20

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

    :goto_1b
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    :goto_1c
    return-void

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1e
    const-string v0, "Reached EOF while skipping "

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_1f
    if-lt v1, p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v2, v4, v5}, Ljava/io/DataInputStream;->skip(J)J

    move-result-wide v4

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v3, v4, v0, v2}, Ljava/io/DataInputStream;->read([BII)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_22
    new-instance p0, Ljava/io/EOFException;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    long-to-int v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_24
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_25
    new-array v2, v4, [B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_26
    iget-object v4, p0, Ldzf;->e:[B

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_27
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_28
    iget p1, p0, Ldzf;->b:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_29
    const-string v1, " bytes."

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2a
    sub-int v3, p1, v1

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_2b
    move v1, v0

    nop

    nop

    :goto_2c
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-ne v2, v3, :cond_4

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    int-to-long v4, v3

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop
.end method

.method public final c(J)V
    .locals 3

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_0
    sub-long/2addr p1, v0

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    :goto_2
    long-to-int p1, p1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

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

    :goto_5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->reset()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    iget v0, p0, Ldzf;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1}, Ldzf;->b(I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-gtz v2, :cond_1

    nop

    goto/32 :goto_16

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    :goto_f
    int-to-long v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_10
    cmp-long v2, v0, p1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Ldzf;->a:Ljava/io/DataInputStream;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_12
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_13
    iput v0, p0, Ldzf;->b:I

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x5

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final mark(I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    const-string p1, "Mark is currently unsupported"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    throw p0

    nop
.end method

.method public final read()I
    .locals 1

    goto/32 :goto_1

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
    iget v0, p0, Ldzf;->b:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iput v0, p0, Ldzf;->b:I

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

    :goto_4
    add-int/lit8 v0, v0, 0x1

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

    :goto_5
    iget-object p0, p0, Ldzf;->a:Ljava/io/DataInputStream;

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final read([BII)I
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Ldzf;->b:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int/2addr p2, p1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget p2, p0, Ldzf;->b:I

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

    :goto_3
    return p1

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Ldzf;->a:Ljava/io/DataInputStream;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->read([BII)I

    move-result p1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final readBoolean()Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p0

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
    iget v0, p0, Ldzf;->b:I

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

    :goto_2
    add-int/lit8 v0, v0, 0x1

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

    :goto_3
    return p0

    nop

    :goto_4
    iput v0, p0, Ldzf;->b:I

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

    :goto_5
    iget-object p0, p0, Ldzf;->a:Ljava/io/DataInputStream;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final readByte()B
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    if-gez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v0, p0, Ldzf;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    int-to-byte p0, p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Ldzf;->a:Ljava/io/DataInputStream;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    new-instance p0, Ljava/io/EOFException;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    throw p0

    nop

    nop

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput v0, p0, Ldzf;->b:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public final readChar()C
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Ldzf;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Ldzf;->b:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Ldzf;->a:Ljava/io/DataInputStream;

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

    :goto_3
    add-int/lit8 v0, v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readChar()C

    move-result p0

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

    :goto_5
    return p0

    nop

    nop

    nop
.end method

.method public final readDouble()D
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x13

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Ldzf;->readLong()J

    move-result-wide v0

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_a
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public final readFloat()F
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ldzf;->readInt()I

    move-result p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

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
.end method

.method public final readFully([B)V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Ldzf;->a:Ljava/io/DataInputStream;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_7
    const v1, 0x19

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

    :goto_8
    iget v0, p0, Ldzf;->b:I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    :goto_a
    iput v0, p0, Ldzf;->b:I

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

    :goto_b
    invoke-virtual {p0, p1}, Ljava/io/DataInputStream;->readFully([B)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int/2addr v0, v1

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

    :goto_d
    add-int v0, v0, v1

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

    :goto_e
    array-length v1, p1

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

    :goto_f
    rem-int v0, v0, v1

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

    nop
.end method

.method public final readFully([BII)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ldzf;->a:Ljava/io/DataInputStream;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    iput v0, p0, Ldzf;->b:I

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

    :goto_2
    iget v0, p0, Ldzf;->b:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    add-int/2addr v0, p3

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/DataInputStream;->readFully([BII)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final readInt()I
    .locals 6

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v3

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

    :goto_1
    new-instance v0, Ljava/io/IOException;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2
    or-int/2addr v2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_3
    if-eq v2, v5, :cond_0

    nop

    nop

    goto/32 :goto_38

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

    :goto_4
    iget-object v0, p0, Ldzf;->a:Ljava/io/DataInputStream;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p0, Ljava/io/EOFException;

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

    :goto_6
    add-int/2addr p0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    const v0, 0x3

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_8
    shl-int/lit8 p0, v1, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v4, p0, Ldzf;->a:Ljava/io/DataInputStream;

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

    :goto_a
    add-int/2addr p0, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_c
    add-int/2addr p0, v0

    nop

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

    :goto_d
    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v4

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

    :goto_e
    goto/32 :goto_12

    nop

    :goto_f
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_10
    iget v0, p0, Ldzf;->b:I

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    throw p0

    nop

    :goto_12
    goto/32 :goto_18

    nop

    nop

    :goto_13
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_14
    or-int/2addr v2, v3

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_15
    shl-int/lit8 v1, v3, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v1

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

    :goto_18
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v3, p0, Ldzf;->a:Ljava/io/DataInputStream;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1a
    iget-object v2, p0, Ldzf;->c:Ljava/nio/ByteOrder;

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1b
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1e
    add-int/2addr p0, v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-int/lit8 v0, v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_20
    iput v0, p0, Ldzf;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_21
    throw v0

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_23
    return p0

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-gez v2, :cond_1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    :goto_27
    if-eq v2, v5, :cond_2

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_2
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_28
    shl-int/lit8 v0, v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    shl-int/lit8 v2, v3, 0x10

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_2b
    iget-object p0, p0, Ldzf;->c:Ljava/nio/ByteOrder;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2c
    or-int v2, v1, v0

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

    :goto_2d
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_2e
    shl-int/lit8 p0, v4, 0x18

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_2f
    add-int/2addr p0, v2

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

    :goto_30
    const-string v1, "Invalid byte order: "

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v2, p0, Ldzf;->c:Ljava/nio/ByteOrder;

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

    :goto_32
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_21

    nop

    nop

    :goto_33
    shl-int/lit8 v0, v0, 0x8

    nop

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

    nop

    :goto_34
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_35
    if-lez v0, :cond_3

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_e

    nop

    :goto_36
    add-int/2addr p0, v1

    nop

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

    nop

    :goto_37
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final readLine()Ljava/lang/String;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 p0, 0x0

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

    nop

    nop
.end method

.method public final readLong()J
    .locals 20

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v7}, Ljava/io/DataInputStream;->read()I

    move-result v7

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_1
    add-long/2addr v13, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    shl-long/2addr v4, v12

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_3
    int-to-long v4, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_4
    shl-long/2addr v8, v12

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_5
    shl-long v10, v11, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_6
    or-int/2addr v4, v8

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

    :goto_7
    const v1, 0x3

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_8
    move-wide/from16 v18, v12

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_9
    add-long/2addr v2, v10

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_a
    shl-long v8, v8, v16

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    int-to-long v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_c
    add-int/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v6, v0, Ldzf;->a:Ljava/io/DataInputStream;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_e
    or-int v4, v3, v1

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_f
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_10
    int-to-long v13, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_12
    return-wide v2

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_14
    const/16 v12, 0x20

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v10, v0, Ldzf;->a:Ljava/io/DataInputStream;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_16
    iget-object v7, v0, Ldzf;->a:Ljava/io/DataInputStream;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-long/2addr v13, v10

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_18
    int-to-long v2, v5

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-instance v0, Ljava/io/EOFException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_1a
    shl-long/2addr v4, v10

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v6}, Ljava/io/DataInputStream;->read()I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v10}, Ljava/io/DataInputStream;->read()I

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_1d
    iget-object v0, v0, Ldzf;->c:Ljava/nio/ByteOrder;

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    int-to-long v6, v7

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/16 v17, 0x38

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-long/2addr v2, v6

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

    :goto_21
    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_22
    move-object/from16 v0, p0

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_23
    const/16 v2, 0x8

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
    int-to-long v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v2, v0, Ldzf;->c:Ljava/nio/ByteOrder;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_26
    shl-long v13, v13, v17

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    shl-long/2addr v2, v12

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    shl-long v0, v0, v16

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/16 v10, 0x18

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_2a
    int-to-long v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_2b
    int-to-long v4, v6

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v8, v0, Ldzf;->a:Ljava/io/DataInputStream;

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    add-long/2addr v2, v14

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2e
    int-to-long v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2f
    int-to-long v8, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_30
    shl-long/2addr v0, v12

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_31
    add-long/2addr v2, v8

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_32
    shl-long/2addr v6, v10

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_33
    const/16 v12, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_34
    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_35
    if-gez v4, :cond_0

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_73

    nop

    nop

    nop

    :goto_36
    const/16 v10, 0x28

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_37
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_68

    nop

    :goto_38
    add-long/2addr v13, v8

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v3

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const/16 v12, 0x18

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_3b
    shl-long v16, v18, v10

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_3c
    add-long v2, v2, v16

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v9}, Ljava/io/DataInputStream;->read()I

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_3e
    int-to-long v11, v8

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iput v1, v0, Ldzf;->b:I

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const/16 v10, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_41
    iget-object v1, v0, Ldzf;->a:Ljava/io/DataInputStream;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v5}, Ljava/io/DataInputStream;->read()I

    move-result v5

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_43
    add-long/2addr v2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const/16 v12, 0x10

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

    :goto_45
    move-wide/from16 v18, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_46
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_47
    add-long/2addr v13, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    add-long/2addr v13, v4

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_49
    int-to-long v11, v8

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_4a
    shl-long v2, v2, v17

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v8}, Ljava/io/DataInputStream;->read()I

    move-result v8

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

    :goto_4c
    if-eq v4, v11, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4d
    const/16 v16, 0x30

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_4e
    shl-long v10, v11, v15

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    add-long/2addr v13, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_50
    throw v0

    nop

    nop

    :goto_51
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_52
    iget-object v5, v0, Ldzf;->a:Ljava/io/DataInputStream;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_53
    throw v1

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_56
    const/16 v12, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_57
    or-int/2addr v4, v5

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_58
    or-int/2addr v4, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_59
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_5b
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_5c
    const/16 v15, 0x28

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_5d
    const-string v2, "Invalid byte order: "

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object v9, v0, Ldzf;->a:Ljava/io/DataInputStream;

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_5f
    if-eq v2, v4, :cond_3

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

    :cond_3
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_60
    new-instance v1, Ljava/io/IOException;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    const/16 v10, 0x10

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

    :goto_62
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_63
    or-int/2addr v4, v10

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    shl-long/2addr v6, v12

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_65
    add-long/2addr v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_66
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_67
    int-to-long v14, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_68
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_6a
    iget v1, v0, Ldzf;->b:I

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_6b
    return-wide v13

    nop

    nop

    nop

    :goto_6c
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    int-to-long v8, v9

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

    :goto_6e
    or-int/2addr v4, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_6f
    int-to-long v12, v6

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_70
    or-int/2addr v4, v7

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_71
    int-to-long v6, v7

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_72
    add-long v13, v13, v18

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    iget-object v4, v0, Ldzf;->c:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_74
    const v0, 0xe

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method public final readShort()S
    .locals 4

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    :goto_1
    goto/16 :goto_10

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    const v0, 0x18

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

    nop

    :goto_4
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_6
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput v0, p0, Ldzf;->b:I

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

    :goto_9
    new-instance p0, Ljava/io/EOFException;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_a
    shl-int/lit8 p0, v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Ljava/io/IOException;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v1, "Invalid byte order: "

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_e
    if-gez v2, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int/2addr p0, v1

    nop

    nop

    :goto_10
    goto/32 :goto_14

    nop

    nop

    :goto_11
    add-int/lit8 v0, v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_12
    or-int v2, v1, v0

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

    :goto_13
    iget-object v2, p0, Ldzf;->c:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_14
    int-to-short p0, p0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_16
    return p0

    nop

    nop

    :goto_17
    goto/32 :goto_13

    nop

    nop

    :goto_18
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_19
    iget v0, p0, Ldzf;->b:I

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v2, p0, Ldzf;->c:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_4

    nop

    :goto_1c
    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p0, Ldzf;->c:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    add-int/2addr p0, v0

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

    :goto_1f
    rem-int v0, v0, v1

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

    :goto_20
    const v1, 0x4

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_21
    throw p0

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_0

    nop

    nop

    :goto_23
    if-eq v2, v3, :cond_2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_24
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_25
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_26
    iget-object v0, p0, Ldzf;->a:Ljava/io/DataInputStream;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    shl-int/lit8 p0, v1, 0x8

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_29
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_2a
    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v1

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

    :goto_2b
    if-eq v2, v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2c
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final readUTF()Ljava/lang/String;
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Ldzf;->b:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Ldzf;->a:Ljava/io/DataInputStream;

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

    :goto_3
    return-object p0

    nop

    nop

    :goto_4
    add-int/lit8 v0, v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    iget v0, p0, Ldzf;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final readUnsignedByte()I
    .locals 1

    goto/32 :goto_3

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

    :goto_1
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iget v0, p0, Ldzf;->b:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    iput v0, p0, Ldzf;->b:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    iget-object p0, p0, Ldzf;->a:Ljava/io/DataInputStream;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final readUnsignedShort()I
    .locals 4

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_6
    if-gez v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    :goto_7
    iget-object p0, p0, Ldzf;->c:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eq v2, v3, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    :goto_9
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_b
    shl-int/lit8 p0, v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_c
    const v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    const-string v1, "Invalid byte order: "

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
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_f
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v0, Ljava/io/IOException;

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

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_12
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

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

    :goto_13
    iget-object v2, p0, Ldzf;->c:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_14
    add-int/lit8 v0, v0, 0x2

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_15
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_17
    iget v0, p0, Ldzf;->b:I

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1

    nop

    nop

    :goto_1a
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_1d
    new-instance p0, Ljava/io/EOFException;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

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

    :goto_1f
    add-int/2addr p0, v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v2, p0, Ldzf;->c:Ljava/nio/ByteOrder;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_21
    shl-int/lit8 p0, v1, 0x8

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

    :goto_22
    iget-object v0, p0, Ldzf;->a:Ljava/io/DataInputStream;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-eq v2, v3, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    add-int/2addr p0, v1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-lez v0, :cond_3

    nop

    goto/32 :goto_1a

    nop

    :cond_3
    goto/32 :goto_19

    nop

    :goto_26
    iput v0, p0, Ldzf;->b:I

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_27
    or-int v2, v1, v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_29
    return p0

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final reset()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "Reset is currently unsupported"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    throw p0

    nop

    :goto_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

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
.end method

.method public final skipBytes(I)I
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    :goto_1
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

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

    :goto_3
    const-string p1, "skipBytes is currently unsupported"

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final synthetic transferTo(Ljava/io/OutputStream;)J
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Lj$/io/DesugarInputStream;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide p0

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
    return-wide p0

    nop

    nop

    nop

    nop
.end method
