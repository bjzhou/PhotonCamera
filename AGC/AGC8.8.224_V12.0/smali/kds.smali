.class public final Lkds;
.super Ljava/lang/Object;


# static fields
.field private static final b:D

.field private static final c:Ljava/lang/Long;


# instance fields
.field public final a:Lcom/google/android/libraries/camera/exif/ExifInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lkds;->b:D

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lkds;->c:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/camera/exif/ExifInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkds;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

    return-void
.end method

.method public static a([B)Lcom/google/android/libraries/camera/exif/ExifInterface;
    .locals 3

    new-instance v0, Lcom/google/android/libraries/camera/exif/ExifInterface;

    invoke-direct {v0}, Lcom/google/android/libraries/camera/exif/ExifInterface;-><init>()V

    :try_start_0
    invoke-virtual {v0, p0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->r([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "CAM_CameraExif"

    const-string v2, "Failed to read EXIF data"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public static b()Lkds;
    .locals 2

    new-instance v0, Lkds;

    new-instance v1, Lcom/google/android/libraries/camera/exif/ExifInterface;

    invoke-direct {v1}, Lcom/google/android/libraries/camera/exif/ExifInterface;-><init>()V

    invoke-direct {v0, v1}, Lkds;-><init>(Lcom/google/android/libraries/camera/exif/ExifInterface;)V

    return-object v0
.end method

.method public static final i(Ljava/lang/Float;Ljava/lang/Long;)Lkac;
    .locals 3

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Lkac;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-float v1, v1

    mul-float p0, p0, v1

    float-to-long v1, p0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-direct {v0, v1, v2, p0, p1}, Lkac;-><init>(JJ)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final j(Ljava/lang/Double;Ljava/lang/Long;)Lkac;
    .locals 5

    new-instance v0, Lkac;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double v1, v1, v3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    double-to-long p0, v1

    const-wide/16 v1, 0x64

    invoke-direct {v0, p0, p1, v1, v2}, Lkac;-><init>(JJ)V

    return-object v0
.end method


# virtual methods
.method public final c(ILjava/lang/Object;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lkds;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lkdq;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lkdq;)V

    :cond_0
    return-void
.end method

.method public final d(Landroid/location/Location;)V
    .locals 13

    iget-object v0, p0, Lkds;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    sget v5, Lcom/google/android/libraries/camera/exif/ExifInterface;->aT:I

    invoke-static {v1, v2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->w(D)[Lkac;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lkdq;

    move-result-object v5

    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->aV:I

    invoke-static {v3, v4}, Lcom/google/android/libraries/camera/exif/ExifInterface;->w(D)[Lkac;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lkdq;

    move-result-object v6

    const-wide/16 v7, 0x0

    cmpl-double v9, v1, v7

    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->aS:I

    if-ltz v9, :cond_0

    const-string v2, "N"

    goto :goto_0

    :cond_0
    const-string v2, "S"

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lkdq;

    move-result-object v1

    cmpl-double v2, v3, v7

    sget v3, Lcom/google/android/libraries/camera/exif/ExifInterface;->aU:I

    if-ltz v2, :cond_1

    const-string v2, "E"

    goto :goto_1

    :cond_1
    const-string v2, "W"

    :goto_1
    invoke-virtual {v0, v3, v2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lkdq;

    move-result-object v2

    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v5}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lkdq;)V

    invoke-virtual {v0, v6}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lkdq;)V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lkdq;)V

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lkdq;)V

    :cond_2
    iget-object v0, p0, Lkds;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    sget v3, Lcom/google/android/libraries/camera/exif/ExifInterface;->bs:I

    iget-object v4, v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->bC:Ljava/text/DateFormat;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lkdq;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_4

    :cond_3
    goto :goto_2

    :cond_4
    invoke-virtual {v0, v3}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lkdq;)V

    iget-object v3, v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->bD:Ljava/util/Calendar;

    invoke-virtual {v3, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->aY:I

    const/4 v2, 0x3

    new-array v2, v2, [Lkac;

    new-instance v3, Lkac;

    iget-object v6, v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->bD:Ljava/util/Calendar;

    const/16 v9, 0xb

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-long v9, v6

    const-wide/16 v11, 0x1

    invoke-direct {v3, v9, v10, v11, v12}, Lkac;-><init>(JJ)V

    aput-object v3, v2, v5

    new-instance v3, Lkac;

    iget-object v6, v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->bD:Ljava/util/Calendar;

    const/16 v9, 0xc

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-long v9, v6

    invoke-direct {v3, v9, v10, v11, v12}, Lkac;-><init>(JJ)V

    aput-object v3, v2, v4

    new-instance v3, Lkac;

    iget-object v6, v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->bD:Ljava/util/Calendar;

    const/16 v9, 0xd

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-long v9, v6

    invoke-direct {v3, v9, v10, v11, v12}, Lkac;-><init>(JJ)V

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lkdq;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lkdq;)V

    :goto_2
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lkds;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    sget p1, Lcom/google/android/libraries/camera/exif/ExifInterface;->aX:I

    new-instance v3, Lkac;

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    sget-object v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->bx:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    mul-double v9, v9, v11

    sget-object v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->bx:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    double-to-int v6, v9

    int-to-long v9, v6

    const-wide/16 v11, 0x64

    invoke-direct {v3, v9, v10, v11, v12}, Lkac;-><init>(JJ)V

    invoke-virtual {v0, p1, v3}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lkdq;

    move-result-object p1

    cmpl-double v3, v1, v7

    if-ltz v3, :cond_5

    const/4 v4, 0x0

    :cond_5
    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->aW:I

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lkdq;

    move-result-object v1

    if-eqz p1, :cond_7

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lkdq;)V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lkdq;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public final e()V
    .locals 2

    sget v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->g:I

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lkds;->c(ILjava/lang/Object;)V

    sget v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->h:I

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lkds;->c(ILjava/lang/Object;)V

    return-void
.end method

.method public final f(IILkab;Lmqp;)V
    .locals 7

    invoke-virtual {p0}, Lkds;->e()V

    iget-object v0, p0, Lkds;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->ai:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lkdq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lkdq;)V

    iget-object v0, p0, Lkds;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->aj:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lkdq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lkdq;)V

    iget-object v0, p0, Lkds;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lkdq;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lkdq;)V

    iget-object p1, p0, Lkds;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

    sget v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->b:I

    invoke-virtual {p1, v0, p2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lkdq;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lkdq;)V

    iget-object p1, p0, Lkds;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

    sget p2, Lcom/google/android/libraries/camera/exif/ExifInterface;->j:I

    invoke-static {p3}, Lkdl;->b(Lkab;)Lkdl;

    move-result-object p3

    iget-short p3, p3, Lkdl;->i:S

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lkdq;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lkdq;)V

    invoke-virtual {p4}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkoq;

    const-wide/32 p2, 0x3b9aca00

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v2}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    sget v3, Lcom/google/android/libraries/camera/exif/ExifInterface;->F:I

    if-eqz v2, :cond_0

    new-instance v4, Lkac;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    invoke-direct {v4, v5, v6, p2, p3}, Lkac;-><init>(JJ)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0, v3, v4}, Lkds;->c(ILjava/lang/Object;)V

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    long-to-double p2, p2

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p2, v2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    move-result-wide p2

    sget-wide v2, Lkds;->b:D

    div-double/2addr p2, v2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    sget p3, Lcom/google/android/libraries/camera/exif/ExifInterface;->Q:I

    invoke-static {p2, v0}, Lkds;->j(Ljava/lang/Double;Ljava/lang/Long;)Lkac;

    move-result-object p2

    invoke-virtual {p0, p3, p2}, Lkds;->c(ILjava/lang/Object;)V

    :cond_1
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, p2}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_3

    sget-object p3, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, p3}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    const/high16 p4, 0x42c80000    # 100.0f

    div-float/2addr p3, p4

    mul-float p2, p2, p3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_2
    sget p3, Lcom/google/android/libraries/camera/exif/ExifInterface;->J:I

    invoke-virtual {p0, p3, p2}, Lkds;->c(ILjava/lang/Object;)V

    :cond_3
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, p2}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    sget p3, Lcom/google/android/libraries/camera/exif/ExifInterface;->G:I

    invoke-static {p2, v0}, Lkds;->i(Ljava/lang/Float;Ljava/lang/Long;)Lkac;

    move-result-object p4

    invoke-virtual {p0, p3, p4}, Lkds;->c(ILjava/lang/Object;)V

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    move-result-wide p2

    sget-wide v2, Lkds;->b:D

    div-double/2addr p2, v2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    add-double/2addr p2, p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    sget p3, Lcom/google/android/libraries/camera/exif/ExifInterface;->R:I

    invoke-static {p2, v0}, Lkds;->j(Ljava/lang/Double;Ljava/lang/Long;)Lkac;

    move-result-object p2

    invoke-virtual {p0, p3, p2}, Lkds;->c(ILjava/lang/Object;)V

    :cond_4
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, p2}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    sget p3, Lcom/google/android/libraries/camera/exif/ExifInterface;->Z:I

    invoke-static {p2, v1}, Lkds;->i(Ljava/lang/Float;Ljava/lang/Long;)Lkac;

    move-result-object p2

    invoke-virtual {p0, p3, p2}, Lkds;->c(ILjava/lang/Object;)V

    sget-object p2, Landroid/hardware/camera2/CaptureResult;->FLASH_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, p2}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    const/4 p3, 0x1

    const/4 p4, 0x0

    const/4 v0, 0x3

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v0, :cond_5

    sget p2, Lcom/google/android/libraries/camera/exif/ExifInterface;->Y:I

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lkds;->c(ILjava/lang/Object;)V

    goto :goto_1

    :cond_5
    sget p2, Lcom/google/android/libraries/camera/exif/ExifInterface;->Y:I

    invoke-static {p4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lkds;->c(ILjava/lang/Object;)V

    :goto_1
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, p2}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const v1, 0x358637bd    # 1.0E-6f

    cmpl-float p2, p2, v1

    if-lez p2, :cond_8

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    div-float p1, p2, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    sget-object v1, Lkds;->c:Ljava/lang/Long;

    invoke-static {p4, v1}, Lkds;->i(Ljava/lang/Float;Ljava/lang/Long;)Lkac;

    move-result-object p4

    cmpg-float p2, p1, p2

    if-gez p2, :cond_6

    goto :goto_2

    :cond_6
    const/high16 p2, 0x40400000    # 3.0f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_7

    const/4 p3, 0x2

    goto :goto_2

    :cond_7
    const/4 p3, 0x3

    :goto_2
    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 p2, 0x0

    const-wide/16 v1, 0x1

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_9

    new-instance p4, Lkac;

    const-wide/16 p1, -0x1

    invoke-direct {p4, p1, p2, v1, v2}, Lkac;-><init>(JJ)V

    const/4 p3, 0x3

    goto :goto_3

    :cond_9
    new-instance p1, Lkac;

    const-wide/16 p2, 0x0

    invoke-direct {p1, p2, p3, v1, v2}, Lkac;-><init>(JJ)V

    move-object p4, p1

    const/4 p3, 0x0

    :goto_3
    sget p1, Lcom/google/android/libraries/camera/exif/ExifInterface;->V:I

    invoke-virtual {p0, p1, p4}, Lkds;->c(ILjava/lang/Object;)V

    sget p1, Lcom/google/android/libraries/camera/exif/ExifInterface;->aI:I

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkds;->c(ILjava/lang/Object;)V

    return-void

    :cond_a
    return-void
