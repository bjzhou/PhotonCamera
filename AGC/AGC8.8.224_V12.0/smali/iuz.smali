.class public final Liuz;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroid/hardware/camera2/CaptureRequest$Key;

.field public static final b:Landroid/hardware/camera2/CaptureRequest$Key;

.field public static final c:Landroid/hardware/camera2/CaptureResult$Key;

.field public static final d:Landroid/hardware/camera2/CaptureRequest$Key;

.field public static final e:Landroid/hardware/camera2/CaptureResult$Key;

.field public static final f:Landroid/hardware/camera2/CaptureRequest$Key;

.field public static final g:Landroid/hardware/camera2/CaptureRequest$Key;

.field public static final h:Landroid/hardware/camera2/CaptureRequest$Key;

.field public static final i:Landroid/hardware/camera2/CaptureRequest$Key;

.field public static final j:Landroid/hardware/camera2/CaptureRequest$Key;

.field public static final k:Landroid/hardware/camera2/CaptureResult$Key;

.field public static final l:Landroid/hardware/camera2/CameraCharacteristics$Key;

.field public static final m:Landroid/hardware/camera2/CameraCharacteristics$Key;

.field public static final n:Landroid/hardware/camera2/CaptureRequest$Key;

.field public static final o:Landroid/hardware/camera2/CaptureRequest$Key;

.field public static final p:Landroid/hardware/camera2/CaptureResult$Key;

.field public static final q:Landroid/hardware/camera2/CaptureResult$Key;

.field public static final r:Landroid/hardware/camera2/CaptureResult$Key;

.field public static final s:Landroid/hardware/camera2/CaptureResult$Key;

.field public static final t:Landroid/hardware/camera2/CaptureRequest$Key;

.field private static final u:Z

.field private static final v:Z

