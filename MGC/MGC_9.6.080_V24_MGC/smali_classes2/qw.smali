.class public final Lqw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Lsc;
.implements Lqr;


# instance fields
.field public final a:Luep;

.field public final b:Ljava/util/Map;

.field private final c:Lsd;

.field private final d:Landroid/hardware/camera2/CameraExtensionSession;

.field private final e:Ljava/util/concurrent/Executor;

.field private final f:Lezz;


# direct methods
.method public constructor <init>(Lsd;Landroid/hardware/camera2/CameraExtensionSession;Lezz;Ljava/util/concurrent/Executor;)V
    .locals 0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lqw;->c:Lsd;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-wide/16 p3, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p3, p0, Lqw;->f:Lezz;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p2, p3, p4, p1}, Luep;-><init>(JLucu;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p2, p0, Lqw;->a:Luep;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance p2, Luep;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    new-instance p1, Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    iput-object p2, p0, Lqw;->d:Landroid/hardware/camera2/CameraExtensionSession;

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

    :goto_b
    sget-object p1, Luer;->a:Luer;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p1, p0, Lqw;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object p4, p0, Lqw;->e:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Landroid/view/Surface;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

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
    return-object p0

    nop
.end method

.method public final b()Lsd;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lqw;->c:Lsd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop
.end method

.method public final c(Ludp;)Ljava/lang/Object;
    .locals 6

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x15

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

    :goto_3
    const-class v1, Landroid/hardware/camera2/CameraExtensionSession;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

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

    :goto_5
    const v0, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    if-nez p1, :cond_1

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    :goto_7
    sget v0, Luct;->a:I

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    aput-object p1, v2, v4

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    const/4 v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_a
    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    new-instance v0, Lucb;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v4, v5, v2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-array v2, v2, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_12
    aput-object v0, v2, v4

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

    :goto_13
    invoke-direct {v0, v1}, Lucb;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_17

    nop

    nop

    :goto_14
    const/16 v4, 0x18a

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_17
    const/4 v2, 0x2

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_18
    goto/32 :goto_1d

    nop

    nop

    :goto_19
    goto/32 :goto_7

    nop

    nop

    :goto_1a
    iget-object p0, p0, Lqw;->d:Landroid/hardware/camera2/CameraExtensionSession;

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

    :goto_1b
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1b

    nop

    nop
.end method

.method public final close()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lqw;->d:Landroid/hardware/camera2/CameraExtensionSession;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraExtensionSession;->close()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;
    .locals 4

    goto/32 :goto_20

    nop

    nop

    :goto_0
    const v1, 0x17

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p2, p1, v0}, Lezz;->d(Ljava/lang/String;IZ)V

    :goto_3
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p1, Landroid/hardware/camera2/CameraAccessException;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_5
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_b
    check-cast p2, Lqu;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_c
    goto/16 :goto_37

    nop

    :catch_0
    move-exception p1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_d
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_1
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p2, p2, Lqu;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_12
    instance-of v0, p1, Ljava/lang/NullPointerException;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_13
    instance-of v0, p1, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_14
    if-nez v0, :cond_2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lqw;->d:Landroid/hardware/camera2/CameraExtensionSession;

    nop

    nop

    nop

    iget-object v1, p0, Lqw;->e:Ljava/util/concurrent/Executor;

    nop

    nop

    new-instance v2, Lqv;

    nop

    new-instance v3, Ljava/util/LinkedList;

    nop

    nop

    nop

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    check-cast p2, Lrr;

    nop

    invoke-direct {v2, p0, p2, v3}, Lqv;-><init>(Lqw;Lrr;Ljava/util/Queue;)V

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/camera2/CameraExtensionSession;->capture(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/16 p1, 0x9

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Lqw;->f:Lezz;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_19
    instance-of v0, p1, Landroid/hardware/camera2/CameraAccessException;

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

    :goto_1a
    instance-of v0, p1, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_1b
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_37

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1e
    throw p1

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_21
    iget-object p2, p0, Lqw;->c:Lsd;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_22
    const-string v2, "Unexpected error: "

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

    :goto_23
    goto :goto_1f

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_13

    nop

    nop

    :goto_25
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_26
    move-object p0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_28
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_29
    if-lez v0, :cond_3

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_10

    nop

    :goto_2a
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2b
    if-nez v0, :cond_5

    nop

    goto/32 :goto_1d

    nop

    :cond_5
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2c
    return-object p0

    nop

    :goto_2d
    goto/32 :goto_8

    nop

    nop

    :goto_2e
    invoke-static {p1}, La;->al(Landroid/hardware/camera2/CameraAccessException;)I

    move-result p1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2f
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const-string v1, "CXCP"

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

    :goto_31
    instance-of v0, p1, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_32
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_34
    instance-of v0, p1, Ljava/lang/SecurityException;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_35
    invoke-virtual {p0, p2, p1, v0}, Lezz;->d(Ljava/lang/String;IZ)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_36
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_2c

    nop

    nop

    nop
.end method

.method public final e(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0, p2}, Lqw;->d(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    goto :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    check-cast v0, Landroid/hardware/camera2/CaptureRequest;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method public final f(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    const v1, 0x13

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    check-cast p1, Landroid/hardware/camera2/CaptureRequest;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x16

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

    :goto_6
    const-string p1, "CameraExtensionSession does not support setRepeatingBurst for more than oneCaptureRequest"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_7
    const/4 v1, 0x1

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

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_9
    invoke-static {p1}, Lrkm;->ax(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    nop

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

    :goto_a
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_c
    goto/32 :goto_14

    nop

    nop

    :goto_d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_f

    nop

    nop

    :goto_f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_10
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, p1, p2}, Lqw;->g(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;

    move-result-object p0

    nop

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

    :goto_12
    goto/32 :goto_d

    nop

    nop

    :goto_13
    throw p0

    nop

    nop

    :goto_14
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_15
    if-eq v0, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

.method public final g(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;
    .locals 4

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_14

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
    iget-object p2, p2, Lqu;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_6
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    :goto_8
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    :goto_b
    goto/32 :goto_1c

    nop

    nop

    :goto_c
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p2, p0, Lqw;->c:Lsd;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, p2, p1, v0}, Lezz;->d(Ljava/lang/String;IZ)V

    goto/32 :goto_25

    nop

    nop

    :goto_11
    check-cast p2, Lqu;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_12
    const/16 p1, 0x9

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_13
    throw p1

    nop

    nop

    :goto_14
    goto/32 :goto_12

    nop

    nop

    :goto_15
    check-cast p1, Landroid/hardware/camera2/CameraAccessException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_16
    instance-of v0, p1, Landroid/hardware/camera2/CameraAccessException;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_2

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

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_19
    goto :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_1b
    return-object p0

    nop

    :goto_1c
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1d
    const v0, 0x3

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    instance-of v0, p1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    move-object p0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-eqz v0, :cond_3

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_21
    const-string v2, "Unexpected error: "

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lqw;->d:Landroid/hardware/camera2/CameraExtensionSession;

    nop

    iget-object v1, p0, Lqw;->e:Ljava/util/concurrent/Executor;

    nop

    new-instance v2, Lqv;

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Ljava/util/LinkedList;

    nop

    nop

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    check-cast p2, Lrr;

    nop

    nop

    nop

    invoke-direct {v2, p0, p2, v3}, Lqv;-><init>(Lqw;Lrr;Ljava/util/Queue;)V

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/camera2/CameraExtensionSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_14

    nop

    nop

    :goto_24
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_37

    nop

    nop

    :goto_26
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v0, 0x0

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

    :goto_28
    invoke-static {p1}, La;->al(Landroid/hardware/camera2/CameraAccessException;)I

    move-result p1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2c
    instance-of v0, p1, Ljava/lang/SecurityException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2d
    const v1, 0x1d

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2f
    const-string v1, "CXCP"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object p0, p0, Lqw;->f:Lezz;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_31
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-eqz v0, :cond_6

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_33
    instance-of v0, p1, Ljava/lang/NullPointerException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    instance-of v0, p1, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_35
    instance-of v0, p1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p0, p2, p1, v0}, Lezz;->d(Ljava/lang/String;IZ)V

    :goto_37
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop
.end method

.method public final h()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public final i(Ljava/util/List;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string p0, "CXCP"

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

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    const-string p1, "CameraExtensionSession does not support finalizeOutputConfigurations()"

    nop

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

    :goto_3
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_1

    nop

    nop
.end method

.method public final j()V
    .locals 5

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    :goto_2
    instance-of v2, v0, Ljava/lang/SecurityException;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v1, v1, Lqu;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Lqw;->c:Lsd;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    instance-of v2, v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_31

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

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_27

    nop

    :goto_8
    instance-of v2, v0, Landroid/hardware/camera2/CameraAccessException;

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_9
    goto :goto_f

    nop

    :goto_a
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lqw;->f:Lezz;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v2, :cond_1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v0}, La;->al(Landroid/hardware/camera2/CameraAccessException;)I

    move-result v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    throw v0

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

    :goto_10
    const/4 v2, 0x1

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

    :goto_11
    const v1, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x9

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_13
    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_14
    goto :goto_f

    nop

    :goto_15
    goto/32 :goto_e

    nop

    nop

    :goto_16
    instance-of v2, v0, Ljava/lang/NullPointerException;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0, v1, v0, v2}, Lezz;->d(Ljava/lang/String;IZ)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_18
    const/16 v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_19
    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1a
    if-nez v2, :cond_3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_19

    nop

    nop

    :goto_1b
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast v1, Lqu;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1d
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_4
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0, v1, v0, v2}, Lezz;->d(Ljava/lang/String;IZ)V

    goto/32 :goto_0

    nop

    nop

    :goto_23
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    instance-of v2, v0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_26
    const-string v4, "Unexpected error: "

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_28
    :try_start_0
    iget-object v0, p0, Lqw;->d:Landroid/hardware/camera2/CameraExtensionSession;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraExtensionSession;->stopRepeating()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_5

    nop

    nop

    :goto_29
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const-string v3, "CXCP"

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-eqz v2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_5
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_28

    nop

    :goto_2e
    instance-of v2, v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_30
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_31
    if-nez v2, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_29

    nop

    nop

    nop

    nop
.end method
