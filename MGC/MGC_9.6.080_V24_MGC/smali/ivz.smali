.class public final Livz;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private a:F

.field private b:F

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Livz;->b()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/android/apps/camera/imax/cyclops/capture/TrackerStats;)V
    .locals 4

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    throw p1

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    :try_start_0
    iget v0, p0, Livz;->c:I

    nop

    nop

    nop

    nop

    add-int/lit8 v0, v0, 0x1

    nop

    iput v0, p0, Livz;->c:I

    nop

    nop

    nop

    nop

    nop

    iget v0, p1, Lcom/google/android/apps/camera/imax/cyclops/capture/TrackerStats;->featureMotionInPixels:F

    nop

    nop

    nop

    nop

    nop

    iget p1, p1, Lcom/google/android/apps/camera/imax/cyclops/capture/TrackerStats;->numActiveTracks:I

    nop

    nop

    nop

    nop

    nop

    const/16 v1, 0x32

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    nop

    int-to-float p1, p1

    nop

    nop

    nop

    nop

    iget v1, p0, Livz;->c:I

    nop

    nop

    const/4 v2, 0x5

    nop

    nop

    nop

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    nop

    nop

    int-to-float v1, v1

    nop

    nop

    nop

    nop

    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    div-float v1, v2, v1

    nop

    nop

    nop

    nop

    mul-float/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    sub-float/2addr v2, v1

    nop

    nop

    nop

    nop

    iget v3, p0, Livz;->a:F

    nop

    nop

    nop

    nop

    mul-float/2addr v3, v2

    nop

    add-float/2addr v0, v3

    nop

    iput v0, p0, Livz;->a:F

    nop

    nop

    nop

    iget v0, p0, Livz;->b:F

    nop

    nop

    nop

    mul-float/2addr v2, v0

    nop

    nop

    const/high16 v0, 0x42480000    # 50.0f

    nop

    div-float/2addr p1, v0

    nop

    nop

    mul-float/2addr v1, p1

    nop

    nop

    nop

    add-float/2addr v1, v2

    nop

    nop

    nop

    nop

    nop

    iput v1, p0, Livz;->b:F

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_6
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized b()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iput v0, p0, Livz;->a:F

    nop

    nop

    nop

    nop

    nop

    iput v0, p0, Livz;->b:F

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    iput v0, p0, Livz;->c:I

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_3
    throw v0

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method
