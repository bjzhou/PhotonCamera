.class public final synthetic Lgja;
.super Ljava/lang/Object;

# interfaces
.implements Lkex;


# instance fields
.field public final synthetic a:Lgjb;


# direct methods
.method public synthetic constructor <init>(Lgjb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgja;->a:Lgjb;

    return-void
.end method


# virtual methods
.method public final a(Lkeb;)V
    .locals 12

    iget-object v0, p0, Lgja;->a:Lgjb;

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p1}, Lkeb;->c()Lkou;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v0, v0, Lgjb;->d:Lkaq;

    const-string v3, "Error retrieving metadata, ignoring frame"

    invoke-interface {v0, v3}, Lkaq;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    invoke-interface {p1}, Lkeb;->close()V

    return-void

    :cond_1
    :try_start_1
    invoke-static {v3}, LAGC;->getLogicalMultiCameraActivePhysicalID(Lkou;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    invoke-interface {v3}, Lkou;->e()Ljava/lang/String;

    move-result-object v4

    :cond_3
    iget-object v5, v0, Lgjb;->g:Lecd;

    invoke-static {v4}, Lkll;->b(Ljava/lang/String;)Lkll;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Lecd;->c(Lkou;Lkll;)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v5, v0, Lgjb;->m:Lebi;

    iget-boolean v5, v5, Lebi;->h:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_7

    iget-object v5, v0, Lgjb;->f:Lebl;

    invoke-virtual {v5}, Lebl;->n()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v0, Lgjb;->d:Lkaq;

    const-string v7, "Ignoring viewfinder updates to capture time since viewfinder processing is locked"

    invoke-interface {v5, v7}, Lkaq;->b(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    iget-object v5, v0, Lgjb;->g:Lecd;

    invoke-interface {v5, v4}, Lecd;->m(I)Lcom/google/googlex/gcam/ViewfinderResults;

    move-result-object v5

    iget-object v7, v0, Lgjb;->g:Lecd;

    invoke-interface {v7, v4}, Lecd;->k(I)Lcom/google/googlex/gcam/PostShutterAfParams;

    move-result-object v7

    iget-wide v8, v5, Lcom/google/googlex/gcam/ViewfinderResults;->a:J

    invoke-static {v8, v9, v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->ViewfinderResults_total_capture_time_ms_get(JLcom/google/googlex/gcam/ViewfinderResults;)F

    move-result v5

    cmpg-float v8, v5, v6

    if-gez v8, :cond_5

    const-wide/16 v7, -0x1

    invoke-static {v7, v8}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v5

    goto :goto_2

    :cond_5
    iget-wide v8, v7, Lcom/google/googlex/gcam/PostShutterAfParams;->a:J

    invoke-static {v8, v9, v7}, Lcom/google/googlex/gcam/GcamModuleJNI;->PostShutterAfParams_max_handheld_exposure_time_ms_get(JLcom/google/googlex/gcam/PostShutterAfParams;)F

    move-result v7

    const/high16 v8, 0x447a0000    # 1000.0f

    cmpg-float v9, v5, v8

    if-gez v9, :cond_6

    add-float/2addr v5, v7

    goto :goto_1

    :cond_6
    const/high16 v9, 0x44fa0000    # 2000.0f

    sub-float/2addr v9, v5

    div-float/2addr v9, v8

    invoke-static {v9, v6}, Ljava/lang/Math;->max(FF)F

    move-result v8

    mul-float v8, v8, v7

    add-float/2addr v5, v8

    :goto_1
    float-to-long v7, v5

    invoke-static {v7, v8}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v5

    :goto_2
    invoke-virtual {v5}, Lj$/time/Duration;->isNegative()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v5}, Lj$/time/Duration;->isZero()Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, v0, Lgjb;->l:Lkai;

    invoke-interface {v7, v5}, Lkai;->bn(Ljava/lang/Object;)V

    :cond_7
    :goto_3
    iget-boolean v5, v0, Lgjb;->i:Z

    if-nez v5, :cond_8

    iget-object v5, v0, Lgjb;->k:Lika;

    sget-object v7, Lika;->b:Lika;

    invoke-virtual {v5, v7}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    :cond_8
    iget-object v5, v0, Lgjb;->j:Lkbc;

    const-string v7, "StabilityProcessing"

    invoke-interface {v5, v7}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v5, v0, Lgjb;->g:Lecd;

    invoke-interface {v5, v4}, Lecd;->j(I)Lcom/google/googlex/gcam/PhysicalStabilityParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlex/gcam/PhysicalStabilityParams;->a()Lcom/google/googlex/gcam/PhysicalStabilityThresholds;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlex/gcam/PhysicalStabilityThresholds;->a()F

    move-result v5

    iget-object v7, v0, Lgjb;->g:Lecd;

    invoke-interface {v7, v4}, Lecd;->j(I)Lcom/google/googlex/gcam/PhysicalStabilityParams;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/googlex/gcam/PhysicalStabilityParams;->a()Lcom/google/googlex/gcam/PhysicalStabilityThresholds;

    move-result-object v7

    iget-wide v8, v7, Lcom/google/googlex/gcam/PhysicalStabilityThresholds;->a:J

    invoke-static {v8, v9, v7}, Lcom/google/googlex/gcam/GcamModuleJNI;->PhysicalStabilityThresholds_braced_speed_rad_per_sec_get(JLcom/google/googlex/gcam/PhysicalStabilityThresholds;)F

    move-result v7

    const v8, 0x3fcccccd    # 1.6f

    mul-float v7, v7, v8

    iget-object v8, v0, Lgjb;->o:Lguh;

    if-nez v8, :cond_9

    cmpg-float v8, v5, v7

    if-gez v8, :cond_9

    new-instance v8, Lguh;

    new-instance v9, Landroid/util/Range;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {v9, v10, v7}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sget-object v7, Lgjb;->b:Lj$/time/Duration;

    sget-object v10, Lgjb;->c:Lj$/time/Duration;

    invoke-direct {v8, v9, v7, v10}, Lguh;-><init>(Landroid/util/Range;Lj$/time/Duration;Lj$/time/Duration;)V

    iput-object v8, v0, Lgjb;->o:Lguh;

    :cond_9
    iget-object v7, v0, Lgjb;->p:Lguh;

    if-nez v7, :cond_a

    new-instance v7, Lguh;

    new-instance v8, Landroid/util/Range;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v8, v9, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sget-object v5, Lgjb;->b:Lj$/time/Duration;

    sget-object v9, Lgjb;->c:Lj$/time/Duration;

    invoke-direct {v7, v8, v5, v9}, Lguh;-><init>(Landroid/util/Range;Lj$/time/Duration;Lj$/time/Duration;)V

    iput-object v7, v0, Lgjb;->p:Lguh;

    :cond_a
    iget-object v5, v0, Lgjb;->g:Lecd;

    invoke-interface {v5, v4}, Lecd;->m(I)Lcom/google/googlex/gcam/ViewfinderResults;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlex/gcam/ViewfinderResults;->a()F

    move-result v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    iget-object v9, v0, Lgjb;->o:Lguh;

    if-eqz v9, :cond_b

    invoke-virtual {v9, v5, v7, v8}, Lguh;->a(FJ)V

    :cond_b
    iget-object v9, v0, Lgjb;->p:Lguh;

    if-eqz v9, :cond_c

    invoke-virtual {v9, v5, v7, v8}, Lguh;->a(FJ)V

    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    iget-object v5, v0, Lgjb;->p:Lguh;

    if-eqz v5, :cond_d

    invoke-virtual {v5, v7, v8}, Lguh;->c(J)Z

    move-result v4

    goto :goto_4

    :cond_d
    iget-object v5, v0, Lgjb;->g:Lecd;

    invoke-interface {v5, v4}, Lecd;->m(I)Lcom/google/googlex/gcam/ViewfinderResults;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlex/gcam/ViewfinderResults;->a()F

    move-result v5

    cmpg-float v6, v5, v6

    if-gez v6, :cond_e

    const/4 v4, 0x0

    goto :goto_4

    :cond_e
    iget-object v6, v0, Lgjb;->g:Lecd;

    invoke-interface {v6, v4}, Lecd;->j(I)Lcom/google/googlex/gcam/PhysicalStabilityParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlex/gcam/PhysicalStabilityParams;->a()Lcom/google/googlex/gcam/PhysicalStabilityThresholds;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlex/gcam/PhysicalStabilityThresholds;->a()F

    move-result v4

    cmpg-float v4, v5, v4

    if-gtz v4, :cond_f

    const/4 v4, 0x1

    goto :goto_4

    :cond_f
    const/4 v4, 0x0

    :goto_4
    iget-object v5, v0, Lgjb;->o:Lguh;

    if-eqz v5, :cond_10

    invoke-virtual {v5, v7, v8}, Lguh;->c(J)Z

    move-result v5

    goto :goto_5

    :cond_10
    const/4 v5, 0x0

    :goto_5
    iget-object v6, v0, Lgjb;->j:Lkbc;

    invoke-interface {v6}, Lkbc;->f()V

    iget-object v6, v0, Lgjb;->n:Lfdd;

    iget-object v7, v0, Lgjb;->h:Lkli;

    invoke-interface {v7}, Lkli;->k()Lklv;

    move-result-object v7

    iget-boolean v8, v0, Lgjb;->i:Z

    invoke-interface {v6, v4, v5, v7, v8}, Lfdd;->a(ZZLklv;Z)V

    :cond_11
    iget-object v4, v0, Lgjb;->e:Lcfp;

    invoke-virtual {v4, v3}, Lcfp;->a(Lkou;)V

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v3, v4}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Lgjb;->a:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    iget-object v0, v0, Lgjb;->d:Lkaq;

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v3, v4}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Frame dropped with ultra long exposure time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lkaq;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v3

    iget-object v4, v0, Lgjb;->j:Lkbc;

    invoke-interface {v4}, Lkbc;->f()V

    iget-object v0, v0, Lgjb;->d:Lkaq;

    const-string v4, "Error getting physical camera ID"

    invoke-interface {v0, v4, v3}, Lkaq;->j(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-interface {p1}, Lkeb;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p1

    :try_start_4
    const-class v3, Ljava/lang/Throwable;

    const-string v4, "addSuppressed"

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Throwable;

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    :catch_1
    move-exception p1

    :goto_6
    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method
