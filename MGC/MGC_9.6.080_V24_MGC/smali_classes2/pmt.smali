.class public final Lpmt;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private a:F

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/util/ArrayDeque;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

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
    iput v0, p0, Lpmt;->a:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    iput-object v0, p0, Lpmt;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lpnu;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    const/high16 v0, -0x40800000    # -1.0f

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    iput-object p1, p0, Lpmt;->b:Ljava/lang/Object;

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
    return-void

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

    :goto_4
    iput v0, p0, Lpmt;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a()F
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw v0

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget v0, p0, Lpmt;->a:F

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop
.end method

.method public final declared-synchronized b()Lrss;
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x17

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget v0, p0, Lpmt;->a:F

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    cmpg-float v0, v0, v1

    nop

    nop

    nop

    if-gez v0, :cond_1

    nop

    nop

    nop

    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_6
    return-object v0

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

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    return-object v0

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_2
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ZOOM_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    iget v1, p0, Lpmt;->a:F

    nop

    nop

    nop

    nop

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    nop

    nop

    new-instance v2, Lpha;

    nop

    nop

    nop

    invoke-direct {v2, v0, v1}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {v2}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    throw v0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized c(F)V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    nop

    nop

    nop

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    nop

    nop

    nop

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    const-string v1, "Zoom ratio %.2f is less than min zoom ratio %.2f."

    nop

    nop

    nop

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    const-string v0, "Zoom ratio %.2f exceeds max zoom ratio %.2f."

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lpmt;->b:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-interface {v0}, Lpnu;->b()F

    move-result v0

    nop

    nop

    nop

    nop

    cmpl-float v1, p1, v0

    nop

    nop

    nop

    nop

    nop

    if-gtz v1, :cond_1

    nop

    iget-object v0, p0, Lpmt;->b:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-interface {v0}, Lpnu;->d()F

    move-result v1

    nop

    nop

    invoke-interface {v0}, Lpnu;->d()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    cmpg-float v0, p1, v0

    nop

    nop

    nop

    nop

    nop

    if-ltz v0, :cond_0

    nop

    nop

    nop

    iput p1, p0, Lpmt;->a:F

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

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

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    :goto_4
    monitor-exit p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x16

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

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

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

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    throw p1

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0xb

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized d(Lpcd;)V
    .locals 6

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x10

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

    :goto_1
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

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

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

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    goto :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    :goto_7
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    const-string v0, "Sample cannot be null"

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    invoke-static {v1, v0}, Lrrf;->m(ZLjava/lang/Object;)V

    iget v0, p0, Lpmt;->a:F

    nop

    nop

    nop

    nop

    nop

    iget v1, p1, Lpcd;->b:F

    nop

    add-float/2addr v0, v1

    nop

    iput v0, p0, Lpmt;->a:F

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lpmt;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Ljava/util/ArrayDeque;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lpmt;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v0, Ljava/util/ArrayDeque;

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_1

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Lpcd;

    nop

    nop

    iget-wide v2, v1, Lpcd;->a:J

    nop

    nop

    nop

    const-wide/32 v4, 0xf4240

    nop

    nop

    add-long/2addr v2, v4

    nop

    nop

    iget-wide v4, p1, Lpcd;->a:J

    nop

    nop

    nop

    cmp-long v2, v2, v4

    nop

    nop

    nop

    nop

    if-gez v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget v2, p0, Lpmt;->a:F

    nop

    nop

    nop

    iget v1, v1, Lpcd;->b:F

    nop

    nop

    nop

    nop

    nop

    sub-float/2addr v2, v1

    nop

    iput v2, p0, Lpmt;->a:F

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    monitor-exit p0

    nop

    goto/32 :goto_3

    nop

    nop
.end method
