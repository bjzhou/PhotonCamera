.class public Lcom/google/googlex/gcam/BurstSpec;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public transient a:J

.field protected transient b:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    :goto_0
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_BurstSpec()J

    move-result-wide v0

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

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    const v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

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

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0, v0, v1}, Lcom/google/googlex/gcam/BurstSpec;-><init>(J)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop
.end method

.method public constructor <init>(J)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    goto/32 :goto_2

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
    iput-boolean v0, p0, Lcom/google/googlex/gcam/BurstSpec;->b:Z

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-wide p1, p0, Lcom/google/googlex/gcam/BurstSpec;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public static b(Lcom/google/googlex/gcam/BurstSpec;)J
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

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

    nop

    :goto_1
    iget-wide v0, p0, Lcom/google/googlex/gcam/BurstSpec;->a:J

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    const-wide/16 v0, 0x0

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

    nop

    :goto_3
    const v1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    return-wide v0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz p0, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    return-wide v0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    const v0, 0x5

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop
.end method


# virtual methods
.method public final a(F)F
    .locals 2

    goto/32 :goto_3

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_1
    iget-wide v0, p0, Lcom/google/googlex/gcam/BurstSpec;->a:J

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    const v0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    :goto_9
    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->BurstSpec_TotalCaptureTimeMs(JLcom/google/googlex/gcam/BurstSpec;F)F

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    return p0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop
.end method

.method public final c()Lcom/google/googlex/gcam/FrameRequestVector;
    .locals 4

    goto/32 :goto_4

    nop

    nop

    :goto_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/BurstSpec;->a:J

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

    :goto_1
    const-wide/16 v2, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x1d

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

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_4
    const v0, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    new-instance p0, Lcom/google/googlex/gcam/FrameRequestVector;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->BurstSpec_frame_requests_get(JLcom/google/googlex/gcam/BurstSpec;)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz p0, :cond_1

    nop

    goto/32 :goto_14

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

    :goto_10
    cmp-long p0, v0, v2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/FrameRequestVector;-><init>(JZ)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-object p0

    nop

    nop

    :goto_14
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized d()V
    .locals 5

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    :goto_5
    monitor-exit p0

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

    :goto_6
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    throw v0

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    monitor-enter p0

    nop

    :try_start_1
    iget-wide v0, p0, Lcom/google/googlex/gcam/BurstSpec;->a:J

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v2, 0x0

    nop

    nop

    cmp-long v4, v0, v2

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_0

    nop

    iget-boolean v4, p0, Lcom/google/googlex/gcam/BurstSpec;->b:Z

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

    nop

    iput-boolean v4, p0, Lcom/google/googlex/gcam/BurstSpec;->b:Z

    nop

    nop

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->delete_BurstSpec(J)V

    :cond_1
    iput-wide v2, p0, Lcom/google/googlex/gcam/BurstSpec;->a:J

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop
.end method

.method protected final finalize()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/gcam/BurstSpec;->d()V

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

    nop
.end method

.method public final set(Lcom/google/googlex/gcam/FrameRequestVector;)V
    .locals 6

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x13

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    const v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

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

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-wide v0, v2, Lcom/google/googlex/gcam/BurstSpec;->a:J

    nop

    nop

    nop

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
    move-object/from16 v5, p1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    iget-wide v3, v5, Lcom/google/googlex/gcam/FrameRequestVector;->a:J

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move-object/from16 v2, p0

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

    nop

    :goto_e
    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->BurstSpec_frame_requests_set(JLcom/google/googlex/gcam/BurstSpec;JLcom/google/googlex/gcam/FrameRequestVector;)V

    goto/32 :goto_6

    nop

    nop
.end method
