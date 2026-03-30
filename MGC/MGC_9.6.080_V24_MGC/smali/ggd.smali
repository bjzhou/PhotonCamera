.class public final Lggd;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:I

.field private final b:I

.field private final c:I

.field private final d:F

.field private final e:Lrwq;


# direct methods
.method public constructor <init>(IIIF)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lggd;->b:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p2, Lrwq;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    iput p3, p0, Lggd;->c:I

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

    :goto_3
    return-void

    nop

    :goto_4
    invoke-direct {p2, p1}, Lrwq;-><init>(I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    iput p2, p0, Lggd;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    iput-object p2, p0, Lggd;->e:Lrwq;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    iput p4, p0, Lggd;->d:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/ar/core/Frame;)V
    .locals 9

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    goto/32 :goto_4

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

    :goto_2
    goto/32 :goto_e

    nop

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/google/ar/core/Frame;->acquirePointCloud()Lcom/google/ar/core/PointCloud;

    move-result-object v0

    nop

    iget v1, p0, Lggd;->d:F

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lcom/google/ar/core/Frame;->getCamera()Lcom/google/ar/core/Camera;

    move-result-object p1

    nop

    nop

    nop

    invoke-virtual {p1}, Lcom/google/ar/core/Camera;->getPose()Lcom/google/ar/core/Pose;

    move-result-object p1

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    move v3, v2

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Lcom/google/ar/core/PointCloud;->getPoints()Ljava/nio/FloatBuffer;

    move-result-object v4

    nop

    nop

    invoke-virtual {v4}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v4

    nop

    nop

    nop

    nop

    div-int/lit8 v4, v4, 0x4

    nop

    nop

    nop

    nop

    if-ge v2, v4, :cond_2

    nop

    nop

    nop

    mul-float v4, v1, v1

    nop

    invoke-virtual {v0}, Lcom/google/ar/core/PointCloud;->getPoints()Ljava/nio/FloatBuffer;

    move-result-object v5

    nop

    nop

    nop

    nop

    mul-int/lit8 v6, v2, 0x4

    nop

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    nop

    invoke-virtual {p1}, Lcom/google/ar/core/Pose;->tx()F

    move-result v7

    nop

    nop

    nop

    sub-float/2addr v5, v7

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lcom/google/ar/core/PointCloud;->getPoints()Ljava/nio/FloatBuffer;

    move-result-object v7

    nop

    nop

    nop

    add-int/lit8 v8, v6, 0x1

    nop

    nop

    nop

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lcom/google/ar/core/Pose;->ty()F

    move-result v8

    nop

    nop

    nop

    sub-float/2addr v7, v8

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lcom/google/ar/core/PointCloud;->getPoints()Ljava/nio/FloatBuffer;

    move-result-object v8

    nop

    add-int/lit8 v6, v6, 0x2

    nop

    nop

    invoke-virtual {v8, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v6

    nop

    nop

    nop

    invoke-virtual {p1}, Lcom/google/ar/core/Pose;->tz()F

    move-result v8

    nop

    nop

    nop

    nop

    sub-float/2addr v6, v8

    nop

    nop

    nop

    nop

    mul-float/2addr v5, v5

    nop

    nop

    nop

    nop

    nop

    mul-float/2addr v7, v7

    nop

    nop

    nop

    nop

    nop

    add-float/2addr v5, v7

    nop

    nop

    mul-float/2addr v6, v6

    nop

    nop

    nop

    nop

    add-float/2addr v5, v6

    nop

    nop

    nop

    nop

    nop

    cmpg-float v4, v5, v4

    nop

    if-gez v4, :cond_1

    nop

    nop

    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    :cond_1
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/16 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_2
    invoke-virtual {v0}, Lcom/google/ar/core/PointCloud;->release()V

    iget-object p1, p0, Lggd;->e:Lrwq;

    nop

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    invoke-virtual {p1, v0}, Lrws;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    :goto_6
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

    :goto_7
    const v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8
    monitor-exit p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0xc

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_3

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    throw p1

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    :goto_f
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    invoke-virtual {p1}, Lcom/google/ar/core/Frame;->getCamera()Lcom/google/ar/core/Camera;

    move-result-object v0

    nop

    invoke-virtual {v0}, Lcom/google/ar/core/Camera;->getTrackingState()Lcom/google/ar/core/TrackingState;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Lcom/google/ar/core/TrackingState;->TRACKING:Lcom/google/ar/core/TrackingState;

    nop

    if-eq v0, v1, :cond_0

    nop

    nop

    nop

    nop

    iget-object p1, p0, Lggd;->e:Lrwq;

    nop

    nop

    invoke-virtual {p1}, Lrws;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized b()Z
    .locals 5

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    sub-int/2addr v3, v4

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    const v1, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lggd;->e:Lrwq;

    nop

    nop

    nop

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    nop

    nop

    new-instance v1, Lgmp;

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    invoke-direct {v1, p0, v2}, Lgmp;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    nop

    nop

    invoke-interface {v0}, Lj$/util/stream/Stream;->count()J

    move-result-wide v0

    nop

    nop

    iget v3, p0, Lggd;->b:I

    nop

    nop

    nop

    nop

    nop

    iget v4, p0, Lggd;->c:I

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

    nop

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

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    cmp-long v0, v0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

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

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_d
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    throw v0

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    return p0

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

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_11
    if-gez v0, :cond_1

    nop

    nop

    goto/32 :goto_3

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

    :goto_12
    const v0, 0xd

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_13
    int-to-long v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method
