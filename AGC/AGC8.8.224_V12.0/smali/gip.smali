.class public final Lgip;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/lang/Object;

.field private final f:Ljava/lang/Object;

.field private final g:Ljava/lang/Object;

.field private final h:Ljava/lang/Object;

.field private final i:Ljava/lang/Object;

.field private final j:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/googlex/gcam/Gcam;Ldhi;Lkli;Lklj;Lecd;Lfbk;Lfui;Lgdd;Limq;Ljvs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lgip;->g:Ljava/lang/Object;

    iput-object p6, p0, Lgip;->c:Ljava/lang/Object;

    iput-object p3, p0, Lgip;->d:Ljava/lang/Object;

    iput-object p7, p0, Lgip;->b:Ljava/lang/Object;

    new-instance p5, Lnsc;

    invoke-direct {p5, p3, p4}, Lnsc;-><init>(Lkli;Lklj;)V

    iput-object p5, p0, Lgip;->a:Ljava/lang/Object;

    iput-object p8, p0, Lgip;->h:Ljava/lang/Object;

    iput-object p1, p0, Lgip;->i:Ljava/lang/Object;

    iput-object p2, p0, Lgip;->j:Ljava/lang/Object;

    iput-object p9, p0, Lgip;->f:Ljava/lang/Object;

    iput-object p10, p0, Lgip;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgip;->a:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lgip;->b:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lgip;->c:Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Lgip;->d:Ljava/lang/Object;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p5, p0, Lgip;->e:Ljava/lang/Object;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p6, p0, Lgip;->f:Ljava/lang/Object;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p7, p0, Lgip;->g:Ljava/lang/Object;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p8, p0, Lgip;->h:Ljava/lang/Object;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p9, p0, Lgip;->i:Ljava/lang/Object;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p10, p0, Lgip;->j:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lkll;Lkou;I)Lfsf;
    .locals 10

    iget-object v0, p0, Lgip;->g:Ljava/lang/Object;

    invoke-interface {v0, p2, p1}, Lecd;->c(Lkou;Lkll;)I

    move-result v0

    iget-object v1, p0, Lgip;->i:Ljava/lang/Object;

    check-cast v1, Lcom/google/googlex/gcam/Gcam;

    invoke-virtual {v1, v0}, Lcom/google/googlex/gcam/Gcam;->b(I)Lcom/google/googlex/gcam/StaticMetadata;

    move-result-object v7

    new-instance v8, Lcom/google/googlex/gcam/ShotMetadata;

    invoke-direct {v8}, Lcom/google/googlex/gcam/ShotMetadata;-><init>()V

    iget-wide v2, v8, Lcom/google/googlex/gcam/ShotMetadata;->a:J

    invoke-static {v7}, Lcom/google/googlex/gcam/StaticMetadata;->a(Lcom/google/googlex/gcam/StaticMetadata;)J

    move-result-wide v5

    move-object v4, v8

    invoke-static/range {v2 .. v7}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotMetadata_static_metadata_set(JLcom/google/googlex/gcam/ShotMetadata;JLcom/google/googlex/gcam/StaticMetadata;)V

    iget-object v1, p0, Lgip;->g:Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v1, p2, v7, p1}, Lecd;->h(Lkou;Lcom/google/googlex/gcam/GyroSampleVector;Lkll;)Lcom/google/googlex/gcam/FrameMetadata;

    move-result-object v6

    iget-wide v1, v8, Lcom/google/googlex/gcam/ShotMetadata;->a:J

    invoke-static {v6}, Lcom/google/googlex/gcam/FrameMetadata;->b(Lcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v4

    move-object v3, v8

    invoke-static/range {v1 .. v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotMetadata_frame_metadata_set(JLcom/google/googlex/gcam/ShotMetadata;JLcom/google/googlex/gcam/FrameMetadata;)V

    iget-object p1, p0, Lgip;->a:Ljava/lang/Object;

    check-cast p1, Lnsc;

    invoke-virtual {p1, p2}, Lnsc;->o(Lkou;)Lcom/google/googlex/gcam/SpatialGainMap;

    move-result-object p1

    new-instance v6, Lcom/google/googlex/gcam/InterleavedImageF;

    iget-wide v1, p1, Lcom/google/googlex/gcam/SpatialGainMap;->a:J

    invoke-static {v1, v2, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->SpatialGainMap_gain_map(JLcom/google/googlex/gcam/SpatialGainMap;)J

    move-result-wide v1

    invoke-direct {v6, v1, v2}, Lcom/google/googlex/gcam/InterleavedImageF;-><init>(J)V

    iget-wide v1, v8, Lcom/google/googlex/gcam/ShotMetadata;->a:J

    invoke-static {v6}, Lcom/google/googlex/gcam/InterleavedImageF;->a(Lcom/google/googlex/gcam/InterleavedImageF;)J

    move-result-wide v4

    invoke-static/range {v1 .. v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotMetadata_gain_map_rggb_set(JLcom/google/googlex/gcam/ShotMetadata;JLcom/google/googlex/gcam/InterleavedImageF;)V

    iget-object v1, p0, Lgip;->c:Ljava/lang/Object;

    invoke-interface {v1}, Lfbk;->c()Lmqp;

    move-result-object v1

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    new-instance v2, Lcom/google/googlex/gcam/LocationData;

    invoke-direct {v2}, Lcom/google/googlex/gcam/LocationData;-><init>()V

    invoke-virtual {v1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/googlex/gcam/LocationData;->b(D)V

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/google/googlex/gcam/LocationData;->c(D)V

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/googlex/gcam/LocationData;->d(D)V

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/googlex/gcam/LocationData;->e(D)V

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/googlex/gcam/LocationData;->g(J)V

    invoke-virtual {v1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/googlex/gcam/LocationData;->f(Ljava/lang/String;)V

    new-instance v1, Lcom/google/googlex/gcam/ClientShotMetadata;

    invoke-direct {v1}, Lcom/google/googlex/gcam/ClientShotMetadata;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/googlex/gcam/ClientShotMetadata;->c(Lcom/google/googlex/gcam/LocationData;)V

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, v7

    :goto_0
    if-eqz v6, :cond_1

    iget-wide v1, v8, Lcom/google/googlex/gcam/ShotMetadata;->a:J

    invoke-static {v6}, Lcom/google/googlex/gcam/ClientShotMetadata;->a(Lcom/google/googlex/gcam/ClientShotMetadata;)J

    move-result-wide v4

    move-object v3, v8

    invoke-static/range {v1 .. v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotMetadata_client_shot_metadata_set(JLcom/google/googlex/gcam/ShotMetadata;JLcom/google/googlex/gcam/ClientShotMetadata;)V

    :cond_1
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p2, v1}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lgip;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    check-cast v2, Lnsc;

    invoke-virtual {v2, v1}, Lnsc;->a(I)F

    move-result v1

    goto :goto_1

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    iget-wide v2, v8, Lcom/google/googlex/gcam/ShotMetadata;->a:J

    invoke-static {v2, v3, v8, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotMetadata_exposure_compensation_set(JLcom/google/googlex/gcam/ShotMetadata;F)V

    iget-object v2, p0, Lgip;->f:Ljava/lang/Object;

    iget-object v3, p0, Lgip;->d:Ljava/lang/Object;

    iget-object v4, p0, Lgip;->e:Ljava/lang/Object;

    iget-object v5, p0, Lgip;->j:Ljava/lang/Object;

    check-cast v2, Limq;

    invoke-static {p3, v2, v3, v4, v5}, Lcea;->b(ILimq;Lkli;Ljvs;Ldhi;)I

    move-result p3

    invoke-static {p3}, Lnsy;->i(I)Lnqp;

    move-result-object p3

    iget-wide v2, v8, Lcom/google/googlex/gcam/ShotMetadata;->a:J

    iget p3, p3, Lnqp;->j:I

    invoke-static {v2, v3, v8, p3}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotMetadata_image_rotation_set(JLcom/google/googlex/gcam/ShotMetadata;I)V

    iget-object p3, p0, Lgip;->b:Ljava/lang/Object;

    check-cast p3, Ljwi;

    invoke-virtual {p3}, Ljwi;->bm()Ljava/lang/Object;

    move-result-object p3

    sget-object v2, Lfuh;->a:Lfuh;

    if-ne p3, v2, :cond_3

    sget-object p3, Lnri;->a:Lnri;

    goto :goto_2

    :cond_3
    sget-object p3, Lnri;->b:Lnri;

    :goto_2
    iget-wide v2, v8, Lcom/google/googlex/gcam/ShotMetadata;->a:J

    iget p3, p3, Lnri;->c:I

    invoke-static {v2, v3, v8, p3}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotMetadata_wb_mode_set(JLcom/google/googlex/gcam/ShotMetadata;I)V

    sget-object p3, Lnqm;->c:Lnqm;

    iget-wide v2, v8, Lcom/google/googlex/gcam/ShotMetadata;->a:J

    iget p3, p3, Lnqm;->d:I

    invoke-static {v2, v3, v8, p3}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotMetadata_flash_mode_set(JLcom/google/googlex/gcam/ShotMetadata;I)V

    const-string p3, "f"

    invoke-virtual {v8, p3}, Lcom/google/googlex/gcam/ShotMetadata;->n(Ljava/lang/String;)V

    new-instance p3, Lfsf;

    new-instance v9, Lcom/google/googlex/gcam/AeShotParams;

    invoke-direct {v9}, Lcom/google/googlex/gcam/AeShotParams;-><init>()V

    invoke-virtual {v9, v1}, Lcom/google/googlex/gcam/AeShotParams;->f(F)V

    sget-object v1, Lnrh;->a:Lnrh;

    invoke-virtual {v9, v1}, Lcom/google/googlex/gcam/AeShotParams;->k(Lnrh;)V

    iget-object v1, p0, Lgip;->a:Ljava/lang/Object;

    invoke-interface {p2}, Lkou;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lkll;->b(Ljava/lang/String;)Lkll;

    move-result-object v3

    iget-object v2, p0, Lgip;->j:Ljava/lang/Object;

    sget-object v4, Ldhh;->a:Ldhj;

    invoke-interface {v2, v4}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v2, p0, Lgip;->h:Ljava/lang/Object;

    check-cast v2, Lgdd;

    iget-object v7, v2, Lgdd;->b:Lkaf;

    move-object v2, v1

    check-cast v2, Lnsc;

    move-object v4, v9

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Lnsc;->u(Lkll;Lcom/google/googlex/gcam/AeShotParams;Lkou;FLkaf;)V

    invoke-virtual {v9}, Lcom/google/googlex/gcam/AeShotParams;->c()Lcom/google/googlex/gcam/WeightedNormalizedRectVector;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/googlex/gcam/WeightedNormalizedRectVector;->a()J

    invoke-direct {p3, v8, v0, v9, p1}, Lfsf;-><init>(Lcom/google/googlex/gcam/ShotMetadata;ILcom/google/googlex/gcam/AeShotParams;Lcom/google/googlex/gcam/SpatialGainMap;)V

    return-object p3
.end method

.method public final b(Lker;Lgkr;Lgnk;)Lgio;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    new-instance v18, Lgio;

    move-object/from16 v1, v18

    iget-object v2, v0, Lgip;->a:Ljava/lang/Object;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lkbc;

    move-object v2, v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lgip;->b:Ljava/lang/Object;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lecd;

    move-object v3, v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v0, Lgip;->c:Ljava/lang/Object;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lebl;

    move-object v4, v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v0, Lgip;->d:Ljava/lang/Object;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lgiz;

    move-object v5, v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v0, Lgip;->e:Ljava/lang/Object;

    invoke-interface {v6}, Loiw;->get()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lebv;

    move-object v6, v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v0, Lgip;->f:Ljava/lang/Object;

    invoke-interface {v7}, Loiw;->get()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lgue;

    move-object v7, v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lfew;->b:Lfew;

    iget-object v9, v0, Lgip;->g:Ljava/lang/Object;

    invoke-interface {v9}, Loiw;->get()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Ldhi;

    move-object v9, v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v0, Lgip;->h:Ljava/lang/Object;

    invoke-interface {v10}, Loiw;->get()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lmqp;

    move-object v10, v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v0, Lgip;->i:Ljava/lang/Object;

    check-cast v11, Lgnp;

    invoke-virtual {v11}, Lgnp;->a()Lgno;

    move-result-object v11

    iget-object v12, v0, Lgip;->j:Ljava/lang/Object;

    invoke-interface {v12}, Loiw;->get()Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v16, v12

    check-cast v16, Lghx;

    move-object/from16 v12, v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v1 .. v17}, Lgio;-><init>(Lkbc;Lecd;Lebl;Lgiz;Lebv;Lgue;Lkrh;Ldhi;Lmqp;Lgno;Lghx;Lker;Lgkr;Lgnk;[B[B)V

    return-object v18
.end method
