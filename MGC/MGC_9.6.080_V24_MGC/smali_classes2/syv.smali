.class public final Lsyv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/googlex/gcam/clientallocator/GrayS16ClientAllocator;


# instance fields
.field public a:Lcom/google/googlex/gcam/GrayImageS16;

.field public b:Z

.field private c:Lcom/google/googlex/gcam/GrayWriteViewS16;


# direct methods
.method public constructor <init>()V
    .locals 5

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    cmp-long p0, v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kInvalidAllocationId_get()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    :goto_b
    invoke-static {v0}, La;->au(Z)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    :goto_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x1

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_12
    const-wide/16 v3, 0x0

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
    iput-boolean v0, p0, Lsyv;->b:Z

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final allocate(II)Lcom/google/googlex/gcam/base/LongPair;
    .locals 4

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lsyv;->c:Lcom/google/googlex/gcam/GrayWriteViewS16;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_2
    if-eqz v0, :cond_1

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
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    iget-wide v1, v0, Lcom/google/googlex/gcam/GrayImageS16;->a:J

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_a

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p1, v0, v1}, Lcom/google/googlex/gcam/GrayWriteViewS16;-><init>(J)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lcom/google/googlex/gcam/GrayImageS16;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_8
    const v1, 0xc

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

    nop

    :goto_9
    iget-wide v2, p0, Lcom/google/googlex/gcam/GrayWriteViewS16;->a:J

    nop

    :goto_a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lsyv;->a:Lcom/google/googlex/gcam/GrayImageS16;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_22

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v0, v1}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_7

    nop

    nop

    :goto_10
    iput-object v0, p0, Lsyv;->a:Lcom/google/googlex/gcam/GrayImageS16;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/googlex/gcam/base/LongPair;-><init>(JJ)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v1, v2, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->GrayImageS16_write_view(JLcom/google/googlex/gcam/GrayImageS16;)J

    move-result-wide v0

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

    :goto_13
    iget-object p0, p0, Lsyv;->c:Lcom/google/googlex/gcam/GrayWriteViewS16;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v0, p1, p2}, Lcom/google/googlex/gcam/GrayImageS16;-><init>(II)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v0, 0x0

    nop

    nop

    :goto_16
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string v1, "allocate() should be called at most once."

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_18
    move-wide v2, v0

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

    :goto_19
    goto :goto_16

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance p1, Lcom/google/googlex/gcam/GrayWriteViewS16;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1c
    new-instance p1, Lcom/google/googlex/gcam/base/LongPair;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1e
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

    :goto_1f
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_20
    if-eqz p0, :cond_2

    nop

    goto/32 :goto_5

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

    :goto_21
    return-object p1

    nop

    :goto_22
    goto/32 :goto_24

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_e

    nop
.end method

.method public final doneWriting(J)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    :goto_0
    iget-object p1, p0, Lsyv;->a:Lcom/google/googlex/gcam/GrayImageS16;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto :goto_8

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_4
    if-eqz p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x1

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

    :goto_6
    const-wide/16 v0, 0x0

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

    :goto_7
    move p1, p2

    nop

    nop

    :goto_8
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0xe

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

    :goto_a
    const-string p1, "doneWriting() was called before allocate()."

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    invoke-static {p2, p1}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_1c

    nop

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-boolean v0, p0, Lsyv;->b:Z

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_10
    cmp-long p1, p1, v0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_11
    move p2, v0

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-string p2, "doneWriting() should be called at most once."

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_17
    invoke-static {p1, p2}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_f

    nop

    nop

    :goto_18
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    :goto_19
    invoke-static {p1}, La;->au(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1a
    move p1, v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_2
    goto/32 :goto_d

    nop

    :goto_1c
    iget-boolean p1, p0, Lsyv;->b:Z

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1e
    const/4 p2, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1f
    xor-int/2addr p1, v0

    nop

    goto/32 :goto_15

    nop

    nop
.end method
