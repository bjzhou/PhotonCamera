.class public final Lsyw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;


# instance fields
.field private final a:J

.field private final b:J

.field private c:Landroid/hardware/HardwareBuffer;

.field private d:Lcom/google/googlex/gcam/LockedHardwareBuffer;


# direct methods
.method public constructor <init>(JJ)V
    .locals 4

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_d

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    iput-wide p3, p0, Lsyw;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_3
    const-string v0, "allocateUsage must contain USAGE_CPU_WRITE_RARELY."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_4
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kInvalidAllocationId_get()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_17

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

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x1

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

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_9
    const/4 v0, 0x0

    nop

    :goto_a
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_b
    iput-wide p1, p0, Lsyw;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_19

    nop

    nop

    :goto_d
    goto/32 :goto_10

    nop

    nop

    :goto_e
    const-string v0, "lockUsage must contain USAGE_CPU_WRITE_RARELY."

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    invoke-static {v1, v0}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0xe

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

    :goto_12
    if-nez v0, :cond_1

    nop

    goto/32 :goto_15

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    :goto_13
    invoke-static {v1, v0}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_e

    nop

    nop

    :goto_14
    goto :goto_a

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_16
    invoke-static {v0}, La;->au(Z)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_17
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_18
    return-void

    nop

    :goto_19
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    move v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1b
    cmp-long v0, v0, v2

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method


# virtual methods
.method public final a()Landroid/hardware/HardwareBuffer;
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v1, v0}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_7

    nop

    nop

    :goto_1
    const/4 v1, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    const v0, 0x3

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    const/4 v1, 0x1

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lsyw;->c:Landroid/hardware/HardwareBuffer;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lsyw;->c:Landroid/hardware/HardwareBuffer;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    const v1, 0x7

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_9
    const-string v0, "doneWriting() must be called before getImage."

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

    :goto_a
    iget-object v0, p0, Lsyw;->d:Lcom/google/googlex/gcam/LockedHardwareBuffer;

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

    :goto_b
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    :goto_c
    if-lez v0, :cond_2

    nop

    goto/32 :goto_11

    nop

    :cond_2
    goto/32 :goto_10

    nop

    :goto_d
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method

.method public final allocate(III)Lcom/google/googlex/gcam/base/LongPair;
    .locals 7

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    return-object p1

    nop

    :goto_2
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_3
    const/4 v2, 0x4

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Lsyw;->d:Lcom/google/googlex/gcam/LockedHardwareBuffer;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Lcom/google/googlex/gcam/LockedHardwareBuffer;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

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

    :goto_7
    invoke-virtual {p0}, Lcom/google/googlex/gcam/LockedHardwareBuffer;->b()Lcom/google/googlex/gcam/InterleavedWriteViewU8;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_8
    move v3, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_9
    invoke-static/range {v1 .. v6}, Landroid/hardware/HardwareBuffer;->create(IIIIJ)Landroid/hardware/HardwareBuffer;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    :goto_b
    goto/32 :goto_24

    nop

    nop

    :goto_c
    add-int v0, v0, v1

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
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_e
    move v3, v1

    nop

    nop

    :goto_f
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0, p1, p2, p3}, Lcom/google/googlex/gcam/LockedHardwareBuffer;-><init>(Landroid/hardware/HardwareBuffer;J)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    move v2, p2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move v1, p1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_13
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v3, v4, p3, v2}, Lrrf;->r(ZLjava/lang/String;II)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_15
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v0, p3}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_18
    const-string v4, "Server requested an InterleavedImageU8 of %s channels, but UniqueHardwareBufferInterleavedU8ClientAllocator only supports %s."

    nop

    nop

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

    :goto_19
    goto :goto_26

    nop

    :goto_1a
    goto/32 :goto_25

    nop

    nop

    :goto_1b
    iget-wide v5, p0, Lsyw;->a:J

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

    :goto_1c
    invoke-direct {p1, v0, v1, p2, p3}, Lcom/google/googlex/gcam/base/LongPair;-><init>(JJ)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p3, p0, Lsyw;->c:Landroid/hardware/HardwareBuffer;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object p0, p0, Lsyw;->d:Lcom/google/googlex/gcam/LockedHardwareBuffer;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1f
    goto/32 :goto_b

    nop

    nop

    :goto_20
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-eq p3, v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    :goto_23
    iget-wide p2, p0, Lsyw;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_24
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_25
    move v0, v1

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_27
    iput-object p1, p0, Lsyw;->c:Landroid/hardware/HardwareBuffer;

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

    nop

    :goto_28
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {p0}, Lcom/google/googlex/gcam/InterleavedWriteViewU8;->a(Lcom/google/googlex/gcam/InterleavedWriteViewU8;)J

    move-result-wide p2

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    new-instance p1, Lcom/google/googlex/gcam/base/LongPair;

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

    nop

    :goto_2b
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2c
    const-string p3, "allocate() should be called at most once."

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-eqz p3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final doneWriting(J)V
    .locals 2

    goto/32 :goto_21

    nop

    nop

    :goto_0
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    iget-object p1, p0, Lsyw;->c:Landroid/hardware/HardwareBuffer;

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

    :goto_2
    move p1, v0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4
    move p1, v0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-wide/16 v0, 0x0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p1, v1}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_23

    nop

    nop

    :goto_8
    const/4 v0, 0x0

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    if-nez p1, :cond_0

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz p1, :cond_1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move p1, p2

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p1, p0, Lsyw;->d:Lcom/google/googlex/gcam/LockedHardwareBuffer;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_d
    invoke-static {p2, p1}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1a

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

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

    goto/32 :goto_29

    nop

    nop

    :goto_11
    if-nez p1, :cond_2

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p1}, La;->au(Z)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_13
    const/4 p2, 0x1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_f

    nop

    nop

    :goto_15
    iget-object p1, p0, Lsyw;->d:Lcom/google/googlex/gcam/LockedHardwareBuffer;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    move p1, p2

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_17
    goto :goto_20

    nop

    nop

    :goto_18
    goto/32 :goto_1f

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
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1}, Lcom/google/googlex/gcam/LockedHardwareBuffer;->close()V

    goto/32 :goto_0

    nop

    nop

    :goto_1c
    const-string p1, "doneWriting() was called more than once."

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1d
    const-string v1, "doneWriting() was called before allocate()."

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1e
    const v1, 0xb

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1f
    move p2, v0

    nop

    :goto_20
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_21
    const v0, 0x7

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_22
    add-int v0, v0, v1

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

    :goto_23
    iget-object p1, p0, Lsyw;->d:Lcom/google/googlex/gcam/LockedHardwareBuffer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_24
    goto/16 :goto_5

    nop

    :goto_25
    goto/32 :goto_4

    nop

    nop

    :goto_26
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_28
    cmp-long p1, p1, v0

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

    :goto_29
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_3
    goto/32 :goto_e

    nop
.end method
