.class public final Lgmn;
.super Ljava/lang/Object;

# interfaces
.implements Lebu;
.implements Lecm;
.implements Lecw;


# static fields
.field public static final a:Lnak;


# instance fields
.field private final b:Ljava/util/HashMap;

.field private final c:Lken;

.field private final d:Ljava/util/concurrent/Executor;

.field private final e:Lkbc;

.field private final f:Lcvr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/pixelcamerakit/payloadprocessor/AfDebugMetadataProcessor"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgmn;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lken;Lcvr;Ljava/util/concurrent/Executor;Lkbc;[B[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    iput-object p5, p0, Lgmn;->b:Ljava/util/HashMap;

    iput-object p2, p0, Lgmn;->f:Lcvr;

    iput-object p3, p0, Lgmn;->d:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lgmn;->e:Lkbc;

    iput-object p1, p0, Lgmn;->c:Lken;

    return-void
.end method


# virtual methods
.method public final a(Leea;IJLkou;)V
    .locals 7

    invoke-virtual {p1}, Leea;->a()I

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lgmn;->b:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    if-nez p2, :cond_0

    sget-object p2, Lgmn;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->c()Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const/16 p3, 0xbca

    invoke-interface {p2, p3}, Lnah;->G(I)Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const-string p3, "3A_DEBUG shotId=%d hasn\'t been started yet!"

    invoke-virtual {p1}, Leea;->a()I

    move-result p1

    invoke-interface {p2, p3, p1}, Lnah;->p(Ljava/lang/String;I)V

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p5, p0, Lgmn;->e:Lkbc;

    const-string v0, "AfDebugMetadataProcessor#onBaseFrameSelected"

    invoke-interface {p5, v0}, Lkbc;->e(Ljava/lang/String;)V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const v0, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Leea;->a()I

    invoke-virtual {p2, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkou;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p4, Liuw;->h:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p3, p4}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p4

    const/4 v0, 0x1

    if-nez p4, :cond_2

    sget-object p4, Liuw;->i:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p3, p4}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p4

    if-nez p4, :cond_2

    sget-object p4, Liuw;->j:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p3, p4}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_1

    const/4 p4, 0x1

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    goto :goto_0

    :cond_2
    const/4 p4, 0x1

    :goto_0
    invoke-interface {p3}, Lkou;->b()J

    move-result-wide v4

    if-nez p4, :cond_4

    sget-object p3, Livb;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz p3, :cond_3

    iget-object v2, p0, Lgmn;->c:Lken;

    iget-object p1, p1, Leea;->v:Lgkr;

    iget-object v3, p1, Lgkr;->c:Ljava/lang/Object;

    iget-object p1, p0, Lgmn;->d:Ljava/util/concurrent/Executor;

    new-instance p3, Ldcf;

    const/16 v6, 0xc

    move-object v1, p3

    invoke-direct/range {v1 .. v6}, Ldcf;-><init>(Lken;Lgxl;JI)V

    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    sget-object p3, Lgmn;->a:Lnak;

    invoke-virtual {p3}, Lnaf;->c()Lnaz;

    move-result-object p3

    check-cast p3, Lnah;

    const/16 p4, 0xbc9

    invoke-interface {p3, p4}, Lnah;->G(I)Lnaz;

    move-result-object p3

    check-cast p3, Lnah;

    invoke-virtual {p1}, Leea;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    const-string v0, "3A_DEBUG shotId=%d base frame=%d (timestamp=%d) metadata does not contain debug data! Request for base frame metadata not supported!"

    invoke-interface {p3, v0, p1, p4, p5}, Lnah;->B(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Leea;->a()I

    iget-object p1, p1, Leea;->v:Lgkr;

    iget-object p1, p1, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {p1, p3, v0}, Lgxl;->N(Lkou;Z)V

    goto :goto_1

    :cond_5
    sget-object p5, Lgmn;->a:Lnak;

    invoke-virtual {p5}, Lnaf;->c()Lnaz;

    move-result-object p5

    check-cast p5, Lnah;

    const/16 v0, 0xbc6

    invoke-interface {p5, v0}, Lnah;->G(I)Lnaz;

    move-result-object p5

    check-cast p5, Lnah;

    invoke-virtual {p1}, Leea;->a()I

    move-result p1

    const-string v0, "3A_DEBUG shotId=%d payload does not contain base frame timestamp %d"

    invoke-interface {p5, v0, p1, p3, p4}, Lnah;->t(Ljava/lang/String;IJ)V

    :goto_1
    iget-object p1, p0, Lgmn;->e:Lkbc;

    const-string p3, "clear"

    invoke-interface {p1, p3}, Lkbc;->g(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    iget-object p1, p0, Lgmn;->e:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final synthetic b(Lhjg;Lebd;)V
    .locals 0

    return-void
.end method

.method public final c(Leea;Lecq;)V
    .locals 2

    sget-object v0, Lgmn;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    invoke-interface {v0, p2}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const/16 v0, 0xbcc

    invoke-interface {p2, v0}, Lnah;->G(I)Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    invoke-virtual {p1}, Leea;->a()I

    move-result v0

    const-string v1, "3A_DEBUG onShotError for shotId=%d, shot AF metadata will be cleared."

    invoke-interface {p2, v1, v0}, Lnah;->p(Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Lgmn;->j(Leea;)V

    return-void
.end method

.method public final declared-synchronized d(Lgxy;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgmn;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leea;

    iget-object v2, v1, Leea;->v:Lgkr;

    iget-object v2, v2, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v2}, Lgxl;->h()Lgxy;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Leea;->a()I

    invoke-virtual {p0, v1}, Lgmn;->j(Leea;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized e(Leea;Lkeb;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-interface {p2}, Lkeb;->c()Lkou;

    move-result-object v0

    invoke-interface {p2}, Lkeb;->close()V

    if-eqz v0, :cond_0

    iget-object p2, p0, Lgmn;->b:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, p2}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-interface {v0}, Lkou;->b()J

    if-eqz p2, :cond_0

    iget-object v1, p0, Lgmn;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Leea;->a()I
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

.method public final declared-synchronized f(Leea;Lcom/google/googlex/gcam/BurstSpec;Lkou;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lgmn;->b:Ljava/util/HashMap;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Leea;->a()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final g(Lgxy;)V
    .locals 1

    iget-object v0, p0, Lgmn;->f:Lcvr;

    invoke-virtual {v0, p1}, Lcvr;->K(Lgxy;)Leeb;

    move-result-object v0

    invoke-virtual {v0, p0}, Leeb;->a(Lecm;)V

    invoke-virtual {v0, p0}, Leeb;->f(Lecw;)V

    iget p1, p1, Lgxy;->a:I

    return-void
.end method

.method public final h(Leea;)V
    .locals 0

    invoke-virtual {p1}, Leea;->a()I

    return-void
.end method

.method public final synthetic i(Leea;)V
    .locals 0

    return-void
.end method

.method protected final declared-synchronized j(Leea;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgmn;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V
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

.method public final declared-synchronized p(Leea;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lgmn;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0xbcb

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "3A_DEBUG onShotAborted for shotId=%d, shot AF metadata will be cleared."

    invoke-virtual {p1}, Leea;->a()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lnah;->p(Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Lgmn;->j(Leea;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
