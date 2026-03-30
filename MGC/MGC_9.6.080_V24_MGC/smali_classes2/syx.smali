.class public final Lsyx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/googlex/gcam/clientallocator/InterleavedS16ClientAllocator;


# instance fields
.field public a:Lcom/google/googlex/gcam/InterleavedImageS16;

.field public b:Z

.field private c:Lcom/google/googlex/gcam/InterleavedWriteViewS16;


# direct methods
.method public constructor <init>()V
    .locals 5

    goto/32 :goto_1

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x16

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, La;->au(Z)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kInvalidAllocationId_get()J

    move-result-wide v1

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

    :goto_5
    return-void

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0xe

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x0

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
    cmp-long p0, v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_f
    const/4 v0, 0x1

    nop

    nop

    :goto_10
    goto/32 :goto_2

    nop

    nop

    :goto_11
    iput-boolean v0, p0, Lsyx;->b:Z

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_12
    if-nez p0, :cond_1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_13
    const-wide/16 v3, 0x0

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


# virtual methods
.method public final allocate(III)Lcom/google/googlex/gcam/base/LongPair;
    .locals 2

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1
    goto :goto_e

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    const-string v1, "allocate() should be called at most once."

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p1, Lcom/google/googlex/gcam/InterleavedWriteViewS16;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Lsyx;->c:Lcom/google/googlex/gcam/InterleavedWriteViewS16;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_9
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_16

    nop

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

    :goto_c
    invoke-direct {v0, p1, p2, p3}, Lcom/google/googlex/gcam/InterleavedImageS16;-><init>(III)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    iget-wide v0, p0, Lcom/google/googlex/gcam/InterleavedWriteViewS16;->a:J

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_17

    nop

    nop

    :goto_f
    goto/16 :goto_1e

    nop

    nop

    :goto_10
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_11
    iput-object v0, p0, Lsyx;->a:Lcom/google/googlex/gcam/InterleavedImageS16;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_12
    iget-wide p2, v0, Lcom/google/googlex/gcam/InterleavedImageS16;->a:J

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_13
    new-instance p1, Lcom/google/googlex/gcam/base/LongPair;

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

    :goto_14
    const v0, 0xc

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x6

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_16
    iget-object v0, p0, Lsyx;->a:Lcom/google/googlex/gcam/InterleavedImageS16;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {p1, p2, p3, v0, v1}, Lcom/google/googlex/gcam/base/LongPair;-><init>(JJ)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz p0, :cond_2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1b
    const-wide/16 p2, 0x0

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

    :goto_1c
    invoke-static {p2, p3, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->InterleavedImageS16_write_view(JLcom/google/googlex/gcam/InterleavedImageS16;)J

    move-result-wide p2

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1d
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_3

    nop

    nop

    :goto_1f
    invoke-direct {p1, p2, p3}, Lcom/google/googlex/gcam/InterleavedWriteViewS16;-><init>(J)V

    goto/32 :goto_8

    nop

    nop

    :goto_20
    invoke-static {v0, v1}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_21
    move-wide v0, p2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_22
    iget-object p0, p0, Lsyx;->c:Lcom/google/googlex/gcam/InterleavedWriteViewS16;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_23
    new-instance v0, Lcom/google/googlex/gcam/InterleavedImageS16;

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
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method

.method public final doneWriting(J)V
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    move p1, p2

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    move p1, v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean v0, p0, Lsyx;->b:Z

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_4
    const/4 p1, 0x0

    nop

    goto/32 :goto_18

    nop

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

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    :goto_6
    const-string p2, "doneWriting() should be called at most once."

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

    :goto_7
    invoke-static {p1, p2}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    move p2, v0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_b
    const/4 p2, 0x0

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

    nop

    :goto_c
    invoke-static {p1}, La;->au(Z)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p1, p0, Lsyx;->a:Lcom/google/googlex/gcam/InterleavedImageS16;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_e
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-wide/16 v0, 0x0

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

    :goto_10
    rem-int v0, v0, v1

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

    :goto_11
    xor-int/2addr p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    :goto_15
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    cmp-long p1, p1, v0

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

    nop

    :goto_17
    if-eqz p1, :cond_1

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

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sget-object p1, Landroidx/wear/widget/xrA/fuyPMnCeXU;->tpLRymtHEFBB:Ljava/lang/String;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-boolean p1, p0, Lsyx;->b:Z

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1a
    invoke-static {p2, p1}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez p1, :cond_2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

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

    :goto_1f
    goto/16 :goto_1

    nop

    :goto_20
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method
