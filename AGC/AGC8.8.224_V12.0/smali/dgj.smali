.class public final Ldgj;
.super Ljava/lang/Object;


# static fields
.field public static final a:F

.field public static final b:F

.field private static final g:F

.field private static final h:F


# instance fields
.field public final c:F

.field public final d:F

.field public e:Lmqp;

.field public f:Lmqp;

.field private final i:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/high16 v0, 0x402e000000000000L    # 15.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v2, v2

    sput v2, Ldgj;->a:F

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v2, v2

    sput v2, Ldgj;->b:F

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v2, v2

    sput v2, Ldgj;->g:F

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Ldgj;->h:F

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    return-void
.end method

.method public constructor <init>(Ldhi;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmpx;->a:Lmpx;

    iput-object v0, p0, Ldgj;->e:Lmqp;

    iput-object v0, p0, Ldgj;->f:Lmqp;

    sget-object v0, Ldgv;->k:Ldhj;

    invoke-interface {p1, v0}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ldhi;->g()V

    :cond_0
    const/4 v0, 0x1

    const-string v1, "camera.coach.fast_up_down and camera.coach.instant_up_down should not be enabled at the same time."

    invoke-static {v0, v1}, Lmoz;->q(ZLjava/lang/Object;)V

    sget-object v0, Ldgv;->k:Ldhj;

    invoke-interface {p1, v0}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Ldgj;->i:J

    sget p1, Ldgj;->g:F

    iput p1, p0, Ldgj;->c:F

    sget p1, Ldgj;->h:F

    iput p1, p0, Ldgj;->d:F

    return-void

    :cond_1
    invoke-interface {p1}, Ldhi;->g()V

    const-wide/16 v0, 0xfa0

    iput-wide v0, p0, Ldgj;->i:J

    sget p1, Ldgj;->g:F

    iput p1, p0, Ldgj;->c:F

    sget p1, Ldgj;->h:F

    iput p1, p0, Ldgj;->d:F

    return-void
.end method


# virtual methods
.method final declared-synchronized a(FFJ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Ldgi;

    invoke-direct {v0, p1, p2}, Ldgi;-><init>(FF)V

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    iput-object p1, p0, Ldgj;->e:Lmqp;

    iget-object p1, p0, Ldgj;->f:Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ldgr;

    new-instance p2, Ldfw;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Ldfw;-><init>(Ldgj;I)V

    new-instance v0, Ldfw;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Ldfw;-><init>(Ldgj;I)V

    iget-wide v1, p0, Ldgj;->i:J

    invoke-direct {p1, p2, v0, v1, v2}, Ldgr;-><init>(Ldgq;Ldgq;J)V

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    iput-object p1, p0, Ldgj;->f:Lmqp;

    :cond_0
    iget-object p1, p0, Ldgj;->f:Lmqp;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldgr;

    invoke-virtual {p1, p3, p4}, Ldgr;->b(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lmpx;->a:Lmpx;

    iput-object v0, p0, Ldgj;->e:Lmqp;

    iput-object v0, p0, Ldgj;->f:Lmqp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
