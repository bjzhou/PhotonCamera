.class public final Liux;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroid/hardware/camera2/CaptureResult$Key;

.field public static final b:Landroid/hardware/camera2/CaptureRequest$Key;

.field public static final c:Landroid/hardware/camera2/CaptureResult$Key;

.field public static final d:Landroid/hardware/camera2/CameraCharacteristics$Key;

.field public static final e:Landroid/hardware/camera2/CaptureRequest$Key;

.field public static final f:Landroid/hardware/camera2/CaptureResult$Key;

.field public static final g:Landroid/hardware/camera2/CaptureResult$Key;

.field public static final h:Landroid/hardware/camera2/CaptureResult$Key;

.field public static final i:Landroid/hardware/camera2/CaptureResult$Key;

.field public static final j:Landroid/hardware/camera2/CaptureRequest$Key;

.field public static final k:Landroid/hardware/camera2/CaptureRequest$Key;

.field public static final l:Landroid/hardware/camera2/CaptureRequest$Key;

.field public static final m:Landroid/hardware/camera2/CaptureResult$Key;

.field private static final n:Z

.field private static final o:Z

.field private static final p:Z

.field private static final q:Z

.field private static final r:Z

.field private static final s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v0, 0x4

    invoke-static {v0}, Livc;->b(I)Z

    move-result v1

    sput-boolean v1, Liux;->n:Z

    const/4 v1, 0x5

    invoke-static {v1}, Livc;->b(I)Z

    move-result v2

    sput-boolean v2, Liux;->o:Z

    const/4 v3, 0x6

    invoke-static {v3}, Livc;->b(I)Z

    move-result v4

    sput-boolean v4, Liux;->p:Z

    const/4 v5, 0x7

    invoke-static {v5}, Livc;->b(I)Z

    move-result v6

    sput-boolean v6, Liux;->q:Z

    const/16 v7, 0x8

    invoke-static {v7}, Livc;->b(I)Z

    move-result v8

    sput-boolean v8, Liux;->r:Z

    const/16 v9, 0xa

    invoke-static {v9}, Livc;->b(I)Z

    move-result v10

    sput-boolean v10, Liux;->s:Z

    const/4 v11, 0x1

    invoke-static {v11}, Liux;->a(I)Z

    move-result v12

    if-eqz v12, :cond_0

    sget-object v12, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->REQUEST_LENS_SHADING_STATS_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    sget-object v12, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->REQUEST_LENS_SHADING_STATS_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    sget-object v12, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->REQUEST_LENS_SHADING_STATS_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    sget-object v12, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->REQUEST_LENS_SHADING_STATS_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_0

    :cond_3
    if-eqz v8, :cond_4

    sget-object v12, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->REQUEST_LENS_SHADING_STATS_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_0

    :cond_4
    if-eqz v10, :cond_5

    sget-object v12, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->REQUEST_LENS_SHADING_STATS_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    :cond_5
    :goto_0
    invoke-static {v11}, Liux;->a(I)Z

    move-result v12

    if-eqz v12, :cond_6

    sget-object v12, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->RESULT_LENS_SHADING_STATS_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_1

    :cond_6
    if-eqz v2, :cond_7

    sget-object v12, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->RESULT_LENS_SHADING_STATS_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_1

    :cond_7
    if-eqz v4, :cond_8

    sget-object v12, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->RESULT_LENS_SHADING_STATS_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_1

    :cond_8
    if-eqz v6, :cond_9

    sget-object v12, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_LENS_SHADING_STATS_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_1

    :cond_9
    if-eqz v8, :cond_a

    sget-object v12, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_LENS_SHADING_STATS_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_1

    :cond_a
    if-eqz v10, :cond_b

    sget-object v12, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_LENS_SHADING_STATS_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_b
    :goto_1
    invoke-static {v11}, Liux;->a(I)Z

    move-result v11

    if-eqz v11, :cond_c

    sget-object v11, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->RESULT_LENS_SHADING_STATS:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_2

    :cond_c
    if-eqz v2, :cond_d

    sget-object v11, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->RESULT_LENS_SHADING_STATS:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_2

    :cond_d
    if-eqz v4, :cond_e

    sget-object v11, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->RESULT_LENS_SHADING_STATS:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_2

    :cond_e
    if-eqz v6, :cond_f

    sget-object v11, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_LENS_SHADING_STATS:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_2

    :cond_f
    if-eqz v8, :cond_10

    sget-object v11, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_LENS_SHADING_STATS:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_2

    :cond_10
    if-eqz v10, :cond_11

    sget-object v11, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_LENS_SHADING_STATS:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_11
    :goto_2
    const/4 v11, 0x2

    invoke-static {v11}, Liux;->a(I)Z

    move-result v12

    if-eqz v12, :cond_12

    sget-object v12, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->REQUEST_GCAM_AE_MOTION_EF_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_3

    :cond_12
    if-eqz v2, :cond_13

    sget-object v12, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->REQUEST_GCAM_AE_MOTION_EF_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_3

    :cond_13
    if-eqz v4, :cond_14

    sget-object v12, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->REQUEST_GCAM_AE_MOTION_EF_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_3

    :cond_14
    if-eqz v6, :cond_15

    sget-object v12, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->REQUEST_GCAM_AE_MOTION_EF_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_3

    :cond_15
    if-eqz v8, :cond_16

    sget-object v12, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->REQUEST_GCAM_AE_MOTION_EF_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_3

    :cond_16
    if-eqz v10, :cond_17

    sget-object v12, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->REQUEST_GCAM_AE_MOTION_EF_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    :cond_17
    :goto_3
    invoke-static {v11}, Liux;->a(I)Z

    move-result v12

    if-eqz v12, :cond_18

    sget-object v12, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->RESULT_GCAM_AE_MOTION_EF_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_4

    :cond_18
    if-eqz v2, :cond_19

    sget-object v12, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->RESULT_GCAM_AE_MOTION_EF_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_4

    :cond_19
    if-eqz v4, :cond_1a

    sget-object v12, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->RESULT_GCAM_AE_MOTION_EF_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_4

    :cond_1a
    if-eqz v6, :cond_1b

    sget-object v12, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_GCAM_AE_MOTION_EF_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_4

    :cond_1b
    if-eqz v8, :cond_1c

    sget-object v12, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_GCAM_AE_MOTION_EF_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_4

    :cond_1c
    if-eqz v10, :cond_1d

    sget-object v12, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_GCAM_AE_MOTION_EF_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_1d
    :goto_4
    invoke-static {v11}, Liux;->a(I)Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_1e

    sget-object v12, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->RESULT_GCAM_AE_OUTPUT:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_5

    :cond_1e
    if-eqz v2, :cond_1f

    sget-object v12, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->RESULT_GCAM_AE_OUTPUT:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_5

    :cond_1f
    if-eqz v4, :cond_20

    sget-object v12, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->RESULT_GCAM_AE_OUTPUT:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_5

    :cond_20
    if-eqz v6, :cond_21

    sget-object v12, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_GCAM_AE_OUTPUT:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_5

    :cond_21
    if-eqz v8, :cond_22

    sget-object v12, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_GCAM_AE_OUTPUT:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_5

    :cond_22
    if-eqz v10, :cond_23

    sget-object v12, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_GCAM_AE_OUTPUT:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_5

    :cond_23
    move-object v12, v13

    :goto_5
    sput-object v12, Liux;->a:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v11}, Liux;->a(I)Z

    move-result v12

    if-eqz v12, :cond_24

    sget-object v12, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->REQUEST_LIVE_HDR_SETTINGS:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_6

    :cond_24
    if-eqz v2, :cond_25

    sget-object v12, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->REQUEST_LIVE_HDR_SETTINGS:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_6

    :cond_25
    if-eqz v4, :cond_26

    sget-object v12, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->REQUEST_LIVE_HDR_SETTINGS:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_6

    :cond_26
    if-eqz v6, :cond_27

    sget-object v12, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->REQUEST_LIVE_HDR_SETTINGS:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_6

    :cond_27
    if-eqz v8, :cond_28

    sget-object v12, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->REQUEST_LIVE_HDR_SETTINGS:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_6

    :cond_28
    if-eqz v10, :cond_29

    sget-object v12, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->REQUEST_LIVE_HDR_SETTINGS:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_6

    :cond_29
    move-object v12, v13

    :goto_6
    sput-object v12, Liux;->b:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v11}, Liux;->a(I)Z

    move-result v11

    if-eqz v11, :cond_2a

    sget-object v11, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->RESULT_LIVE_HDR_SETTINGS:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_7

    :cond_2a
    if-eqz v2, :cond_2b

    sget-object v11, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->RESULT_LIVE_HDR_SETTINGS:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_7

    :cond_2b
    if-eqz v4, :cond_2c

    sget-object v11, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->RESULT_LIVE_HDR_SETTINGS:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_7

    :cond_2c
    if-eqz v6, :cond_2d

    sget-object v11, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_LIVE_HDR_SETTINGS:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_7

    :cond_2d
    if-eqz v8, :cond_2e

    sget-object v11, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_LIVE_HDR_SETTINGS:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_7

    :cond_2e
    if-eqz v10, :cond_2f

    sget-object v11, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_LIVE_HDR_SETTINGS:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_7

    :cond_2f
    move-object v11, v13

    :goto_7
    sput-object v11, Liux;->c:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v11, 0x3

    invoke-static {v11}, Liux;->a(I)Z

    move-result v12

    if-eqz v12, :cond_30

    sget-object v12, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->REQUEST_IPE_INFO_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_8

    :cond_30
    if-eqz v2, :cond_31

    sget-object v12, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->REQUEST_IPE_INFO_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_8

    :cond_31
    if-eqz v4, :cond_32

    sget-object v12, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->REQUEST_IPE_INFO_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    :cond_32
    :goto_8
    invoke-static {v11}, Liux;->a(I)Z

    move-result v12

    if-eqz v12, :cond_33

    sget-object v12, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->RESULT_IPE_INFO_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_9

    :cond_33
    if-eqz v2, :cond_34

    sget-object v12, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->RESULT_IPE_INFO_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_9

    :cond_34
    if-eqz v4, :cond_35

    sget-object v12, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->RESULT_IPE_INFO_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_35
    :goto_9
    invoke-static {v11}, Liux;->a(I)Z

    move-result v12

    if-eqz v12, :cond_36

    sget-object v12, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->RESULT_IPE_INFO:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_a

    :cond_36
    if-eqz v2, :cond_37

    sget-object v12, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->RESULT_IPE_INFO:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_a

    :cond_37
    if-eqz v4, :cond_38

    sget-object v12, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->RESULT_IPE_INFO:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_38
    :goto_a
    invoke-static {v11}, Liux;->a(I)Z

    move-result v12

    if-eqz v12, :cond_39

    sget-object v12, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->REQUEST_IFE_INFO_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_b

    :cond_39
    if-eqz v2, :cond_3a

    sget-object v12, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->REQUEST_IFE_INFO_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_b

    :cond_3a
    if-eqz v4, :cond_3b

    sget-object v12, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->REQUEST_IFE_INFO_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    :cond_3b
    :goto_b
    invoke-static {v11}, Liux;->a(I)Z

    move-result v12

    if-eqz v12, :cond_3c

    sget-object v12, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->RESULT_IFE_INFO_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_c

    :cond_3c
    if-eqz v2, :cond_3d

    sget-object v12, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->RESULT_IFE_INFO_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_c

    :cond_3d
    if-eqz v4, :cond_3e

    sget-object v12, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->RESULT_IFE_INFO_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_3e
    :goto_c
    invoke-static {v11}, Liux;->a(I)Z

    move-result v12

    if-eqz v12, :cond_3f

    sget-object v12, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->RESULT_IFE_INFO:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_d

    :cond_3f
    if-eqz v2, :cond_40

    sget-object v12, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->RESULT_IFE_INFO:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_d

    :cond_40
    if-eqz v4, :cond_41

    sget-object v12, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->RESULT_IFE_INFO:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_41
    :goto_d
    invoke-static {v11}, Liux;->a(I)Z

    move-result v12

    if-eqz v12, :cond_42

    sget-object v12, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->REQUEST_BPS_INFO_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_e

    :cond_42
    if-eqz v2, :cond_43

    sget-object v12, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->REQUEST_BPS_INFO_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_e

    :cond_43
    if-eqz v4, :cond_44

    sget-object v12, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->REQUEST_BPS_INFO_ENABLED:Landroid/hardware/camera2/CaptureRequest$Key;

    :cond_44
    :goto_e
    invoke-static {v11}, Liux;->a(I)Z

    move-result v12

    if-eqz v12, :cond_45

    sget-object v12, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->RESULT_BPS_INFO_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_f

    :cond_45
    if-eqz v2, :cond_46

    sget-object v12, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->RESULT_BPS_INFO_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_f

    :cond_46
    if-eqz v4, :cond_47

    sget-object v12, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->RESULT_BPS_INFO_ENABLED:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_47
    :goto_f
    invoke-static {v11}, Liux;->a(I)Z

    move-result v12

    if-eqz v12, :cond_48

    sget-object v12, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->RESULT_BPS_INFO:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_10

    :cond_48
    if-eqz v2, :cond_49

    sget-object v12, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->RESULT_BPS_INFO:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_10

    :cond_49
    if-eqz v4, :cond_4a

    sget-object v12, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->RESULT_BPS_INFO:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_4a
    :goto_10
    invoke-static {v0}, Liux;->a(I)Z

    move-result v12

    if-eqz v12, :cond_4b

    sget-object v12, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->CHARACTERISTICS_MESH_WARP_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_11

    :cond_4b
    if-eqz v2, :cond_4c

    sget-object v12, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->CHARACTERISTICS_MESH_WARP_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_11

    :cond_4c
    if-eqz v4, :cond_4d

    sget-object v12, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->CHARACTERISTICS_MESH_WARP_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_11

    :cond_4d
    if-eqz v6, :cond_4e

    sget-object v12, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->CHARACTERISTICS_MESH_WARP_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_11

    :cond_4e
    if-eqz v8, :cond_4f

    sget-object v12, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->CHARACTERISTICS_MESH_WARP_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_11

    :cond_4f
    if-eqz v10, :cond_50

    sget-object v12, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->CHARACTERISTICS_MESH_WARP_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_11

    :cond_50
    move-object v12, v13

    :goto_11
    sput-object v12, Liux;->d:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Liux;->a(I)Z

    move-result v12

    if-eqz v12, :cond_51

    sget-object v12, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->REQUEST_MESH_WARP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_12

    :cond_51
    if-eqz v2, :cond_52

    sget-object v12, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->REQUEST_MESH_WARP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_12

    :cond_52
    if-eqz v4, :cond_53

    sget-object v12, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->REQUEST_MESH_WARP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_12

    :cond_53
    if-eqz v6, :cond_54

    sget-object v12, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->REQUEST_MESH_WARP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_12

    :cond_54
    if-eqz v8, :cond_55

    sget-object v12, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->REQUEST_MESH_WARP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_12

    :cond_55
    if-eqz v10, :cond_56

    sget-object v12, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->REQUEST_MESH_WARP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_12

    :cond_56
    move-object v12, v13

    :goto_12
    sput-object v12, Liux;->e:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Liux;->a(I)Z

    move-result v12

    if-eqz v12, :cond_57

    sget-object v12, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->RESULT_MESH_WARP_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_13

    :cond_57
    if-eqz v2, :cond_58

    sget-object v12, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->RESULT_MESH_WARP_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_13

    :cond_58
    if-eqz v4, :cond_59

    sget-object v12, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->RESULT_MESH_WARP_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_13

    :cond_59
    if-eqz v6, :cond_5a

    sget-object v12, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_MESH_WARP_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_13

    :cond_5a
    if-eqz v8, :cond_5b

    sget-object v12, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_MESH_WARP_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_13

    :cond_5b
    if-eqz v10, :cond_5c

    sget-object v12, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_MESH_WARP_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_5c
    :goto_13
    invoke-static {v0}, Liux;->a(I)Z

    move-result v12

    if-eqz v12, :cond_5d

    sget-object v12, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->RESULT_MESH_WARP_SIZE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_14

    :cond_5d
    if-eqz v2, :cond_5e

    sget-object v12, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->RESULT_MESH_WARP_SIZE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_14

    :cond_5e
    if-eqz v4, :cond_5f

    sget-object v12, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->RESULT_MESH_WARP_SIZE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_14

    :cond_5f
    if-eqz v6, :cond_60

    sget-object v12, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_MESH_WARP_SIZE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_14

    :cond_60
    if-eqz v8, :cond_61

    sget-object v12, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_MESH_WARP_SIZE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_14

    :cond_61
    if-eqz v10, :cond_62

    sget-object v12, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_MESH_WARP_SIZE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_14

    :cond_62
    move-object v12, v13

    :goto_14
    sput-object v12, Liux;->f:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0}, Liux;->a(I)Z

    move-result v12

    if-eqz v12, :cond_63

    sget-object v12, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->RESULT_MESH_WARP_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_15

    :cond_63
    if-eqz v2, :cond_64

    sget-object v12, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->RESULT_MESH_WARP_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_15

    :cond_64
    if-eqz v4, :cond_65

    sget-object v12, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->RESULT_MESH_WARP_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_15

    :cond_65
    if-eqz v6, :cond_66

    sget-object v12, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_MESH_WARP_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_15

    :cond_66
    if-eqz v8, :cond_67

    sget-object v12, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_MESH_WARP_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_15

    :cond_67
    if-eqz v10, :cond_68

    sget-object v12, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_MESH_WARP_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_15

    :cond_68
    move-object v12, v13

    :goto_15
    sput-object v12, Liux;->g:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0}, Liux;->a(I)Z

    move-result v0

    if-eqz v0, :cond_69

    sget-object v0, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->RESULT_MESH_WARP_DATA:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_16

    :cond_69
    if-eqz v2, :cond_6a

    sget-object v0, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->RESULT_MESH_WARP_DATA:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_16

    :cond_6a
    if-eqz v4, :cond_6b

    sget-object v0, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->RESULT_MESH_WARP_DATA:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_16

    :cond_6b
    if-eqz v6, :cond_6c

    sget-object v0, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_MESH_WARP_DATA:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_16

    :cond_6c
    if-eqz v8, :cond_6d

    sget-object v0, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_MESH_WARP_DATA:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_16

    :cond_6d
    if-eqz v10, :cond_6e

    sget-object v0, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_MESH_WARP_DATA:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_16

    :cond_6e
    move-object v0, v13

    :goto_16
    sput-object v0, Liux;->h:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v7}, Liux;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6f

    sget-object v0, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->RESULT_MESH_WARP_IS_IDENTITY_TRANSFORM:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_17

    :cond_6f
    if-eqz v2, :cond_70

    sget-object v0, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->RESULT_MESH_WARP_IS_IDENTITY_TRANSFORM:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_17

    :cond_70
    if-eqz v4, :cond_71

    sget-object v0, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->RESULT_MESH_WARP_IS_IDENTITY_TRANSFORM:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_17

    :cond_71
    if-eqz v6, :cond_72

    sget-object v0, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_MESH_WARP_IS_IDENTITY_TRANSFORM:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_17

    :cond_72
    if-eqz v8, :cond_73

    sget-object v0, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_MESH_WARP_IS_IDENTITY_TRANSFORM:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_17

    :cond_73
    if-eqz v10, :cond_74

    sget-object v0, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_MESH_WARP_IS_IDENTITY_TRANSFORM:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_17

    :cond_74
    move-object v0, v13

    :goto_17
    sput-object v0, Liux;->i:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v1}, Liux;->a(I)Z

    move-result v0

    if-eqz v0, :cond_75

    sget-object v0, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->REQUEST_HDRNET_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_18

    :cond_75
    if-eqz v2, :cond_76

    sget-object v0, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->REQUEST_HDRNET_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_18

    :cond_76
    if-eqz v4, :cond_77

    sget-object v0, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->REQUEST_HDRNET_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_18

    :cond_77
    if-eqz v6, :cond_78

    sget-object v0, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->REQUEST_HDRNET_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_18

    :cond_78
    if-eqz v8, :cond_79

    sget-object v0, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->REQUEST_HDRNET_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_18

    :cond_79
    if-eqz v10, :cond_7a

    sget-object v0, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->REQUEST_HDRNET_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_18

    :cond_7a
    move-object v0, v13

    :goto_18
    sput-object v0, Liux;->j:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Liux;->a(I)Z

    move-result v0

    if-eqz v0, :cond_7b

    sget-object v0, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->RESULT_HDRNET_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_19

    :cond_7b
    if-eqz v2, :cond_7c

    sget-object v0, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->RESULT_HDRNET_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_19

    :cond_7c
    if-eqz v4, :cond_7d

    sget-object v0, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->RESULT_HDRNET_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_19

    :cond_7d
    if-eqz v6, :cond_7e

    sget-object v0, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_HDRNET_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_19

    :cond_7e
    if-eqz v8, :cond_7f

    sget-object v0, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_HDRNET_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_19

    :cond_7f
    if-eqz v10, :cond_80

    sget-object v0, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_HDRNET_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_80
    :goto_19
    invoke-static {v3}, Liux;->a(I)Z

    move-result v0

    if-eqz v0, :cond_81

    sget-object v0, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->REQUEST_AUTO_3A_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_1a

    :cond_81
    if-eqz v2, :cond_82

    sget-object v0, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->REQUEST_AUTO_3A_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_1a

    :cond_82
    if-eqz v4, :cond_83

    sget-object v0, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->REQUEST_AUTO_3A_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_1a

    :cond_83
    if-eqz v6, :cond_84

    sget-object v0, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->REQUEST_AUTO_3A_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_1a

    :cond_84
    if-eqz v8, :cond_85

    sget-object v0, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->REQUEST_AUTO_3A_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_1a

    :cond_85
    if-eqz v10, :cond_86

    sget-object v0, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->REQUEST_AUTO_3A_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_1a

    :cond_86
    move-object v0, v13

    :goto_1a
    sput-object v0, Liux;->k:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Liux;->a(I)Z

    move-result v0

    if-eqz v0, :cond_87

    sget-object v0, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->RESULT_AUTO_3A_SCENE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_1b

    :cond_87
    if-eqz v2, :cond_88

    sget-object v0, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->RESULT_AUTO_3A_SCENE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_1b

    :cond_88
    if-eqz v4, :cond_89

    sget-object v0, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->RESULT_AUTO_3A_SCENE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_1b

    :cond_89
    if-eqz v6, :cond_8a

    sget-object v0, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_AUTO_3A_SCENE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_1b

    :cond_8a
    if-eqz v8, :cond_8b

    sget-object v0, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_AUTO_3A_SCENE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_1b

    :cond_8b
    if-eqz v10, :cond_8c

    sget-object v0, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_AUTO_3A_SCENE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_8c
    :goto_1b
    invoke-static {v5}, Liux;->a(I)Z

    move-result v0

    if-eqz v0, :cond_8d

    sget-object v0, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->REQUEST_AF_RESCAN_FRAME_COUNT:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_1c

    :cond_8d
    if-eqz v2, :cond_8e

    sget-object v0, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->REQUEST_AF_RESCAN_FRAME_COUNT:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_1c

    :cond_8e
    if-eqz v4, :cond_8f

    sget-object v0, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->REQUEST_AF_RESCAN_FRAME_COUNT:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_1c

    :cond_8f
    if-eqz v6, :cond_90

    sget-object v0, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->REQUEST_AF_RESCAN_FRAME_COUNT:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_1c

    :cond_90
    if-eqz v8, :cond_91

    sget-object v0, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->REQUEST_AF_RESCAN_FRAME_COUNT:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_1c

    :cond_91
    if-eqz v10, :cond_92

    sget-object v0, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->REQUEST_AF_RESCAN_FRAME_COUNT:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_1c

    :cond_92
    move-object v0, v13

    :goto_1c
    sput-object v0, Liux;->l:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Liux;->a(I)Z

    move-result v0

    if-eqz v0, :cond_93

    sget-object v13, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->RESULT_AF_RESCAN_FRAME_COUNT:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_1d

    :cond_93
    if-eqz v2, :cond_94

    sget-object v13, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->RESULT_AF_RESCAN_FRAME_COUNT:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_1d

    :cond_94
    if-eqz v4, :cond_95

    sget-object v13, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->RESULT_AF_RESCAN_FRAME_COUNT:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_1d

    :cond_95
    if-eqz v6, :cond_96

    sget-object v13, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_AF_RESCAN_FRAME_COUNT:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_1d

    :cond_96
    if-eqz v8, :cond_97

    sget-object v13, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_AF_RESCAN_FRAME_COUNT:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_1d

    :cond_97
    if-eqz v10, :cond_98

    sget-object v13, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_AF_RESCAN_FRAME_COUNT:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_1d

    :cond_98
    :goto_1d
    sput-object v13, Liux;->m:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v9}, Liux;->a(I)Z

    move-result v0

    if-eqz v0, :cond_99

    sget-object v0, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->REQUEST_SENSOR_MODE_FULLFOV:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_1e

    :cond_99
    if-eqz v2, :cond_9a

    sget-object v0, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->REQUEST_SENSOR_MODE_FULLFOV:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_1e

    :cond_9a
    if-eqz v4, :cond_9b

    sget-object v0, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->REQUEST_SENSOR_MODE_FULLFOV:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_1e

    :cond_9b
    if-eqz v6, :cond_9c

    sget-object v0, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->REQUEST_SENSOR_MODE_FULLFOV:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_1e

    :cond_9c
    if-eqz v8, :cond_9d

    sget-object v0, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->REQUEST_SENSOR_MODE_FULLFOV:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_1e

    :cond_9d
    if-eqz v10, :cond_9e

    sget-object v0, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->REQUEST_SENSOR_MODE_FULLFOV:Landroid/hardware/camera2/CaptureRequest$Key;

    :cond_9e
    :goto_1e
    invoke-static {v9}, Liux;->a(I)Z

    move-result v0

    if-eqz v0, :cond_9f

    sget-object v0, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->RESULT_SENSOR_MODE_FULLFOV:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_1f

    :cond_9f
    if-eqz v2, :cond_a0

    sget-object v0, Lcom/google/android/camera/experimental2020_midyear/ExperimentalKeys;->RESULT_SENSOR_MODE_FULLFOV:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_1f

    :cond_a0
    if-eqz v4, :cond_a1

    sget-object v0, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->RESULT_SENSOR_MODE_FULLFOV:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_1f

    :cond_a1
    if-eqz v6, :cond_a2

    sget-object v0, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_SENSOR_MODE_FULLFOV:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_1f

    :cond_a2
    if-eqz v8, :cond_a3

    sget-object v0, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_SENSOR_MODE_FULLFOV:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_1f

    :cond_a3
    if-eqz v10, :cond_a4

    sget-object v0, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_SENSOR_MODE_FULLFOV:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_a4
    :goto_1f
    const/16 v0, 0xb

    invoke-static {v0}, Liux;->a(I)Z

    move-result v0

    if-eqz v0, :cond_a5

    sget-object v0, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->RESULT_RLS_ENABLE:Landroid/hardware/camera2/CaptureResult$Key;

    return-void

    :cond_a5
    invoke-static {v11}, Liuy;->a(I)Z

    move-result v0

    if-eqz v0, :cond_a6

    sget-object v0, Lcom/google/android/camera/experimental2020/ExperimentalKeys;->RESULT_RLS_ENABLE:Landroid/hardware/camera2/CaptureResult$Key;

    return-void

    :cond_a6
    if-eqz v6, :cond_a7

    sget-object v0, Lcom/google/android/camera/experimental2021/ExperimentalKeys;->RESULT_RLS_ENABLE:Landroid/hardware/camera2/CaptureResult$Key;

    return-void

    :cond_a7
    if-eqz v8, :cond_a8

    sget-object v0, Lcom/google/android/camera/experimental2022/ExperimentalKeys;->RESULT_RLS_ENABLE:Landroid/hardware/camera2/CaptureResult$Key;

    return-void

    :cond_a8
    if-eqz v10, :cond_a9

    sget-object v0, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_RLS_ENABLE:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_a9
    return-void
.end method

.method private static a(I)Z
    .locals 2

    sget-boolean v0, Liux;->n:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/google/android/camera/experimental2019/ExperimentalKeys;->getLibraryVersion()I

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
