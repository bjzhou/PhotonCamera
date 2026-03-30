.class final Lfpo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfpn;


# instance fields
.field private final synthetic a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput p2, p0, Lfpo;->a:I

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

    :goto_2
    iput-object p1, p0, Lfpo;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-void

    nop

    nop
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    iput p2, p0, Lfpo;->a:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    sget-object p0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    iput-object p1, p0, Lfpo;->b:Ljava/lang/Object;

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
.end method


# virtual methods
.method public final a()I
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lfpo;->d()S

    move-result p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    shl-int/lit8 v0, v0, 0x8

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    or-int/2addr p0, v0

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

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lfpo;->d()S

    move-result p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_1

    nop

    :goto_7
    shl-int/lit8 v0, v0, 0x8

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lfpo;->d()S

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    iget v0, p0, Lfpo;->a:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    return p0

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lfpo;->d()S

    move-result v0

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

.method public final b([BI)I
    .locals 4

    goto/32 :goto_17

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

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

    :goto_1
    check-cast v0, Ljava/io/InputStream;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    if-ne v0, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lfpo;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p0, Lfpm;

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

    :goto_5
    invoke-virtual {v0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lt v2, p2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    return v1

    nop

    :goto_9
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_18

    nop

    :goto_c
    check-cast v0, Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    return v2

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v1, -0x1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto :goto_1f

    nop

    :goto_11
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-eqz v2, :cond_4

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2

    nop

    nop

    :goto_13
    move v0, v2

    nop

    :goto_14
    goto/32 :goto_6

    nop

    nop

    :goto_15
    goto :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_17
    const v0, 0x8

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

    :goto_18
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lfpo;->b:Ljava/lang/Object;

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

    :goto_1b
    iget-object p0, p0, Lfpo;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1c
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_1d
    check-cast p0, Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1e
    throw p0

    nop

    :goto_1f
    goto/32 :goto_d

    nop

    nop

    :goto_20
    return p2

    nop

    nop

    :goto_21
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_22
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_24
    if-ne v0, v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_5
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_25
    if-eqz p2, :cond_6

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_8

    nop

    nop

    :goto_26
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_27
    iget v0, p0, Lfpo;->a:I

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

    :goto_28
    sub-int v3, p2, v2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {p0}, Lfpm;-><init>()V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0, p1, v2, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2c
    add-int/2addr v2, v0

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
.end method

.method public final c(J)J
    .locals 7

    goto/32 :goto_24

    nop

    nop

    :goto_0
    return-wide v0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2
    if-gtz v6, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    cmp-long v4, v2, v0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    int-to-long v0, v0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    long-to-int p1, p1

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

    :goto_7
    check-cast v4, Ljava/io/InputStream;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_8
    sub-long/2addr v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_9
    return-wide p0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    add-int/2addr p2, p1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_c
    add-long/2addr v2, v4

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_d
    iget-object p2, p0, Lfpo;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_e
    const-wide/16 v0, 0x0

    nop

    goto/32 :goto_10

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

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_10
    cmp-long v2, p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Lfpo;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v4, p0, Lfpo;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_15
    cmp-long v6, v4, v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lfpo;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-wide/16 v4, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_19
    check-cast p2, Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-ltz v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_1
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    :goto_1d
    int-to-long p0, p1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast v4, Ljava/io/InputStream;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_20
    sub-long v0, p1, v2

    nop

    nop

    :goto_21
    goto/32 :goto_0

    nop

    nop

    :goto_22
    iget v0, p0, Lfpo;->a:I

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_23
    const/4 v5, -0x1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_24
    const v0, 0x1b

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

    :goto_25
    check-cast p0, Ljava/nio/ByteBuffer;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_26
    goto :goto_30

    nop

    :goto_27
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-gtz v4, :cond_3

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    check-cast v0, Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v4, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2d
    goto :goto_34

    nop

    nop

    :goto_2e
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2f
    goto :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/16 :goto_21

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_33

    nop

    nop

    :goto_33
    move-wide v2, p1

    nop

    nop

    :goto_34
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const v1, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_38
    iget-object v4, p0, Lfpo;->b:Ljava/lang/Object;

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

    :goto_39
    if-eq v4, v5, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d()S
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Lfpo;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2
    new-instance p0, Lfpm;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-gtz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    :goto_6
    int-to-short p0, p0

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

    :goto_7
    check-cast p0, Ljava/io/InputStream;

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

    :goto_8
    const/4 v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0}, Lfpm;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    throw p0

    nop

    nop

    :goto_c
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lfpo;->b:Ljava/lang/Object;

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

    :goto_e
    invoke-direct {p0}, Lfpm;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast p0, Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    if-ne p0, v0, :cond_2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_2
    goto/32 :goto_15

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
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_13
    return p0

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_15
    int-to-short p0, p0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_16
    check-cast v0, Ljava/nio/ByteBuffer;

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

    :goto_17
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-instance p0, Lfpm;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_19
    and-int/lit16 p0, p0, 0xff

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p0, p0, Lfpo;->b:Ljava/lang/Object;

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

    :goto_1b
    iget-object v0, p0, Lfpo;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop
.end method
