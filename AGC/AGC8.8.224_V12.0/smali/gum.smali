.class public final Lgum;
.super Ljava/lang/Object;

# interfaces
.implements Lgul;


# instance fields
.field private final a:Ldsy;

.field private final b:[F


# direct methods
.method public constructor <init>(Ldsy;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lgum;->b:[F

    iput-object p1, p0, Lgum;->a:Ldsy;

    return-void
.end method


# virtual methods
.method public final a(Lkou;)F
    .locals 6

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const/high16 v1, 0x7fc00000    # Float.NaN

    if-nez v0, :cond_0

    const/high16 v0, 0x7fc00000    # Float.NaN

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-float v0, v2

    :goto_0
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v2}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lgum;->b:[F

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lgum;->a:Ldsy;

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Ldsy;->c(J)Ldsv;

    move-result-object p1

    invoke-virtual {p1}, Ldsv;->e()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p1, Ldsv;->a:[F

    const/4 v1, 0x0

    aget v1, p1, v1

    mul-float v1, v1, v1

    const/4 v3, 0x1

    aget v3, p1, v3

    mul-float v3, v3, v3

    add-float/2addr v1, v3

    const/4 v3, 0x2

    aget p1, p1, v3

    mul-float p1, p1, p1

    add-float/2addr v1, p1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float p1, v3

    move v1, p1

    :goto_1
    monitor-exit v2

    goto :goto_2

    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    const p1, -0x4af9c843    # -5.0E-7f

    mul-float v0, v0, p1

    mul-float v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
