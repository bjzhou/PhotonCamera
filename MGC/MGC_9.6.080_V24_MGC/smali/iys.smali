.class public final Liys;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Liyr;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/util/Set;

.field private final c:J

.field private d:Z


# direct methods
.method public constructor <init>(ILpck;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Liys;->a:Ljava/lang/Object;

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    iput-boolean p1, p0, Liys;->d:Z

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Liys;->b:Ljava/util/Set;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    iput-wide p1, p0, Liys;->c:J

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    new-instance v0, Ljava/util/HashSet;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p1, v0, p2}, Lcom/google/android/apps/camera/jni/lensoffset/LensOffsetQueueNative;->createHandle(III)J

    move-result-wide p1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget p2, p2, Lpck;->b:I

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
    iget v0, p2, Lpck;->a:I

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(J)[F
    .locals 4

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :goto_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x3

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
    const v0, 0x1c

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    monitor-enter v1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-boolean v2, p0, Liys;->d:Z

    nop

    nop

    if-eqz v2, :cond_0

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop

    nop

    goto :goto_6

    nop

    nop

    :cond_0
    iget-wide v2, p0, Liys;->c:J

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v3, p1, p2, v0}, Lcom/google/android/apps/camera/jni/lensoffset/LensOffsetQueueNative;->getLensOffsetAtTime(JJ[F)Z

    move-result p0

    nop

    nop

    nop

    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    monitor-exit v1

    nop

    nop

    nop

    :goto_6
    return-object v0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    :goto_7
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_2
    goto/32 :goto_b

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_9
    iget-object v1, p0, Liys;->a:Ljava/lang/Object;

    nop

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

    :goto_a
    new-array v0, v0, [F

    nop

    nop

    nop

    fill-array-data v0, :array_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    :goto_d
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(JJ)[F
    .locals 11

    goto/32 :goto_3

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x18

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v3, 0x0

    nop

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

    :goto_5
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    monitor-enter v3

    nop

    nop

    nop

    nop

    :try_start_0
    iget-boolean v5, p0, Liys;->d:Z

    nop

    if-eqz v5, :cond_0

    nop

    nop

    nop

    nop

    monitor-exit v3

    nop

    goto/16 :goto_9

    nop

    :cond_0
    const-wide/32 v5, 0x1e8480

    nop

    nop

    nop

    cmp-long v7, p3, v5

    nop

    nop

    nop

    if-gez v7, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-wide p3, p0, Liys;->c:J

    nop

    nop

    nop

    nop

    nop

    invoke-static {p3, p4, p1, p2, v1}, Lcom/google/android/apps/camera/jni/lensoffset/LensOffsetQueueNative;->getLensOffsetAtTime(JJ[F)Z

    move-result p0

    nop

    nop

    nop

    nop

    if-nez p0, :cond_4

    nop

    nop

    nop

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_8

    nop

    nop

    nop

    :cond_1
    shr-long/2addr p3, v4

    nop

    sub-long v7, p1, p3

    nop

    add-long/2addr p1, p3

    nop

    nop

    nop

    new-array p3, v0, [F

    nop

    nop

    fill-array-data p3, :array_0

    move p4, v2

    nop

    nop

    :goto_7
    cmp-long v0, v7, p1

    nop

    if-gez v0, :cond_3

    nop

    iget-wide v9, p0, Liys;->c:J

    nop

    invoke-static {v9, v10, v7, v8, p3}, Lcom/google/android/apps/camera/jni/lensoffset/LensOffsetQueueNative;->getLensOffsetAtTime(JJ[F)Z

    move-result v0

    nop

    nop

    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    aget v0, v1, v2

    nop

    nop

    nop

    aget v9, p3, v2

    nop

    nop

    nop

    nop

    nop

    add-float/2addr v0, v9

    nop

    aput v0, v1, v2

    nop

    nop

    nop

    nop

    nop

    aget v0, v1, v4

    nop

    nop

    nop

    aget v9, p3, v4

    nop

    nop

    add-float/2addr v0, v9

    nop

    nop

    aput v0, v1, v4

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 p4, p4, 0x1

    nop

    add-long/2addr v7, v5

    nop

    nop

    nop

    nop

    goto :goto_7

    nop

    nop

    nop

    nop

    :cond_3
    if-lez p4, :cond_4

    nop

    nop

    aget p0, v1, v2

    nop

    int-to-float p1, p4

    nop

    nop

    div-float/2addr p0, p1

    nop

    aput p0, v1, v2

    nop

    aget p0, v1, v4

    nop

    nop

    nop

    nop

    div-float/2addr p0, p1

    nop

    aput p0, v1, v4

    nop

    nop

    :cond_4
    :goto_8
    monitor-exit v3

    nop

    nop

    nop

    nop

    :goto_9
    return-object v1

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v3

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a
    aput v3, v1, v4

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    aput v3, v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    const/4 v4, 0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_f
    new-array v1, v0, [F

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_10
    iget-object v3, p0, Liys;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    throw p0

    nop

    nop

    nop

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :goto_12
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x10

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

    :goto_15
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1

    nop
.end method

.method public final c(JFF)V
    .locals 7

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Liys;->a:Ljava/lang/Object;

    nop

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

    :goto_2
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget-boolean v1, p0, Liys;->d:Z

    nop

    nop

    if-eqz v1, :cond_0

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :cond_0
    iget-wide v1, p0, Liys;->c:J

    nop

    nop

    move-wide v3, p1

    nop

    nop

    move v5, p3

    nop

    nop

    move v6, p4

    nop

    nop

    invoke-static/range {v1 .. v6}, Lcom/google/android/apps/camera/jni/lensoffset/LensOffsetQueueNative;->processAndEnqueueLensOffset(JJFF)Z

    move-result p1

    nop

    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Liys;->b:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    nop

    nop

    if-eqz p1, :cond_1

    nop

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    check-cast p1, Liyq;

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Liyq;->a()V

    goto :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_1
    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    const v0, 0xe

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    const v1, 0xe

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_2

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop
.end method

.method public final close()V
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-boolean v1, p0, Liys;->d:Z

    nop

    if-eqz v1, :cond_0

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :cond_0
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    iput-boolean v1, p0, Liys;->d:Z

    nop

    nop

    nop

    nop

    iget-wide v1, p0, Liys;->c:J

    nop

    nop

    nop

    nop

    invoke-static {v1, v2}, Lcom/google/android/apps/camera/jni/lensoffset/LensOffsetQueueNative;->releaseHandle(J)V

    monitor-exit v0

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_1

    nop

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

    :cond_1
    goto/32 :goto_4

    nop

    :goto_3
    const v1, 0x1c

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

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

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

    :goto_7
    const v0, 0x1a

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    iget-object v0, p0, Liys;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method
