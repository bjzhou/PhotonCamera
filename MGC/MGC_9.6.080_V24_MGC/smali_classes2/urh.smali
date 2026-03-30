.class public final Lurh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;
.implements Ljava/nio/channels/WritableByteChannel;
.implements Luri;


# instance fields
.field public a:Lurq;

.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

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

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(J)B
    .locals 6

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_0
    cmp-long p0, v1, p1

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_1
    iget p0, v0, Lurq;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_2
    iget-object p0, v0, Lurq;->a:[B

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_3
    add-long/2addr v3, p1

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    :goto_5
    goto/32 :goto_2e

    nop

    nop

    :goto_6
    int-to-long v3, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_7
    iget-wide v1, p0, Lurh;->b:J

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_8
    iget v3, v0, Lurq;->b:I

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

    :goto_9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_31

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_c
    int-to-long v4, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    goto :goto_13

    nop

    nop

    :goto_e
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sub-long/2addr v1, v3

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_10
    add-long/2addr v4, v1

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
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2a

    nop

    :cond_0
    goto/32 :goto_29

    nop

    :goto_12
    aget-byte p0, p0, p1

    nop

    :goto_13
    goto/32 :goto_4

    nop

    nop

    :goto_14
    add-long/2addr v3, p1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_15
    move-wide v2, p1

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

    :goto_16
    invoke-static/range {v0 .. v5}, Lucu;->D(JJJ)V

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_17
    iget v3, v0, Lurq;->b:I

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_18
    cmp-long p0, v4, p1

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_19
    sub-long v3, v1, p1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1a
    const-wide/16 v4, 0x1

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1b
    long-to-int p1, v3

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1c
    goto/16 :goto_38

    nop

    :goto_1d
    goto/32 :goto_3e

    nop

    nop

    :goto_1e
    iget-object v0, v0, Lurq;->g:Lurq;

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

    :goto_1f
    sub-int/2addr p0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_20
    const v0, 0x1c

    nop

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

    nop

    :goto_21
    cmp-long p0, v3, p1

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v0, p0, Lurh;->a:Lurq;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_23
    long-to-int p1, v3

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_24
    iget-wide v0, p0, Lurh;->b:J

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_25
    sub-int/2addr p0, v3

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_26
    int-to-long v3, v3

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_28
    aget-byte p0, p0, p1

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

    :goto_29
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    move-wide v1, v4

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

    :goto_2c
    iget p0, v0, Lurq;->c:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2d
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2c

    nop

    nop

    :goto_2e
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const-wide/16 v1, 0x0

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_34

    nop

    nop

    :goto_32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_26

    nop

    nop

    :goto_33
    sub-long/2addr v3, v1

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_34
    iget p0, v0, Lurq;->c:I

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_35
    int-to-long v3, p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_36
    iget-object v0, v0, Lurq;->f:Lurq;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_37
    if-ltz p0, :cond_1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_1
    :goto_38
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_39
    if-lez p0, :cond_2

    nop

    goto/32 :goto_b

    nop

    :cond_2
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_3a
    add-int v0, v0, v1

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_3b
    iget-object p0, v0, Lurq;->a:[B

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_3c
    if-gtz p0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3f
    sub-long/2addr v3, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()B
    .locals 9

    goto/32 :goto_23

    nop

    nop

    :goto_0
    iget-object v2, p0, Lurh;->a:Lurq;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    new-instance p0, Ljava/io/EOFException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_2
    const-wide/16 v2, 0x0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return v3

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_7
    iput v4, v2, Lurq;->b:I

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    iget-object v5, v2, Lurq;->a:[B

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

    :goto_a
    add-int/lit8 v4, v3, 0x1

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

    :goto_b
    cmp-long v2, v0, v2

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

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    aget-byte v3, v5, v3

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_e
    iput-wide v0, p0, Lurh;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_f
    const-wide/16 v7, -0x1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_10
    goto :goto_8

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v2}, Lurr;->b(Lurq;)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_13
    iget-wide v0, p0, Lurh;->b:J

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

    nop

    nop

    :goto_14
    iget v3, v2, Lurq;->b:I

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

    :goto_15
    invoke-virtual {v2}, Lurq;->a()Lurq;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_16
    add-long/2addr v0, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_17
    iput-object v0, p0, Lurh;->a:Lurq;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    :goto_1a
    if-eq v4, v6, :cond_1

    nop

    goto/32 :goto_11

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    :goto_1b
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1d
    iget v6, v2, Lurq;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1e
    if-nez v2, :cond_2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1f
    throw p0

    nop

    nop

    :goto_20
    goto/32 :goto_18

    nop

    nop

    :goto_21
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_22
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_23
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop
.end method

.method public final c([BII)I
    .locals 7

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
    const v1, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Lurq;->a()Lurq;

    move-result-object p1

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

    :goto_3
    iput-object p1, p0, Lurh;->a:Lurq;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4
    iget v1, v0, Lurq;->c:I

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_5
    iget-object v0, p0, Lurh;->a:Lurq;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int/2addr p1, p3

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_7
    iget p1, v0, Lurq;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    int-to-long v3, p3

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v3, p1, p2, v1, v2}, Lrkm;->be([B[BIII)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    int-to-long v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_c
    goto/16 :goto_24

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-wide v1, p0, Lurh;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_f
    goto/32 :goto_27

    nop

    nop

    :goto_10
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sub-int/2addr v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_12
    iget-wide v1, p0, Lurh;->b:J

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v0}, Lurr;->b(Lurq;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_14
    iput p1, v0, Lurq;->b:I

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

    :goto_15
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_19
    invoke-static/range {v1 .. v6}, Lucu;->D(JJJ)V

    goto/32 :goto_5

    nop

    nop

    :goto_1a
    if-ne p1, p2, :cond_1

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

    :cond_1
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget v2, v0, Lurq;->b:I

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 p0, -0x1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget v1, v0, Lurq;->b:I

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    int-to-long v5, p3

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v3, v0, Lurq;->a:[B

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_20
    const v0, 0x1d

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    array-length v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_22
    add-int v0, v0, v1

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

    :goto_23
    move p0, p3

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_25
    add-int v2, v1, p3

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

    nop

    :goto_26
    return p3

    nop

    nop

    :goto_27
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget p2, v0, Lurq;->c:I

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_29
    sub-long/2addr v1, v3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2a
    int-to-long v3, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2b
    if-eqz v0, :cond_2

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

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    nop

    nop
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 6

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    const-wide/16 v3, 0x0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_b

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x3

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

    :goto_6
    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v2, v2, Lurq;->g:Lurq;

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

    :goto_8
    iput-object v2, v0, Lurh;->a:Lurq;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    iput-wide v1, v0, Lurh;->b:J

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_16

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1e

    nop

    nop

    :goto_f
    new-instance v0, Lurh;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

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

    :goto_11
    invoke-virtual {v1}, Lurq;->b()Lurq;

    move-result-object v2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    const v1, 0x18

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

    nop

    nop

    :goto_13
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v3, v1, Lurq;->f:Lurq;

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v3, v3, Lurq;->f:Lurq;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_19
    if-ne v3, v1, :cond_1

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

    :cond_1
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1a
    iput-object v3, v2, Lurq;->f:Lurq;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1b
    invoke-virtual {v4, v5}, Lurq;->d(Lurq;)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1c
    cmp-long v1, v1, v3

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1d
    iget-wide v1, p0, Lurh;->b:J

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1e
    iget-wide v1, p0, Lurh;->b:J

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1f
    iget-object v1, p0, Lurh;->a:Lurq;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {v0}, Lurh;-><init>()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v4, v2, Lurq;->g:Lurq;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    :goto_24
    invoke-virtual {v3}, Lurq;->b()Lurq;

    move-result-object v5

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

    :goto_25
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v3, v2, Lurq;->g:Lurq;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public final d(Lurj;)J
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

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
.end method

.method public final e(Lurh;J)J
    .locals 16

    goto/32 :goto_15

    nop

    nop

    :goto_0
    const-wide/16 v4, 0x2000

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget v5, v4, Lurq;->b:I

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v5, v8, Lurq;->g:Lurq;

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v4, v9, v10, v13}, Lrkm;->bi([B[BII)V

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v4, v0, Lurh;->a:Lurq;

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget v10, v4, Lurq;->b:I

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    iget v9, v8, Lurq;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_7
    iget-wide v4, v0, Lurh;->b:J

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v2, v3, v0}, Lmf;->e(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sub-int/2addr v9, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_a
    long-to-int v12, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_b
    iget-object v4, v0, Lurh;->a:Lurq;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz v6, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    const-wide/16 v4, 0x0

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_e
    add-int/2addr v10, v11

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_f
    move-object/from16 v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_10
    const-wide/16 v0, -0x1

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-long/2addr v8, v4

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v5, v4}, Lurq;->d(Lurq;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget v10, v8, Lurq;->b:I

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_17
    move-wide v11, v2

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_18
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_a

    nop

    nop

    :goto_1a
    invoke-virtual {v4}, Lurq;->a()Lurq;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-long/2addr v4, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static/range {v7 .. v12}, Lucu;->D(JJJ)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v9, v5, Lurq;->a:[B

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_20
    iput-wide v8, v1, Lurh;->b:J

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_21
    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_8c

    nop

    nop

    :goto_23
    iput v5, v4, Lurq;->c:I

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_24
    if-eqz v8, :cond_1

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6b

    nop

    nop

    :goto_25
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_26
    iput-wide v4, v0, Lurh;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_27
    if-gez v6, :cond_2

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-wide v8, v1, Lurh;->b:J

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v10, v10, Lurq;->g:Lurq;

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2b
    iget-boolean v9, v8, Lurq;->e:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_2c
    invoke-virtual {v4, v8, v9}, Lurq;->c(Lurq;I)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v8, v4}, Lurq;->d(Lurq;)V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget v15, v10, Lurq;->b:I

    nop

    :goto_2f
    goto/32 :goto_56

    nop

    nop

    :goto_30
    iget v5, v8, Lurq;->b:I

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v4, v8, Lurq;->a:[B

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_33
    cmp-long v6, v2, v4

    nop

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

    :goto_34
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_35
    new-instance v1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_36
    move-wide v6, v2

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/16 :goto_7c

    nop

    :goto_39
    goto/32 :goto_7e

    nop

    nop

    :goto_3a
    throw v0

    nop

    nop

    :goto_3b
    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_3c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_3d
    cmp-long v4, v13, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v4}, Lurq;->a()Lurq;

    goto/32 :goto_a7

    nop

    nop

    :goto_3f
    iput v5, v8, Lurq;->b:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_40
    iget-object v8, v1, Lurh;->a:Lurq;

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

    :goto_41
    if-le v12, v9, :cond_3

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    sub-long/2addr v4, v6

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v8, v4, Lurq;->g:Lurq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    :goto_44
    iget-object v10, v1, Lurh;->a:Lurq;

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_45
    move-wide/from16 v2, p2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v8, v8, Lurq;->g:Lurq;

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_47
    iput-object v8, v4, Lurq;->f:Lurq;

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_48
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_4b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    const-wide/16 v9, 0x0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_4d
    iget v5, v4, Lurq;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_4e
    add-long/2addr v13, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget-boolean v12, v8, Lurq;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    sub-int/2addr v5, v8

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_51
    iget v9, v4, Lurq;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_52
    int-to-long v10, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_53
    add-int/2addr v5, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_54
    iput-object v8, v0, Lurh;->a:Lurq;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_55
    const-wide/16 v4, 0x0

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_56
    int-to-long v4, v15

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_57
    iget v10, v8, Lurq;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_58
    iget-wide v7, v0, Lurh;->b:J

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    rsub-int v10, v10, 0x2000

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iget-wide v8, v0, Lurh;->b:J

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    if-nez v10, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :cond_4
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    cmp-long v8, v6, v4

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_5d
    goto/16 :goto_a8

    nop

    nop

    :goto_5e
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_5f
    move-object v4, v5

    nop

    nop

    :goto_60
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iput-object v4, v4, Lurq;->g:Lurq;

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_62
    if-gtz v6, :cond_5

    nop

    nop

    goto/32 :goto_b6

    nop

    :cond_5
    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_63
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {v8, v10, v12}, Lurq;->c(Lurq;I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iget-boolean v13, v10, Lurq;->e:Z

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    :goto_67
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_68
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_69
    cmp-long v10, v6, v10

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_6a
    if-nez v10, :cond_6

    nop

    goto/32 :goto_76

    nop

    :cond_6
    goto/32 :goto_65

    nop

    nop

    :goto_6b
    iput-object v4, v1, Lurh;->a:Lurq;

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    if-ne v0, v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    const-string v1, "cannot compact"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_6e
    if-lez v4, :cond_8

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_6f
    sub-long/2addr v13, v4

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_70
    int-to-long v13, v13

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_71
    if-nez v15, :cond_9

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_72
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v8}, Lurq;->b()Lurq;

    move-result-object v4

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :goto_75
    goto/16 :goto_3b

    nop

    :goto_76
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_77
    const-string v1, "source == this"

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_78
    if-nez v12, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_7f

    nop

    nop

    :goto_79
    goto/16 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    goto/32 :goto_87

    nop

    nop

    nop

    :goto_7b
    move-wide v0, v2

    nop

    nop

    nop

    nop

    :goto_7c
    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_7d
    const/16 v4, 0x400

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    cmp-long v6, v2, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_7f
    goto/16 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_80
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_81
    cmp-long v6, v7, v4

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_82
    if-ltz v10, :cond_b

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :cond_b
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    int-to-long v4, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_84
    iget-object v8, v4, Lurq;->g:Lurq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_85
    if-le v9, v10, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_86
    iget v8, v4, Lurq;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_87
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_88
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_64

    nop

    nop

    :goto_89
    iget v13, v10, Lurq;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_8a
    iget-wide v4, v1, Lurh;->b:J

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_8b
    add-int v13, v10, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8c
    move-object/from16 v0, p0

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

    :goto_8d
    iget v11, v8, Lurq;->b:I

    nop

    :goto_8e
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_90
    add-int/2addr v5, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_91
    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_92
    iget v10, v8, Lurq;->c:I

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_93
    if-nez v13, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    iget-boolean v15, v10, Lurq;->d:Z

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

    :goto_95
    const-string v1, "byteCount out of range"

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

    nop

    nop

    :goto_96
    iget-object v8, v0, Lurh;->a:Lurq;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_97
    goto/16 :goto_49

    nop

    nop

    nop

    :goto_98
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    sub-long/2addr v6, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-static {}, Lurr;->a()Lurq;

    move-result-object v5

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_9b
    if-lez v0, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_21

    nop

    :goto_9c
    const-string v0, "byteCount < 0: "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_9d
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_9e
    if-gtz v8, :cond_f

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    :cond_f
    goto/32 :goto_96

    nop

    nop

    :goto_9f
    if-ge v12, v4, :cond_10

    nop

    nop

    goto/32 :goto_b4

    nop

    :cond_10
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_a0
    iput-wide v8, v0, Lurh;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_a1
    sub-int/2addr v9, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_a2
    move v15, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_a3
    throw v0

    nop

    nop

    nop

    :goto_a4
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_a6
    iput-wide v4, v1, Lurh;->b:J

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_a7
    invoke-static {v4}, Lurr;->b(Lurq;)V

    :goto_a8
    goto/32 :goto_83

    nop

    nop

    :goto_a9
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_aa
    throw v1

    nop

    nop

    nop

    nop

    :goto_ab
    goto/32 :goto_68

    nop

    nop

    :goto_ac
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_ad
    if-nez v9, :cond_11

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_51

    nop

    nop

    :goto_ae
    if-ne v8, v4, :cond_12

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_af
    sub-long/2addr v8, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    goto/16 :goto_2f

    nop

    nop

    nop

    nop

    :goto_b2
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    goto/16 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_b5
    move-wide v2, v7

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    return-wide v0

    nop

    nop

    nop

    :goto_b8
    goto/32 :goto_ac

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 18

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_0
    instance-of v3, v1, Lurh;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

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

    :goto_2
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_50

    nop

    :goto_4
    goto/32 :goto_48

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

    goto/32 :goto_40

    nop

    :cond_0
    goto/32 :goto_3f

    nop

    :goto_6
    iget-object v15, v3, Lurq;->a:[B

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-wide/16 v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_8
    add-int/lit8 v16, v5, 0x1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-wide v7, v1, Lurh;->b:J

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :cond_1
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v3, v3, Lurq;->f:Lurq;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v1, v1, Lurh;->a:Lurq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_d
    int-to-long v11, v11

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_e
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_f
    goto :goto_17

    nop

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_11
    if-eq v0, v1, :cond_2

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-long/2addr v13, v5

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_13
    iget-object v1, v1, Lurq;->f:Lurq;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_14
    move v2, v4

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

    :goto_15
    add-int/lit8 v17, v6, 0x1

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_16
    if-eqz v3, :cond_3

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

    nop

    :cond_3
    :goto_17
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_19
    add-long/2addr v9, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1a
    if-ne v5, v6, :cond_4

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_4

    nop

    :goto_1c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v3, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    aget-byte v5, v15, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_30

    nop

    nop

    :goto_23
    move/from16 v5, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_24
    iget v11, v3, Lurq;->c:I

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_28
    cmp-long v15, v13, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_29
    iget v6, v1, Lurq;->b:I

    nop

    nop

    :goto_2a
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-eq v5, v13, :cond_6

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :cond_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    move/from16 v6, v17

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2d
    if-ltz v11, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_7
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget v5, v3, Lurq;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_2f
    iget-wide v11, v0, Lurh;->b:J

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_30
    iget-wide v5, v0, Lurh;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_31
    cmp-long v11, v9, v11

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_32
    const v1, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_33
    sub-int/2addr v11, v5

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_34
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_35
    if-eq v6, v13, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_37
    aget-byte v6, v15, v6

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v15, v1, Lurq;->a:[B

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    cmp-long v3, v5, v7

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3a
    cmp-long v3, v5, v7

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    sub-int/2addr v12, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3c
    iget v13, v1, Lurq;->c:I

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const-wide/16 v7, 0x0

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_3e
    iget v12, v1, Lurq;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_41
    iget v5, v3, Lurq;->b:I

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_43
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_44
    goto/16 :goto_17

    nop

    :goto_45
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v3, v0, Lurh;->a:Lurq;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_47
    iget v13, v3, Lurq;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_48
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_2

    nop

    nop

    :goto_4a
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_4c
    move-wide v13, v7

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_28

    nop

    nop

    :goto_4e
    move-object/from16 v1, p1

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

    :goto_4f
    move-wide v9, v7

    nop

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_2f

    nop

    nop

    :goto_51
    check-cast v1, Lurh;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_41

    nop

    nop

    :goto_53
    iget v6, v1, Lurq;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_54
    if-ltz v15, :cond_9

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_55
    const v0, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 9

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2f

    nop

    nop

    :goto_2
    iget-object v4, v0, Lurq;->a:[B

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    cmp-long v0, p1, v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    cmp-long v3, v1, p1

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

    :goto_7
    sub-long/2addr v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    iput v3, v0, Lurq;->b:I

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

    :goto_9
    if-gez v0, :cond_1

    nop

    goto/32 :goto_3a

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    :goto_a
    if-gez v3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_38

    nop

    nop

    :goto_b
    long-to-int v5, p1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_e
    iput-wide v1, p0, Lurh;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_10
    iget v6, v0, Lurq;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_11
    cmp-long v4, v4, v7

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

    nop

    :goto_12
    const-string p0, "byteCount: "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_13
    add-int/2addr v3, v5

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_14
    iget v3, v0, Lurq;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v7, Ljava/lang/String;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_16
    invoke-direct {v0, p0, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto/32 :goto_28

    nop

    nop

    :goto_17
    const-string p0, ""

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Lurq;->a()Lurq;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p1, p2, p0}, Lmf;->e(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1a
    const-wide/16 v0, 0x0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-gtz v4, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v0}, Lurr;->b(Lurq;)V

    :goto_1d
    goto/32 :goto_2a

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

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

    :goto_1f
    invoke-virtual {p0, p1, p2}, Lurh;->m(J)[B

    move-result-object p0

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

    :goto_20
    new-instance v0, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_21
    cmp-long v1, p1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const-wide/32 v1, 0x7fffffff

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_23
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_24
    new-instance p0, Ljava/io/EOFException;

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_25
    const v1, 0xb

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

    :goto_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v0, p0, Lurh;->a:Lurq;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_28
    return-object v0

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    return-object v7

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2c
    iget-wide v1, p0, Lurh;->b:J

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    goto/32 :goto_39

    nop

    nop

    :goto_2e
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1a

    nop

    nop

    :goto_2f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iput-object p1, p0, Lurh;->a:Lurq;

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

    :goto_31
    invoke-direct {v7, v4, v3, v5, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto/32 :goto_13

    nop

    nop

    :goto_32
    if-lez v1, :cond_4

    nop

    goto/32 :goto_3a

    nop

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

    nop

    :goto_33
    int-to-long v7, v6

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

    :goto_34
    if-eq v3, v6, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_5
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_35
    int-to-long v4, v3

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_36
    return-object p0

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_38
    if-eqz v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    :cond_6
    goto/32 :goto_17

    nop

    nop

    :goto_39
    throw p0

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_14

    nop

    nop

    :goto_3c
    add-long/2addr v4, p1

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
.end method

.method public final flush()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final g(J)Ljava/lang/String;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lurh;->f(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    sget-object v0, Luei;->a:Ljava/nio/charset/Charset;

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
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final h(I)Lurj;
    .locals 7

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p0, Lurj;->a:Lurj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1
    const v1, 0x19

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2
    add-int/2addr v1, v5

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v6, p0, Lurq;->b:I

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

    :goto_4
    iget v5, v0, Lurq;->b:I

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_5
    new-array v2, v2, [I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_6
    if-lt v1, p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_7
    sub-int/2addr v5, v6

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    int-to-long v4, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    const v0, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    move v2, v1

    nop

    nop

    goto/32 :goto_42

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

    :goto_c
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_d
    invoke-static/range {v0 .. v5}, Lucu;->D(JJJ)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_e
    aput v5, v2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_12
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    iget-object v0, v0, Lurq;->f:Lurq;

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

    nop

    :goto_14
    iget-object p0, p0, Lurq;->f:Lurq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lurh;->a:Lurq;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_16
    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget v4, v0, Lurq;->c:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-instance p0, Ljava/lang/AssertionError;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p0, p0, Lurh;->a:Lurq;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1e
    add-int v5, v4, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_1f
    goto :goto_2b

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_23

    nop

    nop

    :goto_21
    sub-int/2addr v4, v5

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_22
    iput-boolean v5, p0, Lurq;->d:Z

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

    nop

    :goto_23
    iget-wide v0, p0, Lurh;->b:J

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

    :goto_24
    new-array v0, v3, [[B

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_25
    iget v5, p0, Lurq;->c:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_26
    add-int/2addr v4, v5

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

    :goto_27
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_28
    aput-object v5, v0, v4

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_29
    iget-object v5, p0, Lurq;->a:[B

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2a
    invoke-direct {p0, v0, v2}, Lurs;-><init>([[B[I)V

    :goto_2b
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_2e
    new-instance p0, Lurs;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_2f
    if-lt v2, p1, :cond_2

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    sget-object p1, Lcom/google/android/apps/camera/jni/gyro/xfsr/FACWQLkhP;->yKBxMHw:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_31
    goto :goto_37

    nop

    nop

    :goto_32
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_43

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_35
    if-ne v4, v5, :cond_3

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_21

    nop

    nop

    :goto_36
    move v4, v1

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    add-int v2, v3, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_39
    iget v6, p0, Lurq;->b:I

    nop

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

    nop

    :goto_3a
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_3b
    if-lez v0, :cond_4

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

    :cond_4
    goto/32 :goto_10

    nop

    :goto_3c
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    aput v6, v2, v5

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_40
    add-int/2addr v2, v4

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const/4 v5, 0x1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_42
    move v3, v2

    nop

    :goto_43
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 5

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eq v0, v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_15

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move p0, v1

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

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

    :goto_6
    goto :goto_4

    nop

    nop

    :goto_7
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_8
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    if-lt v2, v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_b
    iget-object v0, v0, Lurq;->f:Lurq;

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
    rem-int v0, v0, v1

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

    nop

    :goto_d
    mul-int/lit8 v1, v1, 0x1f

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_e
    return p0

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

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

    :goto_11
    iget-object v0, p0, Lurh;->a:Lurq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x1

    nop

    :goto_13
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget v3, v0, Lurq;->c:I

    nop

    nop

    :goto_15
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v2, p0, Lurh;->a:Lurq;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_17
    const v0, 0x17

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

    :goto_18
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_11

    nop

    nop

    :goto_1a
    aget-byte v4, v4, v2

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1b
    iget v2, v0, Lurq;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1c
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1d
    iget-object v4, v0, Lurq;->a:[B

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1e
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    :goto_1f
    const v1, 0x16

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

    nop

    nop

    :goto_20
    add-int/2addr v1, v4

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop
.end method

.method public final i(I)Lurq;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    const/16 p1, 0x2000

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, v0, Lurq;->g:Lurq;

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

    :goto_3
    iget-object v0, p0, Lurh;->a:Lurq;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    if-eqz p1, :cond_1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    :goto_5
    goto/16 :goto_17

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p1, p1, Lurq;->g:Lurq;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    return-object p1

    nop

    nop

    nop

    nop

    :goto_9
    iget v0, p0, Lurq;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    iput-object p1, p1, Lurq;->f:Lurq;

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

    :goto_b
    add-int/2addr v0, p1

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

    :goto_c
    invoke-static {}, Lurr;->a()Lurq;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, p1}, Lurq;->d(Lurq;)V

    :goto_e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-boolean p1, p0, Lurq;->e:Z

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_9

    nop

    nop

    :goto_11
    move-object p1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_12
    invoke-static {}, Lurr;->a()Lurq;

    move-result-object p1

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
    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_15
    if-le v0, p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    :goto_16
    goto :goto_e

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-object p1, p0, Lurh;->a:Lurq;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public final isOpen()Z
    .locals 0

    goto/32 :goto_1

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
    const/4 p0, 0x1

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
.end method

.method public final j()V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_1
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    :goto_4
    const v0, 0x16

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    iget-wide v0, p0, Lurh;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    invoke-virtual {p0, v0, v1}, Lurh;->k(J)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
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

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop
.end method

.method public final k(J)V
    .locals 6

    goto/32 :goto_2

    nop

    nop

    :goto_0
    int-to-long v4, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    sub-long/2addr p1, v4

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Lurr;->b(Lurq;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    int-to-long v1, v1

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
    sub-long/2addr v2, v4

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

    :goto_6
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_7
    if-eq v2, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_0
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget v2, v0, Lurq;->b:I

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_9
    throw p0

    nop

    :goto_a
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance p0, Ljava/io/EOFException;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_c
    iget v1, v0, Lurq;->c:I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_d
    sub-int/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_24

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    :goto_10
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_23

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_13
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v0, :cond_2

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

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget v1, v0, Lurq;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_16
    iput-wide v2, p0, Lurh;->b:J

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_18
    long-to-int v1, v1

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

    :goto_19
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lurh;->a:Lurq;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    :goto_1c
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput v2, v0, Lurq;->b:I

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

    :goto_1e
    iput-object v1, p0, Lurh;->a:Lurq;

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

    :goto_1f
    cmp-long v0, p1, v0

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_20
    if-gtz v0, :cond_3

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_21
    iget-wide v2, p0, Lurh;->b:J

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_22
    add-int/2addr v2, v1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_1c

    nop

    nop

    :goto_24
    goto/32 :goto_26

    nop

    nop

    :goto_25
    iget v2, v0, Lurq;->b:I

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_26
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_27
    invoke-virtual {v0}, Lurq;->a()Lurq;

    move-result-object v1

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

    nop
.end method

.method public final l(J)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final m(J)[B
    .locals 3

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    :goto_1
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

    :goto_2
    if-ne v1, v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_7
    if-lt v0, p1, :cond_2

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v2, -0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    invoke-virtual {p0, p2, v0, v1}, Lurh;->c([BII)I

    move-result v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    new-instance p0, Ljava/io/EOFException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_b
    new-array p2, p1, [B

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_c
    cmp-long v0, v0, p1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-gez v0, :cond_3

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_e
    const v1, 0xb

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sub-int v1, p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_10
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    long-to-int p1, p1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_12
    new-instance p0, Ljava/io/EOFException;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_13
    throw p0

    nop

    :goto_14
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    throw p0

    nop

    nop

    :goto_16
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v0, 0x0

    nop

    nop

    :goto_18
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1a
    return-object p2

    nop

    nop

    :goto_1b
    goto/32 :goto_12

    nop

    nop

    :goto_1c
    const v0, 0xe

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1f

    nop

    nop

    :goto_1e
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_20

    nop

    nop

    :goto_20
    iget-wide v0, p0, Lurh;->b:J

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final n(Lurt;)V
    .locals 4

    goto/32 :goto_1

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_b

    nop

    nop

    :goto_1
    const v0, 0xb

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

    nop

    :goto_2
    cmp-long v0, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    const-wide/16 v0, 0x2000

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

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-wide/16 v2, -0x1

    nop

    nop

    goto/32 :goto_2

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

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    invoke-interface {p1, p0, v0, v1}, Lurt;->e(Lurh;J)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    const v1, 0x13

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

    :goto_b
    return-void

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
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_1
    goto/32 :goto_8

    nop

    :goto_e
    goto/32 :goto_9

    nop
.end method

.method public final o(I)V
    .locals 4

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, v0, Lurq;->a:[B

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-long/2addr v0, v2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0xd

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    iget v2, v0, Lurq;->c:I

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    const-wide/16 v2, 0x1

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

    :goto_7
    aput-byte p1, v1, v2

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

    :goto_8
    int-to-byte p1, p1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    invoke-virtual {p0, v0}, Lurh;->i(I)Lurq;

    move-result-object v0

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

    :goto_a
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

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

    :goto_d
    add-int/lit8 v3, v2, 0x1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_e
    iput-wide v0, p0, Lurh;->b:J

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_f
    iput v3, v0, Lurq;->c:I

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-wide v0, p0, Lurh;->b:J

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic p()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v0, 0x22

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lurh;->o(I)V

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
.end method

.method public final q(I)V
    .locals 6

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    shr-int/lit8 v5, p1, 0x18

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    aput-byte v4, v2, v5

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

    :goto_2
    aput-byte p1, v2, v4

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_3
    const v0, 0x19

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

    :goto_4
    int-to-byte p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    iput v3, v1, Lurq;->c:I

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int/lit8 v5, v3, 0x2

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-wide v0, p0, Lurh;->b:J

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_9
    invoke-virtual {p0, v0}, Lurh;->i(I)Lurq;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_a
    ushr-int/lit8 v4, p1, 0x8

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

    :goto_b
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_c
    aput-byte v5, v2, v4

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
    int-to-byte v5, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_e
    and-int/lit16 v5, v5, 0xff

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_f
    and-int/lit16 v4, v4, 0xff

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_10
    add-int/2addr v3, v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_11
    ushr-int/lit8 v5, p1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    :goto_13
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    aput-byte v5, v2, v3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_15
    add-int/lit8 v4, v3, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_16
    add-int/lit8 v4, v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_17
    iget v3, v1, Lurq;->c:I

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_18
    int-to-byte v4, v4

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_19
    const-wide/16 v2, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1b
    goto/32 :goto_13

    nop

    :goto_1c
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-long/2addr v0, v2

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

    :goto_1e
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_1b

    nop

    :goto_1f
    and-int/lit16 p1, p1, 0xff

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v0, 0x4

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v2, v1, Lurq;->a:[B

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_22
    int-to-byte v5, v5

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

    :goto_23
    const v1, 0x19

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

    :goto_24
    iput-wide v0, p0, Lurh;->b:J

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop
.end method

.method public final r(Ljava/lang/String;II)V
    .locals 9

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_0
    if-lt v1, v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_1
    int-to-byte v8, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_98

    nop

    :goto_3
    iput v6, v3, Lurq;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v4, v3, Lurq;->a:[B

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_5
    shr-int/lit8 v6, v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_1d

    nop

    :goto_7
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move p2, v1

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_9
    int-to-byte v0, v0

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    :goto_a
    if-lt p2, p3, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_2
    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_5c

    nop

    :goto_c
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_d
    const-string p2, " > "

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_e
    if-lt v0, p3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    :goto_10
    and-int/lit8 v1, v1, 0x3f

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

    :goto_11
    invoke-virtual {p0, p2}, Lurh;->i(I)Lurq;

    move-result-object v3

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_12
    and-int/2addr v0, v4

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int/2addr v6, p2

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

    :goto_14
    add-int/2addr v5, p2

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_15
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_16
    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_17
    const-string p1, " < "

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_18
    iget v6, v3, Lurq;->c:I

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_19
    add-int/2addr p2, v5

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_1b
    aput-byte v0, v4, p2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1c
    const/4 v3, 0x0

    nop

    :goto_1d
    goto/32 :goto_69

    nop

    nop

    :goto_1e
    const/4 v3, 0x4

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_1f
    or-int/lit16 v7, v7, 0xe0

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_20
    const-wide/16 v2, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-lt p2, v6, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    :cond_4
    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-ge v3, v5, :cond_5

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    aput-byte v1, v4, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_25
    throw p1

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    add-int/lit8 v7, v6, 0x1

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_28
    aput-byte v1, v6, v7

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v5, v3, Lurq;->a:[B

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2a
    sub-int/2addr v5, p2

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    throw p1

    nop

    nop

    :goto_2c
    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget v0, v3, Lurq;->c:I

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    sub-int/2addr v5, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_2f
    return-void

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_31
    int-to-byte v6, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_33
    int-to-byte v1, v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {p2, p3, p0, p1}, La;->bh(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget v7, v5, Lurq;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_37
    add-int/2addr v0, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_38
    and-int/lit16 v0, v1, 0x3ff

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const v1, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_3a
    if-ge p3, p2, :cond_6

    nop

    goto/32 :goto_a3

    nop

    :cond_6
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_3b
    int-to-long v2, v5

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_3c
    shr-int/lit8 v8, v1, 0x6

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

    :goto_3d
    shr-int/lit8 v8, v0, 0xc

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-le v1, v5, :cond_7

    nop

    nop

    goto/32 :goto_85

    nop

    :cond_7
    goto/32 :goto_c0

    nop

    nop

    :goto_3f
    if-gez p2, :cond_8

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_40
    or-int/2addr v8, v2

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_42
    int-to-byte v8, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const/high16 v1, 0x10000

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_44
    iget-wide v0, p0, Lurh;->b:J

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

    :goto_45
    or-int/2addr v0, v2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_46
    aput-byte v6, v4, v5

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_47
    if-gt v1, v3, :cond_9

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    :cond_9
    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {p0, v3}, Lurh;->i(I)Lurq;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_49
    int-to-byte v1, v1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_4a
    or-int/2addr v1, v2

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_4b
    add-int/lit8 v1, v7, 0x3

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    and-int/2addr v4, v8

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    add-long/2addr v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/16 :goto_b9

    nop

    nop

    :goto_4f
    goto/32 :goto_55

    nop

    nop

    :goto_50
    const-wide/16 v3, 0x2

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_51
    if-lt v0, v2, :cond_a

    nop

    goto/32 :goto_82

    nop

    nop

    :cond_a
    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_52
    add-int/lit8 v4, v6, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_54
    iput-wide v0, p0, Lurh;->b:J

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_55
    const v3, 0xd800

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_56
    aput-byte v7, v5, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_57
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_80

    nop

    nop

    :goto_58
    aput-byte v8, v6, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_59
    add-int/2addr v7, v3

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_5a
    shr-int/lit8 v7, v1, 0xc

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_5b
    if-le p3, v0, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_b
    :goto_5c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5d
    goto :goto_5c

    nop

    nop

    :goto_5e
    goto/32 :goto_71

    nop

    nop

    nop

    :goto_5f
    iget-wide v1, p0, Lurh;->b:J

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_60
    iput v5, v3, Lurq;->c:I

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    add-int/2addr p2, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_62
    or-int/lit16 v1, v1, 0xf0

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_63
    if-lt v1, v3, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :goto_64
    add-int/lit8 p2, p2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_65
    const/16 v2, 0x80

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_66
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    aput-byte v1, v4, p2

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iput v0, v3, Lurq;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_69
    const v5, 0xdbff

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    or-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    or-int/lit16 v6, v6, 0xc0

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    const/16 v4, 0x3f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    int-to-byte v0, v0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    add-int/lit8 v1, p2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_6f
    sget-object p2, Lcom/google/android/apps/camera/whitebalance/YD/hwKuVzZ;->PcvmVzcD:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_70
    and-int/lit8 v1, v1, 0x3f

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    const/16 v3, 0x800

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_72
    iget v5, v3, Lurq;->c:I

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_73
    invoke-static {p2, p0}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

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

    :goto_74
    const v5, 0xe000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    add-long/2addr v0, v2

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_76
    invoke-virtual {p0, v4}, Lurh;->o(I)V

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_77
    goto/16 :goto_b9

    nop

    :goto_78
    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_79
    aput-byte v4, v5, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_7a
    and-int/2addr v8, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_7b
    iget-wide v0, p0, Lurh;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_7c
    or-int/2addr v1, v2

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_7d
    shr-int/lit8 v1, v0, 0x12

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_7e
    rsub-int v6, v5, 0x2000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    const v3, 0xdfff

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_80
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    :goto_81
    goto/16 :goto_be

    nop

    :goto_82
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_83
    iput v7, v5, Lurq;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_84
    goto/16 :goto_5c

    nop

    nop

    :goto_85
    goto/32 :goto_76

    nop

    nop

    :goto_86
    int-to-byte v4, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_87
    int-to-byte v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_88
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3f

    nop

    nop

    :goto_89
    const-string p0, "beginIndex < 0: "

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_8a
    iget-object v6, v5, Lurq;->a:[B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_8b
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    :goto_8c
    iput-wide v1, p0, Lurh;->b:J

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_8d
    shl-int/lit8 v0, v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_8f
    iget-object v4, v3, Lurq;->a:[B

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_90
    and-int/lit16 v1, v3, 0x3ff

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    if-ge v1, v3, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    :cond_d
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_92
    shr-int/lit8 v8, v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_93
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_94
    add-long/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_95
    new-instance p1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    :goto_96
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_97
    aput-byte v1, v5, v4

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

    :goto_98
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_99
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_9a
    add-int/2addr v5, p2

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    int-to-byte v1, v1

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    invoke-virtual {p0, p2}, Lurh;->i(I)Lurq;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    sget-object p0, Lcom/google/android/libraries/mdi/download/workmanager/workers/UTR/fllg;->lUFjlrsvhnRijaV:Ljava/lang/String;

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

    :goto_9e
    add-int/lit8 v1, v7, 0x2

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_9f
    add-int/lit8 v1, v7, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_a0
    iput-wide v0, p0, Lurh;->b:J

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    int-to-byte v7, v7

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_a2
    throw p1

    nop

    :goto_a3
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    const v0, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_a6
    and-int/2addr v8, v4

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_a7
    const-wide/16 v3, 0x3

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

    nop

    nop

    :goto_a8
    if-lt v3, v5, :cond_e

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :cond_e
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    or-int/2addr v4, v2

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_ab
    add-int/lit8 v6, v5, 0x1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_ac
    add-long/2addr v1, v3

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    or-int/2addr v8, v2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-static {p3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_af
    const/4 p2, 0x0

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    add-int/lit8 v0, p2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_b1
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    goto/16 :goto_78

    nop

    :goto_b3
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b4
    iget v5, v3, Lurq;->c:I

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_b5
    aput-byte v0, v6, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_b6
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_b7
    iget-wide v1, p0, Lurh;->b:J

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_b8
    iput-wide v1, p0, Lurh;->b:J

    nop

    :goto_b9
    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    invoke-virtual {p0, v3}, Lurh;->i(I)Lurq;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_bb
    aput-byte v8, v6, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    move p2, v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_bd
    move p2, v0

    nop

    nop

    nop

    :goto_be
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_bf
    const/4 p2, 0x3

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    const v5, 0xdc00

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_c1
    const/4 p2, 0x2

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 6

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lurh;->a:Lurq;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
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

    :goto_3
    goto/32 :goto_1f

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    :goto_5
    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto/32 :goto_20

    nop

    nop

    :goto_6
    const v1, 0x1d

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

    :goto_7
    int-to-long v4, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eq p1, v2, :cond_1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    :goto_9
    iget v3, v0, Lurq;->b:I

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

    :goto_a
    iget v2, v0, Lurq;->c:I

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_13

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_d
    iget v3, v0, Lurq;->b:I

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

    :goto_e
    sub-int/2addr v2, v3

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_f
    const/4 p0, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_10
    iget-object v2, v0, Lurq;->a:[B

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_12
    iget v2, v0, Lurq;->c:I

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lurh;->a:Lurq;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput p1, v0, Lurq;->b:I

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Lurq;->a()Lurq;

    move-result-object p1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_18
    sub-long/2addr v2, v4

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_19
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

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

    nop

    nop

    :goto_1a
    invoke-static {v0}, Lurr;->b(Lurq;)V

    :goto_1b
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1c
    return p0

    nop

    nop

    :goto_1d
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1e
    return v1

    nop

    nop

    :goto_1f
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_20
    iget p1, v0, Lurq;->b:I

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_22
    iput-wide v2, p0, Lurh;->b:J

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_23
    iget-wide v2, p0, Lurh;->b:J

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    add-int/2addr p1, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    goto/32 :goto_6

    nop

    nop

    :goto_0
    invoke-static {v0, v1, p0}, Lmf;->e(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Lurh;->h(I)Lurj;

    move-result-object p0

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

    :goto_3
    throw v0

    nop

    :goto_4
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-wide v0, p0, Lurh;->b:J

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    const v0, 0x17

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    if-lez v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    :goto_a
    const-wide/32 v2, 0x7fffffff

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    const-string p0, "size > Int.MAX_VALUE: "

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

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    :goto_e
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_c

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lurj;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_12
    cmp-long v2, v0, v2

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

    :goto_13
    long-to-int v0, v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_15

    nop

    nop

    nop
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .locals 6

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v5, v2, Lurq;->c:I

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sub-int/2addr v1, v3

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

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x9

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-gtz v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-long/2addr v1, v3

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

    :goto_6
    goto/16 :goto_20

    nop

    :goto_7
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v2}, Lurh;->i(I)Lurq;

    move-result-object v2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

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

    :goto_a
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

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

    :goto_b
    goto/32 :goto_10

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_e
    rsub-int v3, v3, 0x2000

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

    :goto_f
    return v0

    nop

    :goto_10
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int/2addr v4, v3

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

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_15
    iput v4, v2, Lurq;->c:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v4, v2, Lurq;->a:[B

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_17
    int-to-long v3, v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_19
    iget v4, v2, Lurq;->c:I

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

    :goto_1a
    iget v3, v2, Lurq;->c:I

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

    :goto_1b
    iget-wide v1, p0, Lurh;->b:J

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

    :goto_1c
    iput-wide v1, p0, Lurh;->b:J

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

    :goto_1d
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    move v1, v0

    nop

    :goto_20
    goto/32 :goto_4

    nop

    nop
.end method
