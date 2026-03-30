.class public Lcom/google/ar/core/CameraConfigFilter;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraConfigFilter"


# instance fields
.field nativeHandle:J

.field private final nativeSymbolTableHandle:J

.field private final session:Lcom/google/ar/core/Session;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method protected constructor <init>()V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1
    iput-wide v0, p0, Lcom/google/ar/core/CameraConfigFilter;->nativeSymbolTableHandle:J

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

    :goto_2
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iput-wide v0, p0, Lcom/google/ar/core/CameraConfigFilter;->nativeHandle:J

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

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5
    const v0, 0x13

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

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

    :goto_7
    const-wide/16 v0, 0x0

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

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    iput-object v0, p0, Lcom/google/ar/core/CameraConfigFilter;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lcom/google/ar/core/Session;)V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lcom/google/ar/core/CameraConfigFilter;->session:Lcom/google/ar/core/Session;

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

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    iget-wide v0, p1, Lcom/google/ar/core/Session;->nativeSymbolTableHandle:J

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

    :goto_4
    invoke-static {v0, v1}, Lcom/google/ar/core/CameraConfigFilter;->nativeCreateCameraConfigFilter(J)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_8
    iget-wide v0, p1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-wide v0, p0, Lcom/google/ar/core/CameraConfigFilter;->nativeHandle:J

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    iput-wide v0, p0, Lcom/google/ar/core/CameraConfigFilter;->nativeSymbolTableHandle:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_e
    const v0, 0x5

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method private static native nativeCreateCameraConfigFilter(J)J
.end method

.method private static native nativeDestroyCameraConfigFilter(JJ)V
.end method

.method private native nativeGetDepthSensorUsage(JJ)I
.end method

.method private native nativeGetFacingDirection(JJ)I
.end method

.method private native nativeGetStereoCameraUsage(JJ)I
.end method

.method private native nativeGetTargetFps(JJ)I
.end method

.method private native nativeSetDepthSensorUsage(JJI)V
.end method

.method private native nativeSetFacingDirection(JJI)V
.end method

.method private native nativeSetStereoCameraUsage(JJI)V
.end method

.method private native nativeSetTargetFps(JJI)V
.end method


# virtual methods
.method protected finalize()V
    .locals 6

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    const v0, 0xa

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

    :goto_5
    if-nez v4, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_7
    iget-wide v0, p0, Lcom/google/ar/core/CameraConfigFilter;->nativeHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    iget-wide v4, p0, Lcom/google/ar/core/CameraConfigFilter;->nativeSymbolTableHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_9
    iput-wide v2, p0, Lcom/google/ar/core/CameraConfigFilter;->nativeHandle:J

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v4, v5, v0, v1}, Lcom/google/ar/core/CameraConfigFilter;->nativeDestroyCameraConfigFilter(JJ)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_d
    const v1, 0x18

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_11
    cmp-long v4, v0, v2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_12
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public getDepthSensorUsage()Ljava/util/EnumSet;
    .locals 4

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

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

    nop

    :goto_1
    const v0, 0xd

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

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3
    add-int v0, v0, v1

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

    :goto_4
    iget-object v0, p0, Lcom/google/ar/core/CameraConfigFilter;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    iget-wide v2, p0, Lcom/google/ar/core/CameraConfigFilter;->nativeHandle:J

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_7

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    :goto_a
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/CameraConfigFilter;->nativeGetDepthSensorUsage(JJ)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_b
    const v1, 0x7

    nop

    nop

    goto/32 :goto_3

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

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p0}, Lcom/google/ar/core/CameraConfig$DepthSensorUsage;->forBitFlags(I)Ljava/util/EnumSet;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public getFacingDirection()Lcom/google/ar/core/CameraConfig$FacingDirection;
    .locals 4

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_2
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/CameraConfigFilter;->nativeGetFacingDirection(JJ)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lcom/google/ar/core/CameraConfigFilter;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    :goto_8
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

    :goto_9
    iget-wide v2, p0, Lcom/google/ar/core/CameraConfigFilter;->nativeHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0xd

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

    :goto_c
    invoke-static {p0}, Lcom/google/ar/core/CameraConfig$FacingDirection;->forNumber(I)Lcom/google/ar/core/CameraConfig$FacingDirection;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x4

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public getStereoCameraUsage()Ljava/util/EnumSet;
    .locals 4

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/CameraConfigFilter;->nativeGetStereoCameraUsage(JJ)I

    move-result p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

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

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_7
    const v0, 0xd

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    iget-wide v2, p0, Lcom/google/ar/core/CameraConfigFilter;->nativeHandle:J

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    const v1, 0x20

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lcom/google/ar/core/CameraConfigFilter;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    invoke-static {p0}, Lcom/google/ar/core/CameraConfig$StereoCameraUsage;->forBitFlags(I)Ljava/util/EnumSet;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method

