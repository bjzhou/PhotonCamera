.class public Lcom/google/googlex/gcam/YuvReadView;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public transient a:J

.field protected transient b:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_2
    goto/32 :goto_5

    nop

    :goto_3
    const v1, 0x19

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

    :goto_4
    goto/32 :goto_8

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x2

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

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    :goto_9
    invoke-direct {p0, v0, v1}, Lcom/google/googlex/gcam/YuvReadView;-><init>(J)V

    goto/32 :goto_7

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_YuvReadView__SWIG_0()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

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

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    iput-wide p1, p0, Lcom/google/googlex/gcam/YuvReadView;->a:J

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    iput-boolean v0, p0, Lcom/google/googlex/gcam/YuvReadView;->b:Z

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public constructor <init>(Lcom/google/googlex/gcam/YuvReadView;)V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_1
    invoke-static {v0, v1, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_YuvReadView__SWIG_1(JLcom/google/googlex/gcam/YuvReadView;)J

    move-result-wide v0

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

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x12

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

    :goto_8
    add-int v0, v0, v1

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
    goto/32 :goto_3

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    iget-wide v0, p1, Lcom/google/googlex/gcam/YuvReadView;->a:J

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0, v0, v1}, Lcom/google/googlex/gcam/YuvReadView;-><init>(J)V

    goto/32 :goto_5

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 2

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/YuvReadView;->a:J

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

    :goto_1
    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->YuvReadView_height(JLcom/google/googlex/gcam/YuvReadView;)I

    move-result p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0xe

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

    :goto_3
    return p0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    :goto_5
    const v1, 0xb

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final b()I
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    iget-wide v0, p0, Lcom/google/googlex/gcam/YuvReadView;->a:J

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    const v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_a
    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->YuvReadView_width(JLcom/google/googlex/gcam/YuvReadView;)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final c()Lsyn;
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lsyn;->a(I)Lsyn;

    move-result-object p0

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
    const v1, 0x7

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    :goto_4
    goto/32 :goto_3

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

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->YuvReadView_yuv_format(JLcom/google/googlex/gcam/YuvReadView;)I

    move-result p0

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

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_8
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    iget-wide v0, p0, Lcom/google/googlex/gcam/YuvReadView;->a:J

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

    nop

    :goto_a
    return-object p0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized d()V
    .locals 5

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/YuvReadView;->a:J

    nop

    nop

    nop

    const-wide/16 v2, 0x0

    nop

    cmp-long v4, v0, v2

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_2

    nop

    nop

    nop

    nop

    nop

    iget-boolean v4, p0, Lcom/google/googlex/gcam/YuvReadView;->b:Z

    nop

    nop

    nop

    if-eqz v4, :cond_0

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    iput-boolean v4, p0, Lcom/google/googlex/gcam/YuvReadView;->b:Z

    nop

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->delete_YuvReadView(J)V

    :cond_0
    iput-wide v2, p0, Lcom/google/googlex/gcam/YuvReadView;->a:J

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_e

    nop

    nop

    :goto_1
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

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0xd

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
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

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    throw v0

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    monitor-exit p0

    nop

    goto/32 :goto_b

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

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/gcam/YuvReadView;->d()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop
.end method
