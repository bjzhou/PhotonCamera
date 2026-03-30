.class public Lcom/google/ar/core/Segmentation;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final TAG:Ljava/lang/String; = "ARCore-Segmentation"


# instance fields
.field final nativeHandle:J

.field private final nativeSymbolTableHandle:J

.field private final session:Lcom/google/ar/core/Session;


# direct methods
.method public constructor <init>(Lcom/google/ar/core/Session;J)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    :goto_0
    iput-wide p1, p0, Lcom/google/ar/core/Segmentation;->nativeSymbolTableHandle:J

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

    :goto_1
    iput-object p1, p0, Lcom/google/ar/core/Segmentation;->session:Lcom/google/ar/core/Session;

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

    :goto_2
    iget-wide p1, p1, Lcom/google/ar/core/Session;->nativeSymbolTableHandle:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iput-wide p2, p0, Lcom/google/ar/core/Segmentation;->nativeHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method private native nativeAcquirePersonMask(JJ)J
.end method

.method private native nativeReleaseSegmentation(JJ)V
.end method


# virtual methods
.method public acquirePersonMask()Landroid/media/Image;
    .locals 4

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    :goto_2
    iget-object v0, p0, Lcom/google/ar/core/Segmentation;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_3
    const v1, 0xe

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object v2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v2, p0, v0, v1}, Lcom/google/ar/core/ArImage;-><init>(Lcom/google/ar/core/Session;J)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_9
    goto/32 :goto_1

    nop

    :goto_a
    iget-object p0, p0, Lcom/google/ar/core/Segmentation;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    const v0, 0xd

    nop

    goto/32 :goto_3

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

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_d
    new-instance v2, Lcom/google/ar/core/ArImage;

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

    :goto_e
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Segmentation;->nativeAcquirePersonMask(JJ)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_f
    iget-wide v2, p0, Lcom/google/ar/core/Segmentation;->nativeHandle:J

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

    :goto_10
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected finalize()V
    .locals 4

    goto/32 :goto_6

    nop

    nop

    :goto_0
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-wide v0, p0, Lcom/google/ar/core/Segmentation;->nativeHandle:J

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_8
    cmp-long v2, v0, v2

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

    :goto_9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    iget-wide v2, p0, Lcom/google/ar/core/Segmentation;->nativeSymbolTableHandle:J

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/ar/core/Segmentation;->nativeReleaseSegmentation(JJ)V

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method
