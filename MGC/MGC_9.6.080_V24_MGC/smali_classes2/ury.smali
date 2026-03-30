.class public final Lury;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:[J

.field public final b:Ljava/nio/ByteBuffer;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 4

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xf

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

    :goto_1
    aget-wide v0, v1, p0

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

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_13

    nop

    nop

    :goto_3
    iput-object v1, p0, Lury;->a:[J

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    cmp-long p0, v0, v2

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

    :goto_5
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    invoke-static {v1}, Lorg/brotli/wrapper/dec/DecoderJNI;->nativeCreate([J)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_7
    throw p0

    nop

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput v0, p0, Lury;->c:I

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    const-string v0, "failed to initialize native brotli decoder"

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-wide/16 v2, 0x4000

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

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

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    :goto_e
    return-void

    nop

    nop

    :goto_f
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_10
    new-array v1, v0, [J

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 p0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_13
    const/4 v0, 0x3

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_14
    new-instance p0, Ljava/io/IOException;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_15
    aput-wide v2, v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_16
    const v0, 0xf

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

    :goto_17
    add-int v0, v0, v1

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

    :goto_18
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_8

    nop

    :goto_1b
    goto/32 :goto_2

    nop

    nop

    :goto_1c
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

    :goto_1d
    iput-object v0, p0, Lury;->b:Ljava/nio/ByteBuffer;

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


# virtual methods
.method public final a()V
    .locals 6

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    :goto_1
    goto/32 :goto_16

    nop

    nop

    :goto_2
    iget-object v0, p0, Lury;->a:[J

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    aput-wide v4, p0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_4
    const/4 v1, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_5
    const-string v0, "brotli decoder is already destroyed"

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_6
    if-nez v2, :cond_0

    nop

    goto/32 :goto_15

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

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lury;->a:[J

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    cmp-long v2, v2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_c
    const-wide/16 v4, 0x0

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

    :goto_d
    goto/32 :goto_1

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_11
    invoke-static {v0}, Lorg/brotli/wrapper/dec/DecoderJNI;->nativeDestroy([J)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    aget-wide v2, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_13
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_14
    return-void

    nop

    :goto_15
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_17
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 6

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_16

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_16

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x3

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    const-wide/16 v4, 0x2

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_0
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-wide/16 v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    cmp-long v0, v2, v4

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_d

    nop

    :goto_f
    if-eqz v0, :cond_1

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
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_10
    const-wide/16 v4, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_11
    const-wide/16 v4, 0x4

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_12
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_13
    cmp-long v0, v2, v4

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_14
    aget-wide v2, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v1, 0x5

    nop

    :goto_16
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_18
    cmp-long v0, v2, v4

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

    :goto_19
    cmp-long v0, v2, v4

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1b
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_3
    goto/32 :goto_4

    nop

    nop

    :goto_1c
    goto :goto_16

    nop

    :goto_1d
    goto/32 :goto_11

    nop

    nop

    :goto_1e
    const v1, 0x13

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1f
    const v0, 0x11

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

    :goto_20
    iget-object v0, p0, Lury;->a:[J

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

    :goto_21
    const/4 v1, 0x4

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

    :goto_22
    const/4 v1, 0x1

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

    :goto_23
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_c

    nop

    :goto_24
    iput v1, p0, Lury;->c:I

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(I)V
    .locals 5

    goto/32 :goto_20

    nop

    nop

    :goto_0
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1
    aget-wide v1, v0, v1

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

    :goto_2
    const/4 v2, 0x3

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    :goto_6
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x5

    nop

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

    :goto_8
    iget v1, p0, Lury;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v0, "pushing input to decoder in "

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_d
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string p1, "pushing input to decoder in OK state"

    nop

    nop

    goto/32 :goto_15

    nop

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

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2b

    nop

    :goto_11
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_13

    nop

    nop

    :goto_12
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    :goto_13
    throw p0

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_16
    cmp-long v1, v1, v3

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_17
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lury;->b()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-ne v1, v2, :cond_2

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-eqz p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-wide/16 v3, 0x0

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

    :goto_1d
    new-instance p1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1e
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_20
    const v0, 0x18

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

    :goto_21
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_23
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const v1, 0xc

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

    :goto_25
    throw p0

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto :goto_26

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-gez p1, :cond_4

    nop

    goto/32 :goto_a

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

    :goto_2a
    const-string p1, "negative block length"

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-eq v1, v2, :cond_5

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1b

    nop

    nop

    :goto_2e
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const-string p1, "brotli decoder is already destroyed"

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_30
    invoke-static {v0, p1}, Lorg/brotli/wrapper/dec/DecoderJNI;->nativePush([JI)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v0, p0, Lury;->a:[J

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_32
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_33
    const-string v0, " state"

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_34
    invoke-static {v1}, Lucu;->y(I)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_35
    const/4 v1, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final finalize()V
    .locals 4

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x0

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
    const v1, 0x5

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

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_3
    const v0, 0x1a

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

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    aget-wide v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lury;->a()V

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto/32 :goto_7

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
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    cmp-long v0, v0, v2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    const-wide/16 v2, 0x0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lury;->a:[J

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
.end method
