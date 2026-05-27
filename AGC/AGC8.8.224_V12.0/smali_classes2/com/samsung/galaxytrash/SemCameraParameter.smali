.class public Lcom/samsung/galaxytrash/SemCameraParameter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONTROL_DEVICE_SWITCHING:Ljava/lang/String; = "device-switching"

.field public static final CONTROL_OPERATION_MODE:Ljava/lang/String; = "operation_mode"

.field public static final CONTROL_RECORDING_DR_MODE:Ljava/lang/String; = "recording_dr_mode"

.field public static final CONTROL_RECORDING_MAX_FPS:Ljava/lang/String; = "recording-fps"

.field public static final CONTROL_SHOOTING_MODE:Ljava/lang/String; = "shootingmode"

.field public static final CONTROL_SSM_SHOT_MODE:Ljava/lang/String; = "ssm_shot_mode"

.field public static final CONTROL_SW_SUPER_VDIS:Ljava/lang/String; = "sw-super_vdis"

.field public static final CONTROL_SW_VDIS:Ljava/lang/String; = "sw-vdis"

.field public static final CONTROL_VIDEO_BEAUTY_FACE:Ljava/lang/String; = "video-beautyface"

.field public static final CONTROL_VT_MODE:Ljava/lang/String; = "vtmode"

.field public static final INFO_FACTORY_TEST:Ljava/lang/String; = "factorytest"

.field public static final INFO_FIRST_ENTRANCE:Ljava/lang/String; = "first-entrance"

.field public static final INFO_SAMSUNG_CAMERA:Ljava/lang/String; = "samsungcamera"

.field public static final OPERATION_MODE_AR_CORE:Ljava/lang/String; = "arcore"

.field public static final OPERATION_MODE_NONE:Ljava/lang/String; = "none"

.field public static final OPERATION_MODE_SMART_STAY:Ljava/lang/String; = "smartstay"

.field public static final RECORDING_DR_MODE_3HDR:Ljava/lang/String; = "3hdr"

.field public static final RECORDING_DR_MODE_HDR10:Ljava/lang/String; = "hdr10"

.field public static final RECORDING_DR_MODE_SDR:Ljava/lang/String; = "sdr"

.field public static final SENSOR_STREAM_TYPE:Ljava/lang/String; = "stream_type"

.field public static final SENSOR_STREAM_TYPE_CROP:Ljava/lang/Integer;

.field public static final SENSOR_STREAM_TYPE_NORMAL:Ljava/lang/Integer;

.field public static final SSM_SHOT_MODE_MULTI:Ljava/lang/Integer;

.field public static final SSM_SHOT_MODE_MULTI_FRC:Ljava/lang/Integer;

.field public static final SSM_SHOT_MODE_SINGLE:Ljava/lang/Integer;

.field public static final SSM_SHOT_MODE_SINGLE_FRC:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/samsung/galaxytrash/SemCameraParameter;->SSM_SHOT_MODE_MULTI:Ljava/lang/Integer;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/samsung/galaxytrash/SemCameraParameter;->SSM_SHOT_MODE_SINGLE:Ljava/lang/Integer;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/samsung/galaxytrash/SemCameraParameter;->SSM_SHOT_MODE_MULTI_FRC:Ljava/lang/Integer;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/samsung/galaxytrash/SemCameraParameter;->SSM_SHOT_MODE_SINGLE_FRC:Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/samsung/galaxytrash/SemCameraParameter;->SENSOR_STREAM_TYPE_NORMAL:Ljava/lang/Integer;

    sput-object v0, Lcom/samsung/galaxytrash/SemCameraParameter;->SENSOR_STREAM_TYPE_CROP:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
