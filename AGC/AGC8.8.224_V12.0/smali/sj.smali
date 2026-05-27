.class public final Lsj;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Louo;

.field private final c:Lrd;

.field private final d:I

.field private final e:J

.field private final f:I

.field private final g:Ljava/lang/Object;

.field private h:Z

.field private i:Lsh;

.field private final j:J

.field private k:Lvl;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lrd;IJ)V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    iput-object p1, p0, Lsj;->a:Ljava/lang/String;

    iput-object p2, p0, Lsj;->c:Lrd;

    iput p3, p0, Lsj;->d:I

    iput-wide p4, p0, Lsj;->e:J

    sget-object p2, Lul;->b:Loon;

    invoke-virtual {p2}, Loon;->b()I

    move-result p2

    iput p2, p0, Lsj;->f:I

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lsj;->g:Ljava/lang/Object;

    sget-object p2, Lts;->a:Lts;

    invoke-static {p2}, Louy;->a(Ljava/lang/Object;)Louo;

    move-result-object p2

    iput-object p2, p0, Lsj;->b:Louo;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Opening "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lrc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    if-ne p3, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide p4

    :goto_0
    iput-wide p4, p0, Lsj;->j:J

    return-void
.end method

.method private final c(Lsh;)Ltn;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    iget-object v4, v0, Lsj;->k:Lvl;

    iget-wide v5, v1, Lsh;->a:J

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    iget-wide v8, v4, Lvl;->a:J

    iget-wide v10, v0, Lsj;->e:J

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Lvk;->a(J)Lvk;

    move-result-object v8

    move-object v13, v8

    goto :goto_0

    :cond_0
    move-object v13, v7

    :goto_0
    if-eqz v4, :cond_1

    iget-wide v8, v4, Lvl;->a:J

    iget-wide v10, v0, Lsj;->j:J

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Lvk;->a(J)Lvk;

    move-result-object v8

    move-object v15, v8

    goto :goto_1

    :cond_1
    move-object v15, v7

    :goto_1
    if-nez v4, :cond_2

    move-object/from16 v16, v7

    goto :goto_2

    :cond_2
    iget-wide v7, v4, Lvl;->a:J

    sub-long v7, v5, v7

    invoke-static {v7, v8}, Lvk;->a(J)Lvk;

    move-result-object v7

    move-object/from16 v16, v7

    :goto_2
    sub-long/2addr v2, v5

    iget-object v10, v0, Lsj;->a:Ljava/lang/String;

    iget v11, v1, Lsh;->d:I

    iget v4, v0, Lsj;->d:I

    add-int/lit8 v4, v4, -0x1

    iget-object v5, v1, Lsh;->b:Lqy;

    iget-object v14, v1, Lsh;->c:Ljava/lang/Throwable;

    new-instance v1, Ltn;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v2, v3}, Lvk;->a(J)Lvk;

    move-result-object v17

    move-object v9, v1

    move-object/from16 v18, v5

    invoke-direct/range {v9 .. v18}, Ltn;-><init>(Ljava/lang/String;ILjava/lang/Integer;Lvk;Ljava/lang/Throwable;Lvk;Lvk;Lvk;Lqy;)V

    return-object v1
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lsj;->b:Louo;

    invoke-interface {v0}, Louo;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljo;

    instance-of v1, v0, Ltp;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Ltp;

    iget-object v0, v0, Ltp;->a:Ltm;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    const-class v1, Landroid/hardware/camera2/CameraDevice;

    invoke-static {v1}, Lonl;->a(Ljava/lang/Class;)Lonx;

    move-result-object v1

    invoke-interface {v0, v1}, Ltm;->e(Lonx;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    new-instance v1, Lsh;

    const/4 v3, 0x1

    const/16 v4, 0xe

    invoke-direct {v1, v3, v2, v2, v4}, Lsh;-><init>(ILqy;Ljava/lang/Throwable;I)V

    check-cast v0, Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {p0, v0, v1}, Lsj;->b(Landroid/hardware/camera2/CameraDevice;Lsh;)V

    return-void
.end method

.method public final b(Landroid/hardware/camera2/CameraDevice;Lsh;)V
    .locals 5

    iget-object v0, p0, Lsj;->b:Louo;

    invoke-interface {v0}, Louo;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljo;

    instance-of v1, v0, Ltp;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Ltp;

    iget-object v0, v0, Ltp;->a:Ltm;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    iget-object v1, p0, Lsj;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v3, p0, Lsj;->i:Lsh;

    if-nez v3, :cond_1

    iput-object p2, p0, Lsj;->i:Lsh;

    iget-boolean v3, p0, Lsj;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    move-object p2, v2

    goto :goto_1

    :cond_1
    move-object p2, v2

    :cond_2
    :goto_1
    monitor-exit v1

    if-eqz p2, :cond_4

    iget-object v1, p0, Lsj;->b:Louo;

    new-instance v3, Lto;

    iget-object v4, p2, Lsh;->b:Lqy;

    invoke-direct {v3, v4}, Lto;-><init>(Lqy;)V

    invoke-interface {v1, v3}, Louo;->d(Ljava/lang/Object;)V

    if-eqz v0, :cond_3

    const-class v1, Landroid/hardware/camera2/CameraDevice;

    invoke-static {v1}, Lonl;->a(Ljava/lang/Class;)Lonx;

    move-result-object v1

    invoke-interface {v0, v1}, Ltm;->e(Lonx;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraDevice;

    invoke-static {v1}, Ljm;->c(Landroid/hardware/camera2/CameraDevice;)V

    check-cast v0, Lsg;

    iget-object v0, v0, Lsg;->d:Loop;

    invoke-virtual {v0, v2}, Loop;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltk;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ltk;->a()V

    :cond_3
    invoke-static {p1}, Ljm;->c(Landroid/hardware/camera2/CameraDevice;)V

    iget-object p1, p0, Lsj;->b:Louo;

    invoke-direct {p0, p2}, Lsj;->c(Lsh;)Ltn;

    move-result-object p2

    invoke-interface {p1, p2}, Louo;->d(Ljava/lang/Object;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1
.end method

.method public final onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lsj;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#onClosed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lsj;->a:Ljava/lang/String;

    invoke-static {v1}, Lrc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": onClosed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lsh;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v2, v3}, Lsh;-><init>(ILqy;Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1, v0}, Lsj;->b(Landroid/hardware/camera2/CameraDevice;Lsh;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lsj;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#onDisconnected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lsj;->a:Ljava/lang/String;

    invoke-static {v1}, Lrc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": onDisconnected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lsh;

    const/4 v1, 0x6

    invoke-static {v1}, Lqy;->a(I)Lqy;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-direct {v0, v2, v1, v3, v4}, Lsh;-><init>(ILqy;Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1, v0}, Lsj;->b(Landroid/hardware/camera2/CameraDevice;Lsh;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lsj;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#onError-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lsj;->a:Ljava/lang/String;

    invoke-static {v1}, Lrc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": onError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Lsh;

    const/4 v1, 0x5

    packed-switch p2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected StateCallback error code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/4 p2, 0x5

    goto :goto_0

    :pswitch_1
    const/4 p2, 0x4

    goto :goto_0

    :pswitch_2
    const/4 p2, 0x3

    goto :goto_0

    :pswitch_3
    const/4 p2, 0x2

    goto :goto_0

    :pswitch_4
    const/4 p2, 0x1

    :goto_0
    invoke-static {p2}, Lqy;->a(I)Lqy;

    move-result-object p2

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-direct {v0, v1, p2, v2, v3}, Lsh;-><init>(ILqy;Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1, v0}, Lsj;->b(Landroid/hardware/camera2/CameraDevice;Lsh;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 12

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lsj;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    invoke-static {v0, v1}, Lvl;->a(J)Lvl;

    move-result-object v2

    iput-object v2, p0, Lsj;->k:Lvl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lsj;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#onOpened"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-wide v2, p0, Lsj;->j:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lsj;->e:J

    sub-long/2addr v0, v4

    iget v4, p0, Lsj;->d:I

    const-string v5, "%.3f ms"

    const-wide v6, 0x412e848000000000L    # 1000000.0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v4, v10, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Opened "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsj;->a:Ljava/lang/String;

    invoke-static {v1}, Lrc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v10, [Ljava/lang/Object;

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v1, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v8, v5, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Opened "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lsj;->a:Ljava/lang/String;

    invoke-static {v11}, Lrc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " in "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v11, v10, [Ljava/lang/Object;

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v11, v9

    invoke-static {v11, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v8, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v10, [Ljava/lang/Object;

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v2, v9

    invoke-static {v2, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v8, v5, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " total) after "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lsj;->d:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " attempts."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v0, p0, Lsj;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lsj;->i:Lsh;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iput-boolean v10, p0, Lsj;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v10, 0x0

    :goto_1
    monitor-exit v0

    if-eqz v10, :cond_2

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    return-void

    :cond_2
    iget-object v0, p0, Lsj;->b:Louo;

    new-instance v1, Ltp;

    new-instance v2, Lsg;

    iget-object v3, p0, Lsj;->c:Lrd;

    iget-object v4, p0, Lsj;->a:Ljava/lang/String;

    invoke-direct {v2, v3, p1, v4}, Lsg;-><init>(Lrd;Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ltp;-><init>(Ltm;)V

    invoke-interface {v0, v1}, Louo;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lsj;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iput-boolean v9, p0, Lsj;->h:Z

    iget-object v1, p0, Lsj;->i:Lsh;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    if-eqz v1, :cond_3

    iget-object v0, p0, Lsj;->b:Louo;

    new-instance v2, Lto;

    iget-object v3, v1, Lsh;->b:Lqy;

    invoke-direct {v2, v3}, Lto;-><init>(Lqy;)V

    invoke-interface {v0, v2}, Louo;->d(Ljava/lang/Object;)V

    invoke-static {p1}, Ljm;->c(Landroid/hardware/camera2/CameraDevice;)V

    iget-object p1, p0, Lsj;->b:Louo;

    invoke-direct {p0, v1}, Lsj;->c(Lsh;)Ltn;

    move-result-object v0

    invoke-interface {p1, v0}, Louo;->d(Ljava/lang/Object;)V

    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraState-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsj;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
