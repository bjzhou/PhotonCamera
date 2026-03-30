.class public Lcom/CameraLens;
.super Ljava/lang/Object;
.source "CameraLens.java"


# instance fields
.field public final ae_modes:[I

.field public final apectures:[F

.field public camera_id:Ljava/lang/String;

.field public final camera_manager:Landroid/hardware/camera2/CameraManager;

.field public final flash:Z

.field public final focal_lengths:[F

.field public final lens_facing:I

.field public name_toggle:Ljava/lang/String;

.field public final physical_size:Landroid/util/SizeF;

.field public toggle:Lcom/CameraLensToggles;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public constructor <init>(I[I[F[FLandroid/util/SizeF;ZLjava/lang/String;Landroid/hardware/camera2/CameraManager;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p5, p0, Lcom/CameraLens;->physical_size:Landroid/util/SizeF;

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

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    iput-object p7, p0, Lcom/CameraLens;->camera_id:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p8, p0, Lcom/CameraLens;->camera_manager:Landroid/hardware/camera2/CameraManager;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    iput-boolean p6, p0, Lcom/CameraLens;->flash:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lcom/CameraLens;->ae_modes:[I

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

    :goto_6
    iput-object p3, p0, Lcom/CameraLens;->focal_lengths:[F

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
    iput p1, p0, Lcom/CameraLens;->lens_facing:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    iput-object p4, p0, Lcom/CameraLens;->apectures:[F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_0
    if-eq v2, v3, :cond_0

    nop

    goto/32 :goto_27

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
    const v1, 0x11

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v3, v4}, Lcom/CameraLens;->equalsArrayF([F[F)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_3
    iget-object v4, p0, Lcom/CameraLens;->focal_lengths:[F

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

    nop

    :goto_4
    iget-object v3, v2, Lcom/CameraLens;->ae_modes:[I

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_5
    iget v4, p0, Lcom/CameraLens;->lens_facing:I

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

    :goto_6
    goto/32 :goto_29

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    if-eq p0, p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    :goto_c
    iget-object v4, p0, Lcom/CameraLens;->physical_size:Landroid/util/SizeF;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_d
    invoke-virtual {p0, v3, v4}, Lcom/CameraLens;->equalsArrayF([F[F)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_e
    invoke-virtual {p0, v3, v4}, Lcom/CameraLens;->equalsArrayI([I[I)Z

    move-result v3

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_10
    move-object v2, p1

    nop

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

    :goto_11
    rem-int v0, v0, v1

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

    :goto_12
    check-cast v2, Lcom/CameraLens;

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

    :goto_13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-boolean v4, p0, Lcom/CameraLens;->flash:Z

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_16
    iget-object v4, p0, Lcom/CameraLens;->apectures:[F

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

    nop

    :goto_17
    if-nez v3, :cond_4

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return v0

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_2c

    nop

    nop

    :goto_1a
    iget-object v3, v2, Lcom/CameraLens;->apectures:[F

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1b
    iget v3, v2, Lcom/CameraLens;->lens_facing:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1c
    const v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1d
    iget-object v3, v2, Lcom/CameraLens;->physical_size:Landroid/util/SizeF;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1e
    invoke-virtual {p0, v3, v4}, Lcom/CameraLens;->equalsSizeF(Landroid/util/SizeF;Landroid/util/SizeF;)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1f
    iget-object v3, v2, Lcom/CameraLens;->focal_lengths:[F

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
    if-eq v3, v4, :cond_5

    nop

    goto/32 :goto_19

    nop

    :cond_5
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_21
    if-nez v3, :cond_6

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

    :cond_6
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_22
    if-eq v3, v4, :cond_7

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v3, :cond_8

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-lez v0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_6

    nop

    :goto_25
    iget-object v4, p0, Lcom/CameraLens;->ae_modes:[I

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

    nop

    :goto_26
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_28

    nop

    nop

    :goto_28
    return v1

    nop

    :goto_29
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

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

    :goto_2b
    iget-boolean v3, v2, Lcom/CameraLens;->flash:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2c
    const/4 v1, 0x0

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
.end method

.method public equalsArrayF([F[F)Z
    .locals 4

    goto/32 :goto_10

    nop

    nop

    :goto_0
    const/4 v0, 0x0

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

    :goto_1
    if-eqz v3, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    array-length v2, p1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3
    cmpl-float v3, v3, v2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    :goto_5
    const v1, 0x14

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1a

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    :goto_8
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_a
    array-length v1, p1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-eq v1, v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_f
    aget v3, p2, v1

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

    :goto_10
    const v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_11
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_14
    array-length v2, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_15
    goto :goto_12

    nop

    :goto_16
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    aget v2, p1, v1

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

    :goto_18
    if-lt v1, v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return v0

    nop

    :goto_1a
    goto/32 :goto_c

    nop

    nop
.end method

.method public equalsArrayI([I[I)Z
    .locals 4

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    goto :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    aget v2, p1, v1

    nop

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

    :goto_6
    array-length v2, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    array-length v1, p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    array-length v2, p1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    if-eq v1, v2, :cond_0

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

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    if-lt v1, v2, :cond_1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    if-eq v2, v3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0xb

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_d
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_16

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
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_3
    goto/32 :goto_e

    nop

    :goto_11
    add-int v0, v0, v1

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

    nop

    :goto_12
    aget v3, p2, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_14
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_15
    return v0

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_18
    const/4 v0, 0x1

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public equalsSizeF(Landroid/util/SizeF;Landroid/util/SizeF;)Z
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    :goto_3
    const v0, 0xb

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    cmpl-float v1, v1, v2

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

    :goto_5
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    return v0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

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

    :goto_c
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_f

    nop

    :goto_d
    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_e
    if-eqz v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    :goto_10
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p2}, Landroid/util/SizeF;->getWidth()F

    move-result v2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_12
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    :goto_13
    invoke-virtual {p2}, Landroid/util/SizeF;->getHeight()F

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_14
    cmpl-float v1, v1, v2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method
