.class public Lcom/google/ar/core/ImageMetadata;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final BLACK_LEVEL_LOCK:I = 0x160000

.field private static final BLACK_LEVEL_START:I = 0x160000

.field public static final COLOR_CORRECTION_ABERRATION_MODE:I = 0x3

.field public static final COLOR_CORRECTION_GAINS:I = 0x2

.field public static final COLOR_CORRECTION_MODE:I = 0x0

.field private static final COLOR_CORRECTION_START:I = 0x0

.field public static final COLOR_CORRECTION_TRANSFORM:I = 0x1

.field public static final CONTROL_AE_ANTIBANDING_MODE:I = 0x10000

.field public static final CONTROL_AE_EXPOSURE_COMPENSATION:I = 0x10001

.field public static final CONTROL_AE_LOCK:I = 0x10002

.field public static final CONTROL_AE_MODE:I = 0x10003

.field public static final CONTROL_AE_PRECAPTURE_TRIGGER:I = 0x10006

.field public static final CONTROL_AE_REGIONS:I = 0x10004

.field public static final CONTROL_AE_STATE:I = 0x1001f

.field public static final CONTROL_AE_TARGET_FPS_RANGE:I = 0x10005

.field public static final CONTROL_AF_MODE:I = 0x10007

.field public static final CONTROL_AF_REGIONS:I = 0x10008

.field public static final CONTROL_AF_STATE:I = 0x10020

.field public static final CONTROL_AF_TRIGGER:I = 0x10009

.field public static final CONTROL_AWB_LOCK:I = 0x1000a

.field public static final CONTROL_AWB_MODE:I = 0x1000b

.field public static final CONTROL_AWB_REGIONS:I = 0x1000c

.field public static final CONTROL_AWB_STATE:I = 0x10022

.field public static final CONTROL_CAPTURE_INTENT:I = 0x1000d

.field public static final CONTROL_EFFECT_MODE:I = 0x1000e

.field public static final CONTROL_MODE:I = 0x1000f

.field public static final CONTROL_POST_RAW_SENSITIVITY_BOOST:I = 0x10028

.field public static final CONTROL_SCENE_MODE:I = 0x10010

.field private static final CONTROL_START:I = 0x10000

.field public static final CONTROL_VIDEO_STABILIZATION_MODE:I = 0x10011

.field private static final DEPTH_START:I = 0x190000

.field public static final EDGE_MODE:I = 0x30000

.field private static final EDGE_START:I = 0x30000

.field private static final FLASH_INFO_START:I = 0x50000

.field public static final FLASH_MODE:I = 0x40002

.field private static final FLASH_START:I = 0x40000

.field public static final FLASH_STATE:I = 0x40005

.field public static final HOT_PIXEL_MODE:I = 0x60000

.field private static final HOT_PIXEL_START:I = 0x60000

.field private static final INFO_START:I = 0x150000

.field public static final JPEG_GPS_COORDINATES:I = 0x70000

.field public static final JPEG_GPS_PROCESSING_METHOD:I = 0x70001

.field public static final JPEG_GPS_TIMESTAMP:I = 0x70002

.field public static final JPEG_ORIENTATION:I = 0x70003

.field public static final JPEG_QUALITY:I = 0x70004

.field private static final JPEG_START:I = 0x70000

.field public static final JPEG_THUMBNAIL_QUALITY:I = 0x70005

.field public static final JPEG_THUMBNAIL_SIZE:I = 0x70006

.field public static final LENS_APERTURE:I = 0x80000

.field public static final LENS_FILTER_DENSITY:I = 0x80001

.field public static final LENS_FOCAL_LENGTH:I = 0x80002

.field public static final LENS_FOCUS_DISTANCE:I = 0x80003

.field public static final LENS_FOCUS_RANGE:I = 0x80008

.field private static final LENS_INFO_START:I = 0x90000

.field public static final LENS_INTRINSIC_CALIBRATION:I = 0x8000a

.field public static final LENS_OPTICAL_STABILIZATION_MODE:I = 0x80004

.field public static final LENS_POSE_ROTATION:I = 0x80006

.field public static final LENS_POSE_TRANSLATION:I = 0x80007

.field public static final LENS_RADIAL_DISTORTION:I = 0x8000b

.field private static final LENS_START:I = 0x80000

.field public static final LENS_STATE:I = 0x80009

.field public static final NOISE_REDUCTION_MODE:I = 0xa0000

.field private static final NOISE_REDUCTION_START:I = 0xa0000

