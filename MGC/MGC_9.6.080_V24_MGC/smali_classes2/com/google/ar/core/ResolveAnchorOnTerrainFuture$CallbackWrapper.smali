.class Lcom/google/ar/core/ResolveAnchorOnTerrainFuture$CallbackWrapper;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;

.field private final b:J

.field private final c:Ljava/util/function/BiConsumer;


# direct methods
.method public constructor <init>(Lcom/google/ar/core/Session;Ljava/util/function/BiConsumer;)V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    return-void

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
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    iput-wide v0, p0, Lcom/google/ar/core/ResolveAnchorOnTerrainFuture$CallbackWrapper;->b:J

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
    const v0, 0x3

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    iput-object v0, p0, Lcom/google/ar/core/ResolveAnchorOnTerrainFuture$CallbackWrapper;->a:Ljava/lang/ref/WeakReference;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    :goto_e
    iget-wide v0, p1, Lcom/google/ar/core/Session;->nativeSymbolTableHandle:J

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    iput-object p2, p0, Lcom/google/ar/core/ResolveAnchorOnTerrainFuture$CallbackWrapper;->c:Ljava/util/function/BiConsumer;

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

    :goto_10
    const v1, 0xe

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public accept(JI)V
    .locals 2

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_0
    invoke-static {p3}, Lcom/google/ar/core/Anchor$TerrainAnchorState;->forNumber(I)Lcom/google/ar/core/Anchor$TerrainAnchorState;

    move-result-object p2

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

    :goto_1
    iget-object v0, p0, Lcom/google/ar/core/ResolveAnchorOnTerrainFuture$CallbackWrapper;->a:Ljava/lang/ref/WeakReference;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p3, v0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0xa

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_15

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lcom/google/ar/core/ResolveAnchorOnTerrainFuture$CallbackWrapper;->c:Ljava/util/function/BiConsumer;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0, v1, p1, p2}, Lcom/google/ar/core/Anchor;->nativeReleaseAnchor(JJ)V

    :goto_9
    goto/32 :goto_1b

    nop

    nop

    :goto_a
    iget-object p3, p0, Lcom/google/ar/core/ResolveAnchorOnTerrainFuture$CallbackWrapper;->c:Ljava/util/function/BiConsumer;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_c
    iget-wide v0, p0, Lcom/google/ar/core/ResolveAnchorOnTerrainFuture$CallbackWrapper;->b:J

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

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_e
    cmp-long p3, p1, v0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    if-nez p3, :cond_1

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

    :cond_1
    goto/32 :goto_c

    nop

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
    const-wide/16 v0, 0x0

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

    :goto_12
    invoke-static {p1, p2, v0}, Lcom/google/ar/core/ResolveAnchorOnTerrainFuture;->-$$Nest$smmakeAnchor(JLcom/google/ar/core/Session;)Lcom/google/ar/core/Anchor;

    move-result-object p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_13
    sget-object v1, Lcom/google/ar/core/Anchor$TerrainAnchorState;->ERROR_INTERNAL:Lcom/google/ar/core/Anchor$TerrainAnchorState;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1c

    nop

    nop

    :goto_15
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

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

    :goto_17
    check-cast v0, Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_18
    const v0, 0x12

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

    :goto_19
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    :goto_1c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_2

    nop

    goto/32 :goto_15

    nop

    :cond_2
    goto/32 :goto_14

    nop
.end method
