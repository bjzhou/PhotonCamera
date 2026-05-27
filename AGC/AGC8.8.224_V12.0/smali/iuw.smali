.class public final Liuw;
.super Ljava/lang/Object;


# static fields
.field private static final A:Z

.field public static final a:Landroid/hardware/camera2/CaptureResult$Key;

.field public static final b:Landroid/hardware/camera2/CameraCharacteristics$Key;

.field public static final c:Landroid/hardware/camera2/CameraCharacteristics$Key;

.field public static final d:Landroid/hardware/camera2/CameraCharacteristics$Key;

.field public static final e:Landroid/hardware/camera2/CameraCharacteristics$Key;

.field public static final f:Landroid/hardware/camera2/CameraCharacteristics$Key;

.field public static final g:Landroid/hardware/camera2/CaptureRequest$Key;

.field public static final h:Landroid/hardware/camera2/CaptureResult$Key;

.field public static final i:Landroid/hardware/camera2/CaptureResult$Key;

.field public static final j:Landroid/hardware/camera2/CaptureResult$Key;

.field public static final k:Landroid/hardware/camera2/CameraCharacteristics$Key;

.field public static final l:Landroid/hardware/camera2/CaptureResult$Key;

.field public static final m:Landroid/hardware/camera2/CaptureResult$Key;

.field public static final n:Landroid/hardware/camera2/CaptureResult$Key;

.field public static final o:Landroid/hardware/camera2/CaptureResult$Key;

.field public static final p:Landroid/hardware/camera2/CaptureResult$Key;

.field public static final q:Landroid/hardware/camera2/CaptureResult$Key;

.field public static final r:Landroid/hardware/camera2/CaptureRequest$Key;

.field public static final s:Landroid/hardware/camera2/CaptureRequest$Key;

.field public static final t:Landroid/hardware/camera2/CaptureResult$Key;

.field private static final u:Z

.field private static final v:Z

.field private static final w:Z

.field private static final x:Z

.field private static final y:Z

