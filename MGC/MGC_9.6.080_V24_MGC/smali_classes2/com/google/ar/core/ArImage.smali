.class public Lcom/google/ar/core/ArImage;
.super Laf;
.source "PG"


# instance fields
.field public final a:Lcom/google/ar/core/Session;

.field b:J

.field private final c:J


# direct methods
.method public constructor <init>(Lcom/google/ar/core/Session;J)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput-wide p2, p0, Lcom/google/ar/core/ArImage;->b:J

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

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Laf;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    iget-wide p1, p1, Lcom/google/ar/core/Session;->nativeSymbolTableHandle:J

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

    :goto_4
    iput-wide p1, p0, Lcom/google/ar/core/ArImage;->c:J

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
    iput-object p1, p0, Lcom/google/ar/core/ArImage;->a:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method private native nativeClose(JJ)V
.end method

.method private native nativeGetFormat(JJ)I
.end method

.method private native nativeGetHeight(JJ)I
.end method

.method private native nativeGetNumberOfPlanes(JJ)I
.end method

.method private native nativeGetTimestamp(JJ)J
.end method

.method private native nativeGetWidth(JJ)I
.end method

.method static native nativeLoadSymbols()V
.end method


# virtual methods
.method public final close()V
    .locals 4

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

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
    goto/32 :goto_0

    nop

    :goto_4
    iput-wide v0, p0, Lcom/google/ar/core/ArImage;->b:J

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

    :goto_5
    iget-wide v0, p0, Lcom/google/ar/core/ArImage;->c:J

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    iget-wide v2, p0, Lcom/google/ar/core/ArImage;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    const-wide/16 v0, 0x0

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

    :goto_8
    const v0, 0x13

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    const v1, 0x5

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

    :goto_a
    return-void

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/ArImage;->nativeClose(JJ)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final getCropRect()Landroid/graphics/Rect;
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lcom/google/ar/core/ArImage;->getWidth()I

    move-result v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_4
    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    return-object v0

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
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

    nop

    :goto_a
    goto/32 :goto_1

    nop

    :goto_b
    const/4 v2, 0x0

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

    :goto_c
    const v0, 0x5

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lcom/google/ar/core/ArImage;->getHeight()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_e
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public final getFormat()I
    .locals 4

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    new-instance p0, Lcom/google/ar/core/exceptions/FatalException;

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
    const v0, 0x4

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-ne p0, v0, :cond_0

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

    nop

    nop

    :goto_3
    const-string v0, "Unknown error in ArImage.getFormat()."

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x10

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_d

    nop

    nop

    :goto_8
    iget-wide v2, p0, Lcom/google/ar/core/ArImage;->b:J

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

    :goto_9
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/ArImage;->nativeGetFormat(JJ)I

    move-result p0

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
    rem-int v0, v0, v1

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

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    throw p0

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    :goto_f
    const/4 v0, -0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

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

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_12
    return p0

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lcom/google/ar/core/ArImage;->a:Lcom/google/ar/core/Session;

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
.end method

.method public final getHeight()I
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1
    if-ne p0, v0, :cond_0

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

    nop

    nop

    :goto_2
    iget-wide v2, p0, Lcom/google/ar/core/ArImage;->b:J

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

    :goto_3
    throw p0

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p0, Lcom/google/ar/core/exceptions/FatalException;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    :goto_a
    goto/32 :goto_7

    nop

    :goto_b
    invoke-direct {p0, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return p0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    const-string v0, "Unknown error in ArImage.getHeight()."

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lcom/google/ar/core/ArImage;->a:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_12
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/ArImage;->nativeGetHeight(JJ)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_13
    const/4 v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_14
    const v1, 0x20

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method

.method public final getPlanes()[Landroid/media/Image$Plane;
    .locals 6

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x1c

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v3, Lae;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3
    new-array v1, v0, [Lae;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    invoke-direct {p0, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v2, 0x0

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
    const v0, 0xc

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    aput-object v3, v1, v2

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_9
    iget-wide v2, p0, Lcom/google/ar/core/ArImage;->b:J

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

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    :goto_c
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_b

    nop

    :goto_e
    throw p0

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v1, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_11
    if-lt v2, v0, :cond_1

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

    :cond_1
    goto/32 :goto_2

    nop

    nop

    :goto_12
    new-instance p0, Lcom/google/ar/core/exceptions/FatalException;

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_13
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/ArImage;->nativeGetNumberOfPlanes(JJ)I

    move-result v0

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

    :goto_14
    goto/16 :goto_6

    nop

    :goto_15
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-ne v0, v1, :cond_2

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lcom/google/ar/core/ArImage;->a:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_18
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

    :goto_19
    const-string v0, "Unknown error in ArImage.getPlanes()."

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

    :goto_1a
    iget-wide v4, p0, Lcom/google/ar/core/ArImage;->b:J

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1b
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1c
    invoke-direct {v3, p0, v4, v5, v2}, Lae;-><init>(Lcom/google/ar/core/ArImage;JI)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1d
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1e
    return-object v1

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

    nop
.end method

.method public final getTimestamp()J
    .locals 4

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "Unknown error in ArImage.getTimestamp()."

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/ArImage;->nativeGetTimestamp(JJ)J

    move-result-wide v0

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

    :goto_4
    const v0, 0x9

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    cmp-long p0, v0, v2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_13

    nop

    nop

    :goto_7
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-wide/16 v2, -0x1

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
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    iget-wide v2, p0, Lcom/google/ar/core/ArImage;->b:J

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

    :goto_d
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance p0, Lcom/google/ar/core/exceptions/FatalException;

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

    :goto_f
    throw p0

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    :goto_11
    iget-object v0, p0, Lcom/google/ar/core/ArImage;->a:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_11

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    :goto_15
    invoke-direct {p0, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    nop
.end method

.method public final getWidth()I
    .locals 4

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, -0x1

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

    :goto_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_f

    nop

    nop

    :goto_3
    const-string v0, "Unknown error in ArImage.getWidth()."

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4
    const v0, 0x5

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

    :goto_5
    return p0

    nop

    :goto_6
    goto/32 :goto_a

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

    nop

    nop

    nop

    :goto_8
    const v1, 0x1b

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
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

    :goto_a
    new-instance p0, Lcom/google/ar/core/exceptions/FatalException;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/ArImage;->nativeGetWidth(JJ)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    throw p0

    nop

    nop

    :goto_e
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lcom/google/ar/core/ArImage;->a:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-ne p0, v0, :cond_1

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

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_13
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_14
    iget-wide v2, p0, Lcom/google/ar/core/ArImage;->b:J

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public native nativeGetBuffer(JJI)Ljava/nio/ByteBuffer;
.end method

.method public native nativeGetPixelStride(JJI)I
.end method

.method public native nativeGetRowStride(JJI)I
.end method

.method public final setCropRect(Landroid/graphics/Rect;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

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

    :goto_1
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string p1, "This is a read-only image."

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    throw p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setTimestamp(J)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    :goto_1
    const-string p1, "This is a read-only image."

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method
