.class public final Lpfv;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final b:D

.field private static final c:Ljava/lang/Long;


# instance fields
.field public final a:Lcom/google/android/libraries/camera/exif/ExifInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    :goto_0
    const v1, 0x1d

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

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

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

    :goto_4
    const-wide/16 v0, 0x3e8

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sput-wide v0, Lpfv;->b:D

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    sput-object v0, Lpfv;->c:Ljava/lang/Long;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

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

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    :goto_f
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

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
.end method

.method public constructor <init>(Lcom/google/android/libraries/camera/exif/ExifInterface;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lpfv;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static a([B)Lcom/google/android/libraries/camera/exif/ExifInterface;
    .locals 3

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lcom/google/android/libraries/camera/exif/ExifInterface;

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

    :goto_3
    return-object v0

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_7
    const v1, 0x13

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v2, "Failed to read EXIF data"

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_10

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string v1, "CAM_CameraExif"

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0}, Lcom/google/android/libraries/camera/exif/ExifInterface;-><init>()V

    :try_start_0
    invoke-virtual {v0, p0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->q([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static b()Lpfv;
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    new-instance v1, Lcom/google/android/libraries/camera/exif/ExifInterface;

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

    :goto_1
    return-object v0

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    :goto_4
    invoke-direct {v1}, Lcom/google/android/libraries/camera/exif/ExifInterface;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

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

    :goto_7
    const v0, 0xe

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_9
    invoke-direct {v0, v1}, Lpfv;-><init>(Lcom/google/android/libraries/camera/exif/ExifInterface;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    const v1, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Lpfv;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public static final i(Ljava/lang/Float;Ljava/lang/Long;)Lpch;
    .locals 3

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

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

    :goto_4
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lpch;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, v1, v2, p0, p1}, Lpch;-><init>(JJ)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    mul-float/2addr p0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    return-object v0

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_11
    const v0, 0x2

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

    :goto_12
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

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

    :goto_13
    long-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_15
    if-nez p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_16
    float-to-long v1, p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method private static final j(Ljava/lang/Double;Ljava/lang/Long;)Lpch;
    .locals 5

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    goto/32 :goto_12

    nop

    nop

    :goto_1
    double-to-long p0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    :goto_5
    invoke-direct {v0, p0, p1, v1, v2}, Lpch;-><init>(JJ)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    mul-double/2addr v1, v3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    goto/32 :goto_1

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

    goto/32 :goto_e

    nop

    nop

    :goto_9
    return-object v0

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

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

    :goto_c
    new-instance v0, Lpch;

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

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    const v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
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

    :goto_11
    const-wide/16 v1, 0x64

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_12
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method


# virtual methods
.method public final c(ILjava/lang/Object;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lpft;)V

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lpft;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iget-object p0, p0, Lpfv;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    if-nez p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop
.end method

.method public final d(Landroid/location/Location;)V
    .locals 13

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_0
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->aV:I

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_14

    nop

    :goto_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_64

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v6, v9, v10, v11, v12}, Lpch;-><init>(JJ)V

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :array_0
    .array-data 1
        0x2t
        0x2t
        0x0t
        0x0t
    .end array-data

    :goto_a
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v3, v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->bD:Ljava/util/Calendar;

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_86

    nop

    :cond_0
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Lpfv;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v3, v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->bD:Ljava/util/Calendar;

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v1, "S"

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_5d

    nop

    nop

    :goto_15
    if-lez v0, :cond_2

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_27

    nop

    :goto_16
    sget-object v3, Lcom/google/android/libraries/camera/exif/ExifInterface;->bx:Ljava/lang/Long;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_17
    const/4 v4, 0x1

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_18
    invoke-direct {v2, v9, v10, v11, v12}, Lpch;-><init>(JJ)V

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lpft;)V

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v3, v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->bD:Ljava/util/Calendar;

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->aR:I

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    int-to-long v9, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_1d
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lpft;)V

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Lpfv;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lpft;)V

    :goto_20
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v3, 0x2

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_24
    if-nez v6, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lpft;

    move-result-object v1

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_28

    nop

    :goto_27
    goto/32 :goto_a

    nop

    :goto_28
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v0, p0, Lpfv;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    sget v3, Lcom/google/android/libraries/camera/exif/ExifInterface;->bs:I

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2b
    if-eqz v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_2d
    const-wide/16 v11, 0x64

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2e
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lpft;

    move-result-object v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lpft;)V

    :goto_30
    goto/32 :goto_47

    nop

    nop

    :goto_31
    iget-object v3, v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->bD:Ljava/util/Calendar;

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_32
    sget v2, Lcom/google/android/libraries/camera/exif/ExifInterface;->aS:I

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_33
    iget-object v0, p0, Lpfv;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_34
    cmpl-double v1, v1, v7

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_35
    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v0, p0, Lpfv;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_37
    invoke-virtual {v0, v3, v4}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lpft;

    move-result-object v3

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_38
    aput-object v6, v2, v4

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v5, v4}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_3a
    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->aY:I

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    aput-object v6, v2, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3c
    const-wide/16 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_3d
    goto/16 :goto_30

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    int-to-long v9, v3

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :cond_5
    goto/32 :goto_78

    nop

    nop

    :goto_41
    const-string v2, "E"

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_42
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_43
    invoke-direct {v6, v9, v10, v11, v12}, Lpch;-><init>(JJ)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    int-to-long v9, v3

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v0, v6}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lpft;)V

    goto/32 :goto_1d

    nop

    nop

    :goto_46
    if-gez v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_6
    goto/32 :goto_53

    nop

    nop

    :goto_47
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_48
    new-instance v6, Lpch;

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v0, v6, v7}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lpft;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v0, v5, v6}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lpft;

    move-result-object v5

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

    :goto_4b
    const-wide/16 v11, 0x1

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    const v1, 0x15

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4d
    invoke-virtual {v3, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    if-gez v2, :cond_7

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/16 :goto_82

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_51
    const/16 v9, 0xc

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

    :goto_52
    if-nez v2, :cond_8

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :cond_8
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_53
    const-string v1, "N"

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_54
    const/4 v2, 0x3

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_55
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_56
    new-array v2, v2, [B

    nop

    fill-array-data v2, :array_0

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_57
    sget v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->aW:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_58
    const v0, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    new-instance v2, Lpch;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_5a
    if-eqz v0, :cond_9

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_9
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_5b
    const/4 v2, 0x4

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-direct {v6, v9, v10, v11, v12}, Lpch;-><init>(JJ)V

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lpft;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_5e
    move v4, v5

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_57

    nop

    nop

    nop

    :goto_60
    sget v3, Lcom/google/android/libraries/camera/exif/ExifInterface;->aU:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_61
    const/16 v9, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_62
    cmpl-double v0, v0, v7

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    const-string v2, "W"

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_65
    iget-object v5, v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->bC:Ljava/text/DateFormat;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_66
    if-nez v5, :cond_a

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_24

    nop

    nop

    :goto_67
    new-array v2, v2, [Lpch;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v0, v3}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lpft;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    if-gez v0, :cond_b

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :cond_b
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {v0, v3, v2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lpft;

    move-result-object v2

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lpft;

    move-result-object v0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-static {v3, v4}, Lcom/google/android/libraries/camera/exif/ExifInterface;->w(D)[Lpch;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    double-to-int v3, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v0, v5}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lpft;)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    aput-object v6, v2, v3

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {p0, p1, v2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lpft;

    move-result-object p1

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_72
    int-to-long v9, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_73
    if-nez v1, :cond_c

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    sget-object v3, Lcom/google/android/libraries/camera/exif/ExifInterface;->bx:Ljava/lang/Long;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_75
    cmpl-double v2, v3, v7

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_76
    new-instance v6, Lpch;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->k(I)Lpft;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_78
    iget-object p0, p0, Lpfv;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_79
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-static {v1, v2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->w(D)[Lpch;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_7b
    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->aR:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_7c
    mul-double/2addr v9, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    sget p1, Lcom/google/android/libraries/camera/exif/ExifInterface;->aX:I

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    const/16 v9, 0xb

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    new-instance v6, Lpch;

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_80
    if-eqz v3, :cond_d

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_81
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lpft;)V

    :goto_82
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_83
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_84
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    invoke-virtual {v0, v2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lpft;)V

    :goto_86
    goto/32 :goto_36

    nop

    nop

    :goto_87
    sget v5, Lcom/google/android/libraries/camera/exif/ExifInterface;->aT:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop
.end method

.method public final e()V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->h:I

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
    const v0, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, v0, v1}, Lpfv;->c(ILjava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

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

    :goto_7
    const v1, 0xb

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

    :goto_8
    return-void

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v0, v1}, Lpfv;->c(ILjava/lang/Object;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
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

    nop

    :goto_d
    goto/32 :goto_2

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sget v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->g:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public final f(IILpcg;Lrss;)V
    .locals 7

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_1
    if-nez v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p3, p1, p2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lpft;

    move-result-object p1

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_3
    sget p3, Lcom/google/android/libraries/camera/exif/ExifInterface;->G:I

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

    nop

    :goto_4
    const v1, 0x1c

    nop

    goto/32 :goto_b7

    nop

    nop

    :goto_5
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_6
    div-float/2addr p3, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_7
    sget p3, Lcom/google/android/libraries/camera/exif/ExifInterface;->Z:I

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    long-to-double p2, p2

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast p1, Lprk;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p1, v0, v1, p2, p3}, Lpch;-><init>(JJ)V

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_c
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x1f

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

    :goto_e
    sget p2, Lcom/google/android/libraries/camera/exif/ExifInterface;->Y:I

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_f
    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    move-result-wide p2

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

    :goto_10
    invoke-virtual {p0, p3, p2}, Lpfv;->c(ILjava/lang/Object;)V

    :goto_11
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    div-float p1, p2, p1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_13
    check-cast p2, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_14
    sget p1, Lcom/google/android/libraries/camera/exif/ExifInterface;->V:I

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/high16 p2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_16
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lpft;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast p3, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_18
    const-wide/16 v0, 0x64

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_7a

    nop

    :goto_1a
    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_1b
    invoke-static {p2, v1}, Lpfv;->i(Ljava/lang/Float;Ljava/lang/Long;)Lpch;

    move-result-object p2

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_1c
    sget-wide v2, Lpfv;->b:D

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_1d
    const-wide/32 p2, 0x3b9aca00

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0, p3, p2}, Lpfv;->c(ILjava/lang/Object;)V

    :goto_1f
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {p2, v0}, Lpfv;->i(Ljava/lang/Float;Ljava/lang/Long;)Lpch;

    move-result-object p4

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {p1, p2}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p1, v0, p2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lpft;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_23
    invoke-direct {v4, v5, v6, p2, p3}, Lpch;-><init>(JJ)V

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0, p3, p2}, Lpfv;->c(ILjava/lang/Object;)V

    :goto_25
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v0, p0, Lpfv;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    :goto_27
    add-double/2addr p2, p2

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_29
    invoke-virtual {p4}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2a
    sget v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->b:I

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2b
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v0, p0, Lpfv;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_2d
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_2f
    const/4 p3, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->aj:I

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/16 :goto_67

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-interface {p1, p2}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_35
    sget-object v1, Lpfv;->c:Ljava/lang/Long;

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    :goto_36
    invoke-interface {p1, v2}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_38
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_39
    if-nez p2, :cond_1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_3a
    new-instance p4, Lpch;

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-direct {p4, v1, v2, p2, p3}, Lpch;-><init>(JJ)V

    :goto_3c
    goto/32 :goto_6a

    nop

    nop

    :goto_3d
    if-nez v2, :cond_2

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-eq p2, v0, :cond_3

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_40

    nop

    nop

    :goto_3f
    if-nez p1, :cond_4

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_29

    nop

    nop

    :goto_40
    sget p2, Lcom/google/android/libraries/camera/exif/ExifInterface;->Y:I

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_41
    invoke-static {p2, v0}, Lpfv;->j(Ljava/lang/Double;Ljava/lang/Long;)Lpch;

    move-result-object p2

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_42
    mul-float/2addr p2, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const v1, 0x358637bd    # 1.0E-6f

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_44
    int-to-float p3, p3

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object p3, p0, Lpfv;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_46
    iget-object v0, p0, Lpfv;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {p2, v0}, Lpfv;->j(Ljava/lang/Double;Ljava/lang/Long;)Lpch;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-static {p4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    cmpl-float p2, p2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    const/high16 p2, 0x40400000    # 3.0f

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p0, p3, p2}, Lpfv;->c(ILjava/lang/Object;)V

    goto/32 :goto_62

    nop

    nop

    :goto_4c
    invoke-virtual {p1, p2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lpft;)V

    goto/32 :goto_5d

    nop

    nop

    :goto_4d
    if-gtz p2, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_85

    nop

    nop

    :goto_4e
    if-ltz p2, :cond_6

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-interface {p1, p2}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_50
    const-wide/16 p2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_52
    sget p1, Lcom/google/android/libraries/camera/exif/ExifInterface;->aI:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_53
    div-double/2addr p2, v2

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    div-double/2addr p2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_55
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_56
    cmpl-float p1, p1, p2

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_57
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_58
    if-ltz p1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iget-object p1, p0, Lpfv;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_5a
    goto/16 :goto_71

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_70

    nop

    nop

    :goto_5c
    const-wide/16 v1, -0x1

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_5d
    sget p1, Lcom/google/android/libraries/camera/exif/ExifInterface;->j:I

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    sget v3, Lcom/google/android/libraries/camera/exif/ExifInterface;->F:I

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    check-cast v2, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_60
    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    move-result-wide p2

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_61
    const/high16 p4, 0x42c80000    # 100.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_62
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->FLASH_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_63
    cmpg-float p2, p1, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_64
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_65
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-virtual {p0, p2, v1}, Lpfv;->c(ILjava/lang/Object;)V

    :goto_67
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_68
    if-nez p1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    :cond_8
    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    sget p3, Lcom/google/android/libraries/camera/exif/ExifInterface;->J:I

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    move p3, v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lpft;)V

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_6c
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_6d
    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->a:I

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {p0, p2, v1}, Lpfv;->c(ILjava/lang/Object;)V

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_6f
    new-instance p1, Lpch;

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_70
    const/4 v4, 0x0

    nop

    :goto_71
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_72
    move p3, p4

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {p0}, Lpfv;->e()V

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_74
    invoke-virtual {p0, v3, v4}, Lpfv;->c(ILjava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_75
    invoke-virtual {p3, p1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lpft;)V

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    sget-wide v2, Lpfv;->b:D

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_77
    const/4 p4, 0x0

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_78
    if-nez p2, :cond_9

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_9
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_79
    move-object p4, p1

    nop

    nop

    :goto_7a
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_7c
    check-cast p2, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {p0, p1, p4}, Lpfv;->c(ILjava/lang/Object;)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_7f
    if-lez v0, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_9a

    nop

    :goto_80
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_81
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    const-wide/16 v0, 0x0

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

    :goto_83
    invoke-interface {p1, p2}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_84
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

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

    nop

    nop

    :goto_85
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_86
    return-void

    nop

    nop

    nop

    nop

    :goto_87
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_88
    cmpg-float p1, p1, p2

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_89
    sget p3, Lcom/google/android/libraries/camera/exif/ExifInterface;->Q:I

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_8a
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_8b
    invoke-interface {p1, p2}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_8d
    float-to-double p2, p2

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

    :goto_8e
    iget-short p2, p2, Lpfo;->i:S

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_90
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_91
    div-double/2addr p2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_92
    invoke-virtual {p0, p3, p4}, Lpfv;->c(ILjava/lang/Object;)V

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    const/4 v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_94
    if-nez p3, :cond_b

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_95
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_96
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_97
    check-cast p2, Ljava/lang/Integer;

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    :goto_98
    invoke-interface {p1, p3}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

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

    :goto_99
    new-instance v4, Lpch;

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_9a
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    goto/16 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_9e
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_9f
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_a0
    goto/16 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    goto/32 :goto_4a

    nop

    nop

    :goto_a2
    invoke-static {p4, v1}, Lpfv;->i(Ljava/lang/Float;Ljava/lang/Long;)Lpch;

    move-result-object p4

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    sget p3, Lcom/google/android/libraries/camera/exif/ExifInterface;->R:I

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_a6
    invoke-static {p3}, Lpfo;->b(Lpcg;)Lpfo;

    move-result-object p2

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-virtual {v0, v1, p2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lpft;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lpft;)V

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_a9
    invoke-virtual {v0, v1, p1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lpft;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_aa
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    nop

    nop

    :goto_ab
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_ad
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    :goto_ae
    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->ai:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    if-nez p2, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    int-to-float p2, p2

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_b1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_27

    nop

    nop

    :goto_b2
    sget-object p3, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    invoke-virtual {p4}, Lrss;->h()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_b4
    invoke-virtual {p0, p1, p2}, Lpfv;->c(ILjava/lang/Object;)V

    :goto_b5
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_b6
    invoke-virtual {v0, v1, p1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lpft;

    move-result-object p1

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_b8
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    const/4 p3, 0x1

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    const-wide/16 v1, 0x3e8

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_bb
    if-gez p1, :cond_d

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_d
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    check-cast p2, Ljava/lang/Float;

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
.end method

.method public final g(J)V
    .locals 3

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_0
    sget v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->N:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    cmp-long v0, p1, v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    if-gtz v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

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

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lpfv;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->x(IJLjava/util/TimeZone;)V

    goto/32 :goto_16

    nop

    nop

    :goto_d
    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->s:I

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

    nop

    :goto_e
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->x(IJLjava/util/TimeZone;)V

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-wide/16 v0, 0x0

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

    :goto_11
    rem-int v0, v0, v1

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

    :goto_12
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->x(IJLjava/util/TimeZone;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_15
    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->M:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Lpfv;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

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

    :goto_17
    iget-object v0, p0, Lpfv;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x18

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x19

    nop

    goto/32 :goto_18

    nop

    nop
.end method

.method public final h(Lpog;Lpch;Lpch;)V
    .locals 3

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_6

    nop

    nop

    :goto_1
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lpft;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Lpog;->ordinal()I

    move-result p1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_0
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

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

    :goto_9
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_a
    if-ne p1, v1, :cond_1

    nop

    nop

    goto/32 :goto_45

    nop

    :cond_1
    goto/32 :goto_46

    nop

    nop

    :goto_b
    sget p2, Lcom/google/android/libraries/camera/exif/ExifInterface;->aL:I

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lpfv;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 p2, 0x0

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    :goto_f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_12
    check-cast p3, Ljava/lang/String;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_15
    const-string v1, "f/"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/16 p3, 0x20

    nop

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

    :goto_18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const-string p1, "front"

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_1c
    sget v2, Lcom/google/android/libraries/camera/exif/ExifInterface;->aK:I

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1d
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_2
    goto/32 :goto_2a

    nop

    :goto_1e
    const-string p1, "back"

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_20
    goto/32 :goto_3e

    nop

    nop

    :goto_21
    goto :goto_1b

    nop

    :goto_22
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0, v2, v0}, Lpfv;->c(ILjava/lang/Object;)V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const-string p1, "mm"

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_26
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_d

    nop

    nop

    :goto_27
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_28
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_29
    if-ne p1, v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    :cond_3
    goto/32 :goto_2f

    nop

    nop

    :goto_2a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p0, p2, p1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lpft;

    move-result-object p1

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

    :goto_2d
    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/32 :goto_16

    nop

    nop

    :goto_2e
    if-nez p3, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :cond_4
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_2f
    const-string p1, "unknown"

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_30
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_31
    goto/32 :goto_47

    nop

    nop

    :goto_32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const-string p1, "external"

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_34
    const v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_35
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_36
    const v0, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_37
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_38
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    :goto_3a
    if-lt p2, p3, :cond_5

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :cond_5
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_e

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_3e
    add-int/lit8 p2, p2, 0x1

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-nez p2, :cond_6

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_48

    nop

    nop

    :goto_40
    invoke-virtual {p3}, Lpch;->a()D

    move-result-wide p1

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_41
    new-instance p3, Ljava/lang/StringBuilder;

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

    :goto_42
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_33

    nop

    nop

    :goto_44
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_47
    new-instance p1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {p2}, Lpch;->a()D

    move-result-wide p1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_49
    add-int/lit8 p3, p3, -0x1

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    if-lt p2, p3, :cond_7

    nop

    goto/32 :goto_20

    nop

    :cond_7
    goto/32 :goto_17

    nop

    nop

    :goto_4c
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_4d
    const-string v1, " camera"

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

    :goto_4e
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop
.end method
