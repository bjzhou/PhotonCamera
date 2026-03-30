.class public Lcom/google/googlex/gcam/InterleavedImageS16;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public transient a:J

.field protected transient b:Z

.field private c:Lj$/util/Optional;


# direct methods
.method public constructor <init>()V
    .locals 4

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget p0, Lsyr;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lcom/google/googlex/gcam/InterleavedImageS16;->a()I

    move-result v0

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    cmp-long v0, v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_InterleavedImageS16__SWIG_0()J

    move-result-wide v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    cmp-long v2, v0, v2

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Lcom/google/googlex/gcam/InterleavedImageS16;->c:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    const-wide/16 v2, 0x0

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

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0, v0, v1}, Lcom/google/googlex/gcam/InterleavedImageS16;-><init>(J)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_c
    int-to-long v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    if-gtz v2, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_11
    iget-wide v0, p0, Lcom/google/googlex/gcam/InterleavedImageS16;->a:J

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_12
    invoke-static {p0, v0, v1}, Lsgj;->t(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_13
    const v1, 0x17

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

    :goto_14
    rem-int v0, v0, v1

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

    :goto_15
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

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

    :goto_1a
    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(III)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iget-wide p1, p0, Lcom/google/googlex/gcam/InterleavedImageS16;->a:J

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    if-gtz p3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1

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
    const v0, 0x8

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
    cmp-long p1, p1, v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget p0, Lsyr;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p0, p1, p2}, Lsgj;->t(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object p1

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

    nop

    nop

    :goto_7
    iput-object p1, p0, Lcom/google/googlex/gcam/InterleavedImageS16;->c:Lj$/util/Optional;

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a
    const-wide/16 v0, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz p1, :cond_1

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

    nop

    nop

    nop

    :goto_c
    cmp-long p3, p1, v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

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

    :goto_e
    invoke-virtual {p0}, Lcom/google/googlex/gcam/InterleavedImageS16;->a()I

    move-result p1

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

    nop

    :goto_f
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0xc

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p1, p2, p3}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_InterleavedImageS16__SWIG_1(III)J

    move-result-wide p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_15
    int-to-long p1, p1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

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
    if-lez v0, :cond_2

    nop

    goto/32 :goto_10

    nop

    :cond_2
    goto/32 :goto_f

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_9

    nop

    nop

    :goto_1a
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/gcam/InterleavedImageS16;-><init>(J)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public constructor <init>(J)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    iput-wide p1, p0, Lcom/google/googlex/gcam/InterleavedImageS16;->a:J

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
    iput-object v0, p0, Lcom/google/googlex/gcam/InterleavedImageS16;->c:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    iput-boolean v0, p0, Lcom/google/googlex/gcam/InterleavedImageS16;->b:Z

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

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_4
    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->InterleavedImageS16_size_in_bytes(JLcom/google/googlex/gcam/InterleavedImageS16;)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    iget-wide v0, p0, Lcom/google/googlex/gcam/InterleavedImageS16;->a:J

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

    :goto_6
    goto/32 :goto_2

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    return p0

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized b()V
    .locals 5

    goto/32 :goto_9

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

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

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    :goto_8
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-wide v0, p0, Lcom/google/googlex/gcam/InterleavedImageS16;->a:J

    nop

    nop

    nop

    nop

    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    cmp-long v0, v0, v2

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    iget-boolean v0, p0, Lcom/google/googlex/gcam/InterleavedImageS16;->b:Z

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    sget v0, Lsyr;->a:I

    nop

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    nop

    iput-boolean v0, p0, Lcom/google/googlex/gcam/InterleavedImageS16;->b:Z

    nop

    nop

    nop

    iget-wide v0, p0, Lcom/google/googlex/gcam/InterleavedImageS16;->a:J

    nop

    nop

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->delete_InterleavedImageS16(J)V

    iget-object v0, p0, Lcom/google/googlex/gcam/InterleavedImageS16;->c:Lj$/util/Optional;

    nop

    nop

    new-instance v1, Lrqy;

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x3

    nop

    nop

    nop

    invoke-direct {v1, v4}, Lrqy;-><init>(I)V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    iput-wide v2, p0, Lcom/google/googlex/gcam/InterleavedImageS16;->a:J

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    const v0, 0x14

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_2
    goto/32 :goto_6

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x14

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

    :goto_d
    throw v0

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final finalize()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/gcam/InterleavedImageS16;->b()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method
