.class public Lcom/google/googlex/gcam/WeightedNormalizedRectVector;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field protected transient a:Z

.field private transient b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_WeightedNormalizedRectVector__SWIG_0()J

    move-result-wide v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v2, 0x1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x5

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

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
    goto/32 :goto_8

    nop

    :goto_6
    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/WeightedNormalizedRectVector;-><init>(JZ)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    const v1, 0x1d

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
.end method

.method public constructor <init>(JZ)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-wide p1, p0, Lcom/google/googlex/gcam/WeightedNormalizedRectVector;->b:J

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean p3, p0, Lcom/google/googlex/gcam/WeightedNormalizedRectVector;->a:Z

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
.end method


# virtual methods
.method public final a(Lcom/google/googlex/gcam/WeightedNormalizedRect;)V
    .locals 6

    goto/32 :goto_4

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->WeightedNormalizedRectVector_add(JLcom/google/googlex/gcam/WeightedNormalizedRectVector;JLcom/google/googlex/gcam/WeightedNormalizedRect;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    move-object v5, p1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    iget-wide v0, p0, Lcom/google/googlex/gcam/WeightedNormalizedRectVector;->b:J

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    iget-wide v3, p1, Lcom/google/googlex/gcam/WeightedNormalizedRect;->a:J

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x12

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_e
    move-object v2, p0

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
.end method

.method public final declared-synchronized b()V
    .locals 5

    goto/32 :goto_7

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

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_2
    monitor-exit p0

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

    :goto_3
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

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_d

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0xd

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    const v1, 0xe

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

    :goto_9
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-wide v0, p0, Lcom/google/googlex/gcam/WeightedNormalizedRectVector;->b:J

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

    cmp-long v4, v0, v2

    nop

    nop

    if-eqz v4, :cond_0

    nop

    nop

    iget-boolean v4, p0, Lcom/google/googlex/gcam/WeightedNormalizedRectVector;->a:Z

    nop

    if-eqz v4, :cond_2

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    iput-boolean v4, p0, Lcom/google/googlex/gcam/WeightedNormalizedRectVector;->a:Z

    nop

    nop

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->delete_WeightedNormalizedRectVector(J)V

    :cond_2
    iput-wide v2, p0, Lcom/google/googlex/gcam/WeightedNormalizedRectVector;->b:J

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
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

    :goto_c
    goto/32 :goto_5

    nop

    nop

    :goto_d
    throw v0

    nop

    :goto_e
    goto/32 :goto_c

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

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/gcam/WeightedNormalizedRectVector;->b()V

    goto/32 :goto_1

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
.end method