.end method

.method public final g(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    iget-object v0, p0, Lkds;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->s:I

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->x(IJLjava/util/TimeZone;)V

    iget-object v0, p0, Lkds;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->M:I

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->x(IJLjava/util/TimeZone;)V

    iget-object v0, p0, Lkds;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->N:I

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->x(IJLjava/util/TimeZone;)V

    :cond_0
    return-void
.end method

.method public final h(Lklv;Lkac;Lkac;)V
    .locals 3

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v2, Lcom/google/android/libraries/camera/exif/ExifInterface;->aK:I

    invoke-virtual {p0, v2, v0}, Lkds;->c(ILjava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lklv;->a:Lklv;

    invoke-virtual {p1}, Lklv;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    const-string p1, "unknown"

    goto :goto_0

    :pswitch_0
    const-string p1, "external"

    goto :goto_0

    :pswitch_1
    const-string p1, "back"

    goto :goto_0

    :pswitch_2
    const-string p1, "front"

    :goto_0
    const-string v1, " camera"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lkac;->a()D

    move-result-wide p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "mm"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lkac;->a()D

    move-result-wide p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "f/"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p2, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_3

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ge p2, p3, :cond_2

    const/16 p3, 0x20

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lkds;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

    sget p3, Lcom/google/android/libraries/camera/exif/ExifInterface;->aL:I

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lkdq;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lkdq;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