.field public static final REQUEST_PIPELINE_DEPTH:I = 0xc0009

.field private static final REQUEST_START:I = 0xc0000

.field public static final SCALER_CROP_REGION:I = 0xd0000

.field private static final SCALER_START:I = 0xd0000

.field private static final SECTION_BLACK_LEVEL:I = 0x16

.field private static final SECTION_COLOR_CORRECTION:I = 0x0

.field private static final SECTION_CONTROL:I = 0x1

.field private static final SECTION_DEPTH:I = 0x19

.field private static final SECTION_EDGE:I = 0x3

.field private static final SECTION_FLASH:I = 0x4

.field private static final SECTION_FLASH_INFO:I = 0x5

.field private static final SECTION_HOT_PIXEL:I = 0x6

.field private static final SECTION_INFO:I = 0x15

.field private static final SECTION_JPEG:I = 0x7

.field private static final SECTION_LENS:I = 0x8

.field private static final SECTION_LENS_INFO:I = 0x9

.field private static final SECTION_NOISE_REDUCTION:I = 0xa

.field private static final SECTION_REQUEST:I = 0xc

.field private static final SECTION_SCALER:I = 0xd

.field private static final SECTION_SENSOR:I = 0xe

.field private static final SECTION_SENSOR_INFO:I = 0xf

.field private static final SECTION_SHADING:I = 0x10

.field private static final SECTION_STATISTICS:I = 0x11

.field private static final SECTION_STATISTICS_INFO:I = 0x12

.field private static final SECTION_SYNC:I = 0x17

.field private static final SECTION_TONEMAP:I = 0x13

.field public static final SENSOR_DYNAMIC_BLACK_LEVEL:I = 0xe001c

.field public static final SENSOR_DYNAMIC_WHITE_LEVEL:I = 0xe001d

.field public static final SENSOR_EXPOSURE_TIME:I = 0xe0000

.field public static final SENSOR_FRAME_DURATION:I = 0xe0001

.field public static final SENSOR_GREEN_SPLIT:I = 0xe0016

.field private static final SENSOR_INFO_START:I = 0xf0000

.field public static final SENSOR_NEUTRAL_COLOR_POINT:I = 0xe0012

.field public static final SENSOR_NOISE_PROFILE:I = 0xe0013

.field public static final SENSOR_ROLLING_SHUTTER_SKEW:I = 0xe001a

.field public static final SENSOR_SENSITIVITY:I = 0xe0002

.field private static final SENSOR_START:I = 0xe0000

.field public static final SENSOR_TEST_PATTERN_DATA:I = 0xe0017

.field public static final SENSOR_TEST_PATTERN_MODE:I = 0xe0018

.field public static final SENSOR_TIMESTAMP:I = 0xe0010

.field public static final SHADING_MODE:I = 0x100000

.field private static final SHADING_START:I = 0x100000

.field public static final STATISTICS_FACE_DETECT_MODE:I = 0x110000

.field public static final STATISTICS_FACE_IDS:I = 0x110004

.field public static final STATISTICS_FACE_LANDMARKS:I = 0x110005

.field public static final STATISTICS_FACE_RECTANGLES:I = 0x110006

.field public static final STATISTICS_FACE_SCORES:I = 0x110007

.field public static final STATISTICS_HOT_PIXEL_MAP:I = 0x11000f

.field public static final STATISTICS_HOT_PIXEL_MAP_MODE:I = 0x110003

.field private static final STATISTICS_INFO_START:I = 0x120000

.field public static final STATISTICS_LENS_SHADING_MAP:I = 0x11000b

.field public static final STATISTICS_LENS_SHADING_MAP_MODE:I = 0x110010

.field public static final STATISTICS_SCENE_FLICKER:I = 0x11000e

.field private static final STATISTICS_START:I = 0x110000

.field public static final SYNC_FRAME_NUMBER:I = 0x170000

.field private static final SYNC_START:I = 0x170000

.field private static final TAG:Ljava/lang/String; = "ARCore-ImageMetadata"

.field public static final TONEMAP_CURVE_BLUE:I = 0x130000

.field public static final TONEMAP_CURVE_GREEN:I = 0x130001

.field public static final TONEMAP_CURVE_RED:I = 0x130002

.field public static final TONEMAP_GAMMA:I = 0x130006

.field public static final TONEMAP_MODE:I = 0x130003

.field public static final TONEMAP_PRESET_CURVE:I = 0x130007

.field private static final TONEMAP_START:I = 0x130000

.field private static final TYPE_BYTE:I = 0x0