.field private static final z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x3

    invoke-static {v0}, Livc;->b(I)Z

    move-result v0

    sput-boolean v0, Liuw;->u:Z

    const/4 v0, 0x4

    invoke-static {v0}, Livc;->b(I)Z

    move-result v0

    sput-boolean v0, Liuw;->v:Z

    const/4 v1, 0x5

    invoke-static {v1}, Livc;->b(I)Z

    move-result v2

    sput-boolean v2, Liuw;->w:Z

    const/4 v3, 0x6

    invoke-static {v3}, Livc;->b(I)Z

    move-result v4

    sput-boolean v4, Liuw;->x:Z

    const/4 v5, 0x7

    invoke-static {v5}, Livc;->b(I)Z

    move-result v6

    sput-boolean v6, Liuw;->y:Z

    const/16 v7, 0x8

    invoke-static {v7}, Livc;->b(I)Z

    move-result v8

    sput-boolean v8, Liuw;->z:Z

    const/16 v9, 0xa

    invoke-static {v9}, Livc;->b(I)Z

    move-result v9

    sput-boolean v9, Liuw;->A:Z

    const/4 v10, 0x2

    invoke-static {v10}, Liuw;->a(I)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_0

    sget-object v10, Lcom/google/android/camera/experimental2018/ExperimentalKeys;->EXPERIMENTAL_FOCUS_OBJ_TOO_CLOSE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    sget-object v10, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->RESULT_FOCUS_OBJ_TOO_CLOSE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    sget-object v10, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->RESULT_FOCUS_OBJ_TOO_CLOSE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    sget-object v10, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->RESULT_FOCUS_OBJ_TOO_CLOSE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_0

    :cond_3
    if-eqz v6, :cond_4

    sget-object v10, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_FOCUS_OBJ_TOO_CLOSE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_0

    :cond_4
    if-eqz v8, :cond_5

    sget-object v10, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_FOCUS_OBJ_TOO_CLOSE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_0

    :cond_5
    if-eqz v9, :cond_6

    sget-object v10, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_FOCUS_OBJ_TOO_CLOSE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_0

    :cond_6
    move-object v10, v11

    :goto_0
    sput-object v10, Liuw;->a:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v1}, Liuw;->a(I)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/google/android/camera/experimental2018/ExperimentalKeys;->EXPERIMENTAL_3A_SPECTRAL_DATA:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_7
    invoke-static {v3}, Liuw;->a(I)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/google/android/camera/experimental2018/ExperimentalKeys;->EXPERIMENTAL_LENS_DISTORTION_COEFFICIENTS_HIGH_QUALITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_1

    :cond_8
    invoke-static {v3}, Liuy;->a(I)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->CHARACTERISTICS_LENS_DISTORTION_COEFFICIENTS_HIGH_QUALITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_1

    :cond_9
    if-eqz v6, :cond_a

    sget-object v1, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->CHARACTERISTICS_LENS_DISTORTION_COEFFICIENTS_HIGH_QUALITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_1

    :cond_a
    if-eqz v8, :cond_b

    sget-object v1, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->CHARACTERISTICS_LENS_DISTORTION_COEFFICIENTS_HIGH_QUALITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_1

    :cond_b
    if-eqz v9, :cond_c

    sget-object v1, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->CHARACTERISTICS_LENS_DISTORTION_COEFFICIENTS_HIGH_QUALITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_1

    :cond_c
    move-object v1, v11

    :goto_1
    sput-object v1, Liuw;->b:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v3}, Liuw;->a(I)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Lcom/google/android/camera/experimental2018/ExperimentalKeys;->EXPERIMENTAL_LENS_DISTORTION_OPTICAL_CENTER_HIGH_QUALITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_2

    :cond_d
    invoke-static {v3}, Liuy;->a(I)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->CHARACTERISTICS_LENS_DISTORTION_OPTICAL_CENTER_HIGH_QUALITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_2

    :cond_e
    if-eqz v6, :cond_f

    sget-object v1, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->CHARACTERISTICS_LENS_DISTORTION_OPTICAL_CENTER_HIGH_QUALITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_2

    :cond_f
    if-eqz v8, :cond_10

    sget-object v1, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->CHARACTERISTICS_LENS_DISTORTION_OPTICAL_CENTER_HIGH_QUALITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_2

    :cond_10
    if-eqz v9, :cond_11

    sget-object v1, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->CHARACTERISTICS_LENS_DISTORTION_OPTICAL_CENTER_HIGH_QUALITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_2

    :cond_11
    move-object v1, v11

    :goto_2
    sput-object v1, Liuw;->c:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v3}, Liuw;->a(I)Z

    move-result v1

    if-eqz v1, :cond_12

    sget-object v1, Lcom/google/android/camera/experimental2018/ExperimentalKeys;->EXPERIMENTAL_LENS_DISTORTION_NORMALIZATION_HIGH_QUALITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_3

    :cond_12
    invoke-static {v3}, Liuy;->a(I)Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object v1, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->CHARACTERISTICS_LENS_DISTORTION_NORMALIZATION_HIGH_QUALITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_3

    :cond_13
    if-eqz v6, :cond_14

    sget-object v1, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->CHARACTERISTICS_LENS_DISTORTION_NORMALIZATION_HIGH_QUALITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_3

    :cond_14
    if-eqz v8, :cond_15

    sget-object v1, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->CHARACTERISTICS_LENS_DISTORTION_NORMALIZATION_HIGH_QUALITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_3

    :cond_15
    if-eqz v9, :cond_16

    sget-object v1, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->CHARACTERISTICS_LENS_DISTORTION_NORMALIZATION_HIGH_QUALITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_3

    :cond_16
    move-object v1, v11

    :goto_3
    sput-object v1, Liuw;->d:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v3}, Liuw;->a(I)Z

    move-result v1

    if-eqz v1, :cond_17

    sget-object v1, Lcom/google/android/camera/experimental2018/ExperimentalKeys;->EXPERIMENTAL_LENS_DISTORTION_ACTIVE_RECTANGLE_HIGH_QUALITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_4

    :cond_17
    invoke-static {v3}, Liuy;->a(I)Z

    move-result v1

    if-eqz v1, :cond_18

    sget-object v1, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->CHARACTERISTICS_LENS_DISTORTION_ACTIVE_RECTANGLE_HIGH_QUALITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_4

    :cond_18
    if-eqz v6, :cond_19

    sget-object v1, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->CHARACTERISTICS_LENS_DISTORTION_ACTIVE_RECTANGLE_HIGH_QUALITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_4

    :cond_19
    if-eqz v8, :cond_1a

    sget-object v1, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->CHARACTERISTICS_LENS_DISTORTION_ACTIVE_RECTANGLE_HIGH_QUALITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_4

    :cond_1a
    if-eqz v9, :cond_1b

    sget-object v1, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->CHARACTERISTICS_LENS_DISTORTION_ACTIVE_RECTANGLE_HIGH_QUALITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_4

    :cond_1b
    move-object v1, v11

    :goto_4
    sput-object v1, Liuw;->e:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v3}, Liuw;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    sget-object v1, Lcom/google/android/camera/experimental2018/ExperimentalKeys;->EXPERIMENTAL_LENS_DISTORTION_VALID_RECTANGLE_HIGH_QUALITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_5

    :cond_1c
    invoke-static {v3}, Liuy;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    sget-object v1, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->CHARACTERISTICS_LENS_DISTORTION_VALID_RECTANGLE_HIGH_QUALITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_5

    :cond_1d
    if-eqz v6, :cond_1e

    sget-object v1, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->CHARACTERISTICS_LENS_DISTORTION_VALID_RECTANGLE_HIGH_QUALITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_5

    :cond_1e
    if-eqz v8, :cond_1f

    sget-object v1, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->CHARACTERISTICS_LENS_DISTORTION_VALID_RECTANGLE_HIGH_QUALITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_5

    :cond_1f
    if-eqz v9, :cond_20

    sget-object v1, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->CHARACTERISTICS_LENS_DISTORTION_VALID_RECTANGLE_HIGH_QUALITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_5

    :cond_20
    move-object v1, v11

    :goto_5
    sput-object v1, Liuw;->f:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v1, 0xd

    invoke-static {v1}, Liuw;->a(I)Z

    move-result v1

    if-eqz v1, :cond_21

    sget-object v1, Lcom/google/android/camera/experimental2018/ExperimentalKeys;->NEXUS_EXPERIMENTAL_FRONT_STEREO_CAL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    :cond_21
    invoke-static {v5}, Liuw;->a(I)Z

    move-result v1

    if-eqz v1, :cond_22

    sget-object v1, Lcom/google/android/camera/experimental2018/ExperimentalKeys;->EXPERIMENTAL_REQUEST_BAYER_GRID_STATS:Landroid/hardware/camera2/CaptureRequest$Key;

    :cond_22
    invoke-static {v5}, Liuw;->a(I)Z

    move-result v1

    if-eqz v1, :cond_23

    sget-object v1, Lcom/google/android/camera/experimental2018/ExperimentalKeys;->EXPERIMENTAL_BAYER_GRID_STATS:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_23
    invoke-static {v7}, Liuw;->a(I)Z

    move-result v1

    if-eqz v1, :cond_24

    sget-object v1, Lcom/google/android/camera/experimental2018/ExperimentalKeys;->EXPERIMENTAL_THERMAL_INFO:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_24
    const/16 v1, 0x9

    invoke-static {v1}, Liuw;->a(I)Z

    move-result v3

    if-eqz v3, :cond_25

    sget-object v3, Lcom/google/android/camera/experimental2018/ExperimentalKeys;->EXPERIMENTAL_3A_METADATA_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_6

    :cond_25
    if-eqz v0, :cond_26

    sget-object v3, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->REQUEST_3A_METADATA_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_6

    :cond_26
    if-eqz v2, :cond_27

    sget-object v3, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->REQUEST_3A_METADATA_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_6

    :cond_27
    if-eqz v4, :cond_28

    sget-object v3, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->REQUEST_3A_METADATA_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_6

    :cond_28
    if-eqz v6, :cond_29

    sget-object v3, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->REQUEST_3A_METADATA_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_6

    :cond_29
    if-eqz v8, :cond_2a

    sget-object v3, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->REQUEST_3A_METADATA_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_6

    :cond_2a
    if-eqz v9, :cond_2b

    sget-object v3, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->REQUEST_3A_METADATA_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_6

    :cond_2b
    move-object v3, v11

    :goto_6
    sput-object v3, Liuw;->g:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Liuw;->a(I)Z

    move-result v3

    if-eqz v3, :cond_2c

    sget-object v3, Lcom/google/android/camera/experimental2018/ExperimentalKeys;->EXPERIMENTAL_3A_METADATA_AEC:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_7

    :cond_2c
    if-eqz v0, :cond_2d

    sget-object v3, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->RESULT_3A_METADATA_AEC:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_7

    :cond_2d
    if-eqz v2, :cond_2e

    sget-object v3, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->RESULT_3A_METADATA_AEC:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_7

    :cond_2e
    if-eqz v4, :cond_2f

    sget-object v3, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->RESULT_3A_METADATA_AEC:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_7

    :cond_2f
    if-eqz v6, :cond_30

    sget-object v3, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_3A_METADATA_AEC:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_7

    :cond_30
    if-eqz v8, :cond_31

    sget-object v3, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_3A_METADATA_AEC:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_7

    :cond_31
    if-eqz v9, :cond_32

    sget-object v3, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_3A_METADATA_AEC:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_7

    :cond_32
    move-object v3, v11

    :goto_7
    sput-object v3, Liuw;->h:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v1}, Liuw;->a(I)Z

    move-result v3

    if-eqz v3, :cond_33

    sget-object v3, Lcom/google/android/camera/experimental2018/ExperimentalKeys;->EXPERIMENTAL_3A_METADATA_AF:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_8

    :cond_33
    if-eqz v0, :cond_34

    sget-object v3, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->RESULT_3A_METADATA_AF:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_8

    :cond_34
    if-eqz v2, :cond_35

    sget-object v3, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->RESULT_3A_METADATA_AF:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_8

    :cond_35
    if-eqz v4, :cond_36

    sget-object v3, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->RESULT_3A_METADATA_AF:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_8

    :cond_36
    if-eqz v6, :cond_37

    sget-object v3, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_3A_METADATA_AF:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_8

    :cond_37
    if-eqz v8, :cond_38

    sget-object v3, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_3A_METADATA_AF:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_8

    :cond_38
    if-eqz v9, :cond_39

    sget-object v3, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_3A_METADATA_AF:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_8

    :cond_39
    move-object v3, v11

    :goto_8
    sput-object v3, Liuw;->i:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v1}, Liuw;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3a

    sget-object v1, Lcom/google/android/camera/experimental2018/ExperimentalKeys;->EXPERIMENTAL_3A_METADATA_AWB:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_9

    :cond_3a
    if-eqz v0, :cond_3b

    sget-object v1, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->RESULT_3A_METADATA_AWB:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_9

    :cond_3b
    if-eqz v2, :cond_3c

    sget-object v1, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->RESULT_3A_METADATA_AWB:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_9

    :cond_3c
    if-eqz v4, :cond_3d

    sget-object v1, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->RESULT_3A_METADATA_AWB:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_9

    :cond_3d
    if-eqz v6, :cond_3e

    sget-object v1, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_3A_METADATA_AWB:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_9

    :cond_3e
    if-eqz v8, :cond_3f

    sget-object v1, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_3A_METADATA_AWB:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_9

    :cond_3f
    if-eqz v9, :cond_40

    sget-object v1, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_3A_METADATA_AWB:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_9

    :cond_40
    move-object v1, v11

    :goto_9
    sput-object v1, Liuw;->j:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v1, 0xc

    invoke-static {v1}, Liuw;->a(I)Z

    move-result v3

    if-eqz v3, :cond_41

    sget-object v3, Lcom/google/android/camera/experimental2018/ExperimentalKeys;->EXPERIMENTAL_FACE_LANDMARK_AVAILABLE_IDS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_a

    :cond_41
    if-eqz v0, :cond_42

    sget-object v3, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->CHARACTERISTICS_FACE_LANDMARK_AVAILABLE_IDS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_a

    :cond_42
    if-eqz v2, :cond_43

    sget-object v3, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->CHARACTERISTICS_FACE_LANDMARK_AVAILABLE_IDS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_a

    :cond_43
    if-eqz v4, :cond_44

    sget-object v3, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->CHARACTERISTICS_FACE_LANDMARK_AVAILABLE_IDS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_a

    :cond_44
    if-eqz v6, :cond_45

    sget-object v3, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->CHARACTERISTICS_FACE_LANDMARK_AVAILABLE_IDS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_a

    :cond_45
    if-eqz v8, :cond_46

    sget-object v3, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->CHARACTERISTICS_FACE_LANDMARK_AVAILABLE_IDS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_a

    :cond_46
    if-eqz v9, :cond_47

    sget-object v3, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->CHARACTERISTICS_FACE_LANDMARK_AVAILABLE_IDS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_a

    :cond_47
    move-object v3, v11

    :goto_a
    sput-object v3, Liuw;->k:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v1}, Liuw;->a(I)Z

    move-result v3

    if-eqz v3, :cond_48

    sget-object v3, Lcom/google/android/camera/experimental2018/ExperimentalKeys;->EXPERIMENTAL_FACE_SKIPFRAME:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_b

    :cond_48
    if-eqz v0, :cond_49

    sget-object v3, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->RESULT_FACE_SKIPFRAME:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_b

    :cond_49
    if-eqz v2, :cond_4a

    sget-object v3, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->RESULT_FACE_SKIPFRAME:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_b

    :cond_4a
    if-eqz v4, :cond_4b

    sget-object v3, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->RESULT_FACE_SKIPFRAME:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_b

    :cond_4b
    if-eqz v6, :cond_4c

    sget-object v3, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_FACE_SKIPFRAME:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_b

    :cond_4c
    if-eqz v8, :cond_4d

    sget-object v3, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_FACE_SKIPFRAME:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_b

    :cond_4d
    if-eqz v9, :cond_4e

    sget-object v3, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_FACE_SKIPFRAME:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_b

    :cond_4e
    move-object v3, v11

    :goto_b
    sput-object v3, Liuw;->l:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v1}, Liuw;->a(I)Z

    move-result v3

    if-eqz v3, :cond_4f

    sget-object v3, Lcom/google/android/camera/experimental2018/ExperimentalKeys;->EXPERIMENTAL_FACE_LANDMARK_COUNT:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_c

    :cond_4f
    if-eqz v0, :cond_50

    sget-object v3, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->RESULT_FACE_LANDMARK_COUNT:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_c

    :cond_50
    if-eqz v2, :cond_51

    sget-object v3, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->RESULT_FACE_LANDMARK_COUNT:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_c

    :cond_51
    if-eqz v4, :cond_52

    sget-object v3, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->RESULT_FACE_LANDMARK_COUNT:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_c

    :cond_52
    if-eqz v6, :cond_53

    sget-object v3, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_FACE_LANDMARK_COUNT:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_c

    :cond_53
    if-eqz v8, :cond_54

    sget-object v3, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_FACE_LANDMARK_COUNT:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_c

    :cond_54
    if-eqz v9, :cond_55

    sget-object v3, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_FACE_LANDMARK_COUNT:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_c

    :cond_55
    move-object v3, v11

    :goto_c
    sput-object v3, Liuw;->m:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v1}, Liuw;->a(I)Z

    move-result v3

    if-eqz v3, :cond_56

    sget-object v3, Lcom/google/android/camera/experimental2018/ExperimentalKeys;->EXPERIMENTAL_FACE_LANDMARK_IDS:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_d

    :cond_56
    if-eqz v0, :cond_57

    sget-object v3, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->RESULT_FACE_LANDMARK_IDS:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_d

    :cond_57
    if-eqz v2, :cond_58

    sget-object v3, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->RESULT_FACE_LANDMARK_IDS:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_d

    :cond_58
    if-eqz v4, :cond_59

    sget-object v3, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->RESULT_FACE_LANDMARK_IDS:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_d

    :cond_59
    if-eqz v6, :cond_5a

    sget-object v3, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_FACE_LANDMARK_IDS:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_d

    :cond_5a
    if-eqz v8, :cond_5b

    sget-object v3, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_FACE_LANDMARK_IDS:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_d

    :cond_5b
    if-eqz v9, :cond_5c

    sget-object v3, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_FACE_LANDMARK_IDS:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_d

    :cond_5c
    move-object v3, v11

    :goto_d
    sput-object v3, Liuw;->n:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v1}, Liuw;->a(I)Z

    move-result v3

    if-eqz v3, :cond_5d

    sget-object v3, Lcom/google/android/camera/experimental2018/ExperimentalKeys;->EXPERIMENTAL_FACE_LANDMARK_XY:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_e

    :cond_5d
    if-eqz v0, :cond_5e

    sget-object v3, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->RESULT_FACE_LANDMARK_XY:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_e

    :cond_5e
    if-eqz v2, :cond_5f

    sget-object v3, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->RESULT_FACE_LANDMARK_XY:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_e

    :cond_5f
    if-eqz v4, :cond_60

    sget-object v3, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->RESULT_FACE_LANDMARK_XY:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_e

    :cond_60
    if-eqz v6, :cond_61

    sget-object v3, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_FACE_LANDMARK_XY:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_e

    :cond_61
    if-eqz v8, :cond_62

    sget-object v3, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_FACE_LANDMARK_XY:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_e

    :cond_62
    if-eqz v9, :cond_63

    sget-object v3, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_FACE_LANDMARK_XY:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_e

    :cond_63
    move-object v3, v11

    :goto_e
    sput-object v3, Liuw;->o:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v1}, Liuw;->a(I)Z

    move-result v3

    if-eqz v3, :cond_64

    sget-object v3, Lcom/google/android/camera/experimental2018/ExperimentalKeys;->EXPERIMENTAL_FACE_LANDMARK_DEPTH:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_f

    :cond_64
    if-eqz v0, :cond_65

    sget-object v3, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->RESULT_FACE_LANDMARK_DEPTH:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_f

    :cond_65
    if-eqz v2, :cond_66

    sget-object v3, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->RESULT_FACE_LANDMARK_DEPTH:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_f

    :cond_66
    if-eqz v4, :cond_67

    sget-object v3, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->RESULT_FACE_LANDMARK_DEPTH:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_f

    :cond_67
    if-eqz v6, :cond_68

    sget-object v3, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_FACE_LANDMARK_DEPTH:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_f

    :cond_68
    if-eqz v8, :cond_69

    sget-object v3, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_FACE_LANDMARK_DEPTH:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_f

    :cond_69
    if-eqz v9, :cond_6a

    sget-object v3, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_FACE_LANDMARK_DEPTH:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_f

    :cond_6a
    move-object v3, v11

    :goto_f
    sput-object v3, Liuw;->p:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v1}, Liuw;->a(I)Z

    move-result v1

    if-eqz v1, :cond_6b

    sget-object v1, Lcom/google/android/camera/experimental2018/ExperimentalKeys;->EXPERIMENTAL_FACE_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_10

    :cond_6b
    if-eqz v0, :cond_6c

    sget-object v1, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->RESULT_FACE_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_10

    :cond_6c
    if-eqz v2, :cond_6d

    sget-object v1, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->RESULT_FACE_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_10

    :cond_6d
    if-eqz v4, :cond_6e

    sget-object v1, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->RESULT_FACE_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_10

    :cond_6e
    if-eqz v6, :cond_6f

    sget-object v1, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_FACE_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_10

    :cond_6f
    if-eqz v8, :cond_70

    sget-object v1, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_FACE_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_10

    :cond_70
    if-eqz v9, :cond_71

    sget-object v1, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_FACE_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_10

    :cond_71
    move-object v1, v11

    :goto_10
    sput-object v1, Liuw;->q:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v1, 0xb

    invoke-static {v1}, Liuw;->a(I)Z

    move-result v3

    if-eqz v3, :cond_72

    sget-object v3, Lcom/google/android/camera/experimental2018/ExperimentalKeys;->EXPERIMENTAL_PD_BACK_CAL_INDEX:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_11

    :cond_72
    move-object v3, v11

    :goto_11
    sput-object v3, Liuw;->r:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Liuw;->a(I)Z

    move-result v1

    if-eqz v1, :cond_73

    sget-object v1, Lcom/google/android/camera/experimental2018/ExperimentalKeys;->EXPERIMENTAL_PD_BACK_CAL_DATA:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_73
    const/16 v1, 0x10

    invoke-static {v1}, Liuw;->a(I)Z

    move-result v3

    if-eqz v3, :cond_74

    sget-object v3, Lcom/google/android/camera/experimental2018/ExperimentalKeys;->EXPERIMENTAL_BGSTATS_AWB_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_12

    :cond_74
    if-eqz v0, :cond_75

    sget-object v3, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->REQUEST_BGSTATS_AWB_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_12

    :cond_75
    if-eqz v2, :cond_76

    sget-object v3, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->REQUEST_BGSTATS_AWB_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_12

    :cond_76
    if-eqz v4, :cond_77

    sget-object v3, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->REQUEST_BGSTATS_AWB_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_12

    :cond_77
    if-eqz v6, :cond_78

    sget-object v3, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->REQUEST_BGSTATS_AWB_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_12

    :cond_78
    if-eqz v8, :cond_79

    sget-object v3, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->REQUEST_BGSTATS_AWB_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_12

    :cond_79
    if-eqz v9, :cond_7a

    sget-object v3, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->REQUEST_BGSTATS_AWB_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_12

    :cond_7a
    move-object v3, v11

    :goto_12
    sput-object v3, Liuw;->s:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Liuw;->a(I)Z

    move-result v3

    if-eqz v3, :cond_7b

    sget-object v11, Lcom/google/android/camera/experimental2018/ExperimentalKeys;->EXPERIMENTAL_BGSTATS_AWB:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_13

    :cond_7b
    if-eqz v0, :cond_7c

    sget-object v11, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->RESULT_BGSTATS_AWB:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_13

    :cond_7c
    if-eqz v2, :cond_7d

    sget-object v11, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->RESULT_BGSTATS_AWB:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_13

    :cond_7d
    if-eqz v4, :cond_7e

    sget-object v11, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->RESULT_BGSTATS_AWB:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_13

    :cond_7e
    if-eqz v6, :cond_7f

    sget-object v11, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_BGSTATS_AWB:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_13

    :cond_7f
    if-eqz v8, :cond_80

    sget-object v11, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_BGSTATS_AWB:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_13

    :cond_80
    if-eqz v9, :cond_81

    sget-object v11, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_BGSTATS_AWB:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_13

    :cond_81
    :goto_13
    sput-object v11, Liuw;->t:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v1}, Liuw;->a(I)Z

    move-result v3

    if-eqz v3, :cond_82

    sget-object v3, Lcom/google/android/camera/experimental2018/ExperimentalKeys;->EXPERIMENTAL_BGSTATS_AE_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_14

    :cond_82
    if-eqz v0, :cond_83

    sget-object v3, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->REQUEST_BGSTATS_AE_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_14

    :cond_83
    if-eqz v2, :cond_84

    sget-object v3, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->REQUEST_BGSTATS_AE_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_14

    :cond_84
    if-eqz v4, :cond_85

    sget-object v3, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->REQUEST_BGSTATS_AE_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_14

    :cond_85
    if-eqz v6, :cond_86

    sget-object v3, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->REQUEST_BGSTATS_AE_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_14

    :cond_86
    if-eqz v8, :cond_87

    sget-object v3, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->REQUEST_BGSTATS_AE_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_14

    :cond_87
    if-eqz v9, :cond_88

    sget-object v3, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->REQUEST_BGSTATS_AE_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    :cond_88
    :goto_14
    invoke-static {v1}, Liuw;->a(I)Z

    move-result v1

    if-eqz v1, :cond_89

    sget-object v0, Lcom/google/android/camera/experimental2018/ExperimentalKeys;->EXPERIMENTAL_BGSTATS_AE:Landroid/hardware/camera2/CaptureResult$Key;

    return-void

    :cond_89
    if-eqz v0, :cond_8a

    sget-object v0, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->RESULT_BGSTATS_AE:Landroid/hardware/camera2/CaptureResult$Key;

    return-void

    :cond_8a
    if-eqz v2, :cond_8b

    sget-object v0, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->RESULT_BGSTATS_AE:Landroid/hardware/camera2/CaptureResult$Key;

    return-void

    :cond_8b
    if-eqz v4, :cond_8c

    sget-object v0, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->RESULT_BGSTATS_AE:Landroid/hardware/camera2/CaptureResult$Key;

    return-void

    :cond_8c
    if-eqz v6, :cond_8d

    sget-object v0, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_BGSTATS_AE:Landroid/hardware/camera2/CaptureResult$Key;

    return-void

    :cond_8d
    if-eqz v8, :cond_8e

    sget-object v0, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_BGSTATS_AE:Landroid/hardware/camera2/CaptureResult$Key;

    return-void

    :cond_8e
    if-eqz v9, :cond_8f

    sget-object v0, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_BGSTATS_AE:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_8f
    return-void
.end method

.method private static a(I)Z
    .locals 2

    sget-boolean v0, Liuw;->u:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/google/android/camera/experimental2018/ExperimentalKeys;->getLibraryVersion()I

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
