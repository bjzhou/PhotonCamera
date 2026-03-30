.class public Lcom/google/googlex/gcam/InterleavedWriteViewU8;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public transient a:J

.field protected transient b:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x17

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_InterleavedWriteViewU8__SWIG_0()J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_7
    invoke-direct {p0, v0, v1}, Lcom/google/googlex/gcam/InterleavedWriteViewU8;-><init>(J)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
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
.end method

.method public constructor <init>(J)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput-boolean v0, p0, Lcom/google/googlex/gcam/InterleavedWriteViewU8;->b:Z

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

    :goto_3
    iput-wide p1, p0, Lcom/google/googlex/gcam/InterleavedWriteViewU8;->a:J

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public static a(Lcom/google/googlex/gcam/InterleavedWriteViewU8;)J
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

    goto/32 :goto_d

    nop

    nop

    :goto_1
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    return-wide v0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    const-wide/16 v0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    return-wide v0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x19

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    const v1, 0xa

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_c
    iget-wide v0, p0, Lcom/google/googlex/gcam/InterleavedWriteViewU8;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

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

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop
.end method


# virtual methods
.method public final b()Lcom/google/googlex/gcam/InterleavedReadViewU8;
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xf

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    :goto_2
    new-instance v0, Lcom/google/googlex/gcam/InterleavedReadViewU8;

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

    :goto_3
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    invoke-direct {v0, v1, v2}, Lcom/google/googlex/gcam/InterleavedReadViewU8;-><init>(J)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    iget-wide v1, p0, Lcom/google/googlex/gcam/InterleavedWriteViewU8;->a:J

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

    :goto_7
    if-lez v0, :cond_0

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
    add-int v0, v0, v1

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

    :goto_9
    invoke-static {v1, v2, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->InterleavedWriteViewU8_read_view(JLcom/google/googlex/gcam/InterleavedWriteViewU8;)J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-object v0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized c()V
    .locals 5

    goto/32 :goto_1

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

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    :goto_4
    throw v0

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/InterleavedWriteViewU8;->a:J

    nop

    nop

    const-wide/16 v2, 0x0

    nop

    nop

    nop

    cmp-long v4, v0, v2

    nop

    nop

    if-eqz v4, :cond_0

    nop

    nop

    iget-boolean v4, p0, Lcom/google/googlex/gcam/InterleavedWriteViewU8;->b:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_1

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    iput-boolean v4, p0, Lcom/google/googlex/gcam/InterleavedWriteViewU8;->b:Z

    nop

    nop

    nop

    nop

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->delete_InterleavedWriteViewU8(J)V

    :cond_1
    iput-wide v2, p0, Lcom/google/googlex/gcam/InterleavedWriteViewU8;->a:J

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_2

    nop

    goto/32 :goto_7

    nop

    :cond_2
    goto/32 :goto_6

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop
.end method

.method protected final finalize()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lcom/google/googlex/gcam/InterleavedWriteViewU8;->c()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method
