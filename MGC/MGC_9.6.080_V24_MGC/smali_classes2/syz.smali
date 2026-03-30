.class public final Lsyz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;


# instance fields
.field public a:Lcom/google/googlex/gcam/InterleavedImageU8;

.field public b:Z

.field private c:Lcom/google/googlex/gcam/InterleavedWriteViewU8;


# direct methods
.method public constructor <init>()V
    .locals 5

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x1e

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean v0, p0, Lsyz;->b:Z

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

    :goto_4
    goto/32 :goto_10

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    :goto_7
    invoke-static {v0}, La;->au(Z)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_a
    cmp-long p0, v1, v3

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_1
    goto/32 :goto_d

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

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-wide/16 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_13
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kInvalidAllocationId_get()J

    move-result-wide v1

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


# virtual methods
.method public final allocate(III)Lcom/google/googlex/gcam/base/LongPair;
    .locals 2

    goto/32 :goto_2

    nop

    nop

    :goto_0
    new-instance p1, Lcom/google/googlex/gcam/base/LongPair;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lsyz;->c:Lcom/google/googlex/gcam/InterleavedWriteViewU8;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    const v0, 0x7

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Lsyz;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

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

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_5

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Lsyz;->c:Lcom/google/googlex/gcam/InterleavedWriteViewU8;

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
    invoke-direct {p1, v0, v1, p2, p3}, Lcom/google/googlex/gcam/base/LongPair;-><init>(JJ)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Lcom/google/googlex/gcam/InterleavedImageU8;->g()Lcom/google/googlex/gcam/InterleavedWriteViewU8;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_12

    nop

    :goto_d
    invoke-static {p0}, Lcom/google/googlex/gcam/InterleavedWriteViewU8;->a(Lcom/google/googlex/gcam/InterleavedWriteViewU8;)J

    move-result-wide p2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-object p1

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    :goto_10
    const-string v1, "allocate() should be called at most once."

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

    :goto_11
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_7

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    :goto_12
    goto/32 :goto_f

    nop

    :goto_13
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v0, Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x9

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lsyz;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v0, v1}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_15

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v0, p1, p2, p3}, Lcom/google/googlex/gcam/InterleavedImageU8;-><init>(III)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1c
    const/4 v0, 0x1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public final doneWriting(J)V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    :goto_0
    const v1, 0x2

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

    :goto_1
    const-string p1, "doneWriting() was called before allocate()."

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean v0, p0, Lsyz;->b:Z

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move p1, v0

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7
    move p1, p2

    nop

    :goto_8
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    const v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    move p2, v0

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    :goto_e
    invoke-static {p1, p2}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string p2, "doneWriting() should be called at most once."

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

    :goto_10
    xor-int/2addr p1, v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    :goto_12
    iget-object p1, p0, Lsyz;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_13
    cmp-long p1, p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_14
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_15
    if-eqz p1, :cond_2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_16
    invoke-static {p2, p1}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_18
    goto/32 :goto_1e

    nop

    :goto_19
    iget-boolean p1, p0, Lsyz;->b:Z

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1a
    const-wide/16 v0, 0x0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

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

    :goto_1c
    invoke-static {p1}, La;->au(Z)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1a

    nop

    nop

    :goto_1f
    const/4 p2, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method
