.class public Lcom/google/googlex/gcam/PortraitRequest;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public transient a:J

.field protected transient b:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    goto/32 :goto_b

    nop

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

    goto/32 :goto_1

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

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    :goto_3
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_PortraitRequest()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/PortraitRequest;-><init>(JZ)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

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

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v2, 0x1

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

    nop

    :goto_b
    const v0, 0xa

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x1c

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
.end method

.method public constructor <init>(JZ)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

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
    iput-wide p1, p0, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    iput-boolean p3, p0, Lcom/google/googlex/gcam/PortraitRequest;->b:Z

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lcom/google/googlex/gcam/PixelRectVector;
    .locals 4

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_faces_get(JLcom/google/googlex/gcam/PortraitRequest;)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1
    const v1, 0x15

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    cmp-long p0, v0, v2

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

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    :goto_7
    goto/32 :goto_11

    nop

    nop

    :goto_8
    if-eqz p0, :cond_0

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

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    return-object p0

    nop

    :goto_c
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    :goto_e
    goto/32 :goto_7

    nop

    :goto_f
    const/4 v2, 0x0

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

    :goto_10
    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/PixelRectVector;-><init>(JZ)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-wide v0, p0, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_12
    const-wide/16 v2, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_13
    new-instance p0, Lcom/google/googlex/gcam/PixelRectVector;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x5

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()Lcom/google/googlex/gcam/StringStaticMetadataMap;
    .locals 4

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2
    if-eqz p0, :cond_0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    cmp-long p0, v0, v2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    const v0, 0xf

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_8
    iget-wide v0, p0, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_static_metadata_get(JLcom/google/googlex/gcam/PortraitRequest;)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_a
    new-instance p0, Lcom/google/googlex/gcam/StringStaticMetadataMap;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    const-wide/16 v2, 0x0

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

    nop

    :goto_e
    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/StringStaticMetadataMap;-><init>(JZ)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x19

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_13
    return-object p0

    nop

    nop

    :goto_14
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized c()V
    .locals 5

    goto/32 :goto_d

    nop

    nop

    :goto_0
    throw v0

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    nop

    nop

    nop

    nop

    const-wide/16 v2, 0x0

    nop

    nop

    cmp-long v4, v0, v2

    nop

    if-eqz v4, :cond_1

    nop

    nop

    iget-boolean v4, p0, Lcom/google/googlex/gcam/PortraitRequest;->b:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_0

    nop

    const/4 v4, 0x0

    nop

    iput-boolean v4, p0, Lcom/google/googlex/gcam/PortraitRequest;->b:Z

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->delete_PortraitRequest(J)V

    :cond_0
    iput-wide v2, p0, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_e

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    :goto_4
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

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

    nop

    nop

    :goto_a
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_b
    monitor-exit p0

    nop

    goto/32 :goto_8

    nop

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

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x17

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final d(Lsxf;)V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_1
    add-int v0, v0, v1

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
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    iget p1, p1, Lsxf;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    const v1, 0x17

    nop

    nop

    goto/32 :goto_1

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
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    iget-wide v0, p0, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_depth_processing_set(JLcom/google/googlex/gcam/PortraitRequest;I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x6

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public final e()Z
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x8

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_manually_rotate_xmp_jpg_get(JLcom/google/googlex/gcam/PortraitRequest;)Z

    move-result p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    iget-wide v0, p0, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

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
    invoke-virtual {p0}, Lcom/google/googlex/gcam/PortraitRequest;->c()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final g()Z
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_use_gpu_resample_get(JLcom/google/googlex/gcam/PortraitRequest;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

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

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_5
    goto/32 :goto_7

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    const v1, 0x11

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x2

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

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-wide v0, p0, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    nop

    goto/32 :goto_0

    nop

    nop
.end method
