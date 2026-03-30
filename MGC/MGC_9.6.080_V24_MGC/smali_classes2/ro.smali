.class final Lro;
.super Luci;
.source "PG"

# interfaces
.implements Luaz;


# instance fields
.field final synthetic a:Lrp;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lrp;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lro;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lro;->a:Lrp;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 2

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Lro;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1
    if-ne v0, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    :goto_4
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-ne v0, v1, :cond_2

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_27

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-ne v0, v1, :cond_3

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    :goto_9
    const/4 v1, 0x2

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

    :goto_a
    if-lez v0, :cond_4

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_6

    nop

    :goto_b
    const/4 v1, 0x3

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lro;->b()Ljava/util/Set;

    move-result-object p0

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lro;->b()Ljava/util/Set;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lro;->b()Ljava/util/Set;

    move-result-object p0

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

    :goto_11
    return-object p0

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_13
    return-object p0

    nop

    :goto_14
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x1a

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

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_17
    const/4 v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1a
    if-ne v0, v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_5
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Lro;->b()Ljava/util/Set;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Lro;->b()Ljava/util/Set;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return-object p0

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_10

    nop

    nop

    :goto_1f
    return-object p0

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Lro;->b()Ljava/util/Set;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_22
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_23
    return-object p0

    nop

    nop

    :goto_24
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v0, :cond_6

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

    :cond_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    return-object p0

    nop

    nop

    :goto_27
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0}, Lro;->b()Ljava/util/Set;

    move-result-object p0

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
.end method