.method public getTargetFps()Ljava/util/EnumSet;
    .locals 4

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/ar/core/CameraConfigFilter;->session:Lcom/google/ar/core/Session;

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

    :goto_1
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/CameraConfigFilter;->nativeGetTargetFps(JJ)I

    move-result p0

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

    :goto_2
    goto/32 :goto_7

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

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
    const v0, 0x9

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p0}, Lcom/google/ar/core/CameraConfig$TargetFps;->forBitFlags(I)Ljava/util/EnumSet;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

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
    return-object p0

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x12

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
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

    :goto_c
    iget-wide v2, p0, Lcom/google/ar/core/CameraConfigFilter;->nativeHandle:J

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_e
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public setDepthSensorUsage(Ljava/util/EnumSet;)Lcom/google/ar/core/CameraConfigFilter;
    .locals 7

    goto/32 :goto_12

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x15

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p1, p0, Lcom/google/ar/core/CameraConfigFilter;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_6
    iget-wide v4, p0, Lcom/google/ar/core/CameraConfigFilter;->nativeHandle:J

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast v0, Lcom/google/ar/core/CameraConfig$DepthSensorUsage;

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

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_a
    iget v0, v0, Lcom/google/ar/core/CameraConfig$DepthSensorUsage;->nativeCode:I

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_1

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

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    or-int/2addr v6, v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    :goto_e
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_f
    move v6, v0

    nop

    nop

    :goto_10
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_3

    nop

    :goto_12
    const v0, 0xa

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto :goto_10

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_15
    move-object v1, p0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_18
    iget-wide v2, p1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_19
    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/CameraConfigFilter;->nativeSetDepthSensorUsage(JJI)V

    goto/32 :goto_d

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

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public setFacingDirection(Lcom/google/ar/core/CameraConfig$FacingDirection;)Lcom/google/ar/core/CameraConfigFilter;
    .locals 7

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    move-object v1, p0

    nop

    nop

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

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    :goto_3
    goto/32 :goto_6

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    const v0, 0x9

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_8
    iget-object v0, p0, Lcom/google/ar/core/CameraConfigFilter;->session:Lcom/google/ar/core/Session;

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

    :goto_9
    iget-wide v4, p0, Lcom/google/ar/core/CameraConfigFilter;->nativeHandle:J

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_c
    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/CameraConfigFilter;->nativeSetFacingDirection(JJI)V

    goto/32 :goto_5

    nop

    nop

    :goto_d
    iget v6, p1, Lcom/google/ar/core/CameraConfig$FacingDirection;->nativeCode:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public setStereoCameraUsage(Ljava/util/EnumSet;)Lcom/google/ar/core/CameraConfigFilter;
    .locals 7

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    iget-wide v2, p1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

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

    :goto_2
    move v6, v0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

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

    :goto_5
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_6
    or-int/2addr v6, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_7
    check-cast v0, Lcom/google/ar/core/CameraConfig$StereoCameraUsage;

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

    :goto_8
    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/CameraConfigFilter;->nativeSetStereoCameraUsage(JJI)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_a
    iget-object p1, p0, Lcom/google/ar/core/CameraConfigFilter;->session:Lcom/google/ar/core/Session;

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

    nop

    :goto_b
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    const v1, 0x13

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_d
    iget-wide v4, p0, Lcom/google/ar/core/CameraConfigFilter;->nativeHandle:J

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_f
    iget v0, v0, Lcom/google/ar/core/CameraConfig$StereoCameraUsage;->nativeCode:I

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

    :goto_10
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_3

    nop

    :goto_14
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x14

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_16
    return-object p0

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_18
    move-object v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_17

    nop

    nop

    :goto_1a
    goto/32 :goto_4

    nop

    nop
.end method

.method public setTargetFps(Ljava/util/EnumSet;)Lcom/google/ar/core/CameraConfigFilter;
    .locals 7

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2
    move-object v1, p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v0, v0, Lcom/google/ar/core/CameraConfig$TargetFps;->nativeCode:I

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

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_6
    or-int/2addr v6, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_7
    goto/32 :goto_12

    nop

    :goto_8
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/CameraConfigFilter;->nativeSetTargetFps(JJI)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move v6, v0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    goto :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_e
    iget-wide v2, p1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

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

    nop

    nop

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_10
    iget-object p1, p0, Lcom/google/ar/core/CameraConfigFilter;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_11
    return-object p0

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_14
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_17
    add-int v0, v0, v1

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

    :goto_18
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_19
    iget-wide v4, p0, Lcom/google/ar/core/CameraConfigFilter;->nativeHandle:J

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast v0, Lcom/google/ar/core/CameraConfig$TargetFps;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method
