.class public Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionMergedCropCalculator;
.super Ljava/lang/Object;

# interfaces
.implements Lefk;


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lkli;

.field private final e:Lkli;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionMergedCropCalculator"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionMergedCropCalculator;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lily;Ljava/util/Map;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lgml;->c:Lgml;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkfj;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lkfj;->c()Lkll;

    move-result-object v0

    iget-object v0, v0, Lkll;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionMergedCropCalculator;->b:Ljava/lang/String;

    sget-object v1, Lgml;->b:Lgml;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkfj;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Lkfj;->c()Lkll;

    move-result-object p2

    iget-object p2, p2, Lkll;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionMergedCropCalculator;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lily;->a(Ljava/lang/String;)Lkli;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionMergedCropCalculator;->d:Lkli;

    invoke-virtual {p1, p2}, Lily;->a(Ljava/lang/String;)Lkli;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionMergedCropCalculator;->e:Lkli;

    return-void
.end method

.method private static final b(Landroid/graphics/Rect;)Lcom/google/googlex/gcam/PixelRect;
    .locals 2

    new-instance v0, Lcom/google/googlex/gcam/PixelRect;

    invoke-direct {v0}, Lcom/google/googlex/gcam/PixelRect;-><init>()V

    iget v1, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/PixelRect;->f(I)V

    iget v1, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/PixelRect;->g(I)V

    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/PixelRect;->h(I)V

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, p0}, Lcom/google/googlex/gcam/PixelRect;->i(I)V

    return-object v0
.end method

.method private static native retrieveReferenceFlowRoi(JFFJFFJJZLjava/lang/String;J)Z
.end method


# virtual methods
.method public final a(Lkeb;)Lmqp;
    .locals 25

    move-object/from16 v1, p0

    invoke-interface/range {p1 .. p1}, Lkeb;->c()Lkou;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lkou;->g()Ljava/util/Map;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionMergedCropCalculator;->b:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkoq;

    invoke-interface/range {p1 .. p1}, Lkeb;->c()Lkou;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lkou;->g()Ljava/util/Map;

    move-result-object v0

    iget-object v3, v1, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionMergedCropCalculator;->c:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkoq;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionMergedCropCalculator;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v2, "Empty secondary metadata, skipping."

    const/16 v3, 0x562

    invoke-static {v0, v2, v3}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionMergedCropCalculator;->d:Lkli;

    invoke-interface {v3}, Lkli;->h()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionMergedCropCalculator;->e:Lkli;

    invoke-interface {v4}, Lkli;->h()Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v3}, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionMergedCropCalculator;->b(Landroid/graphics/Rect;)Lcom/google/googlex/gcam/PixelRect;

    move-result-object v3

    invoke-static {v4}, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionMergedCropCalculator;->b(Landroid/graphics/Rect;)Lcom/google/googlex/gcam/PixelRect;

    move-result-object v5

    new-instance v6, Lcom/google/googlex/gcam/PixelRect;

    invoke-direct {v6}, Lcom/google/googlex/gcam/PixelRect;-><init>()V

    new-instance v7, Lcom/google/googlex/gcam/FaceInfoVector;

    invoke-direct {v7}, Lcom/google/googlex/gcam/FaceInfoVector;-><init>()V

    iget-object v8, v1, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionMergedCropCalculator;->d:Lkli;

    invoke-static {v8, v2, v7}, Lnsc;->p(Lkli;Lkoq;Lcom/google/googlex/gcam/FaceInfoVector;)V

    sget-object v8, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v8}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v11

    sget-object v8, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v8}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v15

    iget-object v8, v1, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionMergedCropCalculator;->d:Lkli;

    invoke-static {v8}, Lklg;->c(Lkli;)D

    move-result-wide v8

    double-to-float v12, v8

    iget-object v8, v1, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionMergedCropCalculator;->e:Lkli;

    invoke-static {v8}, Lklg;->c(Lkli;)D

    move-result-wide v8

    double-to-float v8, v8

    invoke-interface {v2}, Lkoq;->e()Ljava/lang/String;

    invoke-interface {v0}, Lkoq;->e()Ljava/lang/String;

    new-instance v9, Lcom/google/googlex/gcam/HalAfMetadata;

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_HalAfMetadata()J

    move-result-wide v13

    const/4 v0, 0x1

    invoke-direct {v9, v13, v14, v0}, Lcom/google/googlex/gcam/HalAfMetadata;-><init>(JZ)V

    sget-object v0, Liva;->b:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v0, Liva;->b:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v0}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_1

    invoke-static {v0, v9}, Lnsy;->b([BLcom/google/googlex/gcam/HalAfMetadata;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v10, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionMergedCropCalculator;->a:Lnak;

    invoke-virtual {v10}, Lnaf;->c()Lnaz;

    move-result-object v10

    const-string v13, "Error retrieving RESULT_AF_MULTI_DEPTH_FACE_DEBLUR."

    const/16 v14, 0x561

    invoke-static {v10, v13, v14, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    :cond_1
    :goto_0
    sget-object v0, Liuz;->c:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v10, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Liuz;->c:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v0}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Liuz;->c:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v0}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move/from16 v21, v0

    goto :goto_1

    :cond_2
    const/16 v21, 0x0

    :goto_1
    iget-wide v2, v3, Lcom/google/googlex/gcam/PixelRect;->a:J

    iget-wide v13, v5, Lcom/google/googlex/gcam/PixelRect;->a:J

    iget-wide v0, v7, Lcom/google/googlex/gcam/FaceInfoVector;->a:J

    iget-wide v9, v9, Lcom/google/googlex/gcam/HalAfMetadata;->a:J

    sget-object v22, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    move-object/from16 p1, v4

    iget-wide v4, v6, Lcom/google/googlex/gcam/PixelRect;->a:J

    move-wide/from16 v19, v9

    move-wide v9, v2

    move/from16 v16, v8

    move-wide/from16 v17, v0

    move-wide/from16 v23, v4

    invoke-static/range {v9 .. v24}, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionMergedCropCalculator;->retrieveReferenceFlowRoi(JFFJFFJJZLjava/lang/String;J)Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v6}, Lcom/google/googlex/gcam/PixelRect;->a()I

    move-result v1

    invoke-virtual {v6}, Lcom/google/googlex/gcam/PixelRect;->b()I

    move-result v2

    iget-wide v3, v6, Lcom/google/googlex/gcam/PixelRect;->a:J

    invoke-static {v3, v4, v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->PixelRect_x1_get(JLcom/google/googlex/gcam/PixelRect;)I

    move-result v3

    iget-wide v4, v6, Lcom/google/googlex/gcam/PixelRect;->a:J

    invoke-static {v4, v5, v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->PixelRect_y1_get(JLcom/google/googlex/gcam/PixelRect;)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v1, p1

    invoke-virtual {v0, v0, v1}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    new-instance v2, Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v3, v4

    div-float/2addr v5, v6

    div-float/2addr v7, v8

    div-float/2addr v0, v1

    invoke-direct {v2, v3, v5, v7, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v2}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0
.end method