.method public final b()Ljava/util/Set;
    .locals 5

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v2, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lrp;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v2, "CXCP"

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v0, Ltyy;->a:Ltyy;

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object v0

    nop

    nop

    :goto_6
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lro;->a:Lrp;

    nop

    nop

    nop

    iget-object v1, v1, Lrp;->a:Ljava/lang/String;

    nop

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#availablePhysicalCameraRequestKeys"

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    iget-object v1, p0, Lro;->a:Lrp;

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, v1, Lrp;->b:Landroid/hardware/camera2/CameraCharacteristics;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailablePhysicalCameraRequestKeys()Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    sget-object v0, Ltyw;->a:Ltyw;

    nop

    :cond_0
    invoke-static {v0}, Lrkm;->aE(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_41

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    nop
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_7
    const/4 v4, 0x2

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v2, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_55

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lro;->a:Lrp;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lrp;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lro;->a:Lrp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_e
    sget-object v0, Ltyy;->a:Ltyy;

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    const/4 v2, 0x3

    nop

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

    :goto_11
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_12
    const-string v1, "Camera-"

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-object v0

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p0}, Loz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_16
    const-string v1, "Failed to getPhysicalCameraIds from "

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
    iget-object p0, p0, Lro;->a:Lrp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sget-object v0, Ltyy;->a:Ltyy;

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p0, p0, Lro;->a:Lrp;

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

    nop

    nop

    :goto_1b
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_1c
    sget-object v0, Ltyy;->a:Ltyy;

    nop

    nop

    :goto_1d
    goto/32 :goto_5

    nop

    nop

    :goto_1e
    invoke-static {p0}, Loz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v2, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_21
    const-string v2, "Camera-"

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_22
    const-string v1, "Failed to getAvailableCaptureResultKeys from "

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_23
    const/4 v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_24
    const-string v1, "Failed to getPhysicalCameraIds from "

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

    :goto_25
    invoke-static {p0}, Loz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_27
    const-string v2, "CXCP"

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_28
    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_29
    if-ne v3, v2, :cond_1

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_54

    nop

    nop

    :goto_2a
    iget-object p0, p0, Lrp;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const-string v1, "Failed to getAvailableSessionKeys from Camera-"

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {p0}, Loz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_2e
    iget-object p0, p0, Lrp;->a:Ljava/lang/String;

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-ne v3, v4, :cond_2

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_30
    invoke-static {v2, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_31
    iget-object p0, p0, Lro;->a:Lrp;

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_32
    iget-object p0, p0, Lrp;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_34
    if-nez v3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :cond_3
    :try_start_3
    monitor-exit v2

    nop

    nop

    nop

    nop

    nop

    goto :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_35
    monitor-exit v2

    nop

    invoke-static {v1}, Loz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, v0, Lejk;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    const-string v2, "camera"

    nop

    nop

    nop

    nop

    check-cast v0, Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->getCameraExtensionCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraExtensionCharacteristics;

    move-result-object v3

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_36
    invoke-virtual {v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getSupportedExtensions()Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lrkm;->aE(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_4
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_1

    goto/32 :goto_44

    nop

    nop

    :goto_37
    const-string v2, "CXCP"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_38
    iget-object p0, p0, Lrp;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-nez v3, :cond_4

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_3a
    sget-object v0, Ltyy;->a:Ltyy;

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_a

    nop

    nop

    :goto_3c
    if-ne v3, v4, :cond_5

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_10

    nop

    nop

    :goto_3d
    if-ne v3, v2, :cond_6

    nop

    goto/32 :goto_63

    nop

    :cond_6
    goto/32 :goto_73

    nop

    nop

    :goto_3e
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_40
    sget-object v0, Ltyy;->a:Ltyy;

    nop

    nop

    :goto_41
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_42
    const/16 p0, 0x7d

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_43
    const-string v1, "Failed to getAvailableCaptureRequestKeys from "

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_44
    goto/16 :goto_5f

    nop

    :catchall_1
    move-exception v0

    nop

    :try_start_5
    monitor-exit v2

    nop

    nop

    nop

    nop

    throw v0

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    nop

    nop

    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    nop

    nop

    nop

    nop

    nop
    :try_end_6
    .catch Ljava/lang/AssertionError; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v0

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const-string v2, "CXCP"

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

    :goto_47
    return-object v0

    nop

    nop

    nop

    :goto_48
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lro;->a:Lrp;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lrp;->a:Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#availableSessionKeys"

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lro;->a:Lrp;

    nop
    :try_end_7
    .catch Ljava/lang/AssertionError; {:try_start_7 .. :try_end_7} :catch_2

    :try_start_8
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, v1, Lrp;->b:Landroid/hardware/camera2/CameraCharacteristics;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableSessionKeys()Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    sget-object v0, Ltyw;->a:Ltyw;

    nop

    nop

    :cond_7
    invoke-static {v0}, Lrkm;->aE(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_4

    nop

    nop

    :catchall_3
    move-exception v0

    nop

    nop

    nop

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    nop

    nop

    nop

    nop

    nop
    :try_end_9
    .catch Ljava/lang/AssertionError; {:try_start_9 .. :try_end_9} :catch_2

    :catch_2
    move-exception v0

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_49
    const-string v2, "CXCP"

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_4a
    iget-object p0, p0, Lrp;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_4b
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_4c
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_4d
    if-ne v3, v2, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :cond_8
    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lro;->a:Lrp;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lrp;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-static {v0}, Loz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "#supportedExtensions"

    nop

    nop

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    iget-object v1, p0, Lro;->a:Lrp;

    nop
    :try_end_a
    .catch Ljava/lang/AssertionError; {:try_start_a .. :try_end_a} :catch_1

    :try_start_b
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, v1, Lrp;->c:Lejk;

    nop

    nop

    nop

    iget-object v1, v1, Lrp;->a:Ljava/lang/String;

    nop

    nop

    nop

    iget-object v2, v0, Lejk;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    monitor-enter v2

    nop
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    iget-object v3, v0, Lejk;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v3, Landroid/util/ArrayMap;

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    check-cast v3, Landroid/hardware/camera2/CameraExtensionCharacteristics;

    nop

    nop

    nop
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_4e
    const-string v1, "CXCP"

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

    :goto_4f
    invoke-static {p0}, Loz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-static {p0}, Loz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_51
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_53
    iget-object p0, p0, Lro;->a:Lrp;

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

    :goto_54
    const/4 v2, 0x4

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_55
    const-string v0, "Camera-"

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_56
    invoke-static {v2, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget-object p0, p0, Lro;->a:Lrp;

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_58
    const-string v1, "Failed to getSupportedExtensions from Camera-"

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_59
    const-string v2, "CXCP"

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_5a
    invoke-static {v2, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    :try_start_d
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lro;->a:Lrp;

    nop

    nop

    iget-object v1, v1, Lrp;->a:Ljava/lang/String;

    nop

    nop

    nop

    invoke-static {v1}, Loz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#physicalCameraIds"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lro;->a:Lrp;

    nop

    nop

    nop
    :try_end_d
    .catch Ljava/lang/AssertionError; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_3

    :try_start_e
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, v1, Lrp;->b:Landroid/hardware/camera2/CameraCharacteristics;

    nop

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCharacteristics;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lrp;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-static {v1}, Loz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    nop

    invoke-static {v0}, Lrkm;->aI(Ljava/lang/Iterable;)I

    move-result v2

    nop

    nop

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    if-eqz v2, :cond_9

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Loz;->b(Ljava/lang/String;)V

    new-instance v3, Loz;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, v2}, Loz;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    nop

    nop

    nop

    nop

    nop

    :cond_9
    invoke-static {v1}, Lrkm;->aE(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    nop

    nop

    nop
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :try_start_f
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_f

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

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    nop
    :try_end_f
    .catch Ljava/lang/AssertionError; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_3

    :catch_3
    move-exception v0

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

    :goto_5e
    sget-object v0, Ltyy;->a:Ltyy;

    nop

    :goto_5f
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_60
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_61
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_62
    return-object v0

    nop

    nop

    nop

    nop

    :goto_63
    :try_start_10
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lro;->a:Lrp;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lrp;->a:Ljava/lang/String;

    nop

    invoke-static {v1}, Loz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#availableCaptureResultKeys"

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    iget-object v1, p0, Lro;->a:Lrp;

    nop

    nop

    nop
    :try_end_10
    .catch Ljava/lang/AssertionError; {:try_start_10 .. :try_end_10} :catch_4

    :try_start_11
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, v1, Lrp;->b:Landroid/hardware/camera2/CameraCharacteristics;

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableCaptureResultKeys()Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    if-nez v0, :cond_a

    nop

    nop

    nop

    nop

    nop

    sget-object v0, Ltyw;->a:Ltyw;

    nop

    nop

    nop

    :cond_a
    invoke-static {v0}, Lrkm;->aE(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    nop

    nop
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :try_start_12
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_19

    nop

    nop

    nop

    nop

    nop

    :catchall_5
    move-exception v0

    nop

    nop

    nop

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    nop

    nop

    nop

    nop
    :try_end_12
    .catch Ljava/lang/AssertionError; {:try_start_12 .. :try_end_12} :catch_4

    :catch_4
    move-exception v0

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

    :goto_64
    sget-object v0, Ltyw;->a:Ltyw;

    nop

    nop

    nop

    nop

    nop

    :goto_65
    :try_start_13
    invoke-static {v0}, Lrkm;->aE(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    nop
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    :try_start_14
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_6c

    nop

    nop

    nop

    nop

    nop

    :catchall_6
    move-exception v0

    nop

    nop

    nop

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    nop

    nop

    nop

    nop

    nop
    :try_end_14
    .catch Ljava/lang/AssertionError; {:try_start_14 .. :try_end_14} :catch_5

    :catch_5
    move-exception v0

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

    :goto_66
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    :catch_6
    move-exception v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_69
    const-string v2, "Failed to getKeys from "

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    const-string v2, "CXCP"

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    sget-object v0, Ltyy;->a:Ltyy;

    nop

    :goto_6c
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    return-object v0

    nop

    nop

    :goto_6e
    :try_start_15
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lro;->a:Lrp;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lrp;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-static {v1}, Loz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#keys"

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    iget-object v1, p0, Lro;->a:Lrp;

    nop
    :try_end_15
    .catch Ljava/lang/AssertionError; {:try_start_15 .. :try_end_15} :catch_5

    :try_start_16
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, v1, Lrp;->b:Landroid/hardware/camera2/CameraCharacteristics;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCharacteristics;->getKeys()Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_6f
    invoke-static {v2, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_40

    nop

    nop

    :goto_70
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    if-eqz v0, :cond_b

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :catchall_7
    :cond_b
    goto/32 :goto_64

    nop

    nop

    :goto_72
    const-string v1, "Failed to getAvailablePhysicalCameraRequestKeys from Camera-"

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_73
    const/4 v2, 0x5

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_74
    iget-object p0, p0, Lrp;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_75
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_76
    iget-object p0, p0, Lro;->a:Lrp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_77
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_78
    if-lez v0, :cond_c

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_9

    nop

    :goto_79
    iget v3, p0, Lro;->b:I

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_7b
    return-object v0

    nop

    nop

    nop

    nop

    :goto_7c
    :try_start_17
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lro;->a:Lrp;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lrp;->a:Ljava/lang/String;

    nop

    nop

    nop

    invoke-static {v1}, Loz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#availableCaptureRequestKeys"

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    iget-object v1, p0, Lro;->a:Lrp;

    nop

    nop

    nop

    nop

    nop
    :try_end_17
    .catch Ljava/lang/AssertionError; {:try_start_17 .. :try_end_17} :catch_7

    :try_start_18
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, v1, Lrp;->b:Landroid/hardware/camera2/CameraCharacteristics;

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableCaptureRequestKeys()Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    nop

    if-nez v0, :cond_d

    nop

    nop

    nop

    nop

    nop

    sget-object v0, Ltyw;->a:Ltyw;

    nop

    nop

    nop

    :cond_d
    invoke-static {v0}, Lrkm;->aE(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    nop

    nop

    nop

    nop
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    :try_start_19
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :catchall_8
    move-exception v0

    nop

    nop

    nop

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    nop

    nop
    :try_end_19
    .catch Ljava/lang/AssertionError; {:try_start_19 .. :try_end_19} :catch_7

    :catch_7
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop
.end method
