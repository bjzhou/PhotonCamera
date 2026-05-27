.class public final Lfda;
.super Lhdr;


# static fields
.field private static final h:F


# instance fields
.field public final a:Lfdf;

.field public final b:Lflf;

.field public final c:Landroid/hardware/SensorManager;

.field public final d:Landroid/hardware/Sensor;

.field public final e:Landroid/hardware/Sensor;

.field public final f:Landroid/hardware/SensorEventListener;

.field public final g:Lcmo;

.field private j:Lklv;

.field private final k:Landroid/content/res/Resources;

.field private final l:Lgzm;

.field private final m:Ljvs;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lfda;->h:F

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/Context;Lgzm;Lflf;Ljew;Ljava/util/concurrent/ScheduledExecutorService;Lcmo;Ljvs;[B[B[B[B)V
    .locals 9

    move-object v8, p0

    const-string v3, "long_exposure_smarts_chip"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p6

    move-object v2, p5

    invoke-direct/range {v0 .. v7}, Lhdr;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Ljew;Ljava/lang/String;[B[B[B[B)V

    move-object v0, p1

    iput-object v0, v8, Lfda;->k:Landroid/content/res/Resources;

    new-instance v0, Lfdf;

    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    sget v3, Lfda;->h:F

    invoke-direct {v0, v2, v3}, Lfdf;-><init>([FF)V

    iput-object v0, v8, Lfda;->a:Lfdf;

    move-object v0, p3

    iput-object v0, v8, Lfda;->l:Lgzm;

    move-object v0, p4

    iput-object v0, v8, Lfda;->b:Lflf;

    const-string v0, "sensor"

    move-object v2, p2

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, v8, Lfda;->c:Landroid/hardware/SensorManager;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, v8, Lfda;->d:Landroid/hardware/Sensor;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, v8, Lfda;->e:Landroid/hardware/Sensor;

    new-instance v0, Ldus;

    invoke-direct {v0, p0, v1}, Ldus;-><init>(Lfda;I)V

    iput-object v0, v8, Lfda;->f:Landroid/hardware/SensorEventListener;

    move-object/from16 v0, p7

    iput-object v0, v8, Lfda;->g:Lcmo;

    move-object/from16 v0, p8

    iput-object v0, v8, Lfda;->m:Ljvs;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private final h()Z
    .locals 2

    iget-object v0, p0, Lfda;->j:Lklv;

    if-eqz v0, :cond_0

    sget-object v1, Lklv;->a:Lklv;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final c(Lkli;)V
    .locals 0

    invoke-super {p0, p1}, Lhdr;->c(Lkli;)V

    invoke-interface {p1}, Lkli;->k()Lklv;

    move-result-object p1

    invoke-static {p1}, Llkj;->C(Ljava/lang/Object;)V

    iput-object p1, p0, Lfda;->j:Lklv;

    return-void
.end method

.method protected final d()Lhdq;
    .locals 4

    invoke-static {}, Lheb;->a()Lhea;

    move-result-object v0

    iget-object v1, p0, Lfda;->k:Landroid/content/res/Resources;

    const v2, 0x7f14026b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lhea;->a:Ljava/lang/String;

    iget-object v1, p0, Lfda;->k:Landroid/content/res/Resources;

    const v2, 0x7f080240

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lhea;->b:Landroid/graphics/drawable/Drawable;

    new-instance v1, Lfcz;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lfcz;-><init>(Lfda;I)V

    iput-object v1, v0, Lhea;->c:Ljava/lang/Runnable;

    new-instance v1, Lfcz;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lfcz;-><init>(Lfda;I)V

    iput-object v1, v0, Lhea;->g:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Lhea;->e(J)V

    invoke-virtual {v0}, Lhea;->a()Lheb;

    move-result-object v0

    invoke-static {}, Lhdq;->a()Lhdp;

    move-result-object v1

    iput-object v0, v1, Lhdp;->a:Lheb;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lhdp;->b(I)V

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Lhdp;->c(I)V

    invoke-virtual {v1}, Lhdp;->a()Lhdq;

    move-result-object v0

    return-object v0
.end method

.method protected final e(Lkou;)Z
    .locals 8

    iget-object p1, p0, Lfda;->l:Lgzm;

    sget-object v0, Lgzd;->s:Lgzu;

    invoke-interface {p1, v0}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0}, Lfda;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lfda;->l:Lgzm;

    sget-object v0, Lgzd;->t:Lgzu;

    invoke-interface {p1, v0}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_0
    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lfda;->a:Lfdf;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    iget v3, p1, Lfdf;->e:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_2

    iget v3, p1, Lfdf;->f:I

    if-lt v3, v4, :cond_2

    iget-wide v3, p1, Lfdf;->c:J

    sub-long v3, v1, v3

    const-wide/32 v5, 0xf4240

    cmp-long v7, v3, v5

    if-ltz v7, :cond_2

    iget-wide v3, p1, Lfdf;->d:J

    sub-long/2addr v1, v3

    cmp-long p1, v1, v5

    if-ltz p1, :cond_2

    invoke-direct {p0}, Lfda;->h()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lfda;->m:Ljvs;

    invoke-interface {p1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    return v0
.end method

.method protected final f(Lkou;)Z
    .locals 3

    sget-object v0, Landroid/hardware/camera2/TotalCaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    sget-object v1, Landroid/hardware/camera2/TotalCaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v1}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget-object v2, Landroid/hardware/camera2/TotalCaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v2}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final v()V
    .locals 3

    invoke-super {p0}, Lhdr;->v()V

    iget-object v0, p0, Lfda;->i:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lfcz;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lfcz;-><init>(Lfda;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final w()V
    .locals 3

    iget-object v0, p0, Lfda;->i:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lfcz;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lfcz;-><init>(Lfda;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
