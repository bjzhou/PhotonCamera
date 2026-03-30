.class public final Lra;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "PG"


# instance fields
.field private final a:Lsd;

.field private final b:Landroid/os/Handler;

.field private final c:Lueq;

.field private final d:Lueq;

.field private final e:Lsp;

.field private final f:Lezz;


# direct methods
.method private final 166277962e993c138a6b1f0c9b571cc0m()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lueq;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

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

    :goto_1
    check-cast p0, Lsx;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    invoke-interface {p0}, Lsx;->f()V

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lra;->c:Lueq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method private final 33f5b80483094659737b73d90f80a8a4m(Landroid/hardware/camera2/CameraCaptureSession;Lezz;)Lsc;
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lra;->a:Lsd;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_28

    nop

    nop

    :goto_2
    return-object v1

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p1, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_15

    nop

    nop

    :goto_6
    iget-object v0, v0, Lueq;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x14

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8
    iget-object p0, p0, Lra;->d:Lueq;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v2, p0, Lra;->b:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_1
    goto/32 :goto_18

    nop

    :goto_b
    iget-object p0, p0, Lueq;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_d
    move-object v1, v2

    nop

    :goto_e
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_f
    invoke-direct {v2, v0, p1, p2, v1}, Lqs;-><init>(Lsd;Landroid/hardware/camera2/CameraCaptureSession;Lezz;Landroid/os/Handler;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x4

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    check-cast v0, Lsc;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_12
    if-nez p1, :cond_2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p1, p0, Lra;->d:Lueq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_15
    check-cast p0, Lsc;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    new-instance v2, Lqs;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_17
    const/4 p2, 0x0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1a
    if-eqz v0, :cond_3

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_3
    goto/32 :goto_1e

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lra;->d:Lueq;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1c
    return-object v0

    nop

    nop

    :goto_1d
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1e
    instance-of v0, p1, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v1, v0, p1, p2, v2}, Lqt;-><init>(Lsd;Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;Lezz;Landroid/os/Handler;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p1, p2, v1}, Lueq;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_21
    goto/16 :goto_e

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_23
    new-instance v1, Lqt;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v1, p0, Lra;->b:Landroid/os/Handler;

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

    :goto_26
    return-object p0

    nop

    :goto_27
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_28
    iget-object v0, p0, Lra;->a:Lsd;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lsd;Lsp;Lsx;Lezz;Landroid/os/Handler;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    invoke-direct {p2, p3, p1}, Lueq;-><init>(Ljava/lang/Object;Lucu;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lra;->e:Lsp;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    sget-object p1, Luer;->a:Luer;

    nop

    nop

    goto/32 :goto_a

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
    invoke-direct {p2, p3, p1}, Lueq;-><init>(Ljava/lang/Object;Lucu;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_d

    nop

    nop

    :goto_6
    iput-object p2, p0, Lra;->c:Lueq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    iput-object p1, p0, Lra;->a:Lsd;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object p1, Luer;->a:Luer;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p5, p0, Lra;->b:Landroid/os/Handler;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    new-instance p2, Lueq;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    iput-object p4, p0, Lra;->f:Lezz;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    const/4 p3, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    goto/32 :goto_7

    nop

    nop

    :goto_e
    iput-object p2, p0, Lra;->d:Lueq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_f
    new-instance p2, Lueq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method

.method private final f875135777c17da3cef2ea6eeff5be29m()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lsp;->f()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lra;->e:Lsp;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lra;->166277962e993c138a6b1f0c9b571cc0m()V

    goto/32 :goto_1

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
.end method


# virtual methods
.method public final onActive(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, v0}, Lra;->33f5b80483094659737b73d90f80a8a4m(Landroid/hardware/camera2/CameraCaptureSession;Lezz;)Lsc;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lra;->e:Lsp;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lra;->f:Lezz;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final onCaptureQueueEmpty(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lra;->e:Lsp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, v0}, Lra;->33f5b80483094659737b73d90f80a8a4m(Landroid/hardware/camera2/CameraCaptureSession;Lezz;)Lsc;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lra;->f:Lezz;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    iget-object p1, p0, Lra;->e:Lsp;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-virtual {p1}, Lsp;->h()V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-direct {p0}, Lra;->f875135777c17da3cef2ea6eeff5be29m()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, p1, v0}, Lra;->33f5b80483094659737b73d90f80a8a4m(Landroid/hardware/camera2/CameraCaptureSession;Lezz;)Lsc;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lra;->f:Lezz;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Lsp;->i()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p1, p0, Lra;->e:Lsp;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    iget-object v0, p0, Lra;->f:Lezz;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p1, v0}, Lra;->33f5b80483094659737b73d90f80a8a4m(Landroid/hardware/camera2/CameraCaptureSession;Lezz;)Lsc;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Lra;->f875135777c17da3cef2ea6eeff5be29m()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, v0}, Lra;->33f5b80483094659737b73d90f80a8a4m(Landroid/hardware/camera2/CameraCaptureSession;Lezz;)Lsc;

    move-result-object p1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    const v1, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lra;->f:Lezz;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
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

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x1a

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0}, Lra;->166277962e993c138a6b1f0c9b571cc0m()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Lra;->e:Lsp;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1, p1}, Lsp;->e(Lsc;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onReady(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lra;->e:Lsp;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, v0}, Lra;->33f5b80483094659737b73d90f80a8a4m(Landroid/hardware/camera2/CameraCaptureSession;Lezz;)Lsc;

    goto/32 :goto_0

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

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5

    nop

    nop

    :goto_5
    iget-object v0, p0, Lra;->f:Lezz;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method
