.class public final Ldqg;
.super Ljava/lang/Object;

# interfaces
.implements Ldqq;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field private final b:Ldhi;

.field private final c:Lkaq;

.field private final d:Llbd;

.field private e:J

.field private final f:Lfwx;


# direct methods
.method public constructor <init>(Lfwx;Ljava/util/concurrent/Executor;Lbkc;Ldhi;Lkaq;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 p6, 0x0

    iput-wide p6, p0, Ldqg;->e:J

    iput-object p1, p0, Ldqg;->f:Lfwx;

    iput-object p2, p0, Ldqg;->a:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Ldqg;->b:Ldhi;

    const-string p1, "vesper"

    invoke-virtual {p3, p1}, Lbkc;->r(Ljava/lang/String;)Llbd;

    move-result-object p1

    iput-object p1, p0, Ldqg;->d:Llbd;

    const-string p1, "GpuFBCtrl"

    invoke-interface {p5, p1}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Ldqg;->c:Lkaq;

    return-void
.end method


# virtual methods
.method public final a(Lcvm;)Lnou;
    .locals 4

    iget-object v0, p1, Lcvm;->b:Ljava/lang/Object;

    check-cast v0, Lgyq;

    invoke-virtual {v0}, Lgyq;->b()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ldqd;

    iget-object p1, p1, Lcvm;->d:Ljava/lang/Object;

    invoke-direct {v0, p1}, Ldqd;-><init>(Lkpb;)V

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Ldqg;->f:Lfwx;

    new-instance v1, Ldqf;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v2, v3}, Ldqf;-><init>(Ldqg;Lcvm;I[B)V

    invoke-virtual {v0, v1}, Lfwx;->a(Lfwu;)Lnou;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized b()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Ldqg;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/google/android/apps/camera/jni/facebeautification/GpuRetoucherNative;->releaseRetoucher(J)V

    iput-wide v2, p0, Ldqg;->e:J

    :cond_0
    iget-object v0, p0, Ldqg;->d:Llbd;

    invoke-interface {v0}, Llbd;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Lcvm;)Ldqp;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    :try_start_0
    iget-wide v2, v1, Ldqg;->e:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    cmp-long v8, v2, v4

    if-nez v8, :cond_0

    iget-object v2, v0, Lcvm;->b:Ljava/lang/Object;

    iget-object v3, v1, Ldqg;->b:Ldhi;

    sget-object v8, Ldhc;->a:Ldhk;

    invoke-interface {v3}, Ldhi;->f()V

    sget-object v3, Lgyq;->a:Lgyq;

    check-cast v2, Lgyq;

    invoke-virtual {v2}, Lgyq;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x0

    goto :goto_0

    :pswitch_0
    const/4 v2, 0x1

    :goto_0
    invoke-static {v7, v2}, Lcom/google/android/apps/camera/jni/facebeautification/GpuRetoucherNative;->createRetoucher(ZI)J

    move-result-wide v2

    iput-wide v2, v1, Ldqg;->e:J

    goto :goto_1

    :cond_0
    :goto_1
    cmp-long v8, v2, v4

    if-eqz v8, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    invoke-static {v2}, Lmoz;->p(Z)V

    iget-object v2, v0, Lcvm;->d:Ljava/lang/Object;

    invoke-interface {v2}, Lkpb;->f()Landroid/hardware/HardwareBuffer;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-ne v3, v7, :cond_2

    const/4 v3, 0x1

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    :goto_3
    :try_start_2
    invoke-virtual {v2}, Landroid/hardware/HardwareBuffer;->close()V

    iget-object v2, v0, Lcvm;->a:Ljava/lang/Object;

    invoke-static {v2}, Ldyk;->d(Lkou;)Lmvv;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v2, Ldqd;

    iget-object v0, v0, Lcvm;->d:Ljava/lang/Object;

    invoke-direct {v2, v0}, Ldqd;-><init>(Lkpb;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    monitor-exit p0

    return-object v2

    :cond_3
    :try_start_3
    iget-object v4, v0, Lcvm;->d:Ljava/lang/Object;

    invoke-interface {v4}, Lkpb;->f()Landroid/hardware/HardwareBuffer;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v1, Ldqg;->c:Lkaq;

    iget-object v8, v0, Lcvm;->d:Ljava/lang/Object;

    invoke-interface {v8}, Lkpb;->c()I

    move-result v8

    iget-object v9, v0, Lcvm;->d:Ljava/lang/Object;

    invoke-interface {v9}, Lkpb;->b()I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Running GPU face retouch on an image of size "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " x "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Lkaq;->h(Ljava/lang/String;)V

    iget-wide v8, v1, Ldqg;->e:J

    xor-int/lit8 v13, v3, 0x1

    iget-object v3, v0, Lcvm;->d:Ljava/lang/Object;

    invoke-interface {v3}, Lkpb;->c()I

    move-result v14

    iget-object v3, v0, Lcvm;->d:Ljava/lang/Object;

    invoke-interface {v3}, Lkpb;->b()I

    move-result v15

    new-array v3, v6, [Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify2;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, [Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify2;

    iget-object v2, v0, Lcvm;->b:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Lgyq;

    iget v2, v2, Lgyq;->f:I

    move-object v10, v4

    move v11, v13

    move-object v12, v4

    move/from16 v17, v2

    invoke-static/range {v8 .. v17}, Lcom/google/android/apps/camera/jni/facebeautification/GpuRetoucherNative;->process(JLandroid/hardware/HardwareBuffer;ZLandroid/hardware/HardwareBuffer;ZII[Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify2;I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v4}, Landroid/hardware/HardwareBuffer;->close()V

    new-instance v2, Ldqc;

    iget-object v3, v0, Lcvm;->d:Ljava/lang/Object;

    iget-object v0, v0, Lcvm;->b:Ljava/lang/Object;

    check-cast v0, Lgyq;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v0}, Ldqc;-><init>(Lkpb;[BLgyq;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v4, :cond_4

    :try_start_6
    invoke-virtual {v4}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_7
    invoke-static {v2, v3}, Ldnf;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_2
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_5

    :try_start_8
    invoke-virtual {v2}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_9
    invoke-static {v3, v2}, Ldnf;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_5
    :goto_5
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final close()V
    .locals 3

    iget-object v0, p0, Ldqg;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Ldgg;

    const/16 v2, 0x12

    invoke-direct {v1, p0, v2}, Ldgg;-><init>(Ldqg;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
