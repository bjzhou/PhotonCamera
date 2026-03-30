.class public final Lqu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lsd;


# instance fields
.field public final a:Landroid/hardware/camera2/CameraDevice;

.field public final b:Ljava/lang/String;

.field public final c:Lezz;

.field private final d:Lueq;

.field private final e:Lrp;

.field private final f:Lejk;


# direct methods
.method public constructor <init>(Lrp;Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;Lezz;Lejk;)V
    .locals 0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput-object p1, p0, Lqu;->e:Lrp;

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

    :goto_3
    iput-object p4, p0, Lqu;->c:Lezz;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    invoke-direct {p2, p3, p1}, Lueq;-><init>(Ljava/lang/Object;Lucu;)V

    goto/32 :goto_b

    nop

    nop

    :goto_5
    iput-object p2, p0, Lqu;->a:Landroid/hardware/camera2/CameraDevice;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p5, p0, Lqu;->f:Lejk;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    sget-object p1, Luer;->a:Luer;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_f

    nop

    nop

    :goto_9
    new-instance p2, Lueq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_a
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p2, p0, Lqu;->d:Lueq;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    iput-object p3, p0, Lqu;->b:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_a

    nop

    nop

    :goto_e
    const/4 p3, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_f
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lqu;->b:Ljava/lang/String;

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

    nop

    nop
.end method

