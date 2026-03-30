.class public final Lffw;
.super Lfhq;
.source "PG"


# instance fields
.field public a:Lfgr;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Landroid/hardware/camera2/CameraDevice;

.field public e:Lffp;

.field public f:Landroid/graphics/Rect;

.field public g:Z

.field public h:Landroid/hardware/camera2/CameraCaptureSession;

.field public i:Landroid/media/ImageReader;

.field public j:Lfgw;

.field public k:Lfgp;

.field public l:Lffx;

.field public m:Lfgq;

.field public n:I

.field public final o:Lffv;

.field final synthetic p:Lffy;

.field public q:Lpat;

.field private s:I

.field private t:Lfhs;

.field private u:Lfhs;

.field private v:Landroid/graphics/SurfaceTexture;

.field private w:Landroid/view/Surface;

.field private final x:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private final y:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;


# direct methods
.method private final 23ce148e54b083367f51e25c7971761em()V
    .locals 3

    goto/32 :goto_d

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    const v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    :try_start_0
    iget-object v0, p0, Lffw;->h:Landroid/hardware/camera2/CameraCaptureSession;

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    iput-object v0, p0, Lffw;->h:Landroid/hardware/camera2/CameraCaptureSession;

    nop

    nop

    nop
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_8
    sget-object v1, Lffy;->a:Lfht;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v1, v2, v0}, Lfhu;->b(Lfht;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_a
    goto/32 :goto_f

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    const-string v2, "Failed to close existing camera capture session"

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_a

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x4

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, v0}, Lffw;->a(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 7ecc92917e9c4556cc19f457ddc41af8m(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Lfhs;->a()I

    move-result v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "Failed to create camera capture session"

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v1, p0, Lffw;->t:Lfhs;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_6
    iget-object p1, p0, Lffw;->u:Lfhs;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lffw;->w:Landroid/view/Surface;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Lfho;->a()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget-object p0, Lffy;->a:Lfht;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lffw;->v:Landroid/graphics/SurfaceTexture;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_12

    nop

    nop

    :goto_e
    const/4 v2, 0x1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {p1, v0, p0}, Lfhu;->b(Lfht;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_29

    nop

    nop

    :goto_10
    if-eq p1, v0, :cond_1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lffw;->h:Landroid/hardware/camera2/CameraCaptureSession;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    if-lt v0, v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_14
    const/16 v1, 0x100

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_15
    if-nez p1, :cond_3

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    nop

    :goto_16
    const-string p1, "Ignoring texture setting at inappropriate time"

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_17
    invoke-static {p0, p1}, Lfhu;->c(Lfht;Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p1, p0, Lffw;->i:Landroid/media/ImageReader;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-object v0, p0, Lffw;->w:Landroid/view/Surface;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lffw;->p:Lffy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Lfhs;->b()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    :goto_1f
    invoke-virtual {p1}, Landroid/media/ImageReader;->close()V

    :goto_20
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    sget-object p0, Lffy;->a:Lfht;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_22
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :goto_24
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_25
    new-instance v0, Landroid/view/Surface;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_26
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v1}, Lfhs;->a()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p1}, Lfhs;->b()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_29
    return-void

    nop

    nop

    :goto_2a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p1, v0, v1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {p1, v0, v1, v2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iput-object p1, p0, Lffw;->i:Landroid/media/ImageReader;

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lffw;->d:Landroid/hardware/camera2/CameraDevice;

    nop

    nop

    iget-object v1, p0, Lffw;->w:Landroid/view/Surface;

    nop

    nop

    invoke-virtual {p1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    filled-new-array {v1, p1}, [Landroid/view/Surface;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    nop

    nop

    iget-object v1, p0, Lffw;->y:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1, v1, p0}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_37

    nop

    nop

    :goto_2e
    invoke-direct {p0}, Lffw;->23ce148e54b083367f51e25c7971761em()V

    :goto_2f
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    sget-object p1, Lffy;->a:Lfht;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {p0}, Lfhu;->f(Lfht;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v0, p0, Lffw;->t:Lfhs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const v1, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v0, v0, Lffy;->c:Lfho;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_36
    iget-object v0, p0, Lffw;->u:Lfhs;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    return-void

    nop

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const v0, 0x1d

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_39
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iput-object p1, p0, Lffw;->v:Landroid/graphics/SurfaceTexture;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lffy;Landroid/os/Looper;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lffw;->p:Lffy;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lffw;->y:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Lffw;->s:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    iput p1, p0, Lffw;->n:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p1, p0}, Lfft;-><init>(Lffw;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, p2}, Lfhq;-><init>(Landroid/os/Looper;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance p1, Lfft;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Lffw;->o:Lffv;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    new-instance p1, Lffs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p1, p0}, Lffu;-><init>(Lffw;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    new-instance p1, Lffu;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    invoke-direct {p1, p0}, Lffs;-><init>(Lffw;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object p1, p0, Lffw;->x:Landroid/hardware/camera2/CameraDevice$StateCallback;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method private final da190e616797844b591057d0190e7728m(Lfga;)V
    .locals 16

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/16 v9, 0x10

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto :goto_8

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/16 v2, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_5
    move-object v2, v14

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    :goto_6
    move-object v2, v8

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v5, 0x0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v4, Landroid/util/Size;

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1, v2, v4}, Lfga;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_106

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_105

    nop

    nop

    :goto_d
    if-ne v2, v7, :cond_0

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v6, v1, Lfga;->z:Lfhs;

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_f
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_10
    iget-object v5, v1, Lfga;->r:Lfhc;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v9, "Unable to convert to API 2 focus mode: "

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-long/2addr v4, v6

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_13
    invoke-virtual {v1, v2, v4}, Lfga;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_da

    nop

    nop

    nop

    :goto_14
    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    :cond_1
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v1}, Lfho;->a()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_80

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_1c
    iget v4, v1, Lfga;->q:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return-void

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v2, v1, Lfga;->z:Lfhs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    :goto_1f
    move-object v2, v10

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-ge v1, v9, :cond_2

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_0
    iget-object v1, v0, Lffw;->h:Landroid/hardware/camera2/CameraCaptureSession;

    nop

    nop

    nop

    nop

    iget-object v2, v0, Lffw;->q:Lpat;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v0, Lffw;->d:Landroid/hardware/camera2/CameraDevice;

    nop

    nop

    nop

    nop

    iget-object v4, v0, Lffw;->w:Landroid/view/Surface;

    nop

    nop

    nop

    nop

    filled-new-array {v4}, [Landroid/view/Surface;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    invoke-virtual {v2, v3, v5, v4}, Lpat;->e(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    nop

    iget-object v3, v0, Lffw;->o:Lffv;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2, v3, v0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_50

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_50

    nop

    nop

    :pswitch_1
    goto/32 :goto_b6

    nop

    nop

    :goto_24
    if-ne v2, v13, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_f5

    nop

    nop

    :goto_25
    const/16 v2, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_26
    iput-wide v4, v3, Lpat;->a:J

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_72

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_44

    nop

    nop

    :goto_2a
    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const v0, 0x14

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_c5

    nop

    :goto_2d
    goto/16 :goto_50

    nop

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_100

    nop

    nop

    nop

    :goto_2e
    if-lt v1, v11, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    :cond_5
    goto/32 :goto_119

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v2, v1, Lfga;->s:Lfhd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_31
    invoke-static {v7}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_30

    nop

    nop

    :goto_32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    goto/32 :goto_121

    nop

    nop

    :goto_33
    iget-object v2, v1, Lfga;->f:Ljava/util/List;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    move-object v2, v8

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v7, v9, v2}, Lpat;->h(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v7, v1, Lfga;->s:Lfhd;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_37
    move-object v2, v4

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v2, v9, v5}, Lpat;->h(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-static {v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_50

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_3b
    const/4 v4, 0x0

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_3c
    move-object v2, v8

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_3d
    invoke-virtual {v1, v2, v4}, Lfga;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_3e
    goto/32 :goto_92

    nop

    nop

    nop

    :goto_3f
    const/16 v11, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    :goto_40
    goto/16 :goto_80

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const/16 v2, 0xa

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_43
    invoke-static {v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    move-object v2, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v1, v1, Lffy;->c:Lfho;

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_46
    iget-object v5, v1, Lfga;->u:Lfhf;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const-string v6, "Unable to convert to API 2 white balance: "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_49
    new-instance v4, Landroid/util/Range;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_4c
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_4d
    invoke-virtual {v13, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v2}, Lfhf;->ordinal()I

    move-result v2

    nop

    nop

    nop

    packed-switch v2, :pswitch_data_1

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_4f
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_dd

    nop

    nop

    :goto_51
    goto :goto_50

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_52
    iget-boolean v4, v1, Lfga;->x:Z

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    :goto_53
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_54
    invoke-virtual {v1, v2, v5}, Lfga;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_83

    nop

    nop

    :goto_55
    invoke-direct {v4, v5, v6}, Landroid/util/Size;-><init>(II)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    move-object v6, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    if-nez v2, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    :goto_58
    goto/16 :goto_77

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_95

    nop

    nop

    nop

    :goto_59
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_5a
    const/4 v9, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_5b
    iget-boolean v4, v1, Lfga;->w:Z

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    move-object v2, v4

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_5d
    move-object v6, v12

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_5e
    iget-object v5, v1, Lfga;->z:Lfhs;

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_5f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_60
    goto/16 :goto_50

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v2, v5, v4}, Lpat;->h(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_62
    iget v5, v1, Lfga;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iget-object v2, v1, Lfga;->e:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    goto/16 :goto_109

    nop

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_108

    nop

    nop

    nop

    nop

    :goto_66
    move-object v2, v6

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    move-object v5, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    :goto_69
    move-object/from16 v1, p1

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {v9, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iget-object v2, v1, Lfga;->c:Lpat;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {v2}, Lfhd;->ordinal()I

    move-result v2

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    goto/16 :goto_50

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v1, v2}, Lfga;->c(Ljava/util/List;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    iget-object v2, v1, Lfga;->c:Lpat;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    :goto_71
    goto/16 :goto_129

    nop

    nop

    nop

    :goto_72
    goto/32 :goto_128

    nop

    nop

    nop

    nop

    :goto_73
    move-object v2, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    :goto_75
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_76
    goto/16 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_77
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_78
    sget-object v2, Lfga;->a:Lfht;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_79
    invoke-static {v2, v5}, Lfhu;->c(Lfht;Ljava/lang/String;)V

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :goto_7a
    goto/16 :goto_109

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_56

    nop

    nop

    :goto_7b
    if-ne v2, v9, :cond_7

    nop

    goto/32 :goto_b8

    nop

    nop

    :cond_7
    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-virtual {v1, v4, v2}, Lfga;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_7d
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    goto/16 :goto_50

    nop

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_37

    nop

    nop

    :goto_7f
    const/4 v2, 0x0

    nop

    :goto_80
    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_81
    iget-byte v4, v1, Lfga;->n:B

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    :goto_82
    iget-object v15, v1, Lfga;->c:Lpat;

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    iget-object v2, v1, Lfga;->c:Lpat;

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    :goto_84
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    const-string v2, "Failed to apply updated request settings"

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_86
    iget-object v1, v1, Lffy;->c:Lfho;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_87
    return-void

    nop

    nop

    nop

    :goto_88
    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_89
    const/16 v2, 0x9

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_8a
    iget-object v7, v1, Lfga;->c:Lpat;

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    :goto_8b
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    goto/16 :goto_50

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_73

    nop

    nop

    nop

    :goto_8d
    invoke-virtual {v5}, Lfhs;->b()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_8e
    const-string v15, "Unable to convert to API 2 flash mode: "

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    :goto_8f
    invoke-virtual {v6}, Lfhs;->a()I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_90
    if-ne v2, v7, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_7b

    nop

    nop

    :goto_91
    const/4 v5, 0x0

    nop

    goto/32 :goto_e5

    nop

    nop

    :goto_92
    iget-object v2, v1, Lfga;->c:Lpat;

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    :goto_93
    invoke-virtual {v1}, Lfho;->a()I

    move-result v1

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_94
    if-nez v2, :cond_9

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_fe

    nop

    nop

    nop

    :goto_95
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    :goto_96
    invoke-static {v2, v13}, Lfhu;->c(Lfht;Ljava/lang/String;)V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_97
    const/4 v7, 0x7

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_98
    iget-object v4, v3, Lpat;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    :goto_99
    const/4 v13, 0x1

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    :goto_9b
    iget-object v5, v1, Lfga;->b:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    goto/16 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_9f
    iget-boolean v5, v1, Lfga;->v:Z

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    :goto_a0
    const/4 v7, 0x3

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    invoke-virtual {v2, v4, v5}, Lpat;->h(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    goto/16 :goto_80

    nop

    :goto_a3
    goto/32 :goto_116

    nop

    nop

    :goto_a4
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    :goto_a7
    sget-object v2, Lfga;->a:Lfht;

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    if-nez v2, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    :cond_a
    goto/32 :goto_4e

    nop

    nop

    :goto_a9
    goto/16 :goto_109

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_ac
    iget-wide v4, v3, Lpat;->a:J

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    :goto_ad
    move-object v6, v8

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    :goto_af
    iget-object v1, v0, Lffw;->p:Lffy;

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_b0
    invoke-virtual {v1, v2, v4}, Lfga;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_11c

    nop

    nop

    nop

    :goto_b1
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_b2
    goto/16 :goto_109

    nop

    nop

    :pswitch_c
    goto/32 :goto_f4

    nop

    nop

    nop

    :goto_b3
    const/4 v11, 0x2

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_b4
    const/16 v2, 0xe

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_b5
    if-ne v2, v11, :cond_b

    nop

    goto/32 :goto_41

    nop

    :cond_b
    goto/32 :goto_d

    nop

    nop

    :goto_b6
    sget v2, Lfhr;->a:I

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    :goto_b7
    goto/16 :goto_129

    nop

    :goto_b8
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    :goto_ba
    iget-object v2, v1, Lfga;->u:Lfhf;

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_bb
    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    sget-object v2, Lfga;->a:Lfht;

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_bd
    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    :goto_be
    iput-object v2, v0, Lffw;->t:Lfhs;

    nop

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    invoke-virtual {v13, v15, v2}, Lpat;->h(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    goto/16 :goto_65

    nop

    nop

    :pswitch_d
    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_c1
    const-wide/16 v6, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_c2
    goto/16 :goto_109

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_c3
    sget-object v15, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_c4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_c7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    invoke-static {v1, v2, v0}, Lfhu;->b(Lfht;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_87

    nop

    nop

    :goto_c9
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    invoke-static {v15}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_125

    nop

    nop

    :goto_cb
    move-object v6, v10

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    goto/16 :goto_50

    nop

    :pswitch_f
    goto/32 :goto_e1

    nop

    nop

    :goto_cd
    goto/16 :goto_80

    nop

    nop

    nop

    nop

    :goto_ce
    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_cf
    iget-object v2, v2, Lpat;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    if-ne v2, v7, :cond_c

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    const/4 v5, 0x5

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    iget-object v15, v1, Lfga;->t:Lfhe;

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_d3
    invoke-virtual {v2}, Lfhc;->ordinal()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_d4
    invoke-virtual {v2, v5, v6}, Lpat;->h(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_d5
    iget-boolean v6, v1, Lfga;->v:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    const-string v13, "Unable to convert to API 2 scene mode: "

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    invoke-virtual {v1, v2, v4}, Lfga;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    if-ne v2, v3, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_d
    goto/32 :goto_98

    nop

    nop

    :goto_da
    goto/16 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_db
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_dc
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_dd
    iget-object v13, v1, Lfga;->c:Lpat;

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    :goto_de
    move-object v2, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_df
    invoke-interface {v4, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    const/16 v2, 0xf

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_e2
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_e3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    move-object v2, v14

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_e5
    invoke-virtual {v2, v4, v5}, Lpat;->h(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_e6
    invoke-static {v2, v5}, Lfhu;->c(Lfht;Ljava/lang/String;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    goto/16 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    goto/32 :goto_fc

    nop

    nop

    nop

    :goto_e9
    const/4 v5, 0x6

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    iget-object v2, v1, Lfga;->t:Lfhe;

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    iget v6, v1, Lfga;->i:I

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    invoke-virtual {v1, v2, v4}, Lfga;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_f0
    invoke-virtual {v1, v4, v2}, Lfga;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_f1
    iget-object v1, v0, Lffw;->p:Lffy;

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    goto/16 :goto_50

    nop

    nop

    nop

    nop

    nop

    :pswitch_10
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    if-ne v2, v5, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    :cond_e
    goto/32 :goto_78

    nop

    nop

    nop

    :goto_f4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_f5
    if-ne v2, v11, :cond_f

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_f6
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    if-nez v2, :cond_10

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_c9

    nop

    nop

    :goto_f8
    goto/16 :goto_50

    nop

    :pswitch_11
    goto/32 :goto_12c

    nop

    nop

    nop

    :goto_f9
    invoke-virtual {v15, v9, v2}, Lpat;->h(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_101

    nop

    nop

    nop

    :goto_fa
    goto/16 :goto_109

    nop

    nop

    nop

    :pswitch_12
    goto/32 :goto_123

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    goto/16 :goto_50

    nop

    :pswitch_13
    goto/32 :goto_1f

    nop

    nop

    :goto_fc
    move-object v2, v10

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_fd
    if-ne v2, v5, :cond_11

    nop

    goto/32 :goto_29

    nop

    :cond_11
    goto/32 :goto_10e

    nop

    nop

    nop

    :goto_fe
    if-ne v2, v13, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    move-object v5, v4

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_100
    const/16 v2, 0xb

    nop

    goto/32 :goto_eb

    nop

    nop

    :goto_101
    iget-object v2, v1, Lfga;->c:Lpat;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_102
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    :goto_103
    const/4 v7, 0x4

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_104
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_105
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    :goto_106
    goto/32 :goto_61

    nop

    nop

    nop

    :goto_107
    move-object v5, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    :goto_108
    const/4 v6, 0x0

    nop

    nop

    nop

    :goto_109
    :pswitch_14
    goto/32 :goto_12d

    nop

    nop

    nop

    :goto_10a
    invoke-virtual {v0, v1}, Lffw;->a(I)V

    :goto_10b
    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    :goto_10c
    goto/16 :goto_8

    nop

    nop

    :goto_10d
    goto/32 :goto_de

    nop

    nop

    nop

    :goto_10e
    sget-object v2, Lfga;->a:Lfht;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_10f
    invoke-virtual/range {p1 .. p1}, Lfhn;->e()Lfhs;

    move-result-object v1

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    :goto_110
    goto/16 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_111
    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    nop

    :goto_112
    invoke-static {v2, v7}, Lfhu;->c(Lfht;Ljava/lang/String;)V

    goto/32 :goto_110

    nop

    nop

    :goto_113
    goto/16 :goto_8

    nop

    nop

    :goto_114
    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_115
    invoke-virtual/range {p1 .. p1}, Lfhn;->f()Lfhs;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    :goto_116
    move-object v2, v6

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_117
    goto :goto_109

    nop

    nop

    nop

    :pswitch_15
    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_118
    invoke-virtual {v15, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    :goto_119
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    :goto_11a
    goto/16 :goto_50

    nop

    :pswitch_16
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11b
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_11c
    iget-object v2, v1, Lfga;->r:Lfhc;

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_11
        :pswitch_3
        :pswitch_f
        :pswitch_6
        :pswitch_1
        :pswitch_13
        :pswitch_4
        :pswitch_18
        :pswitch_7
        :pswitch_17
        :pswitch_16
        :pswitch_0
        :pswitch_2
        :pswitch_10
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_c
        :pswitch_14
        :pswitch_e
        :pswitch_15
        :pswitch_12
        :pswitch_b
        :pswitch_d
    .end packed-switch

    :goto_11e
    goto/32 :goto_aa

    nop

    nop

    :goto_11f
    move-object v2, v12

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_120
    invoke-virtual {v1, v2}, Lfga;->c(Ljava/util/List;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_121
    goto/16 :goto_50

    nop

    nop

    nop

    :pswitch_17
    goto/32 :goto_3c

    nop

    nop

    :goto_122
    if-nez v2, :cond_13

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_126

    nop

    nop

    nop

    :goto_123
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    nop

    :goto_124
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_125
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :goto_126
    invoke-virtual {v2}, Lfhe;->ordinal()I

    move-result v2

    nop

    nop

    nop

    nop

    packed-switch v2, :pswitch_data_0

    :pswitch_18
    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_127
    sget-object v1, Lffy;->a:Lfht;

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_128
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_129
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12a
    if-nez v6, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    iput-object v1, v0, Lffw;->u:Lfhs;

    nop

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    :goto_12c
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12d
    iget-object v2, v1, Lfga;->c:Lpat;

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_12e
    invoke-virtual {v1, v2, v4}, Lfga;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_12f
    iget-object v3, v0, Lffw;->q:Lpat;

    nop

    goto/32 :goto_84

    nop

    nop
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    const-wide/16 v0, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_3
    const/4 p1, 0x0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, p1}, Lfho;->c(I)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-wide v0, p0, Lffu;->c:J

    nop

    :goto_7
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lffw;->o:Lffv;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_9
    if-ne v0, p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_15

    nop

    nop

    :goto_c
    iget-object v0, p0, Lffw;->p:Lffy;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    iput-wide v0, p0, Lffu;->b:J

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, v0, Lffy;->c:Lfho;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Lfho;->a()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_13
    iput p1, p0, Lffw;->n:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, v0, Lffy;->c:Lfho;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lffw;->p:Lffy;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 p1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_18
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_19
    const/16 v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1a
    if-lt p1, v0, :cond_2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput p1, p0, Lffu;->a:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast p0, Lffu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()Lfhn;
    .locals 4

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    const v1, 0x7

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    :goto_3
    sget-object p0, Lffy;->a:Lfht;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    return-object v0

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
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

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    :try_start_0
    new-instance v0, Lfga;

    nop

    nop

    nop

    iget-object v1, p0, Lffw;->d:Landroid/hardware/camera2/CameraDevice;

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lffw;->f:Landroid/graphics/Rect;

    nop

    nop

    iget-object v3, p0, Lffw;->t:Lfhs;

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lffw;->u:Lfhs;

    nop

    invoke-direct {v0, v1, v2, v3, p0}, Lfga;-><init>(Landroid/hardware/camera2/CameraDevice;Landroid/graphics/Rect;Lfhs;Lfhs;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    const-string v0, "Unable to query camera device to build settings representation"

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_c
    invoke-static {p0, v0}, Lfhu;->a(Lfht;Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_e
    const v0, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_0
    if-ne v2, v6, :cond_0

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_30

    nop

    :catch_0
    move-exception v1

    nop

    nop

    :try_start_0
    sget-object v6, Lffy;->a:Lfht;

    nop

    const-string v7, "Unable to lock autofocus"

    nop

    invoke-static {v6, v7, v1}, Lfhu;->b(Lfht;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v10}, Lffw;->a(I)V

    goto/16 :goto_30

    nop

    nop

    :pswitch_0
    iget-object v1, p0, Lffw;->p:Lffy;

    nop

    nop

    nop

    iget-object v1, v1, Lffy;->c:Lfho;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lfho;->a()I

    move-result v1

    nop

    nop

    nop

    if-ge v1, v10, :cond_1

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Lffy;->a:Lfht;

    nop

    nop

    nop

    nop

    nop

    const-string v6, "Refusing to stop preview at inappropriate time"

    nop

    nop

    nop

    nop

    invoke-static {v1, v6}, Lfhu;->c(Lfht;Ljava/lang/String;)V

    goto/16 :goto_30

    nop

    nop

    nop

    :cond_1
    iget-object v1, p0, Lffw;->h:Landroid/hardware/camera2/CameraCaptureSession;

    nop

    nop

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    invoke-virtual {p0, v6}, Lffw;->a(I)V

    goto/16 :goto_30

    nop

    nop

    nop

    nop

    :pswitch_1
    iget-object v1, p0, Lffw;->p:Lffy;

    nop

    nop

    nop

    iget-object v1, v1, Lffy;->c:Lfho;

    nop

    nop

    invoke-virtual {v1}, Lfho;->a()I

    move-result v1

    nop

    nop

    if-eq v1, v6, :cond_2

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Lffy;->a:Lfht;

    nop

    nop

    nop

    const-string v6, "Refusing to start preview at inappropriate time"

    nop

    nop

    nop

    invoke-static {v1, v6}, Lfhu;->c(Lfht;Ljava/lang/String;)V

    goto/16 :goto_30

    nop

    nop

    nop

    :cond_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    nop

    check-cast v1, Lfgw;

    nop

    nop

    iput-object v1, p0, Lffw;->j:Lfgw;

    nop

    invoke-virtual {p0, v10}, Lffw;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lffw;->h:Landroid/hardware/camera2/CameraCaptureSession;

    nop

    nop

    iget-object v7, p0, Lffw;->q:Lpat;

    nop

    nop

    iget-object v8, p0, Lffw;->d:Landroid/hardware/camera2/CameraDevice;

    nop

    iget-object v9, p0, Lffw;->w:Landroid/view/Surface;

    nop

    nop

    nop

    nop

    filled-new-array {v9}, [Landroid/view/Surface;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v8, v5, v9}, Lpat;->e(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v7

    nop

    nop

    nop

    nop

    iget-object v8, p0, Lffw;->o:Lffv;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v7, v8, p0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    const/16 v9, 0x20

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :cond_3
    goto/32 :goto_36

    nop

    :goto_4
    iget v3, p1, Landroid/os/Message;->what:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_5
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    const/16 v10, 0x10

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_30

    nop

    nop

    nop

    nop

    :catch_1
    move-exception v1

    nop

    :try_start_2
    sget-object v7, Lffy;->a:Lfht;

    nop

    nop

    nop

    nop

    nop

    const-string v8, "Unable to start preview"

    nop

    invoke-static {v7, v8, v1}, Lfhu;->d(Lfht;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v6}, Lffw;->a(I)V

    goto/16 :goto_30

    nop

    nop

    nop

    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Landroid/graphics/SurfaceTexture;

    nop

    nop

    nop

    nop

    invoke-direct {p0, v1}, Lffw;->7ecc92917e9c4556cc19f457ddc41af8m(Landroid/graphics/SurfaceTexture;)V

    goto/16 :goto_30

    nop

    nop

    nop

    :goto_a
    iget-object v1, p0, Lffw;->q:Lpat;

    nop

    nop

    nop

    nop

    nop

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    nop

    iget v7, p1, Landroid/os/Message;->arg1:I

    nop

    nop

    nop

    nop

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v6, v7}, Lpat;->h(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_30

    nop

    nop

    :goto_b
    iget-object v1, p0, Lffw;->q:Lpat;

    nop

    nop

    nop

    nop

    nop

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    iget v8, p1, Landroid/os/Message;->arg2:I

    nop

    nop

    nop

    nop

    nop

    if-lez v8, :cond_4

    nop

    nop

    iget-object v6, p0, Lffw;->e:Lffp;

    nop

    nop

    nop

    nop

    iget-object v6, v6, Lffp;->a:Lfhh;

    nop

    nop

    iget v8, p1, Landroid/os/Message;->arg1:I

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v8}, Lfhh;->d(I)I

    move-result v6

    nop

    nop

    nop

    :cond_4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v7, v6}, Lpat;->h(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Lffw;->p:Lffy;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lffy;->c:Lfho;

    nop

    invoke-virtual {v1}, Lfho;->a()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-ge v1, v10, :cond_5

    nop

    nop

    sget-object v1, Lffy;->a:Lfht;

    nop

    nop

    nop

    nop

    nop

    const-string v6, "Photos may only be taken when a preview is active"

    nop

    nop

    nop

    nop

    invoke-static {v1, v6}, Lfhu;->a(Lfht;Ljava/lang/String;)V

    goto/16 :goto_30

    nop

    :cond_5
    iget-object v1, p0, Lffw;->p:Lffy;

    nop

    iget-object v1, v1, Lffy;->c:Lfho;

    nop

    nop

    nop

    invoke-virtual {v1}, Lfho;->a()I

    move-result v1

    nop

    if-eq v1, v9, :cond_6

    nop

    sget-object v1, Lffy;->a:Lfht;

    nop

    nop

    nop

    const-string v6, "Taking a (likely blurry) photo without the lens locked"

    nop

    nop

    nop

    nop

    invoke-static {v1, v6}, Lfhu;->c(Lfht;Ljava/lang/String;)V

    :cond_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v1, Lffx;

    nop

    nop

    nop

    iget-boolean v6, p0, Lffw;->g:Z

    nop

    nop

    nop

    if-nez v6, :cond_f

    nop

    nop

    nop

    iget v6, p0, Lffw;->n:I

    nop

    if-ne v6, v3, :cond_7

    nop

    nop

    iget-object v6, p0, Lffw;->q:Lpat;

    nop

    nop

    nop

    nop

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    nop

    nop

    invoke-virtual {v6, v8, v7}, Lpat;->g(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v6

    nop

    if-nez v6, :cond_7

    nop

    nop

    nop

    nop

    iget-object v6, p0, Lffw;->q:Lpat;

    nop

    nop

    nop

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v7, v8}, Lpat;->g(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    if-nez v6, :cond_7

    nop

    nop

    nop

    goto/16 :goto_1e

    nop

    nop

    nop

    :cond_7
    sget-object v6, Lffy;->a:Lfht;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6}, Lfhu;->f(Lfht;)V

    new-instance v6, Lffr;

    nop

    nop

    nop

    nop

    invoke-direct {v6, p0, v1}, Lffr;-><init>(Lffw;Lffx;)V

    new-instance v1, Lpat;

    nop

    iget-object v7, p0, Lffw;->q:Lpat;

    nop

    invoke-direct {v1, v7}, Lpat;-><init>(Lpat;)V

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v7, v8}, Lpat;->h(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v7, p0, Lffw;->h:Landroid/hardware/camera2/CameraCaptureSession;

    nop

    nop

    iget-object v8, p0, Lffw;->d:Landroid/hardware/camera2/CameraDevice;

    nop

    nop

    nop

    iget-object v9, p0, Lffw;->w:Landroid/view/Surface;

    nop

    nop

    nop

    nop

    nop

    filled-new-array {v9}, [Landroid/view/Surface;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v8, v5, v9}, Lpat;->e(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    nop

    nop

    nop

    invoke-virtual {v7, v1, v6, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_30

    nop

    nop

    nop

    nop

    :catch_2
    move-exception v1

    nop

    nop

    nop

    nop

    nop

    :try_start_4
    sget-object v6, Lffy;->a:Lfht;

    nop

    nop

    nop

    nop

    nop

    const-string v7, "Unable to cancel autofocus"

    nop

    invoke-static {v6, v7, v1}, Lfhu;->b(Lfht;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v9}, Lffw;->a(I)V

    goto/16 :goto_30

    nop

    nop

    :pswitch_3
    iget v1, p0, Lffw;->s:I

    nop

    nop

    nop

    if-lez v1, :cond_8

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Lffy;->a:Lfht;

    nop

    invoke-static {v1}, Lfhu;->g(Lfht;)V

    goto/16 :goto_30

    nop

    nop

    nop

    nop

    :cond_8
    iget-object v1, p0, Lffw;->p:Lffy;

    nop

    nop

    nop

    iget-object v1, v1, Lffy;->c:Lfho;

    nop

    nop

    nop

    invoke-virtual {v1}, Lfho;->a()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-ge v1, v10, :cond_9

    nop

    nop

    nop

    nop

    sget-object v1, Lffy;->a:Lfht;

    nop

    nop

    nop

    nop

    nop

    const-string v6, "Ignoring attempt to autofocus without preview"

    nop

    nop

    invoke-static {v1, v6}, Lfhu;->c(Lfht;Ljava/lang/String;)V

    goto/16 :goto_30

    nop

    nop

    :cond_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    nop

    check-cast v1, Lfgp;

    nop

    nop

    nop

    nop

    new-instance v6, Lffq;

    nop

    nop

    nop

    invoke-direct {v6, p0, v1}, Lffq;-><init>(Lffw;Lfgp;)V

    invoke-virtual {p0, v9}, Lffw;->a(I)V

    new-instance v1, Lpat;

    nop

    nop

    nop

    iget-object v7, p0, Lffw;->q:Lpat;

    nop

    nop

    nop

    invoke-direct {v1, v7}, Lpat;-><init>(Lpat;)V

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    nop

    nop

    invoke-virtual {v1, v7, v8}, Lpat;->h(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v7, p0, Lffw;->h:Landroid/hardware/camera2/CameraCaptureSession;

    nop

    iget-object v8, p0, Lffw;->d:Landroid/hardware/camera2/CameraDevice;

    nop

    nop

    nop

    nop

    iget-object v9, p0, Lffw;->w:Landroid/view/Surface;

    nop

    filled-new-array {v9}, [Landroid/view/Surface;

    move-result-object v9

    nop

    nop

    nop

    invoke-virtual {v1, v8, v5, v9}, Lpat;->e(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v1, v6, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_5
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_f
    invoke-super {p0, p1}, Lfhq;->handleMessage(Landroid/os/Message;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_10
    if-ne v2, v8, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v0, "Cannot handle message "

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p1}, Lfgy;->a(Landroid/os/Message;)V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_13
    if-ne v2, v8, :cond_b

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_14
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-ne v2, v7, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v2}, Lfhu;->g(Lfht;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sget-object v2, Lffy;->a:Lfht;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_18
    if-ne v2, v7, :cond_d

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_19
    const-string v1, "Unimplemented CameraProxy message="

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1a
    if-ne v2, v3, :cond_e

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_34

    nop

    nop

    :goto_1b
    goto/16 :goto_30

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/16 v7, 0x1f6

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1d
    goto/16 :goto_30

    nop

    nop

    nop

    nop

    :catch_3
    move-exception v1

    nop

    nop

    nop

    nop

    nop

    :try_start_6
    sget-object v6, Lffy;->a:Lfht;

    nop

    nop

    nop

    nop

    nop

    const-string v7, "Unable to run autoexposure and perform capture"

    nop

    invoke-static {v6, v7, v1}, Lfhu;->b(Lfht;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_f
    :goto_1e
    sget-object v6, Lffy;->a:Lfht;

    nop

    nop

    invoke-static {v6}, Lfhu;->f(Lfht;)V

    iget-object v6, p0, Lffw;->i:Landroid/media/ImageReader;

    nop

    invoke-virtual {v6, v1, p0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v6, p0, Lffw;->h:Landroid/hardware/camera2/CameraCaptureSession;

    nop

    nop

    nop

    nop

    nop

    iget-object v7, p0, Lffw;->q:Lpat;

    nop

    nop

    nop

    nop

    nop

    iget-object v8, p0, Lffw;->d:Landroid/hardware/camera2/CameraDevice;

    nop

    nop

    iget-object v9, p0, Lffw;->i:Landroid/media/ImageReader;

    nop

    nop

    nop

    invoke-virtual {v9}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v9

    nop

    nop

    nop

    nop

    filled-new-array {v9}, [Landroid/view/Surface;

    move-result-object v9

    nop

    invoke-virtual {v7, v8, v3, v9}, Lpat;->e(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v7, v1, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_7
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1f
    const/16 v6, 0x8

    nop

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    :try_start_8
    new-instance v6, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    nop

    new-instance v7, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    nop

    nop

    nop

    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v1, Lfgq;

    nop

    nop

    nop

    nop

    nop

    iput-object v1, p0, Lffw;->m:Lfgq;

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_30

    nop

    nop

    nop

    nop

    :pswitch_5
    iget v1, p0, Lffw;->s:I

    nop

    add-int/2addr v1, v5

    nop

    nop

    nop

    nop

    nop

    iput v1, p0, Lffw;->s:I

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lffw;->p:Lffy;

    nop

    nop

    iget-object v1, v1, Lffy;->c:Lfho;

    nop

    invoke-virtual {v1}, Lfho;->a()I

    move-result v1

    nop

    nop

    nop

    if-ge v1, v10, :cond_10

    nop

    sget-object v1, Lffy;->a:Lfht;

    nop

    nop

    const-string v6, "Ignoring attempt to release focus lock without preview"

    nop

    nop

    invoke-static {v1, v6}, Lfhu;->c(Lfht;Ljava/lang/String;)V

    goto/16 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_10
    invoke-virtual {p0, v10}, Lffw;->a(I)V

    new-instance v1, Lpat;

    nop

    nop

    nop

    nop

    iget-object v6, p0, Lffw;->q:Lpat;

    nop

    nop

    nop

    nop

    invoke-direct {v1, v6}, Lpat;-><init>(Lpat;)V

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v6, v7}, Lpat;->h(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget-object v6, p0, Lffw;->h:Landroid/hardware/camera2/CameraCaptureSession;

    nop

    iget-object v7, p0, Lffw;->d:Landroid/hardware/camera2/CameraDevice;

    nop

    nop

    nop

    nop

    iget-object v8, p0, Lffw;->w:Landroid/view/Surface;

    nop

    nop

    nop

    filled-new-array {v8}, [Landroid/view/Surface;

    move-result-object v8

    nop

    invoke-virtual {v1, v7, v5, v8}, Lpat;->e(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    nop

    nop

    nop

    invoke-virtual {v6, v1, v4, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_9
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_20
    throw p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12d
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :goto_21
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_22
    const/16 v8, 0x259

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_30

    nop

    nop

    nop

    nop

    nop

    :catch_4
    move-exception v1

    nop

    :try_start_a
    sget-object v6, Lffy;->a:Lfht;

    nop

    nop

    nop

    const-string v7, "Unable to initiate immediate capture"

    nop

    nop

    nop

    invoke-static {v6, v7, v1}, Lfhu;->b(Lfht;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    nop

    nop

    :goto_24
    iget v1, p0, Lffw;->s:I

    nop

    nop

    add-int/lit8 v1, v1, -0x1

    nop

    nop

    iput v1, p0, Lffw;->s:I

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_30

    nop

    nop

    nop

    :goto_25
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lfga;

    nop

    nop

    nop

    nop

    invoke-direct {p0, v1}, Lffw;->da190e616797844b591057d0190e7728m(Lfga;)V

    goto/16 :goto_30

    nop

    nop

    nop

    :goto_26
    iget-object v1, p0, Lffw;->p:Lffy;

    nop

    nop

    nop

    iget-object v1, v1, Lffy;->c:Lfho;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lfho;->a()I

    move-result v1

    nop

    nop

    if-ne v1, v5, :cond_11

    nop

    sget-object v1, Lffy;->a:Lfht;

    nop

    nop

    nop

    nop

    nop

    const-string v6, "Ignoring release at inappropriate time"

    nop

    invoke-static {v1, v6}, Lfhu;->c(Lfht;Ljava/lang/String;)V

    goto/16 :goto_30

    nop

    nop

    :cond_11
    iget-object v1, p0, Lffw;->h:Landroid/hardware/camera2/CameraCaptureSession;

    nop

    nop

    nop

    if-eqz v1, :cond_12

    nop

    nop

    invoke-direct {p0}, Lffw;->23ce148e54b083367f51e25c7971761em()V

    iput-object v4, p0, Lffw;->h:Landroid/hardware/camera2/CameraCaptureSession;

    nop

    :cond_12
    iget-object v1, p0, Lffw;->d:Landroid/hardware/camera2/CameraDevice;

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_13

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->close()V

    iput-object v4, p0, Lffw;->d:Landroid/hardware/camera2/CameraDevice;

    nop

    nop

    nop

    nop

    nop

    :cond_13
    iput-object v4, p0, Lffw;->e:Lffp;

    nop

    nop

    nop

    nop

    nop

    iput-object v4, p0, Lffw;->q:Lpat;

    nop

    nop

    nop

    nop

    iput-object v4, p0, Lffw;->f:Landroid/graphics/Rect;

    nop

    iget-object v1, p0, Lffw;->w:Landroid/view/Surface;

    nop

    nop

    if-eqz v1, :cond_14

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    iput-object v4, p0, Lffw;->w:Landroid/view/Surface;

    nop

    :cond_14
    iput-object v4, p0, Lffw;->v:Landroid/graphics/SurfaceTexture;

    nop

    nop

    iget-object v1, p0, Lffw;->i:Landroid/media/ImageReader;

    nop

    nop

    nop

    if-eqz v1, :cond_15

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    iput-object v4, p0, Lffw;->i:Landroid/media/ImageReader;

    nop

    nop

    :cond_15
    iput-object v4, p0, Lffw;->t:Lfhs;

    nop

    nop

    iput-object v4, p0, Lffw;->u:Lfhs;

    nop

    nop

    nop

    nop

    iput v6, p0, Lffw;->b:I

    nop

    nop

    nop

    iput-object v4, p0, Lffw;->c:Ljava/lang/String;

    nop

    invoke-virtual {p0, v5}, Lffw;->a(I)V

    goto/16 :goto_30

    nop

    :goto_27
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    nop

    check-cast v1, Lfgr;

    nop

    nop

    iget v6, p1, Landroid/os/Message;->arg1:I

    nop

    iget-object v7, p0, Lffw;->p:Lffy;

    nop

    nop

    iget-object v7, v7, Lffy;->c:Lfho;

    nop

    invoke-virtual {v7}, Lfho;->a()I

    move-result v7

    nop

    if-le v7, v5, :cond_16

    nop

    invoke-virtual {p0, v6}, Lfhq;->c(I)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v6, v7}, Lfgr;->d(ILjava/lang/String;)V

    goto/16 :goto_30

    nop

    nop

    :cond_16
    iput-object v1, p0, Lffw;->a:Lfgr;

    nop

    nop

    iput v6, p0, Lffw;->b:I

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lffw;->p:Lffy;

    nop

    nop

    iget-object v1, v1, Lffy;->h:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/lang/String;

    nop

    iput-object v1, p0, Lffw;->c:Ljava/lang/String;

    nop

    nop

    sget-object v1, Lffy;->a:Lfht;

    nop

    nop

    nop

    nop

    nop

    const-string v7, "Opening camera index %d (id %s) with camera2 API"

    nop

    nop

    nop

    nop

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    nop

    nop

    iget-object v8, p0, Lffw;->c:Ljava/lang/String;

    nop

    filled-new-array {v6, v8}, [Ljava/lang/Object;

    move-result-object v6

    nop

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v1}, Lfhu;->f(Lfht;)V

    iget-object v1, p0, Lffw;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    if-nez v1, :cond_17

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lffw;->a:Lfgr;

    nop

    nop

    iget v6, p1, Landroid/os/Message;->arg1:I

    nop

    invoke-interface {v1, v6}, Lfgr;->a(I)V

    goto/16 :goto_30

    nop

    nop

    nop

    nop

    :cond_17
    iget-object v6, p0, Lffw;->p:Lffy;

    nop

    iget-object v6, v6, Lffy;->e:Landroid/hardware/camera2/CameraManager;

    nop

    iget-object v7, p0, Lffw;->x:Landroid/hardware/camera2/CameraDevice$StateCallback;

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v1, v7, p0}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-ne v2, v8, :cond_18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/16 v8, 0x131

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/16 v6, 0x1f7

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-ne v2, v3, :cond_19

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_19
    :try_start_b
    iget-object v3, p0, Lffw;->d:Landroid/hardware/camera2/CameraDevice;

    nop

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_1a

    nop

    nop

    nop

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraDevice;->close()V

    iput-object v4, p0, Lffw;->d:Landroid/hardware/camera2/CameraDevice;

    nop

    nop

    nop

    goto :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_1a
    :goto_2e
    iget-object v3, p0, Lffw;->d:Landroid/hardware/camera2/CameraDevice;

    nop

    if-nez v3, :cond_1c

    nop

    if-ne v2, v5, :cond_1b

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lffw;->a:Lfgr;

    nop

    nop

    if-eqz v0, :cond_1d

    nop

    nop

    nop

    iget v1, p0, Lffw;->b:I

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v1}, Lfhq;->c(I)Ljava/lang/String;

    move-result-object p0

    nop

    invoke-interface {v0, v1, p0}, Lfgr;->c(ILjava/lang/String;)V

    goto :goto_30

    nop

    nop

    nop

    :cond_1b
    sget-object p0, Lffy;->a:Lfht;

    nop

    nop

    nop

    nop

    new-instance v1, Ljava/lang/StringBuilder;

    nop

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mCamera is null"

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    invoke-static {p0, v0}, Lfhu;->c(Lfht;Ljava/lang/String;)V

    goto :goto_30

    nop

    :cond_1c
    :goto_2f
    instance-of v0, v1, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    if-eqz v0, :cond_1d

    nop

    nop

    iget-object v0, p0, Lffw;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v0}, Lfhq;->c(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lffw;->p:Lffy;

    nop

    nop

    iget-object v3, p0, Lffy;->g:Lfhm;

    nop

    check-cast v1, Ljava/lang/RuntimeException;

    nop

    iget-object p0, p0, Lffy;->c:Lfho;

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lfho;->a()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v1, v0, v2, p0}, Lfhm;->b(Ljava/lang/RuntimeException;Ljava/lang/String;II)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_1d
    :goto_30
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_31
    return-void

    nop

    :goto_32
    goto/32 :goto_12

    nop

    nop

    :goto_33
    iget v2, p1, Landroid/os/Message;->what:I

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const/4 v7, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_35
    const/16 v8, 0xcc

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_21

    nop

    :goto_37
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_38
    invoke-static {p1}, Lfgy;->a(Landroid/os/Message;)V

    goto/32 :goto_31

    nop

    nop

    :goto_39
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-ne v2, v5, :cond_1e

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_1e
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3b
    goto :goto_32

    nop

    nop

    nop

    nop

    nop

    :catch_5
    move-exception v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-static {v3}, Landroidx/wear/ambient/SharedLibraryVersion;->f(I)Ljava/lang/String;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method
