.class public final Leki;
.super Ljava/lang/Object;


# instance fields
.field private a:F

.field private b:F

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Leki;->b()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/android/apps/camera/imax/cyclops/capture/TrackerStats;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Leki;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Leki;->c:I

    iget v0, p1, Lcom/google/android/apps/camera/imax/cyclops/capture/TrackerStats;->featureMotionInPixels:F

    iget p1, p1, Lcom/google/android/apps/camera/imax/cyclops/capture/TrackerStats;->numActiveTracks:I

    const/16 v1, 0x32

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    iget v1, p0, Leki;->c:I

    const/4 v2, 0x5

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    mul-float v0, v0, v1

    sub-float/2addr v2, v1

    iget v3, p0, Leki;->a:F

    mul-float v3, v3, v2

    add-float/2addr v0, v3

    iput v0, p0, Leki;->a:F

    iget v0, p0, Leki;->b:F

    mul-float v2, v2, v0

    const/high16 v0, 0x42480000    # 50.0f

    div-float/2addr p1, v0

    mul-float v1, v1, p1

    add-float/2addr v1, v2

    iput v1, p0, Leki;->b:F
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

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Leki;->a:F

    iput v0, p0, Leki;->b:F

    const/4 v0, 0x0

    iput v0, p0, Leki;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
