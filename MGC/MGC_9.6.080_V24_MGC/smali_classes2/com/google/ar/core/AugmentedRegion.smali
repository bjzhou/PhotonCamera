.class public Lcom/google/ar/core/AugmentedRegion;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final TAG:Ljava/lang/String; = "ARCore-AugmentedRegion"


# instance fields
.field final nativeHandle:J

.field private final nativeSymbolTableHandle:J

.field private final numberOfVertices:I

.field private final session:Lcom/google/ar/core/Session;


# direct methods
.method public constructor <init>(JLcom/google/ar/core/Session;)V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-wide v0, p0, Lcom/google/ar/core/AugmentedRegion;->nativeSymbolTableHandle:J

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    :goto_2
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    iget-wide v0, p3, Lcom/google/ar/core/Session;->nativeSymbolTableHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iput p1, p0, Lcom/google/ar/core/AugmentedRegion;->numberOfVertices:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    iput-object p3, p0, Lcom/google/ar/core/AugmentedRegion;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_7
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/ar/core/AugmentedRegion;->nativeGetNumberOfVertices(JJ)I

    move-result p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x15

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    iget-wide v0, p3, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

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

    :goto_d
    iput-wide p1, p0, Lcom/google/ar/core/AugmentedRegion;->nativeHandle:J

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_d

    nop

    nop
.end method

.method private native nativeGetNumberOfVertices(JJ)I
.end method

.method private native nativeGetState(JJ)I
.end method

.method private native nativeGetVertices(JJLjava/lang/Object;)V
.end method

.method private native nativeReleaseAugmentedRegion(JJ)V
.end method

.method private native nativeStop(JJ)V
.end method


# virtual methods
.method protected finalize()V
    .locals 4

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/ar/core/AugmentedRegion;->nativeReleaseAugmentedRegion(JJ)V

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    :goto_3
    iget-wide v0, p0, Lcom/google/ar/core/AugmentedRegion;->nativeHandle:J

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto/32 :goto_a

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

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_7
    goto/32 :goto_e

    nop

    nop

    :goto_8
    const v1, 0x4

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    cmp-long v2, v0, v2

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
    return-void

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

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

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x11

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

    :goto_10
    iget-wide v2, p0, Lcom/google/ar/core/AugmentedRegion;->nativeSymbolTableHandle:J

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_11
    const-wide/16 v2, 0x0

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
.end method

.method public getNumberOfVertices()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    iget p0, p0, Lcom/google/ar/core/AugmentedRegion;->numberOfVertices:I

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

.method public getState()Lcom/google/ar/core/TrackingState;
    .locals 4

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_5
    iget-wide v2, p0, Lcom/google/ar/core/AugmentedRegion;->nativeHandle:J

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lcom/google/ar/core/AugmentedRegion;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/AugmentedRegion;->nativeGetState(JJ)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    invoke-static {p0}, Lcom/google/ar/core/TrackingState;->forNumber(I)Lcom/google/ar/core/TrackingState;

    move-result-object p0

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

.method public getVertices(Ljava/nio/FloatBuffer;)V
    .locals 7

    goto/32 :goto_6

    nop

    nop

    :goto_0
    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/AugmentedRegion;->nativeGetVertices(JJLjava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_2
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    const v0, 0x16

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-wide v4, p0, Lcom/google/ar/core/AugmentedRegion;->nativeHandle:J

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    move-object v6, p1

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

    :goto_9
    move-object v1, p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lcom/google/ar/core/AugmentedRegion;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
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

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_d
    const v1, 0x1b

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_e
    goto/32 :goto_4

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method

.method public getVertices()[F
    .locals 8

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-wide v5, p0, Lcom/google/ar/core/AugmentedRegion;->nativeHandle:J

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2
    new-array v1, v1, [F

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_3
    invoke-direct/range {v2 .. v7}, Lcom/google/ar/core/AugmentedRegion;->nativeGetVertices(JJLjava/lang/Object;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x17

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
    add-int v0, v0, v1

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
    move-object v7, v1

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    const v0, 0x1f

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
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    add-int/2addr v1, v1

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

    :goto_a
    move-object v2, p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lcom/google/ar/core/AugmentedRegion;->session:Lcom/google/ar/core/Session;

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

    :goto_c
    iget v1, p0, Lcom/google/ar/core/AugmentedRegion;->numberOfVertices:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_d
    goto/32 :goto_10

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-wide v3, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop
.end method

.method public hashCode()I
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

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
    iget-wide v0, p0, Lcom/google/ar/core/AugmentedRegion;->nativeHandle:J

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
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Long;->hashCode()I

    move-result p0

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_7
    const v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0xa

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
    return p0

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    nop

    nop

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
.end method

.method public stop()V
    .locals 4

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

    :goto_1
    goto/32 :goto_b

    nop

    nop

    :goto_2
    const v1, 0xc

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/AugmentedRegion;->nativeStop(JJ)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lcom/google/ar/core/AugmentedRegion;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    iget-wide v2, p0, Lcom/google/ar/core/AugmentedRegion;->nativeHandle:J

    nop

    nop

    goto/32 :goto_4

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

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_d
    const v0, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method
