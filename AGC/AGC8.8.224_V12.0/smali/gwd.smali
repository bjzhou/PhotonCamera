.class public final Lgwd;
.super Ljava/lang/Object;

# interfaces
.implements Lgxl;


# static fields
.field public static final a:Lnak;


# instance fields
.field private A:Lgpy;

.field private final B:Ljava/util/List;

.field private C:Z

.field private D:Lkou;

.field private E:Z

.field private final F:Lgpv;

.field private final G:Ligo;

.field private final H:Lkns;

.field public final b:Ldlj;

.field public final c:Lgya;

.field public d:Lkae;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Lgxz;

.field public final g:Lgwm;

.field public final h:Lcjf;

.field public final i:Lhjc;

.field public final j:Lnph;

.field public final k:Lnph;

.field public l:Z

.field public final m:Lgpo;

.field public final n:Lmqp;

.field public final o:Lgxr;

.field public p:Lgxn;

.field public final q:Lnph;

.field public volatile r:Lmqp;

.field public s:I

.field public t:I

.field public final u:Ljew;

.field public final v:Ljew;

.field public w:Ljew;

.field public final x:Ljew;

.field private y:Ligf;

.field private final z:Lgxi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/session/CaptureSessionBase"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgwd;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljew;Lgwm;Lhjc;Ldlj;Lgxi;Ljew;Lkns;Ligo;Lgya;Ljava/lang/String;Lcjf;Lgxr;Lgpv;Lmqp;[B[B[B[B[B)V
    .locals 9

    move-object v0, p0

    move-object v1, p6

    move-object/from16 v2, p10

    move-object/from16 v3, p13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v4, Ligh;->a:Ligf;

    iput-object v4, v0, Lgwd;->y:Ligf;

    sget-object v4, Lkae;->c:Lkae;

    iput-object v4, v0, Lgwd;->d:Lkae;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v4

    iput-object v4, v0, Lgwd;->j:Lnph;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v5

    iput-object v5, v0, Lgwd;->k:Lnph;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lgwd;->B:Ljava/util/List;

    const/4 v5, 0x0

    iput-boolean v5, v0, Lgwd;->C:Z

    iput-boolean v5, v0, Lgwd;->l:Z

    const/4 v6, 0x1

    iput v6, v0, Lgwd;->s:I

    iput v6, v0, Lgwd;->t:I

    iput-boolean v5, v0, Lgwd;->E:Z

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v5

    iput-object v5, v0, Lgwd;->q:Lnph;

    move-object v5, p1

    iput-object v5, v0, Lgwd;->e:Ljava/util/concurrent/Executor;

    iput-object v1, v0, Lgwd;->z:Lgxi;

    iput-object v3, v0, Lgwd;->o:Lgxr;

    move-object v5, p3

    iput-object v5, v0, Lgwd;->g:Lgwm;

    move-object v5, p2

    iput-object v5, v0, Lgwd;->v:Ljew;

    move-object/from16 v5, p12

    iput-object v5, v0, Lgwd;->h:Lcjf;

    move-object/from16 v5, p7

    iput-object v5, v0, Lgwd;->u:Ljew;

    move-object/from16 v5, p8

    iput-object v5, v0, Lgwd;->H:Lkns;

    move-object v5, p4

    iput-object v5, v0, Lgwd;->i:Lhjc;

    move-object v5, p5

    iput-object v5, v0, Lgwd;->b:Ldlj;

    move-object/from16 v5, p14

    iput-object v5, v0, Lgwd;->F:Lgpv;

    move-object/from16 v5, p15

    iput-object v5, v0, Lgwd;->n:Lmqp;

    iput-object v2, v0, Lgwd;->c:Lgya;

    new-instance v5, Ljew;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6, v6}, Ljew;-><init>([B[B[B)V

    iput-object v5, v0, Lgwd;->x:Ljew;

    move-object/from16 v5, p9

    iput-object v5, v0, Lgwd;->G:Ligo;

    invoke-static {}, Lgxy;->a()Lgxy;

    move-result-object v5

    iget-wide v6, v3, Lgxr;->a:J

    move-object/from16 v8, p11

    invoke-static {v5, v6, v7, v8, v2}, Lgxz;->a(Lgxy;JLjava/lang/String;Lgya;)Lgxz;

    move-result-object v2

    iput-object v2, v0, Lgwd;->f:Lgxz;

    new-instance v5, Lgqo;

    invoke-direct {v5, p0}, Lgqo;-><init>(Lgxl;)V

    iput-object v5, v0, Lgwd;->m:Lgpo;

    iget-object v2, v2, Lgxz;->a:Lgxy;

    iget-object v3, v3, Lgxr;->b:Lgyb;

    invoke-virtual {p6, v2, v4, v3}, Lgxi;->g(Lgxy;Lnou;Lgyb;)V

    sget-object v1, Lmpx;->a:Lmpx;

    iput-object v1, v0, Lgwd;->r:Lmqp;

    return-void
.end method

.method private final ad(Landroid/graphics/Bitmap;I)V
    .locals 5

    const-string v0, "writeMarsThumbnail"

    invoke-virtual {p0, v0}, Lgwd;->W(Ljava/lang/String;)V

    iget-object v0, p0, Lgwd;->o:Lgxr;

    iget-object v1, p0, Lgwd;->e:Ljava/util/concurrent/Executor;

    iget-object v2, v0, Lgxr;->b:Lgyb;

    sget-object v3, Lgyb;->b:Lgyb;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Thumbnail can be written to store only when using private store API"

    invoke-static {v2, v3}, Lmoz;->q(ZLjava/lang/Object;)V

    invoke-virtual {v0}, Lgxr;->b()Lkph;

    move-result-object v2

    invoke-interface {v2}, Lkph;->c()Lnou;

    move-result-object v2

    new-instance v3, Lgxp;

    invoke-direct {v3, v0, p1, p2, v4}, Lgxp;-><init>(Lgxr;Landroid/graphics/Bitmap;II)V

    invoke-static {v2, v3, v1}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    new-instance p2, Ldje;

    const/16 v0, 0xb

    invoke-direct {p2, p0, v0}, Ldje;-><init>(Lgwd;I)V

    sget-object v0, Lnnv;->a:Lnnv;

    invoke-static {p1, p2, v0}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final synthetic A()V
    .locals 0

    invoke-static {}, Ljfc;->l()V

    return-void
.end method

.method public final B(Ligf;Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "finishWithFailure, throwable message = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgwd;->F(Ljava/lang/String;)V

    iget-object v0, p0, Lgwd;->x:Ljew;

    invoke-virtual {v0}, Ljew;->ad()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Ignoring finishWithFailure. CaptureSession already saved/canceled or failed."

    invoke-virtual {p0, p1}, Lgwd;->F(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lgwd;->x:Ljew;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljew;->ah(I)V

    iput-object p1, p0, Lgwd;->y:Ligf;

    invoke-virtual {p0}, Lgwd;->t()V

    invoke-virtual {p0, p1}, Lgwd;->K(Ligf;)V

    iget-object p1, p0, Lgwd;->v:Ljew;

    iget-object v0, p0, Lgwd;->w:Ljew;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljew;->aj(Ljew;)V

    iget-object p1, p0, Lgwd;->g:Lgwm;

    iget v0, p0, Lgwd;->s:I

    iget v1, p0, Lgwd;->t:I

    invoke-virtual {p1, v0, v1, p2}, Lgwm;->h(IILjava/lang/Throwable;)V

    iget-object p1, p0, Lgwd;->b:Ldlj;

    iget-object p2, p0, Lgwd;->f:Lgxz;

    iget-wide v0, p2, Lgxz;->b:J

    const/4 p2, 0x1

    invoke-interface {p1, v0, v1, p2}, Ldlj;->f(JZ)V

    return-void
.end method

.method public final C(Z)V
    .locals 4

    iget-object v0, p0, Lgwd;->b:Ldlj;

    iget-object v1, p0, Lgwd;->f:Lgxz;

    iget-wide v1, v1, Lgxz;->b:J

    const-string v3, "onFramesRequested"

    invoke-interface {v0, v1, v2, v3}, Ldlj;->c(JLjava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lgwd;->n:Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhke;

    sget-object v0, Lhkd;->c:Lhkd;

    invoke-virtual {p1, v0}, Lhkh;->h(Ljava/lang/Enum;)V

    iget-object v0, p1, Lhke;->a:Lkbf;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkbf;->a()V

    const/4 v0, 0x0

    iput-object v0, p1, Lhke;->a:Lkbf;

    :cond_1
    return-void
.end method

.method public final D()V
    .locals 4

    iget-object v0, p0, Lgwd;->b:Ldlj;

    iget-object v1, p0, Lgwd;->f:Lgxz;

    iget-wide v1, v1, Lgxz;->b:J

    const-string v3, "onFramesSubmitted"

    invoke-interface {v0, v1, v2, v3}, Ldlj;->c(JLjava/lang/String;)V

    iget-object v0, p0, Lgwd;->G:Ligo;

    iget-object v1, p0, Lgwd;->i:Lhjc;

    invoke-virtual {v0, v1}, Ligo;->n(Lhjc;)V

    return-void
.end method

.method public final E()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method final F(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lgwd;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0xced

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "[%s] %s"

    invoke-virtual {p0}, Lgwd;->h()Lgxy;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lnah;->z(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method final declared-synchronized G()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgwd;->z:Lgxi;

    invoke-virtual {p0}, Lgwd;->h()Lgxy;

    move-result-object v1

    new-instance v2, Lgps;

    const/16 v3, 0x9

    invoke-direct {v2, v0, v1, v3}, Lgps;-><init>(Lgxi;Lgxy;I)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "#onSessionCaptureIndicatorUpdate "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lgxi;->e(Lgxy;Ljava/lang/Runnable;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized H(Lgxy;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "notifySessionUpdated"

    invoke-virtual {p0, v0}, Lgwd;->W(Ljava/lang/String;)V

    iget-object v0, p0, Lgwd;->z:Lgxi;

    new-instance v1, Lgps;

    const/16 v2, 0xc

    invoke-direct {v1, v0, p1, v2}, Lgps;-><init>(Lgxi;Lgxy;I)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "#onSessionUpdated "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lgxi;->e(Lgxy;Ljava/lang/Runnable;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized I()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgwd;->j:Lnph;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnph;->cancel(Z)Z

    iget-object v0, p0, Lgwd;->z:Lgxi;

    invoke-virtual {p0}, Lgwd;->h()Lgxy;

    move-result-object v1

    iget-object v2, v0, Lgxi;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnou;

    if-nez v2, :cond_0

    sget-object v0, Lgxi;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v2, "%s: No queued future found, maybe shot already finalized?: notifyTaskCanceled"

    const/16 v3, 0xd23

    invoke-static {v0, v2, v1, v3}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v3, Lgps;

    const/16 v4, 0xe

    invoke-direct {v3, v0, v1, v4}, Lgps;-><init>(Lgxi;Lgxy;I)V

    sget-object v0, Lnnv;->a:Lnnv;

    invoke-interface {v2, v3, v0}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized J()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgwd;->z:Lgxi;

    invoke-virtual {p0}, Lgwd;->h()Lgxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgxi;->f(Lgxy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized K(Ligf;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lgwd;->z:Lgxi;

    invoke-virtual {p0}, Lgwd;->h()Lgxy;

    move-result-object v0

    iget-object v1, p1, Lgxi;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnou;

    if-nez v1, :cond_0

    sget-object p1, Lgxi;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object p1

    const-string v1, "%s: No queued future found, maybe shot already finalized?: notifyTaskFailed"

    const/16 v2, 0xd29

    invoke-static {p1, v1, v0, v2}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v2, Lgps;

    const/16 v3, 0xd

    invoke-direct {v2, p1, v0, v3}, Lgps;-><init>(Lgxi;Lgxy;I)V

    sget-object p1, Lnnv;->a:Lnnv;

    invoke-interface {v1, v2, p1}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized L(Lkae;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p1, Lkae;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgwd;->V(Ljava/lang/Integer;)V

    iget-object v0, p0, Lgwd;->z:Lgxi;

    invoke-virtual {p0}, Lgwd;->h()Lgxy;

    move-result-object v1

    new-instance v2, Lgwr;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v1, p1, v3}, Lgwr;-><init>(Lgxi;Lgxy;Lkae;I)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "#onSessionProgress "

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lgxi;->e(Lgxy;Ljava/lang/Runnable;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final M()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final declared-synchronized N(Lkou;Z)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p1}, Lkou;->b()J

    sget-object p2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, p2}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    iput-object p1, p0, Lgwd;->D:Lkou;

    invoke-virtual {p0, v0}, Lgwd;->O(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean p2, p0, Lgwd;->E:Z

    if-nez p2, :cond_8

    sget-object p2, Liuw;->h:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    sget-object p2, Liuw;->h:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, p2}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    sget-object v2, Liuw;->i:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v2, :cond_2

    invoke-interface {p1, v2}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    sget-object v3, Liuw;->j:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v3, :cond_3

    invoke-interface {p1, v3}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-nez p2, :cond_5

    if-nez v2, :cond_5

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    sget-object p2, Lgwd;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->c()Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const/16 v0, 0xcef

    invoke-interface {p2, v0}, Lnah;->G(I)Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    invoke-interface {p1}, Lkou;->b()J

    move-result-wide v0

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v2}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "3A_DEBUG AF debug data not set! Metadata from frame %d (timestamp=%d) does not contain debug data."

    invoke-interface {p2, v2, v0, v1, p1}, Lnah;->w(Ljava/lang/String;JLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :goto_3
    :try_start_2
    iget-object p2, p0, Lgwd;->D:Lkou;

    if-eqz p2, :cond_7

    invoke-interface {p1}, Lkou;->b()J

    move-result-wide v0

    invoke-interface {p2}, Lkou;->b()J

    move-result-wide v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long p2, v0, v2

    if-lez p2, :cond_6

    goto :goto_5

    :cond_6
    :goto_4
    monitor-exit p0

    return-void

    :cond_7
    :goto_5
    :try_start_3
    invoke-interface {p1}, Lkou;->b()J

    sget-object p2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, p2}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    iput-object p1, p0, Lgwd;->D:Lkou;

    goto :goto_4

    :cond_8
    sget-object p2, Lgwd;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->c()Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const/16 v0, 0xcf0

    invoke-interface {p2, v0}, Lnah;->G(I)Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    invoke-interface {p1}, Lkou;->b()J

    move-result-wide v0

    const-string p1, "3A_DEBUG ignoring metadata from frame=%d because base frame metadata has been set."

    invoke-interface {p2, p1, v0, v1}, Lnah;->q(Ljava/lang/String;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method public final declared-synchronized O(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lgwd;->E:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized P(Lkae;Z)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x1

    if-nez p2, :cond_1

    :try_start_0
    sget-object p2, Lkae;->a:Lkae;

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    :goto_0
    const-string p2, "Cannot set progress to 100% before persisting images."

    invoke-static {v0, p2}, Lmoz;->f(ZLjava/lang/Object;)V

    iput-object p1, p0, Lgwd;->d:Lkae;

    iget-object p2, p0, Lgwd;->o:Lgxr;

    iget-object p2, p2, Lgxr;->b:Lgyb;

    sget-object v0, Lgyb;->b:Lgyb;

    if-ne p2, v0, :cond_6

    iget-boolean p2, p0, Lgwd;->l:Z

    if-nez p2, :cond_3

    sget-object p2, Lkae;->d:Lkae;

    invoke-virtual {p1, p2}, Lkae;->a(Lkae;)I

    move-result p2

    if-gez p2, :cond_2

    goto :goto_1

    :cond_2
    sget-object p2, Lkae;->d:Lkae;

    goto :goto_2

    :cond_3
    :goto_1
    move-object p2, p1

    :goto_2
    iget-object v0, p0, Lgwd;->o:Lgxr;

    iget-object v1, p0, Lgwd;->e:Ljava/util/concurrent/Executor;

    iget-object v2, v0, Lgxr;->b:Lgyb;

    sget-object v3, Lgyb;->b:Lgyb;

    if-eq v2, v3, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Lkae;->d()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object p2, v0, Lgxr;->e:Lkaq;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Skipping progress update for not yet started GcaMediaGroup "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lkaq;->b(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Lgxr;->b()Lkph;

    move-result-object v2

    invoke-interface {v2}, Lkph;->c()Lnou;

    move-result-object v2

    new-instance v3, Lenq;

    const/16 v4, 0x9

    invoke-direct {v3, v0, p2, v4}, Lenq;-><init>(Lgxr;Lkae;I)V

    invoke-static {v2, v3, v1}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    :cond_6
    :goto_3
    invoke-virtual {p0, p1}, Lgwd;->L(Lkae;)V

    iget-object p2, p0, Lgwd;->A:Lgpy;

    if-eqz p2, :cond_7

    invoke-interface {p2, p1}, Lgpy;->a(Lkae;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized Q(Ligf;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgwd;->x:Ljew;

    invoke-virtual {v0}, Ljew;->af()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lgwd;->x:Ljew;

    invoke-virtual {v0}, Ljew;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Ignoring setProgressMessage - state is !started && !finishing: "

    invoke-static {}, Lkba;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgwd;->F(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "setProgressMessage"

    invoke-virtual {p0, v0}, Lgwd;->W(Ljava/lang/String;)V

    iput-object p1, p0, Lgwd;->y:Ligf;

    invoke-static {p1}, Ljpw;->j(Ligf;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lgwd;->d:Lkae;

    sget-object v1, Lkae;->c:Lkae;

    if-ne v0, v1, :cond_2

    sget-object v0, Lkae;->b:Lkae;

    iput-object v0, p0, Lgwd;->d:Lkae;

    :cond_2
    iget-object v0, p0, Lgwd;->A:Lgpy;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lgpy;->b(Ligf;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized R()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgwd;->p:Lgxn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lgwd;->c:Lgya;

    sget-object v1, Lgya;->o:Lgya;

    invoke-virtual {v0, v1}, Lgya;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lgwd;->c:Lgya;

    sget-object v1, Lgya;->s:Lgya;

    invoke-virtual {v0, v1}, Lgya;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lgwd;->o:Lgxr;

    const-string v1, "jpg"

    invoke-virtual {v0, v1}, Lgxr;->a(Ljava/lang/String;)Lgxn;

    move-result-object v0

    iput-object v0, p0, Lgwd;->p:Lgxn;

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lgwd;->o:Lgxr;

    const-string v1, "mp4"

    invoke-virtual {v0, v1}, Lgxr;->a(Ljava/lang/String;)Lgxn;

    move-result-object v0

    iput-object v0, p0, Lgwd;->p:Lgxn;

    :goto_1
    iget-object v0, p0, Lgwd;->o:Lgxr;

    new-instance v1, Lgwb;

    invoke-direct {v1, p0}, Lgwb;-><init>(Lgwd;)V

    invoke-virtual {v0, v1}, Lgxr;->e(Lkpk;)V

    iget-object v0, p0, Lgwd;->j:Lnph;

    new-instance v1, Lbdj;

    const/16 v2, 0x9

    invoke-direct {v1, p0, v2}, Lbdj;-><init>(Lgwd;I)V

    iget-object v2, p0, Lgwd;->e:Ljava/util/concurrent/Executor;

    invoke-static {v1, v2}, Lnsy;->F(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnph;->f(Lnou;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final S(Lkaf;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final T(J)V
    .locals 2

    iget-object v0, p0, Lgwd;->z:Lgxi;

    new-instance v1, Lgxh;

    invoke-direct {v1, p1, p2}, Lgxh;-><init>(J)V

    invoke-virtual {v0, v1}, Lgxi;->d(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic U()V
    .locals 0

    invoke-static {p0}, Ljfc;->k(Lgxl;)V

    return-void
.end method

.method public final V(Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lgwd;->b:Ldlj;

    iget-object v1, p0, Lgwd;->f:Lgxz;

    iget-wide v1, v1, Lgxz;->b:J

    invoke-interface {v0, v1, v2, p1}, Ldlj;->h(JLjava/lang/Integer;)V

    return-void
.end method

.method public final W(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lgwd;->b:Ldlj;

    iget-object v1, p0, Lgwd;->f:Lgxz;

    iget-wide v1, v1, Lgxz;->b:J

    invoke-interface {v0, v1, v2, p1}, Ldlj;->c(JLjava/lang/String;)V

    return-void
.end method

.method public final X(Landroid/graphics/Bitmap;I)V
    .locals 4

    iget-object v0, p0, Lgwd;->x:Ljew;

    invoke-virtual {v0}, Ljew;->ad()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lgwd;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string p2, "Skip updateCaptureIndicatorThumbnail, session was canceled."

    const/16 v0, 0xcf3

    invoke-static {p1, p2, v0}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_0
    const-string v0, "updateCaptureIndicatorThumbnail"

    invoke-virtual {p0, v0}, Lgwd;->W(Ljava/lang/String;)V

    iget-object v0, p0, Lgwd;->v:Ljew;

    iget-object v1, p0, Lgwd;->w:Ljew;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1, p1, p2}, Ljew;->ak(Ljew;Landroid/graphics/Bitmap;I)V

    iget-object v0, p0, Lgwd;->o:Lgxr;

    iget-object v0, v0, Lgxr;->b:Lgyb;

    sget-object v1, Lgyb;->b:Lgyb;

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1, p2}, Lgwd;->ad(Landroid/graphics/Bitmap;I)V

    :cond_1
    iget-boolean v0, p0, Lgwd;->C:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgwd;->C:Z

    iget-object v0, p0, Lgwd;->g:Lgwm;

    iget-object v1, p0, Lgwd;->n:Lmqp;

    invoke-virtual {v0, v1}, Lgwm;->f(Lmqp;)V

    iget-object v0, p0, Lgwd;->H:Lkns;

    iget-object v1, v0, Lkns;->b:Ljava/lang/Object;

    if-eqz v1, :cond_2

    new-instance v2, Lpi;

    const/16 v3, 0xd

    invoke-direct {v2, v1, p1, p2, v3}, Lpi;-><init>(Lgwo;Landroid/graphics/Bitmap;II)V

    iget-object p1, v0, Lkns;->a:Ljava/lang/Object;

    invoke-static {v2, p1}, Lnsy;->E(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Update delegate is not set!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lnsy;->A(Ljava/lang/Throwable;)Lnou;

    move-result-object p1

    :goto_0
    new-instance p2, Lcmc;

    const/16 v0, 0xe

    invoke-direct {p2, p0, v0}, Lcmc;-><init>(Lgwd;I)V

    sget-object v0, Lnnv;->a:Lnnv;

    invoke-static {p1, p2, v0}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p0}, Lgwd;->G()V

    return-void

    :cond_3
    return-void
.end method

.method public final Y(Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lgwd;->x:Ljew;

    invoke-virtual {v0}, Ljew;->ad()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lgwd;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string v0, "Skip updateIntermediateThumbnail, session was canceled."

    const/16 v1, 0xcf4

    invoke-static {p1, v0, v1}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_0
    const-string v0, "updateIntermediateThumbnail"

    invoke-virtual {p0, v0}, Lgwd;->W(Ljava/lang/String;)V

    iget-object v0, p0, Lgwd;->v:Ljew;

    iget-object v1, p0, Lgwd;->w:Ljew;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Ljew;->ak(Ljew;Landroid/graphics/Bitmap;I)V

    invoke-virtual {p0}, Lgwd;->h()Lgxy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgwd;->H(Lgxy;)V

    iget-object v0, p0, Lgwd;->o:Lgxr;

    iget-object v0, v0, Lgxr;->b:Lgyb;

    sget-object v1, Lgyb;->b:Lgyb;

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1, v2}, Lgwd;->ad(Landroid/graphics/Bitmap;I)V

    :cond_1
    iget-object v0, p0, Lgwd;->g:Lgwm;

    invoke-virtual {v0, p1}, Lgwm;->d(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final Z(Landroid/graphics/Bitmap;I)V
    .locals 3

    iget-object v0, p0, Lgwd;->z:Lgxi;

    new-instance v1, Lcts;

    const/4 v2, 0x2

    invoke-direct {v1, p1, p2, v2}, Lcts;-><init>(Landroid/graphics/Bitmap;II)V

    invoke-virtual {v0, v1}, Lgxi;->d(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a()Lkae;
    .locals 1

    iget-object v0, p0, Lgwd;->d:Lkae;

    return-object v0
.end method

.method public final aa()V
    .locals 4

    sget-object v0, Lgwd;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0xceb

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    invoke-virtual {p0}, Lgwd;->h()Lgxy;

    move-result-object v1

    const-string v2, "Failed to write out thumbnail for MARS shot"

    const-string v3, "[%s] %s"

    invoke-interface {v0, v3, v1, v2}, Lnah;->z(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final ab(I)V
    .locals 2

    iget v0, p0, Lgwd;->s:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput p1, p0, Lgwd;->s:I

    :cond_0
    iput p1, p0, Lgwd;->t:I

    return-void
.end method

.method public final ac(Lcvr;)V
    .locals 0

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    iput-object p1, p0, Lgwd;->r:Lmqp;

    return-void
.end method

.method public final declared-synchronized b(Lkae;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lgwd;->P(Lkae;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c(Lgpy;)V
    .locals 2

    iget-object v0, p0, Lgwd;->y:Ligf;

    invoke-static {v0}, Ljpw;->j(Ligf;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Lgpy;->b(Ligf;)V

    :cond_0
    iget-object v0, p0, Lgwd;->d:Lkae;

    invoke-interface {p1, v0}, Lgpy;->a(Lkae;)V

    iput-object p1, p0, Lgwd;->A:Lgpy;

    return-void
.end method

.method public final d()J
    .locals 2

    iget-object v0, p0, Lgwd;->o:Lgxr;

    iget-wide v0, v0, Lgxr;->a:J

    return-wide v0
.end method

.method public final e()Lgpv;
    .locals 1

    iget-object v0, p0, Lgwd;->F:Lgpv;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final f()Lgxn;
    .locals 1

    invoke-virtual {p0}, Lgwd;->R()V

    iget-object v0, p0, Lgwd;->p:Lgxn;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final g()Lgxr;
    .locals 1

    iget-object v0, p0, Lgwd;->o:Lgxr;

    return-object v0
.end method

.method public final h()Lgxy;
    .locals 1

    iget-object v0, p0, Lgwd;->f:Lgxz;

    iget-object v0, v0, Lgxz;->a:Lgxy;

    return-object v0
.end method

.method public final i()Lgya;
    .locals 1

    iget-object v0, p0, Lgwd;->c:Lgya;

    return-object v0
.end method

.method public final j()Lgyb;
    .locals 1

    iget-object v0, p0, Lgwd;->o:Lgxr;

    iget-object v0, v0, Lgxr;->b:Lgyb;

    return-object v0
.end method

.method public final k()Lhjc;
    .locals 1

    iget-object v0, p0, Lgwd;->i:Lhjc;

    return-object v0
.end method

.method public final declared-synchronized l()Lkou;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgwd;->D:Lkou;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final m()Lmqp;
    .locals 1

    iget-object v0, p0, Lgwd;->r:Lmqp;

    return-object v0
.end method

.method public final n()Lmqp;
    .locals 1

    iget-object v0, p0, Lgwd;->n:Lmqp;

    return-object v0
.end method

.method final o(Lhkt;Lgto;)Lmqp;
    .locals 3

    iget-object v0, p1, Lhkt;->c:Lmqp;

    new-instance v1, Lfxj;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, p2, v2}, Lfxj;-><init>(Lgwd;Lhkt;Lgto;I)V

    invoke-virtual {v0, v1}, Lmqp;->b(Lmqi;)Lmqp;

    move-result-object p1

    return-object p1
.end method

.method public final p()Lnou;
    .locals 1

    iget-object v0, p0, Lgwd;->q:Lnph;

    return-object v0
.end method

.method public final q()Lnou;
    .locals 1

    iget-object v0, p0, Lgwd;->j:Lnph;

    invoke-static {v0}, Lnsy;->C(Lnou;)Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic r([BLhkt;)Lnou;
    .locals 0

    invoke-static {}, Ljfc;->m()Lnou;

    move-result-object p1

    return-object p1
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgwd;->f:Lgxz;

    iget-object v0, v0, Lgxz;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized t()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgwd;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lgwd;->R()V

    invoke-virtual {p0}, Lgwd;->x()V

    iget-object v0, p0, Lgwd;->o:Lgxr;

    invoke-virtual {v0}, Lgxr;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgwd;->f:Lgxz;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lgxw;)V
    .locals 2

    iget-object v0, p0, Lgwd;->g:Lgwm;

    iget-object v1, v0, Lgwm;->a:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lgwm;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final declared-synchronized v(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgwd;->B:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final w(Ljava/lang/Throwable;)V
    .locals 3

    iget-boolean v0, p0, Lgwd;->C:Z

    if-eqz v0, :cond_1

    instance-of v0, p1, Ldoe;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "cancel() invoked, but userNotifiedCaptureOccurred. Invoking finishWithFailure."

    invoke-virtual {p0, v0}, Lgwd;->W(Ljava/lang/String;)V

    sget-object v0, Ligh;->a:Ligf;

    new-instance v1, Ldog;

    const-string v2, "cancel invoked, but user already notified."

    invoke-direct {v1, v2, p1}, Ldog;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0, v1}, Lgwd;->B(Ligf;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lgwd;->x:Ljew;

    invoke-virtual {v0}, Ljew;->ad()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Ignoring cancel. CaptureSession already saved/canceled or failed. Cause:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgwd;->F(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v0, "cancel"

    invoke-virtual {p0, v0}, Lgwd;->W(Ljava/lang/String;)V

    iget-object v0, p0, Lgwd;->x:Ljew;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljew;->ah(I)V

    invoke-virtual {p0}, Lgwd;->t()V

    invoke-virtual {p0}, Lgwd;->I()V

    iget-object v0, p0, Lgwd;->w:Ljew;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lgwd;->v:Ljew;

    invoke-virtual {v1, v0}, Ljew;->aj(Ljew;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lgwd;->w:Ljew;

    :cond_3
    instance-of v0, p1, Ldny;

    if-nez v0, :cond_4

    new-instance v0, Ldoe;

    invoke-direct {v0, p1}, Ldoe;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    :cond_4
    iget-object v0, p0, Lgwd;->g:Lgwm;

    iget v1, p0, Lgwd;->s:I

    iget v2, p0, Lgwd;->t:I

    invoke-virtual {v0, v1, v2, p1}, Lgwm;->g(IILjava/lang/Throwable;)V

    iget-object p1, p0, Lgwd;->b:Ldlj;

    iget-object v0, p0, Lgwd;->f:Lgxz;

    iget-wide v0, v0, Lgxz;->b:J

    invoke-interface {p1, v0, v1}, Ldlj;->e(J)V

    return-void
.end method

.method public final x()V
    .locals 3

    iget-object v0, p0, Lgwd;->j:Lnph;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lgwd;->j:Lnph;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnph;->cancel(Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Could not cancel MediaStore insertion"

    invoke-virtual {p0, v1}, Lgwd;->F(Ljava/lang/String;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final y()V
    .locals 3

    iget-object v0, p0, Lgwd;->g:Lgwm;

    iget v1, p0, Lgwd;->s:I

    iget v2, p0, Lgwd;->t:I

    invoke-virtual {v0, v1, v2}, Lgwm;->j(II)V

    return-void
.end method

.method public final z()V
    .locals 2

    const-string v0, "finalizeSession"

    invoke-virtual {p0, v0}, Lgwd;->W(Ljava/lang/String;)V

    iget-object v0, p0, Lgwd;->v:Ljew;

    iget-object v1, p0, Lgwd;->w:Ljew;

    invoke-virtual {v0, v1}, Ljew;->aj(Ljew;)V

    iget-object v0, p0, Lgwd;->g:Lgwm;

    invoke-virtual {v0}, Lgwm;->a()V

    iget-object v0, p0, Lgwd;->m:Lgpo;

    invoke-interface {v0}, Lgpo;->h()V

    return-void
.end method
