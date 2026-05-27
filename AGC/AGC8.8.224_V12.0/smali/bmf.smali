.class public final Lbmf;
.super Lbnz;


# instance fields
.field public a:Lbna;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Landroid/hardware/camera2/CameraDevice;

.field public e:Lbly;

.field public f:Lbof;

.field public g:Landroid/graphics/Rect;

.field public h:Z

.field public i:Landroid/hardware/camera2/CameraCaptureSession;

.field public j:Landroid/media/ImageReader;

.field public k:Lbnf;

.field public l:Lbmy;

.field public m:Lbmg;

.field public n:Lbmz;

.field public o:I

.field public final p:Lbme;

.field final synthetic q:Lbmh;

.field private s:I

.field private t:Lbob;

.field private u:Lbob;

.field private v:Landroid/graphics/SurfaceTexture;

.field private w:Landroid/view/Surface;

.field private final x:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private final y:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;


# direct methods
.method public constructor <init>(Lbmh;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lbmf;->q:Lbmh;

    invoke-direct {p0, p2}, Lbnz;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    iput p1, p0, Lbmf;->s:I

    iput p1, p0, Lbmf;->o:I

    new-instance p1, Lbmb;

    invoke-direct {p1, p0}, Lbmb;-><init>(Lbmf;)V

    iput-object p1, p0, Lbmf;->x:Landroid/hardware/camera2/CameraDevice$StateCallback;

    new-instance p1, Lbmc;

    invoke-direct {p1, p0}, Lbmc;-><init>(Lbmf;)V

    iput-object p1, p0, Lbmf;->y:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    new-instance p1, Lbmd;

    invoke-direct {p1, p0}, Lbmd;-><init>(Lbmf;)V

    iput-object p1, p0, Lbmf;->p:Lbme;

    return-void
.end method

.method private final d(Lbmj;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lbmf;->f:Lbof;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v4, v0, Lbmj;->e:Ljava/util/List;

    invoke-virtual {v0, v4}, Lbmj;->c(Ljava/util/List;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lbmj;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v4, v0, Lbmj;->f:Ljava/util/List;

    invoke-virtual {v0, v4}, Lbmj;->c(Ljava/util/List;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lbmj;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v4, Landroid/util/Range;

    iget v5, v0, Lbmj;->h:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, v0, Lbmj;->i:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v0, v3, v4}, Lbmj;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-byte v4, v0, Lbmj;->n:B

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lbmj;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v3, v0, Lbmj;->b:Lbof;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v5, v0, Lbmj;->c:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v5}, Lbof;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v4, v0, Lbmj;->q:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lbmj;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v3, v0, Lbmj;->r:Lbnl;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v3, :cond_0

    sget-object v3, Lbno;->a:Lbno;

    sget-object v3, Lbnn;->a:Lbnn;

    sget-object v3, Lbnm;->a:Lbnm;

    sget-object v3, Lbnl;->a:Lbnl;

    iget-object v3, v0, Lbmj;->r:Lbnl;

    invoke-virtual {v3}, Lbnl;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    sget-object v3, Lbmj;->a:Lboc;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to convert to API 2 flash mode: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lbmj;->r:Lbnl;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Lbod;->c(Lboc;Ljava/lang/String;)V

    move-object v3, v12

    move-object v13, v3

    goto :goto_0

    :pswitch_0
    move-object v3, v6

    move-object v13, v12

    goto :goto_0

    :pswitch_1
    move-object v13, v9

    move-object v3, v12

    goto :goto_0

    :pswitch_2
    move-object v3, v4

    move-object v13, v11

    goto :goto_0

    :pswitch_3
    move-object v13, v8

    move-object v3, v11

    goto :goto_0

    :pswitch_4
    move-object v3, v9

    move-object v13, v12

    goto :goto_0

    :cond_0
    move-object v3, v12

    move-object v13, v3

    :goto_0
    iget-object v14, v0, Lbmj;->b:Lbof;

    sget-object v15, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v14, v15, v3}, Lbof;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v3, v0, Lbmj;->b:Lbof;

    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v14, v13}, Lbof;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v3, v0, Lbmj;->s:Lbnm;

    const/4 v13, 0x5

    if-eqz v3, :cond_1

    sget-object v3, Lbno;->a:Lbno;

    sget-object v3, Lbnn;->a:Lbnn;

    sget-object v3, Lbnm;->a:Lbnm;

    sget-object v3, Lbnl;->a:Lbnl;

    iget-object v3, v0, Lbmj;->s:Lbnm;

    invoke-virtual {v3}, Lbnm;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    :pswitch_5
    sget-object v3, Lbmj;->a:Lboc;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to convert to API 2 focus mode: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lbmj;->s:Lbnm;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lbod;->c(Lboc;Ljava/lang/String;)V

    move-object v3, v12

    goto :goto_1

    :pswitch_6
    move-object v3, v9

    goto :goto_1

    :pswitch_7
    move-object v3, v8

    goto :goto_1

    :pswitch_8
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :pswitch_9
    move-object v3, v4

    goto :goto_1

    :pswitch_a
    move-object v3, v6

    goto :goto_1

    :pswitch_b
    move-object v3, v11

    goto :goto_1

    :cond_1
    move-object v3, v12

    :goto_1
    iget-object v5, v0, Lbmj;->b:Lbof;

    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v5, v14, v3}, Lbof;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v3, v0, Lbmj;->t:Lbnn;

    const/4 v5, 0x7

    const/16 v14, 0x10

    const/16 v15, 0x8

    if-eqz v3, :cond_2

    sget-object v3, Lbno;->a:Lbno;

    sget-object v3, Lbnn;->a:Lbnn;

    sget-object v3, Lbnm;->a:Lbnm;

    sget-object v3, Lbnl;->a:Lbnl;

    iget-object v3, v0, Lbmj;->t:Lbnn;

    invoke-virtual {v3}, Lbnn;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_2

    :pswitch_c
    sget-object v3, Lbmj;->a:Lboc;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to convert to API 2 scene mode: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lbmj;->t:Lbnn;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lbod;->c(Lboc;Ljava/lang/String;)V

    move-object v3, v12

    goto/16 :goto_2

    :pswitch_d
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_2

    :pswitch_e
    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    :pswitch_f
    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    :pswitch_10
    const/16 v3, 0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    :pswitch_11
    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    :pswitch_12
    move-object v3, v4

    goto :goto_2

    :pswitch_13
    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    :pswitch_14
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    :pswitch_15
    move-object v3, v6

    goto :goto_2

    :pswitch_16
    sget v3, Lboa;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    :pswitch_17
    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    :pswitch_18
    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    :pswitch_19
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    :pswitch_1a
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    :pswitch_1b
    move-object v3, v9

    goto :goto_2

    :pswitch_1c
    move-object v3, v8

    goto :goto_2

    :cond_2
    move-object v3, v12

    :goto_2
    iget-object v7, v0, Lbmj;->b:Lbof;

    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v7, v10, v3}, Lbof;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v3, v0, Lbmj;->u:Lbno;

    if-eqz v3, :cond_3

    sget-object v3, Lbno;->a:Lbno;

    sget-object v3, Lbnn;->a:Lbnn;

    sget-object v3, Lbnm;->a:Lbnm;

    sget-object v3, Lbnl;->a:Lbnl;

    iget-object v3, v0, Lbmj;->u:Lbno;

    invoke-virtual {v3}, Lbno;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_3

    sget-object v3, Lbmj;->a:Lboc;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to convert to API 2 white balance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lbmj;->u:Lbno;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lbod;->c(Lboc;Ljava/lang/String;)V

    move-object v4, v12

    goto :goto_3

    :pswitch_1d
    move-object v4, v6

    goto :goto_3

    :pswitch_1e
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_3

    :pswitch_1f
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_3

    :pswitch_20
    move-object v4, v9

    goto :goto_3

    :pswitch_21
    goto :goto_3

    :pswitch_22
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_3

    :pswitch_23
    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_3

    :pswitch_24
    move-object v4, v11

    goto :goto_3

    :cond_3
    move-object v4, v12

    :goto_3
    iget-object v3, v0, Lbmj;->b:Lbof;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v5, v4}, Lbof;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-boolean v4, v0, Lbmj;->v:Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lbmj;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v3, v0, Lbmj;->b:Lbof;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-boolean v5, v0, Lbmj;->v:Z

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    move-object v8, v12

    :goto_4
    invoke-virtual {v3, v4, v8}, Lbof;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-boolean v4, v0, Lbmj;->w:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lbmj;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-boolean v4, v0, Lbmj;->x:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lbmj;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v3, v0, Lbmj;->b:Lbof;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v4, v12}, Lbof;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v3, v0, Lbmj;->z:Lbob;

    if-eqz v3, :cond_5

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v4, Landroid/util/Size;

    iget-object v5, v0, Lbmj;->z:Lbob;

    invoke-virtual {v5}, Lbob;->b()I

    move-result v5

    iget-object v6, v0, Lbmj;->z:Lbob;

    invoke-virtual {v6}, Lbob;->a()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Lbmj;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_5

    :cond_5
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v3, v12}, Lbmj;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_5
    iget-object v3, v0, Lbmj;->b:Lbof;

    if-eq v3, v2, :cond_6

    iget-object v4, v2, Lbof;->a:Ljava/util/Map;

    iget-object v3, v3, Lbof;->a:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-wide v3, v2, Lbof;->b:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v2, Lbof;->b:J

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lbnw;->f()Lbob;

    move-result-object v2

    iput-object v2, v1, Lbmf;->t:Lbob;

    invoke-virtual/range {p1 .. p1}, Lbnw;->e()Lbob;

    move-result-object v0

    iput-object v0, v1, Lbmf;->u:Lbob;

    iget-object v0, v1, Lbmf;->q:Lbmh;

    iget-object v0, v0, Lbmh;->c:Lbnx;

    invoke-virtual {v0}, Lbnx;->a()I

    move-result v0

    const/16 v2, 0x10

    if-lt v0, v2, :cond_7

    :try_start_0
    iget-object v0, v1, Lbmf;->i:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, v1, Lbmf;->f:Lbof;

    iget-object v3, v1, Lbmf;->d:Landroid/hardware/camera2/CameraDevice;

    const/4 v4, 0x1

    new-array v5, v4, [Landroid/view/Surface;

    iget-object v6, v1, Lbmf;->w:Landroid/view/Surface;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lbof;->a(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, v1, Lbmf;->p:Lbme;

    invoke-virtual {v0, v2, v3, v1}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lbmh;->a:Lboc;

    const-string v3, "Failed to apply updated request settings"

    invoke-static {v2, v3, v0}, Lbod;->b(Lboc;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_7
    iget-object v0, v1, Lbmf;->q:Lbmh;

    iget-object v0, v0, Lbmh;->c:Lbnx;

    invoke-virtual {v0}, Lbnx;->a()I

    move-result v0

    if-ge v0, v15, :cond_8

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lbmf;->a(I)V

    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_c
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
    .end packed-switch
.end method

.method private final e()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lbmf;->i:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbmf;->i:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lbmh;->a:Lboc;

    const-string v2, "Failed to close existing camera capture session"

    invoke-static {v1, v2, v0}, Lbod;->b(Lboc;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lbmf;->a(I)V

    return-void
.end method

.method private final f(Landroid/graphics/SurfaceTexture;)V
    .locals 5

    iget-object v0, p0, Lbmf;->q:Lbmh;

    iget-object v0, v0, Lbmh;->c:Lbnx;

    invoke-virtual {v0}, Lbnx;->a()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    sget-object p1, Lbmh;->a:Lboc;

    const-string v0, "Ignoring texture setting at inappropriate time"

    invoke-static {p1, v0}, Lbod;->c(Lboc;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lbmf;->v:Landroid/graphics/SurfaceTexture;

    if-ne p1, v0, :cond_1

    sget-object p1, Lbmh;->a:Lboc;

    invoke-static {p1}, Lbod;->f(Lboc;)V

    return-void

    :cond_1
    iget-object v0, p0, Lbmf;->i:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lbmf;->e()V

    :cond_2
    iput-object p1, p0, Lbmf;->v:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lbmf;->t:Lbob;

    invoke-virtual {v0}, Lbob;->b()I

    move-result v0

    iget-object v1, p0, Lbmf;->t:Lbob;

    invoke-virtual {v1}, Lbob;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    iget-object v0, p0, Lbmf;->w:Landroid/view/Surface;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_3
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lbmf;->w:Landroid/view/Surface;

    iget-object p1, p0, Lbmf;->j:Landroid/media/ImageReader;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/media/ImageReader;->close()V

    :cond_4
    iget-object p1, p0, Lbmf;->u:Lbob;

    invoke-virtual {p1}, Lbob;->b()I

    move-result p1

    iget-object v0, p0, Lbmf;->u:Lbob;

    invoke-virtual {v0}, Lbob;->a()I

    move-result v0

    const/16 v1, 0x100

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lbmf;->j:Landroid/media/ImageReader;

    :try_start_0
    iget-object v0, p0, Lbmf;->d:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/Surface;

    iget-object v3, p0, Lbmf;->w:Landroid/view/Surface;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-virtual {p1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lbmf;->y:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {v0, p1, v1, p0}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v0, Lbmh;->a:Lboc;

    const-string v1, "Failed to create camera capture session"

    invoke-static {v0, v1, p1}, Lbod;->b(Lboc;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lbmf;->q:Lbmh;

    iget-object v0, v0, Lbmh;->c:Lbnx;

    invoke-virtual {v0}, Lbnx;->a()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lbmf;->q:Lbmh;

    iget-object v0, v0, Lbmh;->c:Lbnx;

    invoke-virtual {v0, p1}, Lbnx;->c(I)V

    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lbmf;->o:I

    iget-object p1, p0, Lbmf;->p:Lbme;

    check-cast p1, Lbmd;

    const/4 v0, -0x1

    iput v0, p1, Lbmd;->a:I

    const-wide/16 v0, -0x1

    iput-wide v0, p1, Lbmd;->b:J

    iput-wide v0, p1, Lbmd;->c:J

    :cond_0
    return-void
.end method

.method public final b()Lbnw;
    .locals 5

    :try_start_0
    new-instance v0, Lbmj;

    iget-object v1, p0, Lbmf;->d:Landroid/hardware/camera2/CameraDevice;

    iget-object v2, p0, Lbmf;->g:Landroid/graphics/Rect;

    iget-object v3, p0, Lbmf;->t:Lbob;

    iget-object v4, p0, Lbmf;->u:Lbob;

    invoke-direct {v0, v1, v2, v3, v4}, Lbmj;-><init>(Landroid/hardware/camera2/CameraDevice;Landroid/graphics/Rect;Lbob;Lbob;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lbmh;->a:Lboc;

    const-string v1, "Unable to query camera device to build settings representation"

    invoke-static {v0, v1}, Lbod;->a(Lboc;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    invoke-super {p0, p1}, Lbnz;->handleMessage(Landroid/os/Message;)V

    sget-object v0, Lbmh;->a:Lboc;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lbze;->K(I)Ljava/lang/String;

    invoke-static {v0}, Lbod;->g(Lboc;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x20

    const/16 v2, 0x8

    const/4 v3, 0x2

    const/16 v4, 0x10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sparse-switch v0, :sswitch_data_0

    :try_start_0
    new-instance v1, Ljava/lang/RuntimeException;

    goto/16 :goto_2

    :sswitch_0
    iget-object v2, p0, Lbmf;->q:Lbmh;

    iget-object v2, v2, Lbmh;->c:Lbnx;

    invoke-virtual {v2}, Lbnx;->a()I

    move-result v2

    if-ge v2, v4, :cond_0

    sget-object v1, Lbmh;->a:Lboc;

    const-string v2, "Photos may only be taken when a preview is active"

    invoke-static {v1, v2}, Lbod;->a(Lboc;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    iget-object v2, p0, Lbmf;->q:Lbmh;

    iget-object v2, v2, Lbmh;->c:Lbnx;

    invoke-virtual {v2}, Lbnx;->a()I

    move-result v2

    if-eq v2, v1, :cond_1

    sget-object v1, Lbmh;->a:Lboc;

    const-string v2, "Taking a (likely blurry) photo without the lens locked"

    invoke-static {v1, v2}, Lbod;->c(Lboc;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lbmg;

    iget-boolean v2, p0, Lbmf;->h:Z

    if-nez v2, :cond_3

    iget v2, p0, Lbmf;->o:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lbmf;->f:Lbof;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v4, v9}, Lbof;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lbmf;->f:Lbof;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v4, v8}, Lbof;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    sget-object v2, Lbmh;->a:Lboc;

    invoke-static {v2}, Lbod;->f(Lboc;)V

    new-instance v2, Lbma;

    invoke-direct {v2, p0, v1}, Lbma;-><init>(Lbmf;Lbmg;)V

    new-instance v1, Lbof;

    iget-object v4, p0, Lbmf;->f:Lbof;

    invoke-direct {v1, v4}, Lbof;-><init>(Lbof;)V

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v4, v8}, Lbof;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Lbmf;->i:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v8, p0, Lbmf;->d:Landroid/hardware/camera2/CameraDevice;

    new-array v9, v7, [Landroid/view/Surface;

    iget-object v10, p0, Lbmf;->w:Landroid/view/Surface;

    aput-object v10, v9, v5

    invoke-virtual {v1, v8, v7, v9}, Lbof;->a(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-virtual {v4, v1, v2, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v2, Lbmh;->a:Lboc;

    const-string v4, "Unable to run autoexposure and perform capture"

    invoke-static {v2, v4, v1}, Lbod;->b(Lboc;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_3
    :goto_0
    sget-object v2, Lbmh;->a:Lboc;

    invoke-static {v2}, Lbod;->f(Lboc;)V

    iget-object v2, p0, Lbmf;->j:Landroid/media/ImageReader;

    invoke-virtual {v2, v1, p0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v2, p0, Lbmf;->i:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v4, p0, Lbmf;->f:Lbof;

    iget-object v8, p0, Lbmf;->d:Landroid/hardware/camera2/CameraDevice;

    new-array v9, v7, [Landroid/view/Surface;

    iget-object v10, p0, Lbmf;->j:Landroid/media/ImageReader;

    invoke-virtual {v10}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-virtual {v4, v8, v3, v9}, Lbof;->a(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    invoke-virtual {v2, v4, v1, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catch_1
    move-exception v1

    :try_start_4
    sget-object v2, Lbmh;->a:Lboc;

    const-string v4, "Unable to initiate immediate capture"

    invoke-static {v2, v4, v1}, Lbod;->b(Lboc;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :sswitch_1
    iget-object v1, p0, Lbmf;->f:Lbof;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lbof;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_2
    iget-object v1, p0, Lbmf;->f:Lbof;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-lez v4, :cond_4

    iget-object v4, p0, Lbmf;->e:Lbly;

    iget-object v4, v4, Lbly;->a:Lbnq;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Lbnq;->d(I)I

    move-result v5

    :cond_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lbof;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_3
    iget v1, p0, Lbmf;->s:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lbmf;->s:I

    goto/16 :goto_1

    :sswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lbmz;

    iput-object v1, p0, Lbmf;->n:Lbmz;

    goto/16 :goto_1

    :sswitch_5
    iget v2, p0, Lbmf;->s:I

    add-int/2addr v2, v7

    iput v2, p0, Lbmf;->s:I

    iget-object v2, p0, Lbmf;->q:Lbmh;

    iget-object v2, v2, Lbmh;->c:Lbnx;

    invoke-virtual {v2}, Lbnx;->a()I

    move-result v2

    if-ge v2, v4, :cond_5

    sget-object v1, Lbmh;->a:Lboc;

    const-string v2, "Ignoring attempt to release focus lock without preview"

    invoke-static {v1, v2}, Lbod;->c(Lboc;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p0, v4}, Lbmf;->a(I)V

    new-instance v2, Lbof;

    iget-object v4, p0, Lbmf;->f:Lbof;

    invoke-direct {v2, v4}, Lbof;-><init>(Lbof;)V

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v4, v8}, Lbof;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v4, p0, Lbmf;->i:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v8, p0, Lbmf;->d:Landroid/hardware/camera2/CameraDevice;

    new-array v9, v7, [Landroid/view/Surface;

    iget-object v10, p0, Lbmf;->w:Landroid/view/Surface;

    aput-object v10, v9, v5

    invoke-virtual {v2, v8, v7, v9}, Lbof;->a(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-virtual {v4, v2, v6, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_5
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    :catch_2
    move-exception v2

    :try_start_6
    sget-object v4, Lbmh;->a:Lboc;

    const-string v5, "Unable to cancel autofocus"

    invoke-static {v4, v5, v2}, Lbod;->b(Lboc;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lbmf;->a(I)V

    goto/16 :goto_1

    :sswitch_6
    iget v2, p0, Lbmf;->s:I

    if-lez v2, :cond_6

    sget-object v1, Lbmh;->a:Lboc;

    invoke-static {v1}, Lbod;->g(Lboc;)V

    goto/16 :goto_1

    :cond_6
    iget-object v2, p0, Lbmf;->q:Lbmh;

    iget-object v2, v2, Lbmh;->c:Lbnx;

    invoke-virtual {v2}, Lbnx;->a()I

    move-result v2

    if-ge v2, v4, :cond_7

    sget-object v1, Lbmh;->a:Lboc;

    const-string v2, "Ignoring attempt to autofocus without preview"

    invoke-static {v1, v2}, Lbod;->c(Lboc;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lbmy;

    new-instance v9, Lblz;

    invoke-direct {v9, p0, v2}, Lblz;-><init>(Lbmf;Lbmy;)V

    invoke-virtual {p0, v1}, Lbmf;->a(I)V

    new-instance v1, Lbof;

    iget-object v2, p0, Lbmf;->f:Lbof;

    invoke-direct {v1, v2}, Lbof;-><init>(Lbof;)V

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2, v8}, Lbof;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v2, p0, Lbmf;->i:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v8, p0, Lbmf;->d:Landroid/hardware/camera2/CameraDevice;

    new-array v10, v7, [Landroid/view/Surface;

    iget-object v11, p0, Lbmf;->w:Landroid/view/Surface;

    aput-object v11, v10, v5

    invoke-virtual {v1, v8, v7, v10}, Lbof;->a(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-virtual {v2, v1, v9, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_7
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    :catch_3
    move-exception v1

    :try_start_8
    sget-object v2, Lbmh;->a:Lboc;

    const-string v5, "Unable to lock autofocus"

    invoke-static {v2, v5, v1}, Lbod;->b(Lboc;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v4}, Lbmf;->a(I)V

    goto/16 :goto_1

    :sswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lbmj;

    invoke-direct {p0, v1}, Lbmf;->d(Lbmj;)V

    goto/16 :goto_1

    :sswitch_8
    iget-object v1, p0, Lbmf;->q:Lbmh;

    iget-object v1, v1, Lbmh;->c:Lbnx;

    invoke-virtual {v1}, Lbnx;->a()I

    move-result v1

    if-ge v1, v4, :cond_8

    sget-object v1, Lbmh;->a:Lboc;

    const-string v2, "Refusing to stop preview at inappropriate time"

    invoke-static {v1, v2}, Lbod;->c(Lboc;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    iget-object v1, p0, Lbmf;->i:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    invoke-virtual {p0, v2}, Lbmf;->a(I)V

    goto/16 :goto_1

    :sswitch_9
    iget-object v1, p0, Lbmf;->q:Lbmh;

    iget-object v1, v1, Lbmh;->c:Lbnx;

    invoke-virtual {v1}, Lbnx;->a()I

    move-result v1

    if-eq v1, v2, :cond_9

    sget-object v1, Lbmh;->a:Lboc;

    const-string v2, "Refusing to start preview at inappropriate time"

    invoke-static {v1, v2}, Lbod;->c(Lboc;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lbnf;

    iput-object v1, p0, Lbmf;->k:Lbnf;

    invoke-virtual {p0, v4}, Lbmf;->a(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget-object v1, p0, Lbmf;->i:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v4, p0, Lbmf;->f:Lbof;

    iget-object v8, p0, Lbmf;->d:Landroid/hardware/camera2/CameraDevice;

    new-array v9, v7, [Landroid/view/Surface;

    iget-object v10, p0, Lbmf;->w:Landroid/view/Surface;

    aput-object v10, v9, v5

    invoke-virtual {v4, v8, v7, v9}, Lbof;->a(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    iget-object v5, p0, Lbmf;->p:Lbme;

    invoke-virtual {v1, v4, v5, p0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_9
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    :catch_4
    move-exception v1

    :try_start_a
    sget-object v4, Lbmh;->a:Lboc;

    const-string v5, "Unable to start preview"

    invoke-static {v4, v5, v1}, Lbod;->d(Lboc;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2}, Lbmf;->a(I)V

    goto/16 :goto_1

    :sswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/SurfaceTexture;

    invoke-direct {p0, v1}, Lbmf;->f(Landroid/graphics/SurfaceTexture;)V

    goto/16 :goto_1

    :sswitch_b
    iget-object v1, p0, Lbmf;->q:Lbmh;

    iget-object v1, v1, Lbmh;->c:Lbnx;

    invoke-virtual {v1}, Lbnx;->a()I

    move-result v1

    if-ne v1, v7, :cond_a

    sget-object v1, Lbmh;->a:Lboc;

    const-string v2, "Ignoring release at inappropriate time"

    invoke-static {v1, v2}, Lbod;->c(Lboc;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    iget-object v1, p0, Lbmf;->i:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_b

    invoke-direct {p0}, Lbmf;->e()V

    iput-object v6, p0, Lbmf;->i:Landroid/hardware/camera2/CameraCaptureSession;

    :cond_b
    iget-object v1, p0, Lbmf;->d:Landroid/hardware/camera2/CameraDevice;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->close()V

    iput-object v6, p0, Lbmf;->d:Landroid/hardware/camera2/CameraDevice;

    :cond_c
    iput-object v6, p0, Lbmf;->e:Lbly;

    iput-object v6, p0, Lbmf;->f:Lbof;

    iput-object v6, p0, Lbmf;->g:Landroid/graphics/Rect;

    iget-object v1, p0, Lbmf;->w:Landroid/view/Surface;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    iput-object v6, p0, Lbmf;->w:Landroid/view/Surface;

    :cond_d
    iput-object v6, p0, Lbmf;->v:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lbmf;->j:Landroid/media/ImageReader;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    iput-object v6, p0, Lbmf;->j:Landroid/media/ImageReader;

    :cond_e
    iput-object v6, p0, Lbmf;->t:Lbob;

    iput-object v6, p0, Lbmf;->u:Lbob;

    iput v5, p0, Lbmf;->b:I

    iput-object v6, p0, Lbmf;->c:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lbmf;->a(I)V

    goto :goto_1

    :sswitch_c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lbna;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lbmf;->q:Lbmh;

    iget-object v4, v4, Lbmh;->c:Lbnx;

    invoke-virtual {v4}, Lbnx;->a()I

    move-result v4

    if-le v4, v7, :cond_f

    invoke-virtual {p0, v2}, Lbnz;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lbna;->d(ILjava/lang/String;)V

    goto :goto_1

    :cond_f
    iput-object v1, p0, Lbmf;->a:Lbna;

    iput v2, p0, Lbmf;->b:I

    iget-object v1, p0, Lbmf;->q:Lbmh;

    iget-object v1, v1, Lbmh;->h:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lbmf;->c:Ljava/lang/String;

    sget-object v1, Lbmh;->a:Lboc;

    const-string v4, "Opening camera index %d (id %s) with camera2 API"

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v5

    iget-object v2, p0, Lbmf;->c:Ljava/lang/String;

    aput-object v2, v8, v7

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v1}, Lbod;->f(Lboc;)V

    iget-object v1, p0, Lbmf;->c:Ljava/lang/String;

    if-nez v1, :cond_10

    iget-object v1, p0, Lbmf;->a:Lbna;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lbna;->a(I)V

    goto :goto_1

    :cond_10
    iget-object v2, p0, Lbmf;->q:Lbmh;

    iget-object v2, v2, Lbmh;->e:Landroid/hardware/camera2/CameraManager;

    iget-object v4, p0, Lbmf;->x:Landroid/hardware/camera2/CameraDevice$StateCallback;

    invoke-virtual {v2, v1, v4, p0}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_11
    :goto_1
    invoke-static {p1}, Lbnh;->a(Landroid/os/Message;)V

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_5
    move-exception v1

    goto :goto_3

    :goto_2
    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unimplemented CameraProxy message="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :goto_3
    if-eq v0, v3, :cond_12

    :try_start_c
    iget-object v2, p0, Lbmf;->d:Landroid/hardware/camera2/CameraDevice;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraDevice;->close()V

    iput-object v6, p0, Lbmf;->d:Landroid/hardware/camera2/CameraDevice;

    goto :goto_4

    :cond_12
    iget-object v2, p0, Lbmf;->d:Landroid/hardware/camera2/CameraDevice;

    if-nez v2, :cond_14

    if-ne v0, v7, :cond_13

    iget-object v0, p0, Lbmf;->a:Lbna;

    if-eqz v0, :cond_11

    iget v1, p0, Lbmf;->b:I

    invoke-virtual {p0, v1}, Lbnz;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lbna;->c(ILjava/lang/String;)V

    goto :goto_1

    :cond_13
    sget-object v0, Lbmh;->a:Lboc;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot handle message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCamera is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbod;->c(Lboc;Ljava/lang/String;)V

    goto :goto_1

    :cond_14
    :goto_4
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lbmf;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lbnz;->c(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbmf;->q:Lbmh;

    iget-object v4, v3, Lbmh;->g:Lbnv;

    check-cast v1, Ljava/lang/RuntimeException;

    iget-object v3, v3, Lbmh;->c:Lbnx;

    invoke-virtual {v3}, Lbnx;->a()I

    move-result v3

    invoke-virtual {v4, v1, v2, v0, v3}, Lbnv;->b(Ljava/lang/RuntimeException;Ljava/lang/String;II)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_1

    :goto_5
    invoke-static {p1}, Lbnh;->a(Landroid/os/Message;)V

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_c
        0x2 -> :sswitch_b
        0x3 -> :sswitch_c
        0x65 -> :sswitch_a
        0x66 -> :sswitch_9
        0x67 -> :sswitch_8
        0xcc -> :sswitch_7
        0x12d -> :sswitch_6
        0x12e -> :sswitch_5
        0x12f -> :sswitch_4
        0x131 -> :sswitch_3
        0x1f6 -> :sswitch_2
        0x1f7 -> :sswitch_1
        0x259 -> :sswitch_0
    .end sparse-switch
.end method
