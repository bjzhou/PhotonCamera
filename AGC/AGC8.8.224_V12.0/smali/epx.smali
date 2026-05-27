.class public final Lepx;
.super Lhdr;


# static fields
.field private static final e:I

.field private static final f:I


# instance fields
.field public final a:Lflf;

.field public final b:Ljwb;

.field public final c:Lcmo;

.field public d:Ljava/lang/Float;

.field private final g:Landroid/content/res/Resources;

.field private final h:Lmrl;

.field private final j:Lkbc;

.field private k:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lepx;->e:I

    const/high16 v0, 0x41a00000    # 20.0f

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lepx;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lflf;Ljwb;Lmrl;Ljvs;Ljava/util/concurrent/ScheduledExecutorService;Lcdi;Lkbc;Lcmo;Ljew;[B[B[B[B)V
    .locals 9

    move-object v8, p0

    const-string v3, "motion_blur_smarts_chip"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p6

    move-object/from16 v2, p10

    invoke-direct/range {v0 .. v7}, Lhdr;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Ljew;Ljava/lang/String;[B[B[B[B)V

    move-object v0, p1

    iput-object v0, v8, Lepx;->g:Landroid/content/res/Resources;

    move-object v0, p2

    iput-object v0, v8, Lepx;->a:Lflf;

    move-object v0, p3

    iput-object v0, v8, Lepx;->b:Ljwb;

    move-object v0, p4

    iput-object v0, v8, Lepx;->h:Lmrl;

    move-object/from16 v0, p8

    iput-object v0, v8, Lepx;->j:Lkbc;

    move-object/from16 v0, p9

    iput-object v0, v8, Lepx;->c:Lcmo;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v8, Lepx;->k:Ljava/lang/Float;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v8, Lepx;->d:Ljava/lang/Float;

    invoke-virtual/range {p7 .. p7}, Lcdi;->i()Ljuf;

    move-result-object v0

    new-instance v1, Ldsk;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, Ldsk;-><init>(Lepx;I)V

    move-object v2, p5

    move-object v3, p6

    invoke-interface {p5, v1, p6}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    return-void
.end method


# virtual methods
.method protected final d()Lhdq;
    .locals 4

    invoke-static {}, Lheb;->a()Lhea;

    move-result-object v0

    iget-object v1, p0, Lepx;->g:Landroid/content/res/Resources;

    const v2, 0x7f1402de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lhea;->a:Ljava/lang/String;

    iget-object v1, p0, Lepx;->g:Landroid/content/res/Resources;

    const v2, 0x7f080236

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lhea;->b:Landroid/graphics/drawable/Drawable;

    new-instance v1, Leli;

    const/16 v2, 0xf

    invoke-direct {v1, p0, v2}, Leli;-><init>(Lepx;I)V

    iput-object v1, v0, Lhea;->c:Ljava/lang/Runnable;

    new-instance v1, Leli;

    const/16 v2, 0x10

    invoke-direct {v1, p0, v2}, Leli;-><init>(Lepx;I)V

    iput-object v1, v0, Lhea;->g:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lhea;->e(J)V

    invoke-virtual {v0}, Lhea;->a()Lheb;

    move-result-object v0

    invoke-static {}, Lhdq;->a()Lhdp;

    move-result-object v1

    iput-object v0, v1, Lhdp;->a:Lheb;

    sget v0, Lepx;->e:I

    invoke-virtual {v1, v0}, Lhdp;->b(I)V

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Lhdp;->c(I)V

    invoke-virtual {v1}, Lhdp;->a()Lhdq;

    move-result-object v0

    return-object v0
.end method

.method protected final e(Lkou;)Z
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lepx;->d:Ljava/lang/Float;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lepx;->k:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iput-object v0, p0, Lepx;->k:Ljava/lang/Float;

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const v1, 0x40866666    # 4.2f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_3

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroid/hardware/camera2/params/MeteringRectangle;->getMeteringWeight()I

    move-result v3

    if-gtz v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Liux;->a:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v0, :cond_3

    sget-object v0, Liux;->a:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    if-eqz v0, :cond_3

    const/4 v1, 0x6

    aget v1, v0, v1

    const/16 v3, 0x8

    aget v3, v0, v3

    const/16 v4, 0x9

    aget v0, v0, v4

    const/4 v4, 0x0

    cmpg-float v5, v3, v4

    if-ltz v5, :cond_3

    const/high16 v5, -0x40000000    # -2.0f

    cmpg-float v1, v1, v5

    if-ltz v1, :cond_3

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v1}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object p1, p0, Lepx;->h:Lmrl;

    invoke-interface {p1}, Lmrl;->a()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    sget-object p1, Lmpx;->a:Lmpx;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lepx;->j:Lkbc;

    const-string v1, "gyro"

    invoke-interface {p1, v1}, Lkbc;->e(Ljava/lang/String;)V

    new-instance p1, Lepw;

    invoke-direct {p1}, Lepw;-><init>()V

    iget-object v1, p0, Lepx;->h:Lmrl;

    invoke-interface {v1}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lkmm;

    sget v1, Lepx;->f:I

    int-to-long v6, v1

    const-wide/32 v10, 0x4c4b40

    mul-long v6, v6, v10

    sub-long v6, v8, v6

    move-object v10, p1

    invoke-interface/range {v5 .. v10}, Lkmm;->b(JJLkml;)V

    iget-object v1, p0, Lepx;->j:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    invoke-virtual {p1}, Lepw;->b()Lmqp;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x42a00000    # 80.0f

    div-float/2addr v3, v1

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const v5, -0x43333333    # -0.025f

    add-float/2addr v1, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v4, 0x3e000000    # 0.125f

    div-float/2addr v1, v4

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const v4, 0x3e19999a    # 0.15f

    cmpg-float p1, p1, v4

    if-gez p1, :cond_3

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float v3, v3, p1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, v1

    const/high16 v4, 0x41200000    # 10.0f

    mul-float v1, v1, v4

    div-float/2addr v3, v0

    const/high16 v0, 0x40400000    # 3.0f

    mul-float p1, p1, v0

    add-float/2addr p1, v1

    cmpl-float p1, v3, p1

    if-lez p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_2
    return v2

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
