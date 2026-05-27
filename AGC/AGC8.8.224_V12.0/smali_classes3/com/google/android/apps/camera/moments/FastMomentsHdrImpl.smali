.class public Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lfse;


# instance fields
.field public final a:Lkaq;

.field public final b:J

.field public final c:Lcom/google/googlex/gcam/Gcam;

.field public final d:Lnsb;

.field private final e:Ljava/util/concurrent/Executor;

.field private final f:Lckd;


# direct methods
.method public constructor <init>(Lkaq;Lcom/google/googlex/gcam/Gcam;Ljava/util/concurrent/Executor;Lnsb;Lckd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FastMomentsHdr"

    invoke-interface {p1, v0}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->a:Lkaq;

    iput-object p2, p0, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->c:Lcom/google/googlex/gcam/Gcam;

    iput-object p3, p0, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->e:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->d:Lnsb;

    iput-object p5, p0, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->f:Lckd;

    invoke-static {}, Lemq;->b()V

    invoke-static {}, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->createImpl()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->b:J

    return-void
.end method

.method private static native createImpl()J
.end method

.method private static native releaseImpl(J)V
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->e:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->f:Lckd;

    new-instance v2, Lfof;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v3}, Lfof;-><init>(Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;I)V

    invoke-virtual {v1, v2}, Lckd;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Lkpb;Lfsf;Ljfe;Lfsd;)V
    .locals 14

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    invoke-interface {p1}, Lkpb;->a()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v4, 0x25

    if-ne v0, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lkpb;->a()I

    move-result v5

    const-string v7, "Wrong format for input ImageProxy. Got %s, expected RAW10 (%s)"

    invoke-static {v0, v7, v5, v4}, Lmoz;->k(ZLjava/lang/String;II)V

    invoke-interface {p1}, Lkpb;->f()Landroid/hardware/HardwareBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v6, Ljfe;->d:Ljava/lang/Object;

    check-cast v0, Lkaf;

    iget v0, v0, Lkaf;->a:I

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v4, "Only multiple of 4 widths are supported!"

    invoke-static {v0, v4}, Lmoz;->f(ZLjava/lang/Object;)V

    iget-object v0, v6, Ljfe;->d:Ljava/lang/Object;

    check-cast v0, Lkaf;

    iget v0, v0, Lkaf;->b:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    const-string v0, "Only multiple of 2 heights are supported!"

    invoke-static {v1, v0}, Lmoz;->f(ZLjava/lang/Object;)V

    iget-object v0, v3, Lfsf;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/googlex/gcam/AeShotParams;

    invoke-virtual {v0}, Lcom/google/googlex/gcam/AeShotParams;->a()Lcom/google/googlex/gcam/NormalizedRect;

    move-result-object v4

    iget-object v0, v3, Lfsf;->b:Ljava/lang/Object;

    move-object v11, p0

    iget-object v12, v11, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->e:Ljava/util/concurrent/Executor;

    new-instance v13, Lfpj;

    move-object v5, v0

    check-cast v5, Lcom/google/googlex/gcam/ShotMetadata;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p4

    invoke-direct/range {v0 .. v10}, Lfpj;-><init>(Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;Lkpb;Lfsf;Lcom/google/googlex/gcam/NormalizedRect;Lcom/google/googlex/gcam/ShotMetadata;Ljfe;Landroid/hardware/HardwareBuffer;Lfsd;I[B)V

    invoke-interface {v12, v13}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(Lkeb;Lgue;)Z
    .locals 6

    invoke-virtual {p2, p1}, Lgue;->a(Lkeb;)Lgli;

    move-result-object p1

    invoke-virtual {p1}, Lgli;->e()Lkpb;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->a:Lkaq;

    const-string v2, "No RAW10 image found in frame. Can\'t use FastMomentsHdr"

    invoke-interface {v1, v2}, Lkaq;->d(Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-interface {p1}, Lkpb;->f()Landroid/hardware/HardwareBuffer;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-interface {p1}, Lkpb;->close()V

    return v2

    :catchall_0
    move-exception v1

    if-eqz p1, :cond_3

    :try_start_1
    invoke-interface {p1}, Lkpb;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_2
    const-class v2, Ljava/lang/Throwable;

    const-string v3, "addSuppressed"

    new-array v4, p2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Throwable;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v0

    invoke-virtual {v2, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    :cond_3
    :goto_1
    throw v1
.end method

.method public final finalize()V
    .locals 5

    iget-wide v0, p0, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->releaseImpl(J)V

    :cond_0
    return-void
.end method

.method public native initializeProcessingQueueNative(JJ)V
.end method

.method public native processRaw10ToRgbaHardwareBufferNative(JJIJLandroid/hardware/HardwareBuffer;JJJIIJI)Landroid/hardware/HardwareBuffer;
.end method

.method public native processRaw10ToYuvHardwareBufferNative(JJIJLandroid/hardware/HardwareBuffer;JJJIIJI)Landroid/hardware/HardwareBuffer;
.end method

.method public native processRaw10ToYuvImageNative(JJILandroid/hardware/HardwareBuffer;JJJIIJI)J
.end method
