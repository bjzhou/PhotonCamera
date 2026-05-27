.class public final Livb;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroid/hardware/camera2/CaptureRequest$Key;

.field private static final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xa

    invoke-static {v0}, Livc;->b(I)Z

    move-result v0

    sput-boolean v0, Livb;->b:Z

    const/4 v0, 0x1

    invoke-static {v0}, Livb;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->REQUEST_DEBUG_BASE_FRAME_NUMBER:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Livb;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x2

    invoke-static {v0}, Livb;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->REQUEST_STAGGERED_HDR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    :cond_1
    invoke-static {v0}, Livb;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_STAGGERED_HDR_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_2
    const/4 v0, 0x3

    invoke-static {v0}, Livb;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->REQUEST_VIDEO_BOKEH_BLUR_LEVEL:Landroid/hardware/camera2/CaptureRequest$Key;

    :cond_3
    invoke-static {v0}, Livb;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_VIDEO_BOKEH_BLUR_LEVEL:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_4
    const/4 v0, 0x4

    invoke-static {v0}, Livb;->a(I)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->REQUEST_PROJECT11:Landroid/hardware/camera2/CaptureRequest$Key;

    :cond_5
    invoke-static {v0}, Livb;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->RESULT_PROJECT11:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_6
    return-void
.end method

.method public static a(I)Z
    .locals 2

    sget-boolean v0, Livb;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/google/android/camera/experimental2023/ExperimentalKeys;->getLibraryVersion()I

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