.method public final b(I)V
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_1

    nop

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

    :catchall_0
    move-exception p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    throw p0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x10

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_f

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_0
    const-string p1, "CXCP"

    nop

    nop

    invoke-static {p0}, Lqx;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    invoke-static {p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    instance-of p1, p0, Landroid/hardware/camera2/CameraAccessException;

    nop

    nop

    if-eqz p1, :cond_1

    nop

    nop

    check-cast p0, Landroid/hardware/camera2/CameraAccessException;

    nop

    invoke-static {p0}, La;->al(Landroid/hardware/camera2/CameraAccessException;)I

    move-result p0

    nop

    nop

    nop

    const/4 p1, 0x1

    nop

    invoke-virtual {v1, v0, p0, p1}, Lezz;->d(Ljava/lang/String;IZ)V

    goto :goto_f

    nop

    nop

    :cond_1
    instance-of p1, p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    if-eqz p1, :cond_2

    nop

    nop

    goto :goto_e

    nop

    nop

    :cond_2
    instance-of p1, p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    if-nez p1, :cond_4

    nop

    nop

    nop

    nop

    nop

    instance-of p1, p0, Ljava/lang/SecurityException;

    nop

    if-nez p1, :cond_4

    nop

    nop

    nop

    nop

    nop

    instance-of p1, p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    nop

    if-nez p1, :cond_4

    nop

    nop

    nop

    instance-of p1, p0, Ljava/lang/NullPointerException;

    nop

    nop

    nop

    if-eqz p1, :cond_3

    nop

    nop

    nop

    goto :goto_e

    nop

    nop

    nop

    :cond_3
    throw p0

    nop

    :cond_4
    :goto_e
    const/16 p0, 0x9

    nop

    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0, p0, p1}, Lezz;->d(Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_f
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_10
    const-string v0, "setCameraAudioRestriction"

    nop

    :try_start_1
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lqu;->b:Ljava/lang/String;

    nop

    nop

    nop

    iget-object v1, p0, Lqu;->c:Lezz;

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p0, p0, Lqu;->a:Landroid/hardware/camera2/CameraDevice;

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraDevice;->setCameraAudioRestriction(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method public final c(Ludp;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_4

    nop

    nop

    :goto_0
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    sget v0, Luct;->a:I

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3
    iget-object p0, p0, Lqu;->a:Landroid/hardware/camera2/CameraDevice;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_6
    const v1, 0x18

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    const-class v1, Landroid/hardware/camera2/CameraDevice;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Lucb;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    invoke-static {p1, v0}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0, v1}, Lucb;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    if-nez p1, :cond_1

    nop

    goto/32 :goto_8

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-object p0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_13

    nop

    nop

    :goto_12
    add-int v0, v0, v1

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

    :goto_13
    goto/32 :goto_1

    nop
.end method

.method public final d()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Lsx;->f()V

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

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

    :goto_3
    iget-object p0, p0, Lqu;->d:Lueq;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, v0}, Lueq;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p0, Lsx;

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
.end method

.method public final e(Ltg;)Z
    .locals 21

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_27

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_1
    const/4 v9, 0x1

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

    :goto_2
    invoke-interface/range {v20 .. v20}, Lsx;->f()V

    :goto_3
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move-object/from16 v6, v16

    nop

    nop

    nop

    :try_start_0
    invoke-direct/range {v1 .. v6}, Lra;-><init>(Lsd;Lsp;Lsx;Lezz;Landroid/os/Handler;)V

    new-instance v1, Landroid/hardware/camera2/params/SessionConfiguration;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, v10, v15, v13, v14}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    iget-object v2, v0, Ltg;->b:Ljava/util/List;

    nop

    nop

    if-eqz v2, :cond_3

    nop

    nop

    iget-object v3, v7, Lqu;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    nop

    nop

    if-nez v4, :cond_2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    nop

    if-ne v4, v9, :cond_0

    nop

    nop

    nop

    nop

    invoke-static {v2}, Lrkm;->as(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lsu;

    nop

    nop

    nop

    new-instance v3, Landroid/hardware/camera2/params/InputConfiguration;

    nop

    nop

    iget v4, v2, Lsu;->a:I

    nop

    iget v5, v2, Lsu;->b:I

    nop

    iget v2, v2, Lsu;->c:I

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, v4, v5, v2}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    goto :goto_6

    nop

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    nop

    invoke-static {v2}, Lrkm;->aI(Ljava/lang/Iterable;)I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    nop

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_1

    nop

    nop

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    check-cast v6, Lsu;

    nop

    nop

    nop

    new-instance v10, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    nop

    nop

    nop

    nop

    nop

    iget v13, v6, Lsu;->a:I

    nop

    nop

    nop

    nop

    nop

    iget v6, v6, Lsu;->b:I

    nop

    nop

    nop

    invoke-direct {v10, v13, v6, v3}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {v4, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    nop

    :cond_1
    new-instance v3, Landroid/hardware/camera2/params/InputConfiguration;

    nop

    invoke-static {v2}, Lrkm;->as(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lsu;

    nop

    nop

    nop

    nop

    iget v2, v2, Lsu;->c:I

    nop

    nop

    nop

    nop

    invoke-direct {v3, v4, v2}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(Ljava/util/Collection;I)V

    :goto_6
    invoke-virtual {v1, v3}, Landroid/hardware/camera2/params/SessionConfiguration;->setInputConfiguration(Landroid/hardware/camera2/params/InputConfiguration;)V

    goto :goto_7

    nop

    :cond_2
    const-string v0, "Call to create InputConfiguration but list of InputConfigData is empty."

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Ljava/lang/IllegalStateException;

    nop

    nop

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    nop

    nop

    nop

    nop

    :cond_3
    :goto_7
    const-string v2, "createCaptureRequest"

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v2, v7, Lqu;->a:Landroid/hardware/camera2/CameraDevice;

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v9}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v7, Lqu;->e:Lrp;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lrp;->e()Ljava/util/Set;

    move-result-object v3

    nop

    nop

    new-instance v4, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3}, Lrkm;->aI(Ljava/lang/Iterable;)I

    move-result v5

    nop

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    if-eqz v5, :cond_4

    nop

    nop

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    invoke-virtual {v5}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    nop

    nop

    nop

    :cond_4
    iget-object v0, v0, Ltg;->f:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    :cond_5
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_6

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    check-cast v3, Ljava/util/Map$Entry;

    nop

    nop

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    nop

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    instance-of v6, v5, Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_5

    nop

    nop

    nop

    nop

    nop

    move-object v6, v5

    nop

    nop

    nop

    nop

    nop

    check-cast v6, Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    invoke-virtual {v6}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_5

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v5, v3}, Le;->j(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_6
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/params/SessionConfiguration;->setSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V

    const-string v0, "Api28Compat.createCaptureSession"

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, v7, Lqu;->a:Landroid/hardware/camera2/CameraDevice;

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    sget-object v0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    nop

    goto :goto_12

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    nop

    nop

    nop

    nop
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catch_1
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_a
    div-double/2addr v3, v5

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_b
    goto/32 :goto_20

    nop

    :goto_c
    goto/32 :goto_40

    nop

    nop

    :goto_d
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    move-wide/from16 v18, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    move-object v4, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_2b

    nop

    nop

    :goto_13
    return v9

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_64

    nop

    nop

    :goto_15
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_16
    iget-object v1, v7, Lqu;->d:Lueq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_18
    move-wide/from16 v18, v11

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_6c

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v1, v7, Lqu;->d:Lueq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_c

    nop

    nop

    :goto_1c
    const-string v8, "CXCP"

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v1, v9, v3}, Lueq;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_1e
    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    throw v0

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_23
    if-nez v20, :cond_8

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
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_24
    move-object/from16 v17, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v9, 0x1

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_28
    sub-long v1, v1, v18

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_29
    move-object v12, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2a
    invoke-static {v7, v1}, Lqx;->b(Lqu;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    move v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_2d
    const-string v2, "CXCP#createCaptureSession-"

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_30
    sub-long v3, v3, v18

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_31
    invoke-static {v1, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-lez v0, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_9
    goto/32 :goto_b

    nop

    :goto_33
    move-wide/from16 v18, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_34
    move-object v12, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    move-object/from16 v2, p0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-eqz v0, :cond_a

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_a
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_56

    nop

    nop

    nop

    nop

    :goto_38
    :try_start_5
    iget-object v13, v0, Ltg;->d:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    new-instance v14, Lra;

    nop

    nop

    nop

    iget-object v6, v7, Lqu;->c:Lezz;

    nop

    nop

    iget-object v2, v7, Lqu;->f:Lejk;

    nop

    nop

    nop

    invoke-virtual {v2}, Lejk;->a()Landroid/os/Handler;

    move-result-object v16

    nop

    nop
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_39
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_3a
    const v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    move-object/from16 v20, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3c
    const-wide v3, 0x412e848000000000L    # 1000000.0

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_3d
    iget-object v3, v0, Ltg;->g:Lsp;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_3e
    move-object/from16 v17, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3f
    invoke-static {v3, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_40
    move-object/from16 v7, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_41
    move-object v11, v5

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

    :goto_42
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_43
    move-object/from16 v2, v17

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_45
    move-object v9, v1

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_46
    if-nez v6, :cond_b

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :cond_b
    :try_start_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    check-cast v6, Lrh;

    nop

    nop

    nop

    const-class v13, Landroid/hardware/camera2/params/OutputConfiguration;

    nop

    nop

    nop

    sget v14, Luct;->a:I

    nop

    nop

    nop

    new-instance v14, Lucb;

    nop

    nop

    invoke-direct {v14, v13}, Lucb;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v6, v14}, Lrh;->c(Ludp;)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    invoke-interface {v15, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    return v1

    nop

    nop

    nop

    nop

    nop

    :catchall_3
    move-exception v0

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

    nop

    :goto_48
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_49
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_4a
    if-nez v1, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    :cond_c
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_4b
    const v1, 0x14

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_4c
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    move-object/from16 v2, v17

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4e
    const-string v1, "Failed to create capture session from "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_4f
    const-string v1, "Check failed."

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_50
    move-object v2, v10

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

    :goto_51
    move-object/from16 v20, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    div-double/2addr v1, v3

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_53
    const-string v10, "%.3f ms"

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_54
    goto/16 :goto_5f

    nop

    :catchall_4
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    :try_start_7
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v5, v7, Lqu;->b:Ljava/lang/String;

    nop

    nop

    iget-object v4, v7, Lqu;->c:Lezz;

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    iget v1, v0, Ltg;->a:I

    nop

    iget-object v2, v0, Ltg;->c:Ljava/util/List;

    nop

    nop

    nop

    new-instance v15, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Lrkm;->aI(Ljava/lang/Iterable;)I

    move-result v6

    nop

    nop

    invoke-direct {v15, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    :goto_56
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    nop

    nop

    nop
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_57
    const/4 v9, 0x1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_58
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_59
    long-to-double v1, v1

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_5a
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_48

    nop

    nop

    :goto_5c
    long-to-double v3, v3

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_5d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v11

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    const/4 v9, 0x1

    nop

    nop

    :goto_5f
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_61
    iget-object v1, v1, Lueq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_62
    move-object v5, v6

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_63
    move v10, v2

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_64
    const/4 v1, 0x0

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_65
    const-wide v5, 0x412e848000000000L    # 1000000.0

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

    :goto_66
    move-object v1, v14

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    move-object/from16 v17, v10

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_68
    invoke-static {v1, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_69
    iget-object v1, v7, Lqu;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-static {v3, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_6b
    move-object v11, v5

    nop

    nop

    :goto_6c
    :try_start_9
    invoke-static {v0}, Lqx;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v1, v0, Landroid/hardware/camera2/CameraAccessException;

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_d

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, La;->al(Landroid/hardware/camera2/CameraAccessException;)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v12, v11, v0, v9}, Lezz;->d(Ljava/lang/String;IZ)V

    goto :goto_6e

    nop

    :cond_d
    instance-of v1, v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    if-eqz v1, :cond_e

    nop

    nop

    nop

    goto :goto_6d

    nop

    nop

    nop

    nop

    :cond_e
    instance-of v1, v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    if-nez v1, :cond_10

    nop

    nop

    nop

    instance-of v1, v0, Ljava/lang/SecurityException;

    nop

    nop

    nop

    nop

    if-nez v1, :cond_10

    nop

    nop

    nop

    nop

    instance-of v1, v0, Ljava/lang/UnsupportedOperationException;

    nop

    if-nez v1, :cond_10

    nop

    nop

    instance-of v1, v0, Ljava/lang/NullPointerException;

    nop

    nop

    nop

    if-eqz v1, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto :goto_6d

    nop

    nop

    nop

    :cond_f
    throw v0

    nop

    nop

    :cond_10
    :goto_6d
    const/16 v0, 0x9

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    invoke-virtual {v12, v11, v0, v1}, Lezz;->d(Ljava/lang/String;IZ)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :goto_6e
    goto/32 :goto_11

    nop

    nop

    :goto_6f
    move-wide/from16 v18, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_70
    move-object/from16 v0, p1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_71
    check-cast v9, Lsx;

    nop

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

    nop
.end method

.method public final f(Lss;)Z
    .locals 21

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_1
    invoke-interface/range {v20 .. v20}, Lsx;->f()V

    :goto_2
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v3, v0, Lss;->d:Lst;

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_4
    const-string v2, "CXCP#createExtensionSession-"

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

    :goto_5
    move-object/from16 v20, v9

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v7, v0}, Lqx;->b(Lqu;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_7
    move-wide/from16 v18, v10

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_8
    invoke-static {v9, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

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
    const v1, 0x1f

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

    :goto_a
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_b
    move-object v4, v9

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move-object v11, v4

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_65

    nop

    :goto_f
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_64

    nop

    nop

    :goto_11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v10

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_12
    move-object v11, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_13
    move-wide/from16 v18, v10

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_14
    const/4 v9, 0x0

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_17
    move-object v10, v5

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_3a

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_41

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_1a
    const/4 v9, 0x0

    nop

    nop

    :goto_1b
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1d
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_1e
    move-object v1, v15

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

    nop

    :goto_1f
    iget-object v1, v7, Lqu;->d:Lueq;

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

    :goto_20
    const-wide v4, 0x412e848000000000L    # 1000000.0

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    :try_start_0
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v5, v7, Lqu;->b:Ljava/lang/String;

    nop

    nop

    nop

    iget-object v4, v7, Lqu;->c:Lezz;

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, v0, Lss;->c:Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    iget-object v2, v0, Lss;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    new-instance v13, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Lrkm;->aI(Ljava/lang/Iterable;)I

    move-result v14

    nop

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    nop

    nop
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_23
    move-object/from16 v17, v12

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_24
    move-object/from16 v1, v17

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_25
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_26
    if-nez v14, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :cond_1
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    nop

    nop

    nop

    nop

    nop

    check-cast v14, Lrh;

    nop

    nop

    const-class v6, Landroid/hardware/camera2/params/OutputConfiguration;

    nop

    nop

    nop

    nop

    sget v16, Luct;->a:I

    nop

    nop

    new-instance v15, Lucb;

    nop

    invoke-direct {v15, v6}, Lucb;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v14, v15}, Lrh;->c(Ludp;)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    invoke-interface {v13, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_1b

    nop

    :catch_1
    move-exception v0

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_2a
    move-object/from16 v7, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_2b
    move-object v5, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2c
    move-object v1, v12

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const-wide v2, 0x412e848000000000L    # 1000000.0

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_2e
    long-to-double v0, v0

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

    nop

    :goto_2f
    invoke-static {v9, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-nez v6, :cond_2

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/16 :goto_55

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_32
    sub-long v0, v0, v18

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

    :goto_33
    goto/32 :goto_f

    nop

    nop

    :goto_34
    goto/16 :goto_22

    nop

    nop

    nop

    :goto_35
    :try_start_3
    iget-object v14, v0, Lss;->b:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    new-instance v15, Lrb;

    nop

    nop

    iget-object v6, v7, Lqu;->c:Lezz;

    nop

    iget-object v0, v0, Lss;->b:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    move v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_37
    move v12, v2

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_39
    const/4 v9, 0x0

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_3b
    const-string v8, "CXCP"

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_3c
    move-object/from16 v17, v12

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    return v1

    nop

    nop

    :goto_3f
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_40
    move-object v6, v9

    nop

    :goto_41
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_42
    div-double/2addr v2, v4

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_43
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    nop

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

    nop

    :goto_44
    const/4 v1, 0x0

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const-string v0, "Failed to create extension session from "

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_47
    move-object/from16 v20, v9

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_48
    move-object/from16 v0, p1

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_49
    const/4 v9, 0x0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    if-eqz v6, :cond_3

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_45

    nop

    nop

    :goto_4b
    move-object v9, v1

    nop

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

    nop

    :goto_4c
    move-object v6, v0

    nop

    nop

    nop

    nop

    :try_start_4
    invoke-direct/range {v1 .. v6}, Lrb;-><init>(Lsd;Lst;Lsx;Lezz;Ljava/util/concurrent/Executor;)V

    new-instance v0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;

    nop

    invoke-direct {v0, v12, v13, v14, v15}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$StateCallback;)V

    iget-object v1, v7, Lqu;->a:Landroid/hardware/camera2/CameraDevice;

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CameraDevice;->createExtensionSession(Landroid/hardware/camera2/params/ExtensionSessionConfiguration;)V

    sget-object v6, Ltyg;->a:Ltyg;

    nop

    nop
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    check-cast v9, Lsx;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4e
    move-wide/from16 v18, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    long-to-double v2, v2

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_50
    iget-object v1, v7, Lqu;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_51
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v1, v3}, Lueq;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    move-object v10, v5

    nop

    nop

    nop

    nop

    :goto_55
    :try_start_5
    invoke-static {v0}, Lqx;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    nop

    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v1, v0, Landroid/hardware/camera2/CameraAccessException;

    nop

    nop

    if-eqz v1, :cond_4

    nop

    nop

    nop

    nop

    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    nop

    nop

    nop

    invoke-static {v0}, La;->al(Landroid/hardware/camera2/CameraAccessException;)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    invoke-virtual {v11, v10, v0, v1}, Lezz;->d(Ljava/lang/String;IZ)V

    goto :goto_57

    nop

    nop

    :cond_4
    instance-of v1, v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_5

    nop

    goto :goto_56

    nop

    nop

    nop

    nop

    :cond_5
    instance-of v1, v0, Ljava/lang/IllegalStateException;

    nop

    if-nez v1, :cond_7

    nop

    nop

    instance-of v1, v0, Ljava/lang/SecurityException;

    nop

    nop

    nop

    nop

    if-nez v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    instance-of v1, v0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    if-nez v1, :cond_7

    nop

    instance-of v1, v0, Ljava/lang/NullPointerException;

    nop

    nop

    if-eqz v1, :cond_6

    nop

    nop

    nop

    nop

    goto :goto_56

    nop

    :cond_6
    throw v0

    nop

    nop

    nop

    nop

    nop

    :cond_7
    :goto_56
    const/16 v0, 0x9

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    invoke-virtual {v11, v10, v0, v1}, Lezz;->d(Ljava/lang/String;IZ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_57
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_58
    move-object/from16 v17, v12

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_59
    return v1

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_5a
    move-object/from16 v2, p0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_5b
    const/4 v10, 0x0

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    move-wide/from16 v18, v10

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_5d
    sub-long v2, v2, v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    const/4 v1, 0x1

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

    :goto_5f
    move-object/from16 v1, v17

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_60
    if-nez v20, :cond_8

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_61
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_62
    const-string v12, "%.3f ms"

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_63
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_64
    throw v0

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    div-double/2addr v0, v2

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
.end method

.method public final g(Ljava/util/List;Lsp;)Z
    .locals 18

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object v1, v2

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move-object v9, v0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v1, v10, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

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

    nop

    :goto_7
    const-wide v2, 0x412e848000000000L    # 1000000.0

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_8
    iget-object v0, v0, Lueq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    const/4 v15, 0x1

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v5, v7, Lqu;->b:Ljava/lang/String;

    nop

    nop

    iget-object v4, v7, Lqu;->c:Lezz;

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, v7, Lqu;->a:Landroid/hardware/camera2/CameraDevice;

    nop

    nop

    nop

    nop

    new-instance v1, Lra;

    nop

    iget-object v6, v7, Lqu;->c:Lezz;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v7, Lqu;->f:Lejk;

    nop

    nop

    nop

    invoke-virtual {v2}, Lejk;->a()Landroid/os/Handler;

    move-result-object v16

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_b
    return v1

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    move-object/from16 v3, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_0

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_50

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_11
    move-object/from16 v2, p0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_14
    move-object v14, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_15
    const-string v1, "Check failed."

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

    :goto_16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_17
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_18
    iget-object v0, v7, Lqu;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast v9, Lsx;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_1b
    invoke-static {v1, v10, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1c
    const-string v1, "CXCP#createCaptureSession-"

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance v0, Ljava/lang/IllegalStateException;

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

    :goto_1f
    move-object v14, v4

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_20
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_21
    move-object v4, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_22
    move-object/from16 v7, p0

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v11

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_24
    return v15

    nop

    :goto_25
    goto/32 :goto_44

    nop

    nop

    :goto_26
    if-eqz v6, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    move-object v5, v6

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_28
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

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

    :goto_29
    invoke-static {v7, v0}, Lqx;->b(Lqu;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const v1, 0xb

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_2d
    if-nez v17, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_2e
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_3
    goto/32 :goto_2a

    nop

    :goto_2f
    move-object v13, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_30
    const-string v0, "Failed to create capture session from "

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_31
    if-nez v6, :cond_4

    nop

    goto/32 :goto_25

    nop

    :cond_4
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const-wide v4, 0x412e848000000000L    # 1000000.0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    move-object/from16 v3, p2

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_34
    long-to-double v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {v2, v15}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

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

    :goto_36
    move-object/from16 v17, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_37
    move-object v9, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const-string v10, "%.3f ms"

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_39
    div-double/2addr v2, v4

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_3a
    sget-object v8, Lcom/google/android/apps/camera/jni/microvideotonemap/EeD/yHEIcF;->tyXLkKSMeaIdoX:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_3b
    div-double/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_3c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_16

    nop

    nop

    :goto_3d
    long-to-double v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_3e
    sub-long/2addr v0, v11

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_40
    sub-long/2addr v2, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_41
    throw v0

    nop

    :goto_42
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    :catch_1
    move-exception v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_44
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v0, v9, v3}, Lueq;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

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

    :goto_46
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_47
    move-object/from16 v6, v16

    nop

    nop

    nop

    :try_start_2
    invoke-direct/range {v1 .. v6}, Lra;-><init>(Lsd;Lsp;Lsx;Lezz;Landroid/os/Handler;)V

    iget-object v1, v7, Lqu;->f:Lejk;

    nop

    nop

    invoke-virtual {v1}, Lejk;->a()Landroid/os/Handler;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v2, p1

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2, v13, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    sget-object v6, Ltyg;->a:Ltyg;

    nop

    nop
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_43

    nop

    nop

    :goto_48
    iget-object v0, v7, Lqu;->d:Lueq;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_49
    move-object/from16 v17, v9

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    throw v0

    nop

    :goto_4b
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    const/4 v8, 0x0

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_4d
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_41

    nop

    nop

    :goto_4e
    invoke-static {v0, v15}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4f
    move-object v9, v5

    nop

    nop

    nop

    nop

    :goto_50
    :try_start_3
    invoke-static {v0}, Lqx;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v1, v0, Landroid/hardware/camera2/CameraAccessException;

    nop

    nop

    if-eqz v1, :cond_5

    nop

    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, La;->al(Landroid/hardware/camera2/CameraAccessException;)I

    move-result v0

    nop

    invoke-virtual {v14, v9, v0, v15}, Lezz;->d(Ljava/lang/String;IZ)V

    goto :goto_52

    nop

    nop

    nop

    nop

    nop

    :cond_5
    instance-of v1, v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_6

    nop

    nop

    goto :goto_51

    nop

    nop

    nop

    :cond_6
    instance-of v1, v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    if-nez v1, :cond_8

    nop

    nop

    nop

    instance-of v1, v0, Ljava/lang/SecurityException;

    nop

    nop

    nop

    if-nez v1, :cond_8

    nop

    nop

    nop

    instance-of v1, v0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_8

    nop

    nop

    nop

    instance-of v1, v0, Ljava/lang/NullPointerException;

    nop

    nop

    nop

    if-eqz v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto :goto_51

    nop

    nop

    nop

    nop

    :cond_7
    throw v0

    nop

    nop

    nop

    nop

    :cond_8
    :goto_51
    const/16 v0, 0x9

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    invoke-virtual {v14, v9, v0, v1}, Lezz;->d(Ljava/lang/String;IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_52
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_2b

    nop

    nop

    :goto_54
    move-object v2, v1

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

    nop

    :goto_55
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_56
    const/4 v14, 0x0

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

    nop

    nop

    :goto_57
    invoke-interface/range {v17 .. v17}, Lsx;->f()V

    :goto_58
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iget-object v0, v7, Lqu;->d:Lueq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public final h(Ljava/util/List;Lsp;)Z
    .locals 19

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4d

    nop

    :cond_0
    goto/32 :goto_4c

    nop

    :goto_2
    const/4 v4, 0x1

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_3
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v9, v3}, Lueq;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_7
    move-object v9, v5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    :try_start_0
    invoke-static {v0}, Lqx;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v1, v0, Landroid/hardware/camera2/CameraAccessException;

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, La;->al(Landroid/hardware/camera2/CameraAccessException;)I

    move-result v0

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10, v9, v0, v1}, Lezz;->d(Ljava/lang/String;IZ)V

    goto :goto_a

    nop

    :cond_1
    instance-of v1, v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    goto :goto_9

    nop

    :cond_2
    instance-of v1, v0, Ljava/lang/IllegalStateException;

    nop

    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    instance-of v1, v0, Ljava/lang/SecurityException;

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_4

    nop

    nop

    instance-of v1, v0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    instance-of v1, v0, Ljava/lang/NullPointerException;

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_3

    nop

    nop

    nop

    goto :goto_9

    nop

    :cond_3
    throw v0

    nop

    nop

    nop

    :cond_4
    :goto_9
    const/16 v0, 0x9

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    invoke-virtual {v10, v9, v0, v1}, Lezz;->d(Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_a
    goto/32 :goto_70

    nop

    nop

    :goto_b
    move-object/from16 v3, p2

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_c
    div-double/2addr v3, v5

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface/range {v18 .. v18}, Lsx;->f()V

    :goto_e
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v5, v7, Lqu;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v7, Lqu;->c:Lezz;

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v0, v7, Lqu;->a:Landroid/hardware/camera2/CameraDevice;

    nop

    new-instance v1, Ljava/util/ArrayList;

    nop

    invoke-static/range {p1 .. p1}, Lrkm;->aI(Ljava/lang/Iterable;)I

    move-result v2

    nop

    nop

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v18, :cond_5

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_13
    const v0, 0x15

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_15
    div-double/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    move-object v9, v5

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, v0, Lueq;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_1b
    iget-object v0, v7, Lqu;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_1c
    iget-object v0, v7, Lqu;->d:Lueq;

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
    goto/16 :goto_71

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v1, 0x0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_20
    invoke-static {v2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_21
    move-object v10, v4

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

    :goto_22
    goto/16 :goto_71

    nop

    nop

    :catchall_0
    move-exception v0

    nop

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

    nop

    :goto_23
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_24
    return v1

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_25
    move-object/from16 v1, v16

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_27
    const-wide v5, 0x412e848000000000L    # 1000000.0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const-string v1, "Check failed."

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    move-object v4, v9

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_2a
    const-string v1, "CXCP#createCaptureSessionByOutputConfigurations-"

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_10

    nop

    :goto_2c
    :try_start_3
    new-instance v13, Lra;

    nop

    nop

    nop

    nop

    iget-object v6, v7, Lqu;->c:Lezz;

    nop

    iget-object v2, v7, Lqu;->f:Lejk;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lejk;->a()Landroid/os/Handler;

    move-result-object v14

    nop

    nop

    nop

    nop
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/32 :goto_63

    nop

    nop

    :goto_2d
    const-string v8, "CXCP"

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2e
    long-to-double v0, v0

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    move-object/from16 v1, v16

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_31
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_32
    move-object/from16 v3, p2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_33
    move-object/from16 v18, v9

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_34
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_35
    move-object v6, v14

    nop

    nop

    nop

    nop

    nop

    :try_start_4
    invoke-direct/range {v1 .. v6}, Lra;-><init>(Lsd;Lsp;Lsx;Lezz;Landroid/os/Handler;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v0, v7, Lqu;->a:Landroid/hardware/camera2/CameraDevice;

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    move-object/from16 v2, v15

    nop

    nop

    nop

    nop

    sget-object v3, Lcom/a;->c:Ljava/lang/Object;

    nop

    nop

    nop

    sget-object v4, Lnne;->b:Lnne;

    nop

    nop

    if-eq v3, v4, :cond_8

    nop

    sget-object v4, Lnne;->k:Lnne;

    nop

    if-eq v3, v4, :cond_9

    nop

    nop

    nop

    sget-object v4, Lnne;->g:Lnne;

    nop

    nop

    if-eq v3, v4, :cond_a

    nop

    sget-object v4, Lnne;->l:Lnne;

    nop

    nop

    nop

    nop

    if-eq v3, v4, :cond_b

    nop

    sget-object v4, Lnne;->c:Lnne;

    nop

    nop

    nop

    nop

    if-eq v3, v4, :cond_6

    nop

    nop

    nop

    sget-object v4, Lnne;->f:Lnne;

    nop

    nop

    nop

    if-eq v3, v4, :cond_7

    nop

    nop

    nop

    nop

    goto/16 :goto_37

    nop

    :cond_6
    sget-object v3, Lcom/a;->cb:Ljava/lang/Object;

    nop

    nop

    sget-object v4, Loze;->a:Loze;

    nop

    nop

    nop

    if-eq v3, v4, :cond_c

    nop

    nop

    nop

    nop

    nop

    sget-object v4, Loze;->b:Loze;

    nop

    nop

    nop

    if-eq v3, v4, :cond_d

    nop

    nop

    nop

    nop

    sget-object v4, Loze;->c:Loze;

    nop

    nop

    nop

    nop

    nop

    if-eq v3, v4, :cond_e

    nop

    nop

    nop

    nop

    nop

    sget-object v4, Loze;->d:Loze;

    nop

    nop

    nop

    nop

    nop

    if-eq v3, v4, :cond_10

    nop

    nop

    nop

    sget-object v4, Loze;->e:Loze;

    nop

    nop

    if-eq v3, v4, :cond_10

    nop

    nop

    sget-object v4, Loze;->f:Loze;

    nop

    if-eq v3, v4, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_37

    nop

    :cond_7
    sget-object v3, Lcom/a;->cb:Ljava/lang/Object;

    nop

    nop

    nop

    sget-object v4, Loze;->g:Loze;

    nop

    nop

    nop

    nop

    if-eq v3, v4, :cond_11

    nop

    nop

    sget-object v4, Loze;->h:Loze;

    nop

    nop

    nop

    nop

    if-eq v3, v4, :cond_12

    nop

    nop

    nop

    goto/16 :goto_37

    nop

    nop

    :cond_8
    const-string v3, "c2VzX3BfaWRfcGhfa2V5"

    nop

    goto :goto_36

    nop

    nop

    nop

    nop

    :cond_9
    const-string v3, "c2VzX3BfaWRfbnNfa2V5"

    nop

    nop

    goto :goto_36

    nop

    nop

    nop

    nop

    :cond_a
    const-string v3, "c2VzX3BfaWRfcHRfa2V5"

    nop

    nop

    nop

    goto :goto_36

    nop

    :cond_b
    const-string v3, "c2VzX3RsX2lkX2tleQ"

    nop

    nop

    nop

    goto :goto_36

    nop

    nop

    nop

    :cond_c
    const-string v3, "c2VzX2F1dG9mcHNfaWRfa2V5"

    nop

    nop

    nop

    nop

    nop

    goto :goto_36

    nop

    nop

    :cond_d
    const-string v3, "c2VzXzI0ZnBzX2lkX2tleQ"

    nop

    goto :goto_36

    nop

    nop

    nop

    nop

    :cond_e
    const-string v3, "cHJlZl92aWRlb19hbWV0aHlzdF9rZXk"

    nop

    nop

    nop

    nop

    invoke-static {v3}, Lcom/a;->aa_mb(Ljava/lang/Object;)I

    move-result v3

    nop

    nop

    if-eqz v3, :cond_f

    nop

    nop

    nop

    nop

    nop

    const-string v3, "c2VzX2hkcjEwX2lkX2tleQ"

    nop

    goto :goto_36

    nop

    :cond_f
    const-string v3, "c2VzXzMwZnBzX2lkX2tleQ"

    nop

    nop

    nop

    goto :goto_36

    nop

    nop

    nop

    nop

    :cond_10
    const-string v3, "c2VzXzYwZnBzX2lkX2tleQ"

    nop

    nop

    goto :goto_36

    nop

    nop

    nop

    nop

    nop

    :cond_11
    const-string v3, "c2VzXzEyMGZwc19pZF9rZXk"

    nop

    goto :goto_36

    nop

    nop

    nop

    nop

    nop

    :cond_12
    const-string v3, "c2VzXzI0MGZwc19pZF9rZXk"

    nop

    nop

    nop

    goto :goto_36

    nop

    nop

    :goto_36
    invoke-static {v3}, Lcom/a;->ac_ma(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    const-string v4, ""

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    if-nez v4, :cond_13

    nop

    nop

    nop

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    nop

    nop

    nop

    goto :goto_38

    nop

    nop

    nop

    nop

    nop

    :cond_13
    :goto_37
    const v3, 0x0

    nop

    nop

    nop

    :goto_38
    move-object/from16 v4, v13

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v7, Lqu;->f:Lejk;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lejk;->a()Landroid/os/Handler;

    move-result-object v5

    nop

    nop

    nop

    nop

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/camera2/CameraDevice;->createCustomCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;ILandroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    sget-object v6, Ltyg;->a:Ltyg;

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_39
    move-object/from16 v16, v10

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_3a
    const/4 v10, 0x0

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_3b
    move-object/from16 v2, p0

    nop

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

    nop

    :goto_3c
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    move-object v1, v13

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const-string v10, "%.3f ms"

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_3f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v11

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4e

    nop

    nop

    :goto_41
    if-nez v17, :cond_14

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_14
    :try_start_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    nop

    move-object/from16 v6, v17

    nop

    nop

    nop

    check-cast v6, Lrh;

    nop

    nop

    nop

    const-class v13, Landroid/hardware/camera2/params/OutputConfiguration;

    nop

    nop

    nop

    nop

    sget v14, Luct;->a:I

    nop

    nop

    nop

    nop

    new-instance v14, Lucb;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v14, v13}, Lucb;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v6, v14}, Lrh;->c(Ludp;)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const-wide v2, 0x412e848000000000L    # 1000000.0

    nop

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

    :goto_43
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_44
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

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

    nop

    nop

    :goto_46
    long-to-double v3, v3

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {v2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_48
    const-string v0, "Failed to create capture session from "

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_49
    move-object/from16 v18, v9

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

    :goto_4a
    move-object/from16 v16, v10

    nop

    nop

    :goto_4b
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_54

    nop

    :goto_4d
    goto/32 :goto_68

    nop

    nop

    :goto_4e
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_50
    sub-long/2addr v0, v11

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_51
    move-object v10, v4

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_52
    goto :goto_4b

    nop

    nop

    nop

    nop

    nop

    :catchall_3
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_53
    throw v0

    nop

    nop

    :goto_54
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_55
    move-object/from16 v16, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_56
    goto/16 :goto_66

    nop

    :catch_1
    move-exception v0

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_2f

    nop

    nop

    :goto_58
    move-object v15, v2

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_59
    if-nez v6, :cond_15

    nop

    goto/32 :goto_6c

    nop

    nop

    :cond_15
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_5a
    const v1, 0xc

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_5b
    move-object v9, v0

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    sub-long/2addr v3, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_5d
    if-eqz v6, :cond_16

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_48

    nop

    nop

    :goto_5e
    invoke-static {v7, v0}, Lqx;->b(Lqu;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :try_start_7
    iget-object v0, v7, Lqu;->a:Landroid/hardware/camera2/CameraDevice;

    nop

    nop

    nop

    nop

    iget-object v1, v7, Lqu;->f:Lejk;

    nop

    nop

    nop

    invoke-virtual {v1}, Lejk;->a()Landroid/os/Handler;

    move-result-object v1

    nop

    nop

    invoke-virtual {v0, v15, v13, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureSessionByOutputConfigurations(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    sget-object v6, Ltyg;->a:Ltyg;

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_60
    const/4 v2, 0x0

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iget-object v0, v7, Lqu;->d:Lueq;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :try_start_8
    iget-object v0, v7, Lqu;->a:Landroid/hardware/camera2/CameraDevice;

    nop

    nop

    nop

    nop

    iget-object v1, v7, Lqu;->f:Lejk;

    nop

    nop

    invoke-virtual {v1}, Lejk;->a()Landroid/os/Handler;

    move-result-object v1

    nop

    nop

    move-object/from16 v15, p1

    nop

    invoke-virtual {v0, v15, v13, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    sget-object v6, Ltyg;->a:Ltyg;

    nop
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_63
    move-object v2, v1

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_64
    check-cast v9, Lsx;

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_65
    move-object v1, v10

    nop

    :goto_66
    goto/32 :goto_60

    nop

    nop

    :goto_67
    move-object v5, v6

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_68
    move-object/from16 v7, p0

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_69
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_6a
    if-nez v0, :cond_17

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    return v1

    nop

    nop

    :goto_6c
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_6d
    goto :goto_71

    nop

    nop

    nop

    nop

    nop

    :catchall_4
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_6e
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_6f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    const/4 v6, 0x0

    nop

    nop

    :goto_71
    goto/32 :goto_57

    nop

    nop
.end method

.method public final i(Ljava/util/List;Lsp;)Z
    .locals 18

    goto/32 :goto_49

    nop

    nop

    :goto_0
    iget-object v0, v7, Lqu;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v14, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_4
    invoke-static {v0, v15}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move-object/from16 v17, v9

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_7
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move-object v9, v0

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    long-to-double v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_a
    move-object v5, v6

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string v8, "CXCP"

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0xa

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_d
    div-double/2addr v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_4e

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v9, v3}, Lueq;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_10
    invoke-static {v7, v0}, Lqx;->b(Lqu;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_12
    const-wide v2, 0x412e848000000000L    # 1000000.0

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

    nop

    :goto_13
    goto/32 :goto_2

    nop

    :goto_14
    if-nez v6, :cond_0

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-string v1, "Check failed."

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_46

    nop

    nop

    :goto_17
    throw v0

    nop

    nop

    :goto_18
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_51

    nop

    nop

    :goto_1a
    sub-long/2addr v0, v11

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1b
    long-to-double v2, v2

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1d
    move-object/from16 v3, p2

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_1e
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_0

    nop

    nop

    :goto_20
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_22
    move-object v1, v2

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_25
    move-object v14, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_26
    throw v0

    nop

    :goto_27
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_24

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_2b
    div-double/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2c
    move-object v14, v4

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_2d
    goto :goto_21

    nop

    nop

    nop

    nop

    :catch_1
    move-exception v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    move-object/from16 v6, v16

    nop

    nop

    nop

    :try_start_0
    invoke-direct/range {v1 .. v6}, Lra;-><init>(Lsd;Lsp;Lsx;Lezz;Landroid/os/Handler;)V

    iget-object v1, v7, Lqu;->f:Lejk;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lejk;->a()Landroid/os/Handler;

    move-result-object v1

    nop

    move-object/from16 v2, p1

    nop

    nop

    nop

    invoke-virtual {v0, v2, v13, v1}, Landroid/hardware/camera2/CameraDevice;->createConstrainedHighSpeedCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    sget-object v6, Ltyg;->a:Ltyg;

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2d

    nop

    nop

    :goto_2f
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_30
    return v15

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    return v1

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_33
    move-object v9, v5

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

    nop

    :goto_34
    move-object v4, v9

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_35
    move-object v13, v2

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

    nop

    :goto_36
    sub-long/2addr v2, v11

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v0, v0, Lueq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_39
    const-string v1, "CXCP#createConstrainedHighSpeedCaptureSession-"

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    check-cast v9, Lsx;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_3c
    const-wide v4, 0x412e848000000000L    # 1000000.0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3d
    const-string v10, "%.3f ms"

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_3e
    move-object/from16 v17, v9

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_3f
    iget-object v0, v7, Lqu;->d:Lueq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    move-object v2, v1

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

    :goto_41
    const/4 v15, 0x1

    nop

    :try_start_1
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v5, v7, Lqu;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    iget-object v4, v7, Lqu;->c:Lezz;

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, v7, Lqu;->a:Landroid/hardware/camera2/CameraDevice;

    nop

    new-instance v1, Lra;

    nop

    nop

    iget-object v6, v7, Lqu;->c:Lezz;

    nop

    nop

    iget-object v2, v7, Lqu;->f:Lejk;

    nop

    nop

    nop

    invoke-virtual {v2}, Lejk;->a()Landroid/os/Handler;

    move-result-object v16

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_42
    invoke-static {v1, v10, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_43
    invoke-interface/range {v17 .. v17}, Lsx;->f()V

    :goto_44
    goto/32 :goto_14

    nop

    nop

    :goto_45
    iget-object v0, v7, Lqu;->d:Lueq;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_46
    if-eqz v6, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4c

    nop

    nop

    :goto_47
    invoke-static {v2, v15}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    const v0, 0x18

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4a
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1

    nop

    :goto_4b
    move-object/from16 v2, p0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    const-string v0, "Failed to create capture session from "

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4d
    move-object v9, v5

    nop

    nop

    :goto_4e
    :try_start_3
    invoke-static {v0}, Lqx;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v1, v0, Landroid/hardware/camera2/CameraAccessException;

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_4

    nop

    nop

    nop

    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    nop

    nop

    invoke-static {v0}, La;->al(Landroid/hardware/camera2/CameraAccessException;)I

    move-result v0

    nop

    nop

    nop

    invoke-virtual {v14, v9, v0, v15}, Lezz;->d(Ljava/lang/String;IZ)V

    goto :goto_50

    nop

    :cond_4
    instance-of v1, v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    if-eqz v1, :cond_5

    nop

    nop

    nop

    nop

    goto :goto_4f

    nop

    nop

    :cond_5
    instance-of v1, v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    if-nez v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    instance-of v1, v0, Ljava/lang/SecurityException;

    nop

    nop

    nop

    if-nez v1, :cond_7

    nop

    nop

    nop

    instance-of v1, v0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    if-nez v1, :cond_7

    nop

    nop

    nop

    nop

    instance-of v1, v0, Ljava/lang/NullPointerException;

    nop

    nop

    if-eqz v1, :cond_6

    nop

    nop

    nop

    goto :goto_4f

    nop

    nop

    nop

    :cond_6
    throw v0

    nop

    nop

    nop

    nop

    :cond_7
    :goto_4f
    const/16 v0, 0x9

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    invoke-virtual {v14, v9, v0, v1}, Lezz;->d(Ljava/lang/String;IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_50
    goto/32 :goto_20

    nop

    nop

    :goto_51
    if-nez v17, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_53
    invoke-static {v1, v10, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_54
    const/4 v1, 0x0

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_56
    move-object/from16 v7, p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_57
    new-instance v0, Ljava/lang/IllegalStateException;

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

    :goto_58
    move-object/from16 v3, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method

.method public final j(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Lsp;)Z
    .locals 18

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v6, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3e

    nop

    nop

    :goto_1
    invoke-interface/range {v17 .. v17}, Lsx;->f()V

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v1, v10, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_4
    goto/16 :goto_56

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sub-long/2addr v2, v11

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_6
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_7
    move-object v9, v0

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v6, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v1, v10, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move-object/from16 v3, p3

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_c
    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_49

    nop

    nop

    :goto_d
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_2

    nop

    goto/32 :goto_50

    nop

    nop

    :cond_2
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_41

    nop

    :goto_12
    move-object v4, v9

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    move-object/from16 v7, p0

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

    nop

    :goto_14
    const-string v1, "Check failed."

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_15
    move-object v5, v6

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_16
    sub-long/2addr v0, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    move-object/from16 v17, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_18
    const/4 v15, 0x1

    nop

    :try_start_0
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v5, v7, Lqu;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v7, Lqu;->c:Lezz;

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, v7, Lqu;->a:Landroid/hardware/camera2/CameraDevice;

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Lra;

    nop

    nop

    nop

    iget-object v6, v7, Lqu;->c:Lezz;

    nop

    nop

    nop

    iget-object v2, v7, Lqu;->f:Lejk;

    nop

    nop

    nop

    invoke-virtual {v2}, Lejk;->a()Landroid/os/Handler;

    move-result-object v16

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_43

    nop

    nop

    :goto_19
    const/4 v1, 0x0

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_1a
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

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

    :goto_1b
    throw v0

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_58

    nop

    nop

    nop

    :goto_1d
    move-object/from16 v17, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_1e
    return v15

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, v9, v3}, Lueq;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v0, v7, Lqu;->d:Lueq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_23
    const-string v1, "CXCP#createReprocessableCaptureSession-"

    nop

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

    :goto_24
    goto/16 :goto_45

    nop

    nop

    :catch_1
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_25
    move-object/from16 v3, p3

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

    :goto_26
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_27
    move-object/from16 v2, p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_28
    const-wide v4, 0x412e848000000000L    # 1000000.0

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

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

    nop

    :goto_2a
    invoke-static {v2, v15}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

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

    :goto_2b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v11

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

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

    :goto_2d
    const v0, 0x9

    nop

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

    :goto_2e
    move-object v13, v2

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const v1, 0x18

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

    nop

    :goto_31
    iget-object v0, v7, Lqu;->d:Lueq;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_32
    iget-object v0, v7, Lqu;->b:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_33
    const-wide v2, 0x412e848000000000L    # 1000000.0

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    move-object v9, v5

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/4 v1, 0x0

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    div-double/2addr v0, v2

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    long-to-double v2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_38
    check-cast v9, Lsx;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_39
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const-string v10, "%.3f ms"

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3b
    const/4 v14, 0x0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_3c
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    move-object v14, v4

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const-string v0, "Failed to create reprocess session from "

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v0, v0, Lueq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_40
    return v1

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_41
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_43
    move-object v2, v1

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    move-object v9, v5

    nop

    :goto_45
    :try_start_2
    invoke-static {v0}, Lqx;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    nop

    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v1, v0, Landroid/hardware/camera2/CameraAccessException;

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_4

    nop

    nop

    nop

    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    nop

    nop

    nop

    invoke-static {v0}, La;->al(Landroid/hardware/camera2/CameraAccessException;)I

    move-result v0

    nop

    invoke-virtual {v14, v9, v0, v15}, Lezz;->d(Ljava/lang/String;IZ)V

    goto :goto_47

    nop

    nop

    nop

    :cond_4
    instance-of v1, v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_5

    nop

    goto :goto_46

    nop

    nop

    nop

    :cond_5
    instance-of v1, v0, Ljava/lang/IllegalStateException;

    nop

    if-nez v1, :cond_7

    nop

    instance-of v1, v0, Ljava/lang/SecurityException;

    nop

    if-nez v1, :cond_7

    nop

    nop

    instance-of v1, v0, Ljava/lang/UnsupportedOperationException;

    nop

    if-nez v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    instance-of v1, v0, Ljava/lang/NullPointerException;

    nop

    nop

    if-eqz v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto :goto_46

    nop

    nop

    nop

    nop

    :cond_6
    throw v0

    nop

    nop

    nop

    :cond_7
    :goto_46
    const/16 v0, 0x9

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v14, v9, v0, v1}, Lezz;->d(Ljava/lang/String;IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_47
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_48
    move-object v1, v2

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_49
    if-nez v17, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4a
    long-to-double v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_4b
    move-object/from16 v6, v16

    nop

    nop

    nop

    :try_start_3
    invoke-direct/range {v1 .. v6}, Lra;-><init>(Lsd;Lsp;Lsx;Lezz;Landroid/os/Handler;)V

    iget-object v1, v7, Lqu;->f:Lejk;

    nop

    invoke-virtual {v1}, Lejk;->a()Landroid/os/Handler;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v2, p1

    nop

    nop

    nop

    move-object/from16 v3, p2

    nop

    invoke-virtual {v0, v2, v3, v13, v1}, Landroid/hardware/camera2/CameraDevice;->createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    sget-object v6, Ltyg;->a:Ltyg;

    nop

    nop

    nop
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_4

    nop

    nop

    :goto_4c
    invoke-static {v7, v0}, Lqx;->b(Lqu;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4d
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    move-object v14, v4

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_4f
    throw v0

    nop

    nop

    :goto_50
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-static {v0, v15}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_52
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const-string v8, "CXCP"

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_55
    const/4 v6, 0x0

    nop

    nop

    :goto_56
    goto/32 :goto_52

    nop

    nop

    nop

    :goto_57
    div-double/2addr v2, v4

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_42

    nop

    nop
.end method

.method public final k(Lsu;Ljava/util/List;Lsp;)Z
    .locals 21

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

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

    :goto_1
    move-object v6, v15

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-direct/range {v1 .. v6}, Lra;-><init>(Lsd;Lsp;Lsx;Lezz;Landroid/os/Handler;)V

    iget-object v1, v7, Lqu;->f:Lejk;

    nop

    nop

    invoke-virtual {v1}, Lejk;->a()Landroid/os/Handler;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10, v13, v0, v14, v1}, Landroid/hardware/camera2/CameraDevice;->createReprocessableCaptureSessionByConfigurations(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    sget-object v6, Ltyg;->a:Ltyg;

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v1, v7, Lqu;->d:Lueq;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move-wide/from16 v18, v11

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    :goto_6
    const v1, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    move-wide/from16 v18, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_48

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move-object/from16 v17, v10

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

    :goto_c
    sub-long v0, v0, v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_d
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_46

    nop

    nop

    :goto_e
    move-object/from16 v20, v9

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    throw v0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_11
    move-object/from16 v20, v9

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_12
    move-object/from16 v3, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_13
    invoke-static {v9, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_14
    invoke-static {v7, v0}, Lqx;->b(Lqu;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move-object v1, v14

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_16
    iget-object v1, v1, Lueq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_69

    nop

    nop

    nop

    nop

    :goto_18
    :try_start_1
    new-instance v14, Lra;

    nop

    iget-object v6, v7, Lqu;->c:Lezz;

    nop

    nop

    nop

    nop

    iget-object v2, v7, Lqu;->f:Lejk;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lejk;->a()Landroid/os/Handler;

    move-result-object v15

    nop
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_19
    return v1

    nop

    nop

    :goto_1a
    goto/32 :goto_24

    nop

    nop

    :goto_1b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1f

    nop

    nop

    :goto_1d
    div-double/2addr v0, v2

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_1e
    long-to-double v0, v0

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    throw v0

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_21
    move-object/from16 v1, v17

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_22
    move-object/from16 v3, p3

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const-string v8, "CXCP"

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

    :goto_24
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_25
    const-string v10, "%.3f ms"

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_26
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const-string v2, "CXCP#createReprocessableCaptureSessionByConfigurations-"

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_28
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface/range {v20 .. v20}, Lsx;->f()V

    :goto_2a
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    sub-long v2, v2, v18

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

    :goto_2c
    move-object/from16 v2, p0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2d
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    long-to-double v2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_2f
    move-object/from16 v1, v17

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_30
    move-object v10, v2

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_31
    move-object v11, v5

    nop

    nop

    :goto_32
    :try_start_2
    invoke-static {v0}, Lqx;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v1, v0, Landroid/hardware/camera2/CameraAccessException;

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    nop

    nop

    nop

    invoke-static {v0}, La;->al(Landroid/hardware/camera2/CameraAccessException;)I

    move-result v0

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    invoke-virtual {v12, v11, v0, v1}, Lezz;->d(Ljava/lang/String;IZ)V

    goto :goto_34

    nop

    :cond_1
    instance-of v1, v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    goto :goto_33

    nop

    nop

    nop

    nop

    :cond_2
    instance-of v1, v0, Ljava/lang/IllegalStateException;

    nop

    nop

    if-nez v1, :cond_4

    nop

    instance-of v1, v0, Ljava/lang/SecurityException;

    nop

    nop

    nop

    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    instance-of v1, v0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    nop

    if-nez v1, :cond_4

    nop

    instance-of v1, v0, Ljava/lang/NullPointerException;

    nop

    nop

    nop

    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto :goto_33

    nop

    nop

    nop

    nop

    :cond_3
    throw v0

    nop

    nop

    :cond_4
    :goto_33
    const/16 v0, 0x9

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v12, v11, v0, v1}, Lezz;->d(Ljava/lang/String;IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_34
    goto/32 :goto_56

    nop

    nop

    :goto_35
    goto/32 :goto_10

    nop

    nop

    :goto_36
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_37
    move-object v5, v6

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_38
    iget-object v1, v7, Lqu;->d:Lueq;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_39
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_3a
    move-object/from16 v17, v10

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/16 :goto_57

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_3e
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_41
    move-object v1, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_42
    move-object/from16 v0, p1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_43
    move-object/from16 v7, p0

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const-wide v4, 0x412e848000000000L    # 1000000.0

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_45
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v1, v7, Lqu;->b:Ljava/lang/String;

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    const/4 v9, 0x0

    nop

    :goto_48
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_49
    move-object v4, v9

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto/16 :goto_32

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v1, v9, v3}, Lueq;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_4c
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_4d
    const-string v1, "Check failed."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_36

    nop

    nop

    :goto_4f
    move-object v12, v4

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_50
    if-nez v6, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_5
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_51
    if-lez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    :cond_6
    goto/32 :goto_35

    nop

    :goto_52
    check-cast v9, Lsx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_53
    move-object v12, v4

    nop

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

    nop

    :goto_54
    return v1

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_55
    if-nez v6, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_7
    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    check-cast v6, Lrh;

    nop

    nop

    nop

    nop

    const-class v14, Landroid/hardware/camera2/params/OutputConfiguration;

    nop

    nop

    nop

    nop

    sget v16, Luct;->a:I

    nop

    nop

    nop

    new-instance v15, Lucb;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v15, v14}, Lucb;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v6, v15}, Lrh;->c(Ludp;)Ljava/lang/Object;

    move-result-object v6

    nop

    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_56
    move-object v6, v9

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_58
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_5b
    move-object v9, v1

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    move-object v11, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_5d
    const-wide v2, 0x412e848000000000L    # 1000000.0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    move-wide/from16 v18, v11

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_5f
    if-nez v20, :cond_8

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

    :cond_8
    goto/32 :goto_29

    nop

    nop

    :goto_60
    invoke-static {v9, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    if-eqz v6, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_62
    move-object v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_63
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v11

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_64
    div-double/2addr v2, v4

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    const/4 v11, 0x0

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_66
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_67
    const-string v0, "Failed to create reprocess session from "

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

    :goto_68
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    :try_start_4
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v5, v7, Lqu;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    iget-object v4, v7, Lqu;->c:Lezz;

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v1, v7, Lqu;->a:Landroid/hardware/camera2/CameraDevice;

    nop

    nop

    nop

    nop

    nop

    iget v2, v0, Lsu;->a:I

    nop

    nop

    iget v6, v0, Lsu;->b:I

    nop

    nop

    nop

    nop

    nop

    iget v0, v0, Lsu;->c:I

    nop

    nop

    nop

    new-instance v13, Landroid/hardware/camera2/params/InputConfiguration;

    nop

    nop

    invoke-direct {v13, v2, v6, v0}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    invoke-static/range {p2 .. p2}, Lrkm;->aI(Ljava/lang/Iterable;)I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/32 :goto_55

    nop

    nop

    :goto_6a
    move-object/from16 v17, v10

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_6b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    move-wide/from16 v18, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    const/4 v9, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6f
    goto/16 :goto_59

    nop

    nop

    :catch_1
    move-exception v0

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
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_7

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    const-string v1, "AndroidCameraDevice(camera="

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    const/16 p0, 0x29

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

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
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lqu;->b:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0xc

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p0}, Loz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    :goto_f
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x20

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

    :goto_11
    new-instance v0, Ljava/lang/StringBuilder;

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
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method
