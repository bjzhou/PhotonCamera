.class public final Lsyy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/googlex/gcam/clientallocator/InterleavedU16ClientAllocator;


# instance fields
.field public a:Lcom/google/googlex/gcam/InterleavedImageU16;

.field public b:Z

.field private c:Lcom/google/googlex/gcam/InterleavedWriteViewU16;


# direct methods
.method public constructor <init>()V
    .locals 5

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, La;->au(Z)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Lsyy;->b:Z

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x1

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    :goto_5
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kInvalidAllocationId_get()J

    move-result-wide v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    const-wide/16 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_13

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

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
    if-nez p0, :cond_0

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

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0xc

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x8

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

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_12
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

    nop

    :goto_13
    cmp-long p0, v1, v3

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method


# virtual methods
.method public final allocate(III)Lcom/google/googlex/gcam/base/LongPair;
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    new-instance p1, Lcom/google/googlex/gcam/InterleavedWriteViewU16;

    nop

    goto/32 :goto_14

    nop

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

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    new-instance p1, Lcom/google/googlex/gcam/base/LongPair;

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

    :goto_5
    invoke-direct {p1, p2, p3}, Lcom/google/googlex/gcam/InterleavedWriteViewU16;-><init>(J)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_6
    const-string v1, "allocate() should be called at most once."

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lsyy;->a:Lcom/google/googlex/gcam/InterleavedImageU16;

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

    :goto_8
    invoke-direct {v0, p1, p2, p3}, Lcom/google/googlex/gcam/InterleavedImageU16;-><init>(III)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x8

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_a
    iput-object v0, p0, Lsyy;->a:Lcom/google/googlex/gcam/InterleavedImageU16;

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
    return-object p1

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_e
    iput-object p1, p0, Lsyy;->c:Lcom/google/googlex/gcam/InterleavedWriteViewU16;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_10
    move-wide v0, p2

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_12
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v0, Lcom/google/googlex/gcam/InterleavedImageU16;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-wide p2, v0, Lcom/google/googlex/gcam/InterleavedImageU16;->a:J

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

    :goto_15
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_7

    nop

    nop

    :goto_17
    iget-wide v0, p0, Lcom/google/googlex/gcam/InterleavedWriteViewU16;->a:J

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_19
    goto :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1b
    if-eqz p0, :cond_1

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

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v0, v1}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_13

    nop

    nop

    :goto_1d
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_3

    nop

    :goto_1f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    :goto_21
    const-wide/16 p2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_22
    invoke-static {p2, p3, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->InterleavedImageU16_write_view(JLcom/google/googlex/gcam/InterleavedImageU16;)J

    move-result-wide p2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p0, p0, Lsyy;->c:Lcom/google/googlex/gcam/InterleavedWriteViewU16;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {p1, p2, p3, v0, v1}, Lcom/google/googlex/gcam/base/LongPair;-><init>(JJ)V

    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method public final doneWriting(J)V
    .locals 2

    goto/32 :goto_12

    nop

    nop

    :goto_0
    invoke-static {p1}, La;->au(Z)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1
    const-string p1, "doneWriting() was called before allocate()."

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
    xor-int/2addr p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_3
    move p2, v0

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    move p1, v0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_6
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

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
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_a
    invoke-static {p2, p1}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_b

    nop

    nop

    :goto_b
    iget-boolean p1, p0, Lsyy;->b:Z

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

    :goto_c
    if-eqz p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    :goto_e
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_f
    cmp-long p1, p1, v0

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

    :goto_10
    iput-boolean v0, p0, Lsyy;->b:Z

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_11
    const v1, 0x5

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_12
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_14
    const-wide/16 v0, 0x0

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

    :goto_15
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_16
    iget-object p1, p0, Lsyy;->a:Lcom/google/googlex/gcam/InterleavedImageU16;

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

    :goto_17
    invoke-static {p1, p2}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_18
    goto :goto_1e

    nop

    :goto_19
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

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

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1c
    const-string p2, "doneWriting() should be called at most once."

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1d
    move p1, p2

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1f
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method
