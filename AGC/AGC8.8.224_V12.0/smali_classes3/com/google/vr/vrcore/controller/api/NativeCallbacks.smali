.class public final Lcom/google/vr/vrcore/controller/api/NativeCallbacks;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;


# instance fields
.field private final a:J

.field private b:Z


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->a:J

    return-void
.end method

.method private native handleAccelEvent(JIJFFF)V
.end method

.method private native handleBatteryEvent(JIJZI)V
.end method

.method private native handleButtonEvent(JIJIZ)V
.end method

.method private native handleControllerRecentered(JIJFFFF)V
.end method

.method private native handleGyroEvent(JIJFFF)V
.end method

.method private native handleOrientationEvent(JIJFFFF)V
.end method

.method private native handlePositionEvent(JIJFFF)V
.end method

.method private native handleServiceConnected(JI)V
.end method

.method private native handleServiceDisconnected(J)V
.end method

.method private native handleServiceFailed(J)V
.end method

.method private native handleServiceInitFailed(JI)V
.end method

.method private native handleServiceUnavailable(J)V
.end method

.method private native handleStateChanged(JII)V
.end method

.method private native handleTouchEvent(JIJIFF)V
.end method

.method private native handleTrackingStatusEvent(JIJI)V
.end method

.method private final j(Lofk;)V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->b:Z

    if-nez v2, :cond_2

    iget v2, p1, Lofk;->l:I

    if-ge v1, v2, :cond_1

    if-ge v1, v2, :cond_0

    iget-object v2, p1, Lofk;->m:[Loff;

    aget-object v2, v2, v1

    iget-wide v4, p0, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->a:J

    iget v6, v2, Loff;->e:I

    iget-wide v7, v2, Loff;->d:J

    iget v9, v2, Loff;->a:F

    iget v10, v2, Loff;->b:F

    iget v11, v2, Loff;->c:F

    move-object v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->handleAccelEvent(JIJFFF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iget-boolean v2, p0, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->b:Z

    if-nez v2, :cond_5

    iget v2, p1, Lofk;->n:I

    if-ge v1, v2, :cond_4

    if-ge v1, v2, :cond_3

    iget-object v2, p1, Lofk;->o:[Lofh;

    aget-object v2, v2, v1

    iget-wide v4, p0, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->a:J

    iget v6, v2, Lofh;->e:I

    iget-wide v7, v2, Lofh;->d:J

    iget v9, v2, Lofh;->a:I

    iget-boolean v10, v2, Lofh;->b:Z

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->handleButtonEvent(JIJIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    iget-boolean v2, p0, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->b:Z

    if-nez v2, :cond_8

    iget v2, p1, Lofk;->p:I

    if-ge v1, v2, :cond_7

    if-ge v1, v2, :cond_6

    iget-object v2, p1, Lofk;->q:[Lofl;

    aget-object v2, v2, v1

    iget-wide v4, p0, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->a:J

    iget v6, v2, Lofl;->e:I

    iget-wide v7, v2, Lofl;->d:J

    iget v9, v2, Lofl;->a:F

    iget v10, v2, Lofl;->b:F

    iget v11, v2, Lofl;->c:F

    move-object v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->handleGyroEvent(JIJFFF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    :goto_3
    iget-boolean v2, p0, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->b:Z

    if-nez v2, :cond_b

    iget v2, p1, Lofk;->r:I

    if-ge v1, v2, :cond_a

    if-ge v1, v2, :cond_9

    iget-object v2, p1, Lofk;->s:[Lofn;

    aget-object v2, v2, v1

    iget-wide v4, p0, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->a:J

    iget v6, v2, Lofn;->e:I

    iget-wide v7, v2, Lofn;->d:J

    iget v9, v2, Lofn;->a:F

    iget v10, v2, Lofn;->b:F

    iget v11, v2, Lofn;->c:F

    iget v12, v2, Lofn;->f:F

    move-object v3, p0

    invoke-direct/range {v3 .. v12}, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->handleOrientationEvent(JIJFFFF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_a
    goto :goto_4

    :cond_b
    :goto_4
    iget-boolean v1, p0, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->b:Z

    if-nez v1, :cond_d

    iget v1, p1, Lofk;->t:I

    if-ge v0, v1, :cond_d

    if-ge v0, v1, :cond_c

    iget-object v1, p1, Lofk;->u:[Lofs;

    aget-object v1, v1, v0

    iget-wide v3, p0, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->a:J

    iget v5, v1, Lofs;->e:I

    iget-wide v6, v1, Lofs;->d:J

    iget v8, v1, Lofs;->b:I

    iget v9, v1, Lofs;->c:F

    iget v10, v1, Lofs;->f:F

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->handleTouchEvent(JIJIFF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_c
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_d
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lofk;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->j(Lofk;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized b(Lofj;)V
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->j(Lofk;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->b:Z

    if-nez v2, :cond_3

    iget v2, p1, Lofj;->c:I

    if-ge v1, v2, :cond_2

    if-ge v1, v2, :cond_1

    iget-object v2, p1, Lofj;->d:[Lofo;

    aget-object v2, v2, v1

    iget-wide v4, p0, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->a:J

    iget v6, v2, Lofo;->e:I

    iget-wide v7, v2, Lofo;->d:J

    iget v9, v2, Lofo;->a:F

    iget v10, v2, Lofo;->b:F

    iget v11, v2, Lofo;->c:F

    move-object v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->handlePositionEvent(JIJFFF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_2
    goto :goto_1

    :cond_3
    :goto_1
    iget-boolean v1, p0, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->b:Z

    if-nez v1, :cond_6

    iget v1, p1, Lofj;->h:I

    if-ge v0, v1, :cond_5

    if-ge v0, v1, :cond_4

    iget-object v1, p1, Lofj;->i:[Loft;

    aget-object v1, v1, v0

    iget-wide v3, p0, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->a:J

    iget v5, v1, Loft;->e:I

    iget-wide v6, v1, Loft;->d:J

    iget v8, v1, Loft;->a:I

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->handleTrackingStatusEvent(JIJI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_5
    iget-boolean v0, p1, Lofj;->e:Z

    if-eqz v0, :cond_6

    iget-object p1, p1, Lofj;->f:Lofg;

    iget-wide v1, p0, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->a:J

    iget v3, p1, Lofg;->e:I

    iget-wide v4, p1, Lofg;->d:J

    iget-boolean v6, p1, Lofg;->b:Z

    iget v7, p1, Lofg;->a:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->handleBatteryEvent(JIJZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final declared-synchronized c(Lofn;)V
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->b:Z

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->a:J

    iget v4, p1, Lofn;->e:I

    iget-wide v5, p1, Lofn;->d:J

    iget v7, p1, Lofn;->a:F

    iget v8, p1, Lofn;->b:F

    iget v9, p1, Lofn;->c:F

    iget v10, p1, Lofn;->f:F

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->handleControllerRecentered(JIJFFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d(II)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->b:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->a:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->handleStateChanged(JII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->b:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->a:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->handleServiceDisconnected(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->b:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->a:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->handleServiceFailed(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->b:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->handleServiceInitFailed(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized h()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->b:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->a:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->handleServiceUnavailable(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->b:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->a:J

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/vr/vrcore/controller/api/NativeCallbacks;->handleServiceConnected(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
