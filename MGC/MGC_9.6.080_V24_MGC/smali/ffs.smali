.class final Lffs;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "PG"


# instance fields
.field final synthetic a:Lffw;


# direct methods
.method public constructor <init>(Lffw;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lffs;->a:Lffw;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2
    iget p0, p0, Lffw;->b:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_d

    nop

    nop

    :goto_4
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

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

    nop

    nop

    :goto_6
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget-object p1, Lffy;->a:Lfht;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    :goto_d
    iget-object p0, p0, Lffs;->a:Lffw;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_f
    const-string v1, "Camera device \'"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    invoke-static {p1, p0}, Lfhu;->c(Lfht;Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    :goto_11
    const v0, 0x16

    nop

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

    :goto_12
    goto/32 :goto_c

    nop

    nop

    :goto_13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    :goto_14
    const-string p0, "\' was disconnected"

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop
.end method

.method public final onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

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

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5
    const v0, 0x1d

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_7
    const/16 p2, 0x27

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    iget-object v1, p0, Lffs;->a:Lffw;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_9
    iget p2, p0, Lffw;->b:I

    nop

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

    :goto_a
    const-string v1, "Camera device \'"

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    invoke-interface {p1, p2, p0}, Lfgr;->c(ILjava/lang/String;)V

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, p2}, Lfhq;->c(I)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v1, "\' encountered error code \'"

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_12
    iget-object p0, p0, Lffs;->a:Lffw;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_13
    sget-object p1, Lffy;->a:Lfht;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p1, p0, Lffw;->a:Lfgr;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_16
    invoke-static {p1, p2}, Lfhu;->a(Lfht;Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget v1, v1, Lffw;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

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

    :goto_1a
    const v1, 0x9

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1d
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop
.end method

.method public final onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 8

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, v0, Lffw;->d:Landroid/hardware/camera2/CameraDevice;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2
    invoke-interface {p1, v0, p0}, Lfgr;->c(ILjava/lang/String;)V

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :catch_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lffs;->a:Lffw;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    iget-object p0, p0, Lffs;->a:Lffw;

    nop

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

    :goto_a
    goto/32 :goto_e

    nop

    :goto_b
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_1
    :try_start_0
    iget-object p1, v0, Lffw;->p:Lffy;

    nop

    iget-object p1, p1, Lffy;->e:Landroid/hardware/camera2/CameraManager;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lffw;->c:Ljava/lang/String;

    nop

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    nop

    iget-object v0, p0, Lffs;->a:Lffw;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lffw;->p:Lffy;

    nop

    invoke-virtual {v0}, Lffy;->b()Lfhi;

    move-result-object v0

    nop

    nop

    nop

    iget-object v1, p0, Lffs;->a:Lffw;

    nop

    nop

    nop

    nop

    iget v1, v1, Lffw;->b:I

    nop

    invoke-interface {v0, v1}, Lfhi;->b(I)Lfhh;

    move-result-object v5

    nop

    iget-object v0, p0, Lffs;->a:Lffw;

    nop

    nop

    nop

    new-instance v7, Lffp;

    nop

    nop

    iget-object v3, v0, Lffw;->p:Lffy;

    nop

    nop

    nop

    nop

    nop

    iget v4, v0, Lffw;->b:I

    nop

    move-object v1, v7

    nop

    nop

    nop

    move-object v2, v3

    nop

    nop

    nop

    nop

    nop

    move-object v6, p1

    nop

    invoke-direct/range {v1 .. v6}, Lffp;-><init>(Lffy;Lffy;ILfhh;Landroid/hardware/camera2/CameraCharacteristics;)V

    iput-object v7, v0, Lffw;->e:Lffp;

    nop

    iget-object v0, p0, Lffs;->a:Lffw;

    nop

    nop

    new-instance v1, Lpat;

    nop

    const/4 v2, 0x0

    nop

    invoke-direct {v1, v2}, Lpat;-><init>([B)V

    iput-object v1, v0, Lffw;->q:Lpat;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lffs;->a:Lffw;

    nop

    nop

    nop

    nop

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Landroid/graphics/Rect;

    nop

    iput-object v1, v0, Lffw;->f:Landroid/graphics/Rect;

    nop

    nop

    iget-object v0, p0, Lffs;->a:Lffw;

    nop

    nop

    nop

    nop

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x2

    nop

    if-ne p1, v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    const/4 p1, 0x1

    nop

    goto :goto_c

    nop

    nop

    nop

    nop

    :cond_2
    const/4 p1, 0x0

    nop

    nop

    nop

    :goto_c
    iput-boolean p1, v0, Lffw;->g:Z

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p0, Lffs;->a:Lffw;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v1}, Lffw;->a(I)V

    iget-object p1, p0, Lffs;->a:Lffw;

    nop

    nop

    nop

    nop

    iget-object v0, p1, Lffw;->a:Lfgr;

    nop

    nop

    nop

    nop

    iget-object p1, p1, Lffw;->e:Lffp;

    nop

    nop

    nop

    invoke-interface {v0, p1}, Lfgr;->b(Lfgv;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_4

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    :goto_f
    invoke-virtual {p0, v0}, Lfhq;->c(I)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0xf

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p1, v0, Lffw;->a:Lfgr;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_12
    iget-object p1, p0, Lffw;->a:Lfgr;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget v0, p0, Lffw;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_15
    const v0, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop
.end method
