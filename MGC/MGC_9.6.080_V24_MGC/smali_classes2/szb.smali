.class public final Lszb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/googlex/gcam/clientallocator/YuvClientAllocator;


# instance fields
.field private a:Lcom/google/googlex/gcam/YuvImage;

.field private b:Lcom/google/googlex/gcam/YuvWriteView;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean v0, p0, Lszb;->c:Z

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

    :goto_2
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kInvalidAllocationId_get()J

    move-result-wide v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x1

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    :goto_5
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-wide/16 v3, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    cmp-long p0, v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    const v0, 0x9

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_11

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_f
    invoke-static {v0}, La;->au(Z)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    :goto_11
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lcom/google/googlex/gcam/YuvImage;
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lszb;->a:Lcom/google/googlex/gcam/YuvImage;

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

    :goto_3
    invoke-static {v0, v1}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string v1, "doneWriting() must be called before getImage."

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

    :goto_8
    iget-boolean v0, p0, Lszb;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

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

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop
.end method

.method public final allocate(III)Lcom/google/googlex/gcam/base/LongPair;
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lszb;->a:Lcom/google/googlex/gcam/YuvImage;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    return-object p1

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1a

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

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_7
    const-wide/16 v0, 0x0

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

    nop

    :goto_8
    iput-object p1, p0, Lszb;->b:Lcom/google/googlex/gcam/YuvWriteView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_9
    iput-object v0, p0, Lszb;->a:Lcom/google/googlex/gcam/YuvImage;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    invoke-direct {p1, v0, v1, p2, p3}, Lcom/google/googlex/gcam/base/LongPair;-><init>(JJ)V

    goto/32 :goto_1

    nop

    nop

    :goto_b
    iget-object p0, p0, Lszb;->b:Lcom/google/googlex/gcam/YuvWriteView;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_c
    const v0, 0x16

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

    :goto_d
    const-string v1, "allocate() should be called at most once."

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

    :goto_e
    invoke-static {v0}, Lsgj;->w(Lcom/google/googlex/gcam/YuvImage;)Lcom/google/googlex/gcam/YuvWriteView;

    move-result-object p1

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

    nop

    :goto_f
    invoke-static {p3}, Lsyn;->a(I)Lsyn;

    move-result-object p3

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_10
    invoke-static {p0}, Lcom/google/googlex/gcam/YuvWriteView;->c(Lcom/google/googlex/gcam/YuvWriteView;)J

    move-result-wide p2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_11
    invoke-static {v0, v1}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x7

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_13
    new-instance p1, Lcom/google/googlex/gcam/base/LongPair;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

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

    :goto_15
    new-instance v0, Lcom/google/googlex/gcam/YuvImage;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v0, 0x1

    nop

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

    :goto_19
    invoke-direct {v0, p1, p2, p3}, Lcom/google/googlex/gcam/YuvImage;-><init>(IILsyn;)V

    goto/32 :goto_9

    nop

    nop

    :goto_1a
    goto/32 :goto_5

    nop

    :goto_1b
    goto :goto_17

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_16

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

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
.end method

.method public final doneWriting(J)V
    .locals 2

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, La;->au(Z)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto :goto_9

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string p1, "doneWriting() was called before allocate()."

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

    :goto_4
    iget-boolean p1, p0, Lszb;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_5
    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1e

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

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    :goto_7
    const/4 p2, 0x0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move p1, p2

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p1, p0, Lszb;->a:Lcom/google/googlex/gcam/YuvImage;

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

    :goto_b
    const-wide/16 v0, 0x0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p1, p2}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    cmp-long p1, p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_16

    nop

    nop

    :goto_11
    invoke-static {p2, p1}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-boolean v0, p0, Lszb;->c:Z

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_13
    xor-int/2addr p1, v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_14
    const-string p2, "doneWriting() should be called at most once."

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1c

    nop

    nop

    :goto_16
    goto/32 :goto_b

    nop

    nop

    :goto_17
    move p2, v0

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez p1, :cond_2

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1e
    move p1, v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1f
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop
.end method