.field private static final TYPE_DOUBLE:I = 0x4

.field private static final TYPE_FLOAT:I = 0x2

.field private static final TYPE_INT:I = 0x1

.field private static final TYPE_LONG:I = 0x3

.field private static final TYPE_RATIONAL:I = 0x5


# instance fields
.field private final nativeHandle:J

.field private final nativeSymbolTableHandle:J

.field private final session:Lcom/google/ar/core/Session;

.field private final sketchEntry:Lrqa;


# direct methods
.method protected constructor <init>()V
    .locals 3

    goto/32 :goto_5

    nop

    nop

    :goto_0
    const-wide/16 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_4
    const v1, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    const v0, 0x9

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Lcom/google/ar/core/ImageMetadata;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-wide v1, p0, Lcom/google/ar/core/ImageMetadata;->nativeSymbolTableHandle:J

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

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    :goto_d
    iput-wide v1, p0, Lcom/google/ar/core/ImageMetadata;->nativeHandle:J

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    iput-object v0, p0, Lcom/google/ar/core/ImageMetadata;->sketchEntry:Lrqa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_f
    const/4 v0, 0x0

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

    nop

    nop

    :goto_10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop
.end method

.method public constructor <init>(JLcom/google/ar/core/Session;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    :goto_0
    new-instance p1, Lrqa;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Lcom/google/ar/core/ImageMetadata;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    iput-wide p1, p0, Lcom/google/ar/core/ImageMetadata;->nativeHandle:J

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
    iput-wide p1, p0, Lcom/google/ar/core/ImageMetadata;->nativeSymbolTableHandle:J

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

    nop

    :goto_5
    iput-object p1, p0, Lcom/google/ar/core/ImageMetadata;->sketchEntry:Lrqa;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-wide p1, p3, Lcom/google/ar/core/Session;->nativeSymbolTableHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    invoke-direct {p1}, Lrqa;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method private e88d21ad42a95fb60f38ed408c8d13c1m(ILrqa;)V
    .locals 7

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_0
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

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

    :goto_1
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_17

    nop

    :goto_2
    throw p0

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_6
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lcom/google/ar/core/ImageMetadata;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    if-nez v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/ar/core/ImageMetadata;->nativeGetMetadataEntryValueType(JJ)I

    move-result p1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-wide v4, p0, Lcom/google/ar/core/ImageMetadata;->nativeHandle:J

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_c
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    const-wide/16 v2, 0x0

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

    nop

    :goto_10
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/ImageMetadata;->nativeGetMetadataEntryValueCount(JJ)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_11
    iget-object p1, p0, Lcom/google/ar/core/ImageMetadata;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-wide v2, p2, Lrqa;->a:J

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x15

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

    :goto_15
    cmp-long v2, v0, v2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_16
    iput p1, p2, Lrqa;->b:I

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

    :goto_17
    goto/32 :goto_3

    nop

    nop

    :goto_18
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-wide v2, p1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-wide v0, p1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

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

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-string p2, "Invalid ImageMetadata key: %1$d"

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

    :goto_1e
    move-object v1, p0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    move v6, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/ImageMetadata;->nativeGetMetadataEntry(JJI)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iput-wide v0, p2, Lrqa;->a:J

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p1, p0, Lcom/google/ar/core/ImageMetadata;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_23
    iput p0, p2, Lrqa;->c:I

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_24
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method

.method private native nativeDestroyMetadataEntry(JJ)V
.end method

.method private native nativeGetAllKeys(JJ)[J
.end method

.method private native nativeGetByteArrayFromMetadataEntry(JJ)[B
.end method

.method private native nativeGetByteFromMetadataEntry(JJ)B
.end method

.method private native nativeGetDoubleArrayFromMetadataEntry(JJ)[D
.end method

.method private native nativeGetDoubleFromMetadataEntry(JJ)D
.end method

.method private native nativeGetFloatArrayFromMetadataEntry(JJ)[F
.end method

.method private native nativeGetFloatFromMetadataEntry(JJ)F
.end method

.method private native nativeGetIntArrayFromMetadataEntry(JJ)[I
.end method

.method private native nativeGetIntFromMetadataEntry(JJ)I
.end method

.method private native nativeGetLongArrayFromMetadataEntry(JJ)[J
.end method

.method private native nativeGetLongFromMetadataEntry(JJ)J
.end method

.method private native nativeGetMetadataEntry(JJI)J
.end method

.method private native nativeGetMetadataEntryValueCount(JJ)I
.end method

.method private native nativeGetMetadataEntryValueType(JJ)I
.end method

.method private native nativeGetRationalArrayFromMetadataEntry(JJ)[Landroid/util/Rational;
.end method

.method private native nativeGetRationalFromMetadataEntry(JJ)Landroid/util/Rational;
.end method

.method static native nativeLoadSymbols()V
.end method

.method private static native nativeReleaseImageMetadata(JJ)V
.end method


# virtual methods
.method protected finalize()V
    .locals 4

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x1b

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v2, v3, v0, v1}, Lcom/google/ar/core/ImageMetadata;->nativeReleaseImageMetadata(JJ)V

    :goto_7
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_b
    const-wide/16 v2, 0x0

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_c
    iget-wide v2, p0, Lcom/google/ar/core/ImageMetadata;->nativeSymbolTableHandle:J

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    cmp-long v2, v0, v2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v2, :cond_1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto/32 :goto_0

    nop

    nop

    :goto_11
    iget-wide v0, p0, Lcom/google/ar/core/ImageMetadata;->nativeHandle:J

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
.end method

.method public getByte(I)B
    .locals 5

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-wide v1, p1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lcom/google/ar/core/ImageMetadata;->sketchEntry:Lrqa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_3
    return p1

    nop

    :goto_4
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v1, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    :goto_6
    const v1, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_7
    if-eq v1, v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_7

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

    nop

    :goto_a
    iget-object v0, p0, Lcom/google/ar/core/ImageMetadata;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_b
    iget-wide v0, v1, Lrqa;->a:J

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_d
    iget-wide v3, v0, Lrqa;->a:J

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/ar/core/ImageMetadata;->nativeDestroyMetadataEntry(JJ)V

    goto/32 :goto_3

    nop

    nop

    :goto_f
    throw p0

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
    add-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p1, p0, Lcom/google/ar/core/ImageMetadata;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/ar/core/ImageMetadata;->nativeGetByteFromMetadataEntry(JJ)B

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_14
    if-lez v0, :cond_2

    nop

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

    :goto_15
    invoke-direct {p0, p1, v0}, Lcom/google/ar/core/ImageMetadata;->e88d21ad42a95fb60f38ed408c8d13c1m(ILrqa;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1a
    iget v1, v0, Lrqa;->c:I

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

    nop

    :goto_1b
    iget-object v1, p0, Lcom/google/ar/core/ImageMetadata;->sketchEntry:Lrqa;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-string v0, "Wrong return type for ImageMetadata key: %1$d."

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1e
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1f
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget v1, v0, Lrqa;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_21
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v0, p0, Lcom/google/ar/core/ImageMetadata;->sketchEntry:Lrqa;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public getByteArray(I)[B
    .locals 5

    goto/32 :goto_13

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/ar/core/ImageMetadata;->nativeGetByteArrayFromMetadataEntry(JJ)[B

    move-result-object p1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

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

    :goto_3
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

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

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_5
    throw p0

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v1, p0, Lcom/google/ar/core/ImageMetadata;->sketchEntry:Lrqa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    return-object p1

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget v1, v0, Lrqa;->b:I

    nop

    goto/32 :goto_18

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

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    iget-wide v1, p1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p1, p0, Lcom/google/ar/core/ImageMetadata;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lcom/google/ar/core/ImageMetadata;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_13
    const v0, 0x16

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_15
    invoke-direct {p0, p1, v0}, Lcom/google/ar/core/ImageMetadata;->e88d21ad42a95fb60f38ed408c8d13c1m(ILrqa;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_6

    nop

    nop

    :goto_17
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_18
    if-eqz v1, :cond_1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    :goto_19
    iget-object v0, p0, Lcom/google/ar/core/ImageMetadata;->sketchEntry:Lrqa;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1a
    const-string v0, "Wrong return type for ImageMetadata key: %1$d."

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

    :goto_1b
    iget-object v0, p0, Lcom/google/ar/core/ImageMetadata;->sketchEntry:Lrqa;

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

    :goto_1c
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/ar/core/ImageMetadata;->nativeDestroyMetadataEntry(JJ)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-wide v0, v1, Lrqa;->a:J

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1e
    iget-wide v3, v0, Lrqa;->a:J

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1f
    const v1, 0xf

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public getDouble(I)D
    .locals 7

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    :goto_1
    iget-object v0, p0, Lcom/google/ar/core/ImageMetadata;->sketchEntry:Lrqa;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_3
    const/4 v2, 0x1

    nop

    goto/32 :goto_10

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

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x12

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
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    const v0, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    iget-wide v5, v2, Lrqa;->a:J

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0, p1, v0}, Lcom/google/ar/core/ImageMetadata;->e88d21ad42a95fb60f38ed408c8d13c1m(ILrqa;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_b
    throw p0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1a

    nop

    nop

    :goto_d
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

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

    :goto_e
    const-string v0, "Wrong return type for ImageMetadata key: %1$d."

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

    :goto_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_10
    if-eq v1, v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-wide v3, p1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_12
    iget v1, v0, Lrqa;->b:I

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

    :goto_13
    iget-object p1, p0, Lcom/google/ar/core/ImageMetadata;->session:Lcom/google/ar/core/Session;

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

    :goto_14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lcom/google/ar/core/ImageMetadata;->sketchEntry:Lrqa;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_16
    iget v1, v0, Lrqa;->c:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_17
    iget-object p1, p0, Lcom/google/ar/core/ImageMetadata;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_18
    iget-wide v1, p1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

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
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/ar/core/ImageMetadata;->nativeGetDoubleFromMetadataEntry(JJ)D

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1a
    goto/32 :goto_7

    nop

    :goto_1b
    if-eq v1, v2, :cond_1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-wide v3, v0, Lrqa;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v2, p0, Lcom/google/ar/core/ImageMetadata;->sketchEntry:Lrqa;

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

    :goto_1e
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1f
    return-wide v0

    nop

    :goto_20
    goto/32 :goto_f

    nop

    nop

    :goto_21
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    :goto_22
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_23
    invoke-direct {p0, v3, v4, v5, v6}, Lcom/google/ar/core/ImageMetadata;->nativeDestroyMetadataEntry(JJ)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop
.end method

.method public getDoubleArray(I)[D
    .locals 5

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/ar/core/ImageMetadata;->sketchEntry:Lrqa;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x3

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    const v0, 0xf

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

    :goto_5
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-wide v3, v0, Lrqa;->a:J

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget v1, v0, Lrqa;->b:I

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9
    const-string v0, "Wrong return type for ImageMetadata key: %1$d."

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lcom/google/ar/core/ImageMetadata;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_b
    iget-object v0, p0, Lcom/google/ar/core/ImageMetadata;->sketchEntry:Lrqa;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

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

    :goto_d
    iget-wide v1, p1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

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

    :goto_e
    iget-wide v0, v1, Lrqa;->a:J

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_f
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v2, 0x4

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

    :goto_12
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/ar/core/ImageMetadata;->nativeGetDoubleArrayFromMetadataEntry(JJ)[D

    move-result-object p1

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

    :goto_13
    if-eq v1, v2, :cond_0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_14
    iget-object p1, p0, Lcom/google/ar/core/ImageMetadata;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/ar/core/ImageMetadata;->nativeDestroyMetadataEntry(JJ)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-object p1

    nop

    :goto_17
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

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

    :goto_19
    iget-object v1, p0, Lcom/google/ar/core/ImageMetadata;->sketchEntry:Lrqa;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1b
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_10

    nop

    :goto_1d
    goto/32 :goto_b

    nop

    nop

    :goto_1e
    invoke-direct {p0, p1, v0}, Lcom/google/ar/core/ImageMetadata;->e88d21ad42a95fb60f38ed408c8d13c1m(ILrqa;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_1

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public getFloat(I)F
    .locals 5

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_0
    return p1

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    :goto_2
    iget v1, v0, Lrqa;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    iget-wide v0, v1, Lrqa;->a:J

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_4
    iget-wide v3, v0, Lrqa;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

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

    :goto_6
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_7
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/ar/core/ImageMetadata;->nativeGetFloatFromMetadataEntry(JJ)F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0, p1, v0}, Lcom/google/ar/core/ImageMetadata;->e88d21ad42a95fb60f38ed408c8d13c1m(ILrqa;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget v1, v0, Lrqa;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_a
    const v1, 0x17

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Lcom/google/ar/core/ImageMetadata;->sketchEntry:Lrqa;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_e
    const/4 v2, 0x1

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

    :goto_f
    throw p0

    nop

    nop

    :goto_10
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    :goto_12
    goto/32 :goto_17

    nop

    nop

    :goto_13
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/ar/core/ImageMetadata;->nativeDestroyMetadataEntry(JJ)V

    goto/32 :goto_0

    nop

    nop

    :goto_14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_15
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_10

    nop

    :goto_17
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lcom/google/ar/core/ImageMetadata;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_19
    iget-wide v1, p1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lcom/google/ar/core/ImageMetadata;->sketchEntry:Lrqa;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1b
    const-string v0, "Wrong return type for ImageMetadata key: %1$d."

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

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

    :goto_1d
    if-eq v1, v2, :cond_1

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

    :cond_1
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

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

    :goto_1f
    if-eq v1, v2, :cond_2

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

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0xd

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_21
    iget-object v0, p0, Lcom/google/ar/core/ImageMetadata;->sketchEntry:Lrqa;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_22
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p1, p0, Lcom/google/ar/core/ImageMetadata;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop
.end method

.method public getFloatArray(I)[F
    .locals 5

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-wide v0, v1, Lrqa;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_2
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/ar/core/ImageMetadata;->nativeGetFloatArrayFromMetadataEntry(JJ)[F

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-wide v1, p1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    if-eq v1, v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1f

    nop

    nop

    :goto_8
    iget-wide v3, v0, Lrqa;->a:J

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

    :goto_9
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/ar/core/ImageMetadata;->nativeDestroyMetadataEntry(JJ)V

    goto/32 :goto_a

    nop

    nop

    :goto_a
    return-object p1

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lcom/google/ar/core/ImageMetadata;->sketchEntry:Lrqa;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

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

    nop

    :goto_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

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

    :goto_f
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

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

    :goto_10
    const-string v0, "Wrong return type for ImageMetadata key: %1$d."

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

    :goto_11
    iget-object p1, p0, Lcom/google/ar/core/ImageMetadata;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0, p1, v0}, Lcom/google/ar/core/ImageMetadata;->e88d21ad42a95fb60f38ed408c8d13c1m(ILrqa;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lcom/google/ar/core/ImageMetadata;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x1d

    nop

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

    nop

    :goto_16
    iget-object v0, p0, Lcom/google/ar/core/ImageMetadata;->sketchEntry:Lrqa;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1b
    iget v1, v0, Lrqa;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1c
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v1, p0, Lcom/google/ar/core/ImageMetadata;->sketchEntry:Lrqa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1e
    const v0, 0x14

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method public getInt(I)I
    .locals 5

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/ar/core/ImageMetadata;->sketchEntry:Lrqa;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    if-eq v1, v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    :goto_3
    const v0, 0x4

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

    :goto_4
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    const/4 v2, 0x1

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

    :goto_7
    const-string v0, "Wrong return type for ImageMetadata key: %1$d."

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_8
    if-eq v1, v2, :cond_1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_9
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

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

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Lcom/google/ar/core/ImageMetadata;->sketchEntry:Lrqa;

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

    :goto_c
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/ar/core/ImageMetadata;->nativeDestroyMetadataEntry(JJ)V

    goto/32 :goto_18

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    :goto_f
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/ar/core/ImageMetadata;->nativeGetIntFromMetadataEntry(JJ)I

    move-result p1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_11
    iget-wide v1, p1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_14
    iget-wide v0, v1, Lrqa;->a:J

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    invoke-direct {p0, p1, v0}, Lcom/google/ar/core/ImageMetadata;->e88d21ad42a95fb60f38ed408c8d13c1m(ILrqa;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p1, p0, Lcom/google/ar/core/ImageMetadata;->session:Lcom/google/ar/core/Session;

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

    :goto_17
    iget-object v0, p0, Lcom/google/ar/core/ImageMetadata;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_18
    return p1

    nop

    nop

    :goto_19
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1b
    iget v1, v0, Lrqa;->b:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    :goto_1d
    const v1, 0x17

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

    :goto_1e
    iget-object v0, p0, Lcom/google/ar/core/ImageMetadata;->sketchEntry:Lrqa;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1f
    iget v1, v0, Lrqa;->c:I

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_20
    iget-wide v3, v0, Lrqa;->a:J

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

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_22
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

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
.end method

.method public getIntArray(I)[I
    .locals 5

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/google/ar/core/ImageMetadata;->e88d21ad42a95fb60f38ed408c8d13c1m(ILrqa;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lcom/google/ar/core/ImageMetadata;->sketchEntry:Lrqa;

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

    :goto_2
    add-int v0, v0, v1

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

    :goto_3
    iget-wide v0, v1, Lrqa;->a:J

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lcom/google/ar/core/ImageMetadata;->sketchEntry:Lrqa;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    iget v1, v0, Lrqa;->b:I

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x16

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

    :goto_7
    return-object p1

    nop

    :goto_8
    goto/32 :goto_19

    nop

    nop

    :goto_9
    const v0, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    iget-wide v1, p1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

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

    :goto_c
    const-string v0, "Wrong return type for ImageMetadata key: %1$d."

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_d
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1d

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_10
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/ar/core/ImageMetadata;->nativeDestroyMetadataEntry(JJ)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lcom/google/ar/core/ImageMetadata;->session:Lcom/google/ar/core/Session;

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

    :goto_12
    iget-object v1, p0, Lcom/google/ar/core/ImageMetadata;->sketchEntry:Lrqa;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_14
    iget-wide v3, v0, Lrqa;->a:J

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_15
    if-eq v1, v2, :cond_1

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

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_e

    nop

    :goto_17
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p1, p0, Lcom/google/ar/core/ImageMetadata;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v2, 0x1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_17

    nop

    nop

    :goto_1e
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/ar/core/ImageMetadata;->nativeGetIntArrayFromMetadataEntry(JJ)[I

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1f
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public getKeys()[J
    .locals 4

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/ar/core/ImageMetadata;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

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

    :goto_2
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    throw p0

    nop

    :goto_4
    goto/32 :goto_7

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

    goto/32 :goto_b

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_6
    new-instance p0, Lcom/google/ar/core/exceptions/FatalException;

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

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x4

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

    :goto_9
    invoke-direct {p0, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-wide v2, p0, Lcom/google/ar/core/ImageMetadata;->nativeHandle:J

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

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

    :goto_11
    const v1, 0x2

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

    :goto_12
    const-string v0, "Unknown error in ImageMetadata.getKeys()."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/ImageMetadata;->nativeGetAllKeys(JJ)[J

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public getLong(I)J
    .locals 7

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-wide v5, v2, Lrqa;->a:J

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lcom/google/ar/core/ImageMetadata;->sketchEntry:Lrqa;

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

    :goto_2
    invoke-direct {p0, v3, v4, v5, v6}, Lcom/google/ar/core/ImageMetadata;->nativeDestroyMetadataEntry(JJ)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p1, p0, Lcom/google/ar/core/ImageMetadata;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_4
    filled-new-array {p1, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_5
    return-wide v0

    nop

    :goto_6
    goto/32 :goto_17

    nop

    nop

    :goto_7
    iget v1, v0, Lrqa;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    iget-wide v3, v0, Lrqa;->a:J

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_27

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lcom/google/ar/core/ImageMetadata;->sketchEntry:Lrqa;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_c
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/ar/core/ImageMetadata;->nativeGetLongFromMetadataEntry(JJ)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_e
    iget v1, v0, Lrqa;->b:I

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-wide v1, p1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_12
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget p0, p0, Lrqa;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_15
    const/4 v2, 0x3

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

    :goto_16
    iget v1, v1, Lrqa;->b:I

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v2, p0, Lcom/google/ar/core/ImageMetadata;->sketchEntry:Lrqa;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p1, p0, Lcom/google/ar/core/ImageMetadata;->session:Lcom/google/ar/core/Session;

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

    nop

    :goto_1a
    invoke-direct {p0, p1, v0}, Lcom/google/ar/core/ImageMetadata;->e88d21ad42a95fb60f38ed408c8d13c1m(ILrqa;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1c
    if-eq v1, v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1d
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x6

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

    :goto_1f
    iget-object v1, p0, Lcom/google/ar/core/ImageMetadata;->sketchEntry:Lrqa;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_1

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

    :goto_21
    const-string p1, "Wrong return type for ImageMetadata key: %1$d, type: %2$d, count: %3$d."

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_a

    nop

    nop

    :goto_23
    iget-object p0, p0, Lcom/google/ar/core/ImageMetadata;->sketchEntry:Lrqa;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_24
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-eq v1, v2, :cond_2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    throw v0

    nop

    :goto_27
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_28
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-wide v3, p1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

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
.end method

.method public getLongArray(I)[J
    .locals 5

    goto/32 :goto_b

    nop

    nop

    :goto_0
    iget v1, v0, Lrqa;->b:I

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lcom/google/ar/core/ImageMetadata;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iget-object v1, p0, Lcom/google/ar/core/ImageMetadata;->sketchEntry:Lrqa;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_5
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/ar/core/ImageMetadata;->nativeGetLongArrayFromMetadataEntry(JJ)[J

    move-result-object p1

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

    :goto_7
    throw p0

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
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/ar/core/ImageMetadata;->nativeDestroyMetadataEntry(JJ)V

    goto/32 :goto_1b

    nop

    nop

    :goto_d
    iget-object v0, p0, Lcom/google/ar/core/ImageMetadata;->sketchEntry:Lrqa;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

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

    :goto_f
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

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

    :goto_10
    invoke-direct {p0, p1, v0}, Lcom/google/ar/core/ImageMetadata;->e88d21ad42a95fb60f38ed408c8d13c1m(ILrqa;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_14

    nop

    :goto_12
    if-eq v1, v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_8

    nop

    :goto_14
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    iget-wide v3, v0, Lrqa;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_16
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_17
    const/4 v2, 0x3

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

    :goto_18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_19
    const-string v0, "Wrong return type for ImageMetadata key: %1$d."

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lcom/google/ar/core/ImageMetadata;->sketchEntry:Lrqa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1b
    return-object p1

    nop

    nop

    :goto_1c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-wide v0, v1, Lrqa;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1e
    iget-object p1, p0, Lcom/google/ar/core/ImageMetadata;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1f
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_20
    iget-wide v1, p1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

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
.end method

.method public getRational(I)Landroid/util/Rational;
    .locals 5

    goto/32 :goto_4

    nop

    nop

    :goto_0
    iget-wide v1, p1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

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

    nop

    :goto_2
    const/4 v2, 0x5

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lcom/google/ar/core/ImageMetadata;->session:Lcom/google/ar/core/Session;

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

    :goto_7
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/ar/core/ImageMetadata;->nativeDestroyMetadataEntry(JJ)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, p0, Lcom/google/ar/core/ImageMetadata;->sketchEntry:Lrqa;

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

    :goto_9
    iget-wide v3, v0, Lrqa;->a:J

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

    :goto_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

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

    :goto_b
    iget-wide v0, v1, Lrqa;->a:J

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

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_d
    iget v1, v0, Lrqa;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p1, p0, Lcom/google/ar/core/ImageMetadata;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_f
    if-eq v1, v2, :cond_0

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_10
    const-string v0, "Wrong return type for ImageMetadata key: %1$d."

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
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-eq v1, v2, :cond_1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_13
    return-object p1

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_15
    iget v1, v0, Lrqa;->b:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {p0, p1, v0}, Lcom/google/ar/core/ImageMetadata;->e88d21ad42a95fb60f38ed408c8d13c1m(ILrqa;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1a

    nop

    nop

    :goto_18
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_19
    throw p0

    nop

    nop

    :goto_1a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v2, 0x1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1c
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Lcom/google/ar/core/ImageMetadata;->sketchEntry:Lrqa;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v1, 0x10

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

    :goto_1f
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    :goto_20
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_17

    nop

    :goto_21
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/ar/core/ImageMetadata;->nativeGetRationalFromMetadataEntry(JJ)Landroid/util/Rational;

    move-result-object p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v0, p0, Lcom/google/ar/core/ImageMetadata;->sketchEntry:Lrqa;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop
.end method

.method public getRationalArray(I)[Landroid/util/Rational;
    .locals 5

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-wide v1, p1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    const-string v0, "Wrong return type for ImageMetadata key: %1$d."

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

    :goto_2
    iget-object v0, p0, Lcom/google/ar/core/ImageMetadata;->sketchEntry:Lrqa;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3
    if-eq v1, v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x8

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    :goto_6
    iget-wide v0, v1, Lrqa;->a:J

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_7
    iget-wide v3, v0, Lrqa;->a:J

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_8
    return-object p1

    nop

    :goto_9
    goto/32 :goto_18

    nop

    nop

    :goto_a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/ar/core/ImageMetadata;->nativeDestroyMetadataEntry(JJ)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lcom/google/ar/core/ImageMetadata;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lcom/google/ar/core/ImageMetadata;->sketchEntry:Lrqa;

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

    :goto_f
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/ar/core/ImageMetadata;->nativeGetRationalArrayFromMetadataEntry(JJ)[Landroid/util/Rational;

    move-result-object p1

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

    :goto_10
    const/4 v2, 0x5

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_11
    iget-object v1, p0, Lcom/google/ar/core/ImageMetadata;->sketchEntry:Lrqa;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_12
    iget-object p1, p0, Lcom/google/ar/core/ImageMetadata;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_13
    const v0, 0x17

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_14
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_e

    nop

    nop

    :goto_17
    invoke-direct {p0, p1, v0}, Lcom/google/ar/core/ImageMetadata;->e88d21ad42a95fb60f38ed408c8d13c1m(ILrqa;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_16

    nop

    :goto_1a
    iget v1, v0, Lrqa;->b:I

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1d
    throw p0

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

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

    :goto_20
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

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
