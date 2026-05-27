.class public final Ldqt;
.super Ljava/lang/Object;

# interfaces
.implements Lioo;
.implements Lkad;


# static fields
.field private static final c:Lnak;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:J

.field private final d:Ljvs;

.field private e:I

.field private f:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/facebeautification/live/LiveFaceBeautificationFullEffect"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Ldqt;->c:Lnak;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljvs;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ldqt;->a:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ldqt;->b:J

    const/4 v0, 0x0

    iput v0, p0, Ldqt;->e:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldqt;->f:Ljava/util/List;

    iput-object p2, p0, Ldqt;->d:Ljvs;

    new-instance p2, Ldgg;

    const/16 v0, 0x13

    invoke-direct {p2, p0, v0}, Ldgg;-><init>(Ldqt;I)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a()Liop;
    .locals 1

    sget-object v0, Liop;->b:Liop;

    return-object v0
.end method

.method public final synthetic b()Llbd;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic c()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lkba;->t(Lioo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 6

    iget-object v0, p0, Ldqt;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Ldqt;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-static {v1, v2}, Lcom/google/android/apps/camera/jni/facebeautification/GpuRetoucherNative;->releaseRetoucher(J)V

    iput-wide v3, p0, Ldqt;->b:J

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final k()Z
    .locals 2

    iget-object v0, p0, Ldqt;->d:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lgyq;->a:Lgyq;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final l(Lkpb;Lkpb;)I
    .locals 13

    iget-object p2, p0, Ldqt;->f:Ljava/util/List;

    iget v0, p0, Ldqt;->e:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-gt v0, v1, :cond_4

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Ldqt;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v3, p0, Ldqt;->b:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    monitor-exit v0

    return v2

    :cond_1
    invoke-interface {p1}, Lkpb;->f()Landroid/hardware/HardwareBuffer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-wide v3, p0, Ldqt;->b:J

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lkpb;->c()I

    move-result v9

    invoke-interface {p1}, Lkpb;->b()I

    move-result v10

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify2;

    invoke-interface {p2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v11, p1

    check-cast v11, [Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify2;

    iget-object p1, p0, Ldqt;->d:Ljvs;

    invoke-interface {p1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgyq;

    iget v12, p1, Lgyq;->f:I

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object v5, v1

    move-object v7, v1

    invoke-static/range {v3 .. v12}, Lcom/google/android/apps/camera/jni/facebeautification/GpuRetoucherNative;->process(JLandroid/hardware/HardwareBuffer;ZLandroid/hardware/HardwareBuffer;ZII[Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify2;I)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p2, 0x1

    if-eq p2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :goto_0
    :try_start_2
    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->close()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return v2

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-static {p1, p2}, Ldyk;->e(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p1

    :catchall_2
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    :cond_4
    :goto_2
    return v2
.end method

.method public final m(Lkeb;Lkfj;Lkeb;)V
    .locals 3

    invoke-interface {p1}, Lkeb;->c()Lkou;

    move-result-object v0

    if-nez v0, :cond_0

    iget v0, p0, Ldqt;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldqt;->e:I

    sget-object v0, Ldqt;->c:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x43d

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    iget v1, p0, Ldqt;->e:I

    const-string v2, "Using previous faceMetadata: metadata missed for %d consecutive frames."

    invoke-interface {v0, v2, v1}, Lnah;->p(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Ldqt;->e:I

    invoke-static {v0}, Ldyk;->d(Lkou;)Lmvv;

    move-result-object v0

    iput-object v0, p0, Ldqt;->f:Ljava/util/List;

    :goto_0
    invoke-interface {p1, p2}, Lkeb;->d(Lkfj;)Lkpb;

    move-result-object p1

    :try_start_0
    invoke-interface {p3, p2}, Lkeb;->d(Lkfj;)Lkpb;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Ldqt;->l(Lkpb;Lkpb;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p2}, Lkpb;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-interface {p1}, Lkpb;->close()V

    return-void

    :catchall_0
    move-exception p3

    if-eqz p2, :cond_1

    :try_start_3
    invoke-interface {p2}, Lkpb;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-static {p3, p2}, Ldyk;->e(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p2

    if-eqz p1, :cond_2

    :try_start_5
    invoke-interface {p1}, Lkpb;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    invoke-static {p2, p1}, Ldyk;->e(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p2
.end method

.method public final synthetic n(Llcd;Lldc;)I
    .locals 0

    invoke-static {}, Lkba;->v()I

    move-result p1

    return p1
.end method
