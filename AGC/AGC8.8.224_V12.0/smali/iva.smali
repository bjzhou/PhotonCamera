.class public final Liva;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroid/hardware/camera2/CaptureResult$Key;

.field public static final b:Landroid/hardware/camera2/CaptureResult$Key;

.field public static final c:Landroid/hardware/camera2/CaptureResult$Key;

.field public static final d:Landroid/hardware/camera2/CaptureRequest$Key;

.field public static final e:Landroid/hardware/camera2/CaptureResult$Key;

.field public static final f:Landroid/hardware/camera2/CaptureRequest$Key;

.field public static final g:Landroid/hardware/camera2/CaptureResult$Key;

.field public static final h:Landroid/hardware/camera2/CaptureRequest$Key;

.field public static final i:Landroid/hardware/camera2/CaptureResult$Key;

.field public static final j:Landroid/hardware/camera2/CaptureRequest$Key;

.field public static final k:Landroid/hardware/camera2/CaptureRequest$Key;

.field public static final l:Landroid/hardware/camera2/CameraCharacteristics$Key;

.field public static final m:Landroid/hardware/camera2/CaptureResult$Key;

.field private static final n:Z

.field private static final o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x8

    invoke-static {v0}, Livc;->b(I)Z

    move-result v1

    sput-boolean v1, Liva;->n:Z

    const/16 v1, 0xa

    invoke-static {v1}, Livc;->b(I)Z

    move-result v2

    sput-boolean v2, Liva;->o:Z

    const/4 v3, 0x1

    invoke-static {v3}, Liva;->a(I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    sget-object v4, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_AF_TARGET_FOCUS:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    sget-object v4, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_AF_TARGET_FOCUS:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_0

    :cond_1
    move-object v4, v5

    :goto_0
    sput-object v4, Liva;->a:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3}, Liva;->a(I)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_AF_MULTI_DEPTH_FACE_DEBLUR:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    sget-object v4, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_AF_MULTI_DEPTH_FACE_DEBLUR:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_1

    :cond_3
    move-object v4, v5

    :goto_1
    sput-object v4, Liva;->b:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3}, Liva;->a(I)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->REQUEST_MULTI_DEPTH_FACE_DEBLUR_ACTIVE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    sget-object v4, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->REQUEST_MULTI_DEPTH_FACE_DEBLUR_ACTIVE:Landroid/hardware/camera2/CaptureRequest$Key;

    :cond_5
    :goto_2
    invoke-static {v3}, Liva;->a(I)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_MULTI_DEPTH_FACE_DEBLUR_ACTIVE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_7

    sget-object v4, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_MULTI_DEPTH_FACE_DEBLUR_ACTIVE:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_7
    :goto_3
    invoke-static {v3}, Liva;->a(I)Z

    move-result v4

    if-eqz v4, :cond_8

    sget-object v4, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->REQUEST_AF_DEBUG_CONTROL:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_4

    :cond_8
    if-eqz v2, :cond_9

    sget-object v4, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->REQUEST_AF_DEBUG_CONTROL:Landroid/hardware/camera2/CaptureRequest$Key;

    :cond_9
    :goto_4
    invoke-static {v3}, Liva;->a(I)Z

    move-result v3

    if-eqz v3, :cond_a

    sget-object v3, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_AF_DEBUG_CONTROL:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_5

    :cond_a
    if-eqz v2, :cond_b

    sget-object v3, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_AF_DEBUG_CONTROL:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_b
    :goto_5
    const/4 v3, 0x2

    invoke-static {v3}, Liva;->a(I)Z

    move-result v3

    if-eqz v3, :cond_c

    sget-object v3, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_ULTRAHDR_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_6

    :cond_c
    if-eqz v2, :cond_d

    sget-object v3, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_ULTRAHDR_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_6

    :cond_d
    move-object v3, v5

    :goto_6
    sput-object v3, Liva;->c:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v3, 0x3

    invoke-static {v3}, Liva;->a(I)Z

    move-result v4

    if-eqz v4, :cond_e

    sget-object v4, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->REQUEST_AF_MACRO_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_7

    :cond_e
    if-eqz v2, :cond_f

    sget-object v4, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->REQUEST_AF_MACRO_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_7

    :cond_f
    move-object v4, v5

    :goto_7
    sput-object v4, Liva;->d:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Liva;->a(I)Z

    move-result v3

    if-eqz v3, :cond_10

    sget-object v3, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_AF_MACRO_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_8

    :cond_10
    if-eqz v2, :cond_11

    sget-object v3, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_AF_MACRO_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_11
    :goto_8
    const/4 v3, 0x4

    invoke-static {v3}, Liva;->a(I)Z

    move-result v3

    if-eqz v3, :cond_12

    sget-object v3, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_AE_TIMEOUT:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_9

    :cond_12
    if-eqz v2, :cond_13

    sget-object v3, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_AE_TIMEOUT:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_13
    :goto_9
    const/4 v3, 0x5

    invoke-static {v3}, Liva;->a(I)Z

    move-result v3

    if-eqz v3, :cond_14

    sget-object v3, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_FACE_RECTANGLE_SKIN_AREA:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_a

    :cond_14
    if-eqz v2, :cond_15

    sget-object v3, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_FACE_RECTANGLE_SKIN_AREA:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_a

    :cond_15
    move-object v3, v5

    :goto_a
    sput-object v3, Liva;->e:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v3, 0x6

    invoke-static {v3}, Liva;->a(I)Z

    move-result v4

    if-eqz v4, :cond_16

    sget-object v4, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->REQUEST_3A_VIDEO_METADATA_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_b

    :cond_16
    if-eqz v2, :cond_17

    sget-object v4, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->REQUEST_3A_VIDEO_METADATA_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_b

    :cond_17
    move-object v4, v5

    :goto_b
    sput-object v4, Liva;->f:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Liva;->a(I)Z

    move-result v3

    if-eqz v3, :cond_18

    sget-object v3, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_3A_VIDEO_METADATA_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_c

    :cond_18
    if-eqz v2, :cond_19

    sget-object v3, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_3A_VIDEO_METADATA_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_c

    :cond_19
    move-object v3, v5

    :goto_c
    sput-object v3, Liva;->g:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0}, Liva;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->REQUEST_MESH_WARP_IS_FORWARD_MESH:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_d

    :cond_1a
    if-eqz v2, :cond_1b

    sget-object v0, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->REQUEST_MESH_WARP_IS_FORWARD_MESH:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_d

    :cond_1b
    move-object v0, v5

    :goto_d
    sput-object v0, Liva;->h:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x7

    invoke-static {v0}, Liva;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_MESH_WARP_IS_FORWARD_MESH:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_e

    :cond_1c
    if-eqz v2, :cond_1d

    sget-object v0, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_MESH_WARP_IS_FORWARD_MESH:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_e

    :cond_1d
    move-object v0, v5

    :goto_e
    sput-object v0, Liva;->i:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v0, 0x9

    invoke-static {v0}, Liva;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_TUNING_USE_CASE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_f

    :cond_1e
    if-eqz v2, :cond_1f

    sget-object v0, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_TUNING_USE_CASE:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_1f
    :goto_f
    invoke-static {v1}, Liva;->a(I)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_FACE_UNLOCK_AWB_INFORMATION:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_10

    :cond_20
    if-eqz v2, :cond_21

    sget-object v0, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_FACE_UNLOCK_AWB_INFORMATION:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_21
    :goto_10
    const/16 v0, 0xb

    invoke-static {v0}, Liva;->a(I)Z

    move-result v1

    if-eqz v1, :cond_22

    sget-object v1, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->REQUEST_FAST_ZOOM_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_11

    :cond_22
    if-eqz v2, :cond_23

    sget-object v1, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->REQUEST_FAST_ZOOM_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_11

    :cond_23
    move-object v1, v5

    :goto_11
    sput-object v1, Liva;->j:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Liva;->a(I)Z

    move-result v0

    if-eqz v0, :cond_24

    sget-object v0, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->REQUEST_ZOOM_TARGET:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_12

    :cond_24
    if-eqz v2, :cond_25

    sget-object v0, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->REQUEST_ZOOM_TARGET:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_12

    :cond_25
    move-object v0, v5

    :goto_12
    sput-object v0, Liva;->k:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v0, 0xc

    invoke-static {v0}, Liva;->a(I)Z

    move-result v0

    if-eqz v0, :cond_26

    sget-object v0, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->CHARACTERISTICS_EEPROM_2D_BLC_BLOB:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_13

    :cond_26
    if-eqz v2, :cond_27

    sget-object v0, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->CHARACTERISTICS_EEPROM_2D_BLC_BLOB:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_13

    :cond_27
    move-object v0, v5

    :goto_13
    sput-object v0, Liva;->l:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v0, 0xd

    invoke-static {v0}, Liva;->a(I)Z

    move-result v0

    if-eqz v0, :cond_28

    sget-object v0, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_AF_EYE_ROI:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_28
    const/16 v0, 0xe

    invoke-static {v0}, Liva;->a(I)Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object v5, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_MULTICAM_LEADCAMID:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_14

    :cond_29
    :goto_14
    sput-object v5, Liva;->m:Landroid/hardware/camera2/CaptureResult$Key;

    return-void
.end method

.method public static a(I)Z
    .locals 2

    sget-boolean v0, Liva;->n:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->getLibraryVersion()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    if-gt p0, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :cond_0
    :goto_0
    return v1
.end method
