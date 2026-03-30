.class public Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field private final b:Z

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

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

    :goto_2
    const-string v0, "com.google.android.apps.camera.dynamicdepth.DynamicDepthUtils"

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(ZLrss;)V
    .locals 1

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;->d:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    const-string v0, "ddc_opencl_cache.bin"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5
    iput-boolean p1, p0, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;->b:Z

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p2}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_15

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
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance p2, Ljava/io/File;

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
    invoke-virtual {p2}, Lrss;->h()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    iput-boolean v0, p0, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;->e:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    nop

    :goto_10
    goto/32 :goto_0

    nop

    nop

    :goto_11
    goto :goto_10

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    :goto_13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-string p1, ""

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_15
    check-cast p1, Ljava/io/File;

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
.end method

.method private static native createDynamicDepthFromPdImpl(JJJJ)Z
.end method

.method public static native createDynamicDepthFromUltradepthImpl(JJJJZJ)Z
.end method

.method public static d([BLcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;Lltn;)[B
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    invoke-interface {p2}, Lltn;->a()J

    move-result-wide p1

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    :goto_5
    const-wide/16 p1, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_9
    if-eqz p2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p0, v0, v1, p1, p2}, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;->writeDynamicDepthIntoJpegStreamImpl([BJJ)[B

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_e

    nop

    nop

    :goto_e
    iget-wide v0, p1, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    if-nez p0, :cond_2

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

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_10
    const v1, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_11
    const v0, 0x1b

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

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_13
    return-object p0

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_15
    sget-object p1, Lsed;->a:Lsdr;

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

    :goto_16
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop
.end method

.method private static native initializePdImpl(ZLjava/lang/String;I)V
.end method

.method public static native savePdCacheImpl()V
.end method

.method private static native writeDynamicDepthIntoJpegStreamImpl([BJJ)[B
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/lang/Runnable;
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x14

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;->e:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_1

    nop

    invoke-static {}, Lhst;->a()V

    iget-boolean v0, p0, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;->b:Z

    nop

    nop

    nop

    iget-object v1, p0, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x2

    nop

    nop

    nop

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;->initializePdImpl(ZLjava/lang/String;I)V

    const/4 v0, 0x1

    nop

    nop

    nop

    iput-boolean v0, p0, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;->e:Z

    nop

    new-instance v0, Lgbg;

    nop

    nop

    nop

    nop

    const/4 v1, 0x7

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Lgbg;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

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

    nop

    :goto_4
    return-object v0

    nop

    nop

    nop

    nop

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

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    const v0, 0x14

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

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_8
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    throw v0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

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

    nop

    :goto_c
    goto/32 :goto_3

    nop

    :goto_d
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_2
    new-instance v0, Lgbg;

    nop

    nop

    const/16 v1, 0x8

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Lgbg;-><init>(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized b(Lprw;Lprw;Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;Lcom/google/googlex/gcam/ShotMetadata;)Z
    .locals 2

    goto/32 :goto_2

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

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_1
    return p1

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x11

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

    :goto_3
    monitor-exit p0

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

    :goto_4
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    monitor-exit p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    invoke-virtual {v0, p2}, Ltbs;->c(Lprw;)Lcom/google/googlex/gcam/YuvWriteView;

    move-result-object p2

    nop

    nop

    nop

    check-cast p1, Lcom/google/googlex/gcam/RawWriteView;

    nop

    nop

    nop

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;->c(Lcom/google/googlex/gcam/RawWriteView;Lcom/google/googlex/gcam/YuvWriteView;Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;Lcom/google/googlex/gcam/ShotMetadata;)Z

    move-result p1

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    :goto_a
    const v1, 0x17

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    throw p1

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

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
    new-instance v0, Ltbs;

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Ltbs;-><init>()V

    invoke-virtual {v0, p1}, Ltbs;->a(Lprw;)Lrss;

    move-result-object p1

    nop

    nop

    nop

    invoke-virtual {p1}, Lrss;->h()Z

    move-result v1

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    sget-object p1, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;->a:Lsdb;

    nop

    nop

    invoke-virtual {p1}, Lscs;->b()Lsdo;

    move-result-object p1

    nop

    sget-object p2, Lsed;->a:Lsdr;

    nop

    nop

    nop

    const-string p3, "CAM_DynDepthUtils"

    nop

    invoke-interface {p1, p2, p3}, Lsdo;->h(Lsdr;Ljava/lang/Object;)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, Lscz;

    nop

    nop

    nop

    nop

    const/16 p2, 0x4ae

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, p2}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    check-cast p1, Lscz;

    nop

    const-string p2, "Error converting the PD image."

    nop

    nop

    nop

    nop

    invoke-interface {p1, p2}, Lscz;->s(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_6

    nop

    nop
.end method

.method public final declared-synchronized c(Lcom/google/googlex/gcam/RawWriteView;Lcom/google/googlex/gcam/YuvWriteView;Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;Lcom/google/googlex/gcam/ShotMetadata;)Z
    .locals 9

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    return p1

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0xc

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

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

    nop

    :goto_8
    throw p1

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;->a()Ljava/lang/Runnable;

    move-result-object v0

    nop

    nop

    nop

    invoke-static {p1}, Lcom/google/googlex/gcam/RawWriteView;->e(Lcom/google/googlex/gcam/RawWriteView;)J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {p2}, Lcom/google/googlex/gcam/YuvWriteView;->c(Lcom/google/googlex/gcam/YuvWriteView;)J

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    invoke-static {p4}, Lcom/google/googlex/gcam/ShotMetadata;->a(Lcom/google/googlex/gcam/ShotMetadata;)J

    move-result-wide v5

    nop

    nop

    iget-wide v7, p3, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;->a:J

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v1 .. v8}, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;->createDynamicDepthFromPdImpl(JJJJ)Z

    move-result p1

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_c
    const v1, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method