.field private static final w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x7

    invoke-static {v0}, Livc;->b(I)Z

    move-result v1

    sput-boolean v1, Liuz;->u:Z

    const/16 v1, 0x8

    invoke-static {v1}, Livc;->b(I)Z

    move-result v2

    sput-boolean v2, Liuz;->v:Z

    const/16 v3, 0xa

    invoke-static {v3}, Livc;->b(I)Z

    move-result v4

    sput-boolean v4, Liuz;->w:Z

    const/4 v5, 0x1

    invoke-static {v5}, Liuz;->a(I)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    sget-object v6, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->REQUEST_MANUAL_AWB_CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    sget-object v6, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->REQUEST_MANUAL_AWB_CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    sget-object v6, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->REQUEST_MANUAL_AWB_CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_0

    :cond_2
    move-object v6, v7

    :goto_0
    sput-object v6, Liuz;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Liuz;->a(I)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_MANUAL_AWB_CONTROL_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    sget-object v6, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_MANUAL_AWB_CONTROL_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_5

    sget-object v6, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_MANUAL_AWB_CONTROL_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_5
    :goto_1
    invoke-static {v5}, Liuz;->a(I)Z

    move-result v6

    if-eqz v6, :cond_6

    sget-object v6, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->REQUEST_MANUAL_AWB_CONTROL_FACTORS:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_2

    :cond_6
    if-eqz v2, :cond_7

    sget-object v6, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->REQUEST_MANUAL_AWB_CONTROL_FACTORS:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_2

    :cond_7
    if-eqz v4, :cond_8

    sget-object v6, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->REQUEST_MANUAL_AWB_CONTROL_FACTORS:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_2

    :cond_8
    move-object v6, v7

    :goto_2
    sput-object v6, Liuz;->b:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Liuz;->a(I)Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_MANUAL_AWB_CONTROL_FACTORS:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_3

    :cond_9
    if-eqz v2, :cond_a

    sget-object v5, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_MANUAL_AWB_CONTROL_FACTORS:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_3

    :cond_a
    if-eqz v4, :cond_b

    sget-object v5, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_MANUAL_AWB_CONTROL_FACTORS:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_b
    :goto_3
    const/4 v5, 0x2

    invoke-static {v5}, Liuz;->a(I)Z

    move-result v5

    if-eqz v5, :cond_c

    sget-object v5, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_BABY_MODE_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_4

    :cond_c
    if-eqz v2, :cond_d

    sget-object v5, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_BABY_MODE_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_4

    :cond_d
    if-eqz v4, :cond_e

    sget-object v5, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_BABY_MODE_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_e
    :goto_4
    const/4 v5, 0x3

    invoke-static {v5}, Liuz;->a(I)Z

    move-result v6

    if-eqz v6, :cond_f

    sget-object v6, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->REQUEST_DYNAMIC_PROFILING_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_5

    :cond_f
    if-eqz v2, :cond_10

    sget-object v6, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->REQUEST_DYNAMIC_PROFILING_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_5

    :cond_10
    if-eqz v4, :cond_11

    sget-object v6, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->REQUEST_DYNAMIC_PROFILING_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    :cond_11
    :goto_5
    invoke-static {v5}, Liuz;->a(I)Z

    move-result v5

    if-eqz v5, :cond_12

    sget-object v5, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_DYNAMIC_PROFILING_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_6

    :cond_12
    if-eqz v2, :cond_13

    sget-object v5, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_DYNAMIC_PROFILING_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_6

    :cond_13
    if-eqz v4, :cond_14

    sget-object v5, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_DYNAMIC_PROFILING_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_14
    :goto_6
    const/16 v5, 0x13

    invoke-static {v5}, Liuz;->a(I)Z

    move-result v6

    const/4 v8, 0x4

    if-eqz v6, :cond_15

    goto :goto_7

    :cond_15
    invoke-static {v8}, Liuz;->a(I)Z

    move-result v6

    if-eqz v6, :cond_16

    sget-object v6, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->REQUEST_MOTION_DEBLUR_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_7

    :cond_16
    if-eqz v2, :cond_17

    sget-object v6, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->REQUEST_MOTION_DEBLUR_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_7

    :cond_17
    if-eqz v4, :cond_18

    sget-object v6, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->REQUEST_MOTION_DEBLUR_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    :cond_18
    :goto_7
    invoke-static {v5}, Liuz;->a(I)Z

    move-result v6

    if-eqz v6, :cond_19

    goto :goto_8

    :cond_19
    invoke-static {v8}, Liuz;->a(I)Z

    move-result v6

    if-eqz v6, :cond_1a

    sget-object v6, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_MOTION_DEBLUR_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_8

    :cond_1a
    if-eqz v2, :cond_1b

    sget-object v6, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_MOTION_DEBLUR_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_8

    :cond_1b
    if-eqz v4, :cond_1c

    sget-object v6, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_MOTION_DEBLUR_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_1c
    :goto_8
    invoke-static {v8}, Liuz;->a(I)Z

    move-result v6

    if-eqz v6, :cond_1d

    sget-object v6, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_MOTION_DEBLUR_VALID_PHYSICAL_RESULT:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_9

    :cond_1d
    if-eqz v2, :cond_1e

    sget-object v6, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_MOTION_DEBLUR_VALID_PHYSICAL_RESULT:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_9

    :cond_1e
    if-eqz v4, :cond_1f

    sget-object v6, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_MOTION_DEBLUR_VALID_PHYSICAL_RESULT:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_9

    :cond_1f
    move-object v6, v7

    :goto_9
    sput-object v6, Liuz;->c:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v6, 0x5

    invoke-static {v6}, Liuz;->a(I)Z

    move-result v6

    if-eqz v6, :cond_20

    sget-object v6, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->REQUEST_SIMPLE_COMPUTER_VISION_MODE_ENABLE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_a

    :cond_20
    if-eqz v2, :cond_21

    sget-object v6, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->REQUEST_SIMPLE_COMPUTER_VISION_MODE_ENABLE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_a

    :cond_21
    if-eqz v4, :cond_22

    sget-object v6, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->REQUEST_SIMPLE_COMPUTER_VISION_MODE_ENABLE:Landroid/hardware/camera2/CaptureRequest$Key;

    :cond_22
    :goto_a
    const/4 v6, 0x6

    invoke-static {v6}, Liuz;->a(I)Z

    move-result v6

    if-eqz v6, :cond_23

    sget-object v6, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_SIMPLE_COMPUTER_VISION_MODE_ENABLE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_b

    :cond_23
    if-eqz v2, :cond_24

    sget-object v6, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_SIMPLE_COMPUTER_VISION_MODE_ENABLE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_b

    :cond_24
    if-eqz v4, :cond_25

    sget-object v6, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_SIMPLE_COMPUTER_VISION_MODE_ENABLE:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_25
    :goto_b
    invoke-static {v0}, Liuz;->a(I)Z

    move-result v6

    if-eqz v6, :cond_26

    sget-object v6, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->REQUEST_FACE_AUTH_USE_CASE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_c

    :cond_26
    if-eqz v2, :cond_27

    sget-object v6, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->REQUEST_FACE_AUTH_USE_CASE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_c

    :cond_27
    if-eqz v4, :cond_28

    sget-object v6, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->REQUEST_FACE_AUTH_USE_CASE:Landroid/hardware/camera2/CaptureRequest$Key;

    :cond_28
    :goto_c
    invoke-static {v0}, Liuz;->a(I)Z

    move-result v6

    if-eqz v6, :cond_29

    sget-object v6, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_FACE_AUTH_USE_CASE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_d

    :cond_29
    if-eqz v2, :cond_2a

    sget-object v6, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_FACE_AUTH_USE_CASE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_d

    :cond_2a
    if-eqz v4, :cond_2b

    sget-object v6, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_FACE_AUTH_USE_CASE:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_2b
    :goto_d
    invoke-static {v0}, Liuz;->a(I)Z

    move-result v6

    if-eqz v6, :cond_2c

    sget-object v6, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->REQUEST_FACEAUTH_FACE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_e

    :cond_2c
    if-eqz v2, :cond_2d

    sget-object v6, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->REQUEST_FACEAUTH_FACE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_e

    :cond_2d
    if-eqz v4, :cond_2e

    sget-object v6, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->REQUEST_FACEAUTH_FACE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    :cond_2e
    :goto_e
    invoke-static {v0}, Liuz;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    sget-object v0, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_FACEAUTH_FACE_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_f

    :cond_2f
    if-eqz v2, :cond_30

    sget-object v0, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_FACEAUTH_FACE_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_f

    :cond_30
    if-eqz v4, :cond_31

    sget-object v0, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_FACEAUTH_FACE_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_31
    :goto_f
    invoke-static {v1}, Liuz;->a(I)Z

    move-result v0

    if-eqz v0, :cond_32

    sget-object v0, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->REQUEST_FAMILIAR_FACE_TRUETONE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_10

    :cond_32
    if-eqz v2, :cond_33

    sget-object v0, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->REQUEST_FAMILIAR_FACE_TRUETONE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_10

    :cond_33
    if-eqz v4, :cond_34

    sget-object v0, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->REQUEST_FAMILIAR_FACE_TRUETONE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_10

    :cond_34
    move-object v0, v7

    :goto_10
    sput-object v0, Liuz;->d:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Liuz;->a(I)Z

    move-result v0

    if-eqz v0, :cond_35

    sget-object v0, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_FAMILIAR_FACE_TRUETONE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_11

    :cond_35
    if-eqz v2, :cond_36

    sget-object v0, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_FAMILIAR_FACE_TRUETONE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_11

    :cond_36
    if-eqz v4, :cond_37

    sget-object v0, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_FAMILIAR_FACE_TRUETONE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_11

    :cond_37
    move-object v0, v7

    :goto_11
    sput-object v0, Liuz;->e:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v0, 0x9

    invoke-static {v0}, Liuz;->a(I)Z

    move-result v1

    if-eqz v1, :cond_38

    sget-object v1, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->REQUEST_LOOKAHEAD_EIS_MODE_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_12

    :cond_38
    if-eqz v2, :cond_39

    sget-object v1, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->REQUEST_LOOKAHEAD_EIS_MODE_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_12

    :cond_39
    if-eqz v4, :cond_3a

    sget-object v1, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->REQUEST_LOOKAHEAD_EIS_MODE_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_12

    :cond_3a
    move-object v1, v7

    :goto_12
    sput-object v1, Liuz;->f:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Liuz;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3b

    sget-object v0, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_LOOKAHEAD_EIS_MODE_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_13

    :cond_3b
    if-eqz v2, :cond_3c

    sget-object v0, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_LOOKAHEAD_EIS_MODE_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_13

    :cond_3c
    if-eqz v4, :cond_3d

    sget-object v0, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_LOOKAHEAD_EIS_MODE_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_3d
    :goto_13
    invoke-static {v3}, Liuz;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3e

    sget-object v0, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->REQUEST_DISTANCE_WATER_LEVEL:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_14

    :cond_3e
    if-eqz v2, :cond_3f

    sget-object v0, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->REQUEST_DISTANCE_WATER_LEVEL:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_14

    :cond_3f
    if-eqz v4, :cond_40

    sget-object v0, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->REQUEST_DISTANCE_WATER_LEVEL:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_14

    :cond_40
    move-object v0, v7

    :goto_14
    sput-object v0, Liuz;->g:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Liuz;->a(I)Z

    move-result v0

    if-eqz v0, :cond_41

    sget-object v0, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_DISTANCE_WATER_LEVEL:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_15

    :cond_41
    if-eqz v2, :cond_42

    sget-object v0, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_DISTANCE_WATER_LEVEL:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_15

    :cond_42
    if-eqz v4, :cond_43

    sget-object v0, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_DISTANCE_WATER_LEVEL:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_43
    :goto_15
    const/16 v0, 0xb

    invoke-static {v0}, Liuz;->a(I)Z

    move-result v1

    if-eqz v1, :cond_44

    sget-object v1, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->REQUEST_DEBUG_UI_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_16

    :cond_44
    if-eqz v2, :cond_45

    sget-object v1, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->REQUEST_DEBUG_UI_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_16

    :cond_45
    if-eqz v4, :cond_46

    sget-object v1, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->REQUEST_DEBUG_UI_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    :cond_46
    :goto_16
    invoke-static {v0}, Liuz;->a(I)Z

    move-result v1

    if-eqz v1, :cond_47

    sget-object v1, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_DEBUG_UI_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_17

    :cond_47
    if-eqz v2, :cond_48

    sget-object v1, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_DEBUG_UI_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_17

    :cond_48
    if-eqz v4, :cond_49

    sget-object v1, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_DEBUG_UI_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_49
    :goto_17
    invoke-static {v0}, Liuz;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    sget-object v0, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_AF_DEBUG_UI_BLOB:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_18

    :cond_4a
    if-eqz v2, :cond_4b

    sget-object v0, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_AF_DEBUG_UI_BLOB:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_18

    :cond_4b
    if-eqz v4, :cond_4c

    sget-object v0, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_AF_DEBUG_UI_BLOB:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_4c
    :goto_18
    const/16 v0, 0xc

    invoke-static {v0}, Liuz;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4d

    sget-object v1, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->REQUEST_OIS_JITTER_MODE_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_19

    :cond_4d
    if-eqz v2, :cond_4e

    sget-object v1, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->REQUEST_OIS_JITTER_MODE_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_19

    :cond_4e
    if-eqz v4, :cond_4f

    sget-object v1, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->REQUEST_OIS_JITTER_MODE_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_19

    :cond_4f
    move-object v1, v7

    :goto_19
    sput-object v1, Liuz;->h:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Liuz;->a(I)Z

    move-result v0

    if-eqz v0, :cond_50

    sget-object v0, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_OIS_JITTER_MODE_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_1a

    :cond_50
    if-eqz v2, :cond_51

    sget-object v0, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_OIS_JITTER_MODE_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_1a

    :cond_51
    if-eqz v4, :cond_52

    sget-object v0, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_OIS_JITTER_MODE_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_52
    :goto_1a
    const/16 v0, 0xd

    invoke-static {v0}, Liuz;->a(I)Z

    move-result v1

    if-eqz v1, :cond_53

    sget-object v1, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->REQUEST_GCAM_AE_MOTION_METERING_OPTIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_1b

    :cond_53
    if-eqz v2, :cond_54

    sget-object v1, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->REQUEST_GCAM_AE_MOTION_METERING_OPTIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_1b

    :cond_54
    if-eqz v4, :cond_55

    sget-object v1, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->REQUEST_GCAM_AE_MOTION_METERING_OPTIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_1b

    :cond_55
    move-object v1, v7

    :goto_1b
    sput-object v1, Liuz;->i:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Liuz;->a(I)Z

    move-result v0

    if-eqz v0, :cond_56

    sget-object v0, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_GCAM_AE_MOTION_METERING_OPTIONS:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_1c

    :cond_56
    if-eqz v2, :cond_57

    sget-object v0, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_GCAM_AE_MOTION_METERING_OPTIONS:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_1c

    :cond_57
    if-eqz v4, :cond_58

    sget-object v0, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_GCAM_AE_MOTION_METERING_OPTIONS:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_58
    :goto_1c
    const/16 v0, 0xe

    invoke-static {v0}, Liuz;->a(I)Z

    move-result v1

    if-eqz v1, :cond_59

    sget-object v1, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->REQUEST_SEGMENTATION_MASK_PORTRAIT_REQUESTED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_1d

    :cond_59
    if-eqz v2, :cond_5a

    sget-object v1, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->REQUEST_SEGMENTATION_MASK_PORTRAIT_REQUESTED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_1d

    :cond_5a
    if-eqz v4, :cond_5b

    sget-object v1, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->REQUEST_SEGMENTATION_MASK_PORTRAIT_REQUESTED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_1d

    :cond_5b
    move-object v1, v7

    :goto_1d
    sput-object v1, Liuz;->j:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Liuz;->a(I)Z

    move-result v1

    if-eqz v1, :cond_5c

    sget-object v1, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_SEGMENTATION_MASK_PORTRAIT_REQUESTED:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_1e

    :cond_5c
    if-eqz v2, :cond_5d

    sget-object v1, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_SEGMENTATION_MASK_PORTRAIT_REQUESTED:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_1e

    :cond_5d
    if-eqz v4, :cond_5e

    sget-object v1, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_SEGMENTATION_MASK_PORTRAIT_REQUESTED:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_5e
    :goto_1e
    invoke-static {v0}, Liuz;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5f

    sget-object v0, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_SEGMENTATION_MASK_PORTRAIT:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_1f

    :cond_5f
    if-eqz v2, :cond_60

    sget-object v0, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_SEGMENTATION_MASK_PORTRAIT:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_1f

    :cond_60
    if-eqz v4, :cond_61

    sget-object v0, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_SEGMENTATION_MASK_PORTRAIT:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_1f

    :cond_61
    move-object v0, v7

    :goto_1f
    sput-object v0, Liuz;->k:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v0, 0xf

    invoke-static {v0}, Liuz;->a(I)Z

    move-result v1

    if-eqz v1, :cond_62

    sget-object v1, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->CHARACTERISTICS_FLOAT_SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_20

    :cond_62
    if-eqz v2, :cond_63

    sget-object v1, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->CHARACTERISTICS_FLOAT_SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_20

    :cond_63
    if-eqz v4, :cond_64

    sget-object v1, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->CHARACTERISTICS_FLOAT_SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_20

    :cond_64
    move-object v1, v7

    :goto_20
    sput-object v1, Liuz;->l:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Liuz;->a(I)Z

    move-result v0

    if-eqz v0, :cond_65

    sget-object v0, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->CHARACTERISTICS_FLOAT_SENSOR_MAX_ANALOG_SENSITIVITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_21

    :cond_65
    if-eqz v2, :cond_66

    sget-object v0, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->CHARACTERISTICS_FLOAT_SENSOR_MAX_ANALOG_SENSITIVITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_21

    :cond_66
    if-eqz v4, :cond_67

    sget-object v0, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->CHARACTERISTICS_FLOAT_SENSOR_MAX_ANALOG_SENSITIVITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_21

    :cond_67
    move-object v0, v7

    :goto_21
    sput-object v0, Liuz;->m:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v0, 0x10

    invoke-static {v0}, Liuz;->a(I)Z

    move-result v1

    if-eqz v1, :cond_68

    sget-object v1, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->REQUEST_MOTION_DEBLUR_FOLLOWER_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_22

    :cond_68
    if-eqz v2, :cond_69

    sget-object v1, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->REQUEST_MOTION_DEBLUR_FOLLOWER_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_22

    :cond_69
    if-eqz v4, :cond_6a

    sget-object v1, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->REQUEST_MOTION_DEBLUR_FOLLOWER_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_22

    :cond_6a
    move-object v1, v7

    :goto_22
    sput-object v1, Liuz;->n:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Liuz;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6b

    sget-object v0, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_MOTION_DEBLUR_FOLLOWER_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_23

    :cond_6b
    if-eqz v2, :cond_6c

    sget-object v0, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_MOTION_DEBLUR_FOLLOWER_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_23

    :cond_6c
    if-eqz v4, :cond_6d

    sget-object v0, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_MOTION_DEBLUR_FOLLOWER_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_6d
    :goto_23
    const/16 v0, 0x11

    invoke-static {v0}, Liuz;->a(I)Z

    move-result v1

    if-eqz v1, :cond_6e

    sget-object v1, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->REQUEST_HIGH_FREQUENCY_LENS_INFO_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_24

    :cond_6e
    if-eqz v2, :cond_6f

    sget-object v1, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->REQUEST_HIGH_FREQUENCY_LENS_INFO_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_24

    :cond_6f
    if-eqz v4, :cond_70

    sget-object v1, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->REQUEST_HIGH_FREQUENCY_LENS_INFO_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    :cond_70
    :goto_24
    invoke-static {v0}, Liuz;->a(I)Z

    move-result v1

    if-eqz v1, :cond_71

    sget-object v1, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_HIGH_FREQUENCY_LENS_INFO_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_25

    :cond_71
    if-eqz v2, :cond_72

    sget-object v1, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_HIGH_FREQUENCY_LENS_INFO_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_25

    :cond_72
    if-eqz v4, :cond_73

    sget-object v1, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_HIGH_FREQUENCY_LENS_INFO_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_73
    :goto_25
    invoke-static {v0}, Liuz;->a(I)Z

    move-result v1

    if-eqz v1, :cond_74

    sget-object v1, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_HIGH_FREQUENCY_LENS_INTRINSIC_CALIBRATION:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_26

    :cond_74
    if-eqz v2, :cond_75

    sget-object v1, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_HIGH_FREQUENCY_LENS_INTRINSIC_CALIBRATION:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_26

    :cond_75
    if-eqz v4, :cond_76

    sget-object v1, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_HIGH_FREQUENCY_LENS_INTRINSIC_CALIBRATION:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_76
    :goto_26
    invoke-static {v0}, Liuz;->a(I)Z

    move-result v1

    if-eqz v1, :cond_77

    sget-object v1, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_HIGH_FREQUENCY_LENS_POSE_ROTATION:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_27

    :cond_77
    if-eqz v2, :cond_78

    sget-object v1, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_HIGH_FREQUENCY_LENS_POSE_ROTATION:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_27

    :cond_78
    if-eqz v4, :cond_79

    sget-object v1, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_HIGH_FREQUENCY_LENS_POSE_ROTATION:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_79
    :goto_27
    invoke-static {v0}, Liuz;->a(I)Z

    move-result v0

    if-eqz v0, :cond_7a

    sget-object v0, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_HIGH_FREQUENCY_LENS_POSE_TRANSLATION:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_28

    :cond_7a
    if-eqz v2, :cond_7b

    sget-object v0, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_HIGH_FREQUENCY_LENS_POSE_TRANSLATION:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_28

    :cond_7b
    if-eqz v4, :cond_7c

    sget-object v0, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_HIGH_FREQUENCY_LENS_POSE_TRANSLATION:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_7c
    :goto_28
    const/16 v0, 0x14

    invoke-static {v0}, Liuz;->a(I)Z

    move-result v0

    if-eqz v0, :cond_7d

    sget-object v0, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_HIGH_FREQUENCY_LENS_INFO_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_29

    :cond_7d
    if-eqz v2, :cond_7e

    sget-object v0, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_HIGH_FREQUENCY_LENS_INFO_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_29

    :cond_7e
    if-eqz v4, :cond_7f

    sget-object v0, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_HIGH_FREQUENCY_LENS_INFO_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_7f
    :goto_29
    const/16 v0, 0x12

    invoke-static {v0}, Liuz;->a(I)Z

    move-result v0

    if-eqz v0, :cond_80

    sget-object v0, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_RANGE_SENSOR_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_2a

    :cond_80
    if-eqz v2, :cond_81

    sget-object v0, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_RANGE_SENSOR_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_2a

    :cond_81
    if-eqz v4, :cond_82

    sget-object v0, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_RANGE_SENSOR_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_82
    :goto_2a
    invoke-static {v5}, Liuz;->a(I)Z

    move-result v0

    if-eqz v0, :cond_83

    sget-object v0, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->REQUEST_MOTION_DEBLUR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_2b

    :cond_83
    if-eqz v2, :cond_84

    sget-object v0, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->REQUEST_MOTION_DEBLUR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_2b

    :cond_84
    if-eqz v4, :cond_85

    sget-object v0, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->REQUEST_MOTION_DEBLUR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_2b

    :cond_85
    move-object v0, v7

    :goto_2b
    sput-object v0, Liuz;->o:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Liuz;->a(I)Z

    move-result v0

    if-eqz v0, :cond_86

    sget-object v0, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_MOTION_DEBLUR_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_2c

    :cond_86
    if-eqz v2, :cond_87

    sget-object v0, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_MOTION_DEBLUR_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_2c

    :cond_87
    if-eqz v4, :cond_88

    sget-object v0, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_MOTION_DEBLUR_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_2c

    :cond_88
    move-object v0, v7

    :goto_2c
    sput-object v0, Liuz;->p:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v0, 0x15

    invoke-static {v0}, Liuz;->a(I)Z

    move-result v1

    if-eqz v1, :cond_89

    sget-object v1, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->REQUEST_PD_DUMP_START:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_2d

    :cond_89
    if-eqz v2, :cond_8a

    sget-object v1, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->REQUEST_PD_DUMP_START:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_2d

    :cond_8a
    if-eqz v4, :cond_8b

    sget-object v1, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->REQUEST_PD_DUMP_START:Landroid/hardware/camera2/CaptureRequest$Key;

    :cond_8b
    :goto_2d
    invoke-static {v0}, Liuz;->a(I)Z

    move-result v0

    if-eqz v0, :cond_8c

    sget-object v0, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_PD_DUMP_START:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_2e

    :cond_8c
    if-eqz v2, :cond_8d

    sget-object v0, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_PD_DUMP_START:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_2e

    :cond_8d
    if-eqz v4, :cond_8e

    sget-object v0, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_PD_DUMP_START:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_8e
    :goto_2e
    const/16 v0, 0x16

    invoke-static {v0}, Liuz;->a(I)Z

    move-result v1

    if-eqz v1, :cond_8f

    sget-object v1, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_OIS_TIMESTAMPS:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_2f

    :cond_8f
    if-eqz v2, :cond_90

    sget-object v1, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_OIS_TIMESTAMPS:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_2f

    :cond_90
    if-eqz v4, :cond_91

    sget-object v1, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_OIS_TIMESTAMPS:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_2f

    :cond_91
    move-object v1, v7

    :goto_2f
    sput-object v1, Liuz;->q:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0}, Liuz;->a(I)Z

    move-result v1

    if-eqz v1, :cond_92

    sget-object v1, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_OIS_SHIFT_DAC_X:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_30

    :cond_92
    if-eqz v2, :cond_93

    sget-object v1, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_OIS_SHIFT_DAC_X:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_30

    :cond_93
    if-eqz v4, :cond_94

    sget-object v1, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_OIS_SHIFT_DAC_X:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_30

    :cond_94
    move-object v1, v7

    :goto_30
    sput-object v1, Liuz;->r:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0}, Liuz;->a(I)Z

    move-result v0

    if-eqz v0, :cond_95

    sget-object v0, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_OIS_SHIFT_DAC_Y:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_31

    :cond_95
    if-eqz v2, :cond_96

    sget-object v0, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_OIS_SHIFT_DAC_Y:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_31

    :cond_96
    if-eqz v4, :cond_97

    sget-object v0, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_OIS_SHIFT_DAC_Y:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_31

    :cond_97
    move-object v0, v7

    :goto_31
    sput-object v0, Liuz;->s:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v0, 0x17

    invoke-static {v0}, Liuz;->a(I)Z

    move-result v1

    if-eqz v1, :cond_98

    sget-object v7, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->REQUEST_CAPTURE_STATUS:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_32

    :cond_98
    if-eqz v2, :cond_99

    sget-object v7, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->REQUEST_CAPTURE_STATUS:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_32

    :cond_99
    if-eqz v4, :cond_9a

    sget-object v7, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->REQUEST_CAPTURE_STATUS:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_32

    :cond_9a
    :goto_32
    sput-object v7, Liuz;->t:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Liuz;->a(I)Z

    move-result v0

    if-eqz v0, :cond_9b

    sget-object v0, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_CAPTURE_STATUS:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_33

    :cond_9b
    if-eqz v2, :cond_9c

    sget-object v0, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_CAPTURE_STATUS:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_33

    :cond_9c
    if-eqz v4, :cond_9d

    sget-object v0, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_CAPTURE_STATUS:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_9d
    :goto_33
    const/16 v0, 0x18

    invoke-static {v0}, Liuz;->a(I)Z

    move-result v1

    if-eqz v1, :cond_9e

    sget-object v1, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->REQUEST_LYRIC_EXIF_MAKER_NOTE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_34

    :cond_9e
    if-eqz v2, :cond_9f

    sget-object v1, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->REQUEST_LYRIC_EXIF_MAKER_NOTE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_34

    :cond_9f
    if-eqz v4, :cond_a0

    sget-object v1, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->REQUEST_LYRIC_EXIF_MAKER_NOTE:Landroid/hardware/camera2/CaptureRequest$Key;

    :cond_a0
    :goto_34
    invoke-static {v0}, Liuz;->a(I)Z

    move-result v1

    if-eqz v1, :cond_a1

    sget-object v1, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_REQUEST_LYRIC_EXIF_MAKER_NOTE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_35

    :cond_a1
    if-eqz v2, :cond_a2

    sget-object v1, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_REQUEST_LYRIC_EXIF_MAKER_NOTE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_35

    :cond_a2
    if-eqz v4, :cond_a3

    sget-object v1, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_REQUEST_LYRIC_EXIF_MAKER_NOTE:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_a3
    :goto_35
    invoke-static {v0}, Liuz;->a(I)Z

    move-result v0

    if-eqz v0, :cond_a4

    sget-object v0, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_LYRIC_EXIF_MAKER_NOTE:Landroid/hardware/camera2/CaptureResult$Key;

    return-void

    :cond_a4
    if-eqz v2, :cond_a5

    sget-object v0, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_LYRIC_EXIF_MAKER_NOTE:Landroid/hardware/camera2/CaptureResult$Key;

    return-void

    :cond_a5
    if-eqz v4, :cond_a6

    sget-object v0, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_LYRIC_EXIF_MAKER_NOTE:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_a6
    return-void
.end method

.method public static a(I)Z
    .locals 2

    sget-boolean v0, Liuz;->u:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->getLibraryVersion()I

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
