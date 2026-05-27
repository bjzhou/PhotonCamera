.class public final Lgsu;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lnak;


# instance fields
.field private b:Lgrw;

.field private final c:Lfjx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/qualityscore/GlobalMotionSharpnessFrameQualityScorer"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgsu;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lfjx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgsu;->c:Lfjx;

    return-void
.end method

.method private final declared-synchronized b(J)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgsu;->b:Lgrw;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lgrw;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    const-wide/32 v2, -0x5f5e0ff

    add-long/2addr p1, v2

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_0
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized a(Lgrw;)F
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p1, Lgrw;->c:J

    invoke-direct {p0, v0, v1}, Lgsu;->b(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgsu;->c:Lfjx;

    iget-object v1, p0, Lgsu;->b:Lgrw;

    invoke-virtual {v0, v1, p1}, Lfjx;->a(Lgrw;Lgrw;)F

    move-result v0

    iget-wide v1, p1, Lgrw;->c:J

    iget-object v3, p0, Lgsu;->b:Lgrw;

    iget-wide v3, v3, Lgrw;->c:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    div-float/2addr v0, v1

    iget-wide v1, p1, Lgrw;->d:J

    const v3, -0x42b33333    # -0.05f

    mul-float v0, v0, v3

    long-to-float v1, v1

    mul-float v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0

    :cond_0
    sget-object v0, Lgsu;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0xc9c

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    iget-wide v1, p1, Lgrw;->c:J

    const-string v3, "Could not find previous metadata for frame at %d"

    invoke-interface {v0, v3, v1, v2}, Lnah;->q(Ljava/lang/String;J)V

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iput-object p1, p0, Lgsu;->b:Lgrw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
