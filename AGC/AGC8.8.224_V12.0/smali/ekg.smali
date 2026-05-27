.class public final Lekg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Lekd;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Leki;

.field public final c:Leke;

.field public final d:Lejt;

.field public e:Lekh;

.field public f:Z

.field public g:Z

.field public h:Lekc;

.field public i:Lcom/google/android/libraries/vision/opengl/Texture;

.field public j:D

.field public k:I

.field public l:Lehu;

.field private final m:[F

.field private final n:[F

.field private final o:Lcom/google/android/apps/camera/imax/cyclops/capture/TrackerStats;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/imax/cyclops/capture/CaptureModule"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lekg;->a:Lnak;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    new-instance v0, Leke;

    invoke-direct {v0}, Leke;-><init>()V

    new-instance v1, Leki;

    invoke-direct {v1}, Leki;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Lekg;->m:[F

    const/16 v2, 0x9

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    iput-object v2, p0, Lekg;->n:[F

    new-instance v2, Lcom/google/android/apps/camera/imax/cyclops/capture/TrackerStats;

    invoke-direct {v2}, Lcom/google/android/apps/camera/imax/cyclops/capture/TrackerStats;-><init>()V

    iput-object v2, p0, Lekg;->o:Lcom/google/android/apps/camera/imax/cyclops/capture/TrackerStats;

    const-class v2, Leju;

    invoke-static {v2}, Lekj;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leju;

    invoke-interface {v2}, Leju;->a()Lejt;

    move-result-object v2

    iput-object v2, p0, Lekg;->d:Lejt;

    const/4 v2, 0x0

    iput-object v2, p0, Lekg;->e:Lekh;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lekg;->f:Z

    iput-boolean v3, p0, Lekg;->g:Z

    iput-object v2, p0, Lekg;->h:Lekc;

    iput-object v2, p0, Lekg;->i:Lcom/google/android/libraries/vision/opengl/Texture;

    iput-object v2, p0, Lekg;->l:Lehu;

    const-wide v4, 0x47efffffe0000000L    # 3.4028234663852886E38

    iput-wide v4, p0, Lekg;->j:D

    iput v3, p0, Lekg;->k:I

    iput-object v0, p0, Lekg;->c:Leke;

    iput-object v1, p0, Lekg;->b:Leki;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final declared-synchronized a([FJ)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lekg;->f:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lekg;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lekg;->e:Lekh;

    iget-object v1, p0, Lekg;->n:[F

    invoke-virtual {v0, v1}, Lekh;->e([F)V

    iget-object v0, p0, Lekg;->e:Lekh;

    invoke-virtual {v0}, Lekh;->a()D

    move-result-wide v0

    iget-wide v2, p0, Lekg;->j:D

    sub-double v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v6, v2, v4

    if-gez v6, :cond_1

    iget p1, p0, Lekg;->k:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lekg;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iput-wide v0, p0, Lekg;->j:D

    iget-object v0, p0, Lekg;->d:Lejt;

    iget-object v1, p0, Lekg;->m:[F

    iget-object v2, p0, Lekg;->n:[F

    invoke-interface {v0, v1, v2}, Lejt;->trackTexture([F[F)Z

    iget-object v0, p0, Lekg;->d:Lejt;

    iget-object v1, p0, Lekg;->o:Lcom/google/android/apps/camera/imax/cyclops/capture/TrackerStats;

    invoke-interface {v0, v1}, Lejt;->getTrackerStats(Lcom/google/android/apps/camera/imax/cyclops/capture/TrackerStats;)V

    iget-object v0, p0, Lekg;->b:Leki;

    iget-object v1, p0, Lekg;->o:Lcom/google/android/apps/camera/imax/cyclops/capture/TrackerStats;

    invoke-virtual {v0, v1}, Leki;->a(Lcom/google/android/apps/camera/imax/cyclops/capture/TrackerStats;)V

    iget-object v0, p0, Lekg;->c:Leke;

    invoke-virtual {v0, p1, p2, p3}, Leke;->a([FJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(II)V
    .locals 0

    return-void
.end method

.method public final c(Lcom/google/android/libraries/vision/opengl/Texture;Lekc;)V
    .locals 1

    iput-object p1, p0, Lekg;->i:Lcom/google/android/libraries/vision/opengl/Texture;

    iput-object p2, p0, Lekg;->h:Lekc;

    iget-object v0, p0, Lekg;->c:Leke;

    invoke-virtual {v0, p1, p2}, Leke;->c(Lcom/google/android/libraries/vision/opengl/Texture;Lekc;)V

    iget p1, p2, Lekc;->a:I

    iget p1, p2, Lekc;->d:F

    return-void
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lekg;->d:Lejt;

    invoke-interface {v0}, Lejt;->release()V

    return-void
.end method

.method public final declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lekg;->f:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lekg;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lekg;->c:Leke;

    invoke-virtual {v0}, Leke;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e(Lehu;)V
    .locals 1

    iput-object p1, p0, Lekg;->l:Lehu;

    iget-object v0, p0, Lekg;->c:Leke;

    iput-object p1, v0, Leke;->g:Lehu;

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lekg;->c:Leke;

    const v1, 0x16e3600

    iput v1, v0, Leke;->f:I

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lekg;->f:Z

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lekg;->f:Z

    iput-boolean v0, p0, Lekg;->g:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lekg;->c:Leke;

    iget-object v2, v1, Leke;->b:Lekz;

    if-eqz v2, :cond_1

    iput-boolean v0, v2, Lekz;->f:Z

    iget-object v3, v2, Lekz;->e:Leky;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Leky;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Leky;->sendMessage(Landroid/os/Message;)Z

    iget-object v3, v2, Lekz;->e:Leky;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Leky;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Leky;->sendMessage(Landroid/os/Message;)Z

    :try_start_1
    iget-object v2, v2, Lekz;->d:Landroid/os/Looper;

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lekz;->a:Lnak;

    invoke-virtual {v3}, Lnaf;->b()Lnaz;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x638

    invoke-static {v3, v4, v5, v6, v2}, Ld;->i(Lnaz;Ljava/lang/String;Ljava/lang/Object;CLjava/lang/Throwable;)V

    :cond_1
    :goto_0
    iget-object v2, v1, Leke;->d:Leka;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Leka;->a()V

    :cond_2
    iget-object v2, v1, Leke;->g:Lehu;

    new-instance v3, Leer;

    const/16 v4, 0x10

    invoke-direct {v3, v1, v4}, Leer;-><init>(Leke;I)V

    invoke-virtual {v2, v3}, Lehu;->a(Ljava/lang/Runnable;)V

    iget-object v2, v1, Leke;->b:Lekz;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lekz;->a()I

    move-result v0

    iget-object v2, v1, Leke;->b:Lekz;

    iget-object v2, v2, Lekz;->c:Lekt;

    iget v2, v2, Lekt;->k:I

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x0

    iput-object v3, v1, Leke;->b:Lekz;

    iput-object v3, v1, Leke;->d:Leka;

    iget-object v1, p0, Lekg;->d:Lejt;

    invoke-interface {v1, p1}, Lejt;->stopCapture(Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Lekg;->l:Lehu;

    new-instance v3, Leer;

    const/16 v4, 0x11

    invoke-direct {v3, p0, v4}, Leer;-><init>(Lekg;I)V

    invoke-virtual {v1, v3}, Lehu;->a(Ljava/lang/Runnable;)V

    if-ne v0, p1, :cond_6

    if-lez v2, :cond_4

    goto :goto_2

    :cond_4
    iget p1, p0, Lekg;->k:I

    if-lez p1, :cond_5

    sget-object p1, Lnbk;->a:Lnbc;

    :cond_5
    return-void

    :cond_6
    :goto_2
    sget-object v1, Lekg;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    sget-object v3, Lnbk;->a:Lnbc;

    const-string v4, "ImaxCaptureModule"

    invoke-interface {v1, v3, v4}, Lnaz;->g(Lnbc;Ljava/lang/Object;)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v3, 0x60e

    invoke-interface {v1, v3}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const-string v3, "Recorded video stream is out-of-sync with tracking\n%d frames recorded with %d packets dropped, but %d frames tracked"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, v3, v0, v2, p1}, Lnah;->B(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
