.class public abstract Lijz;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;

.field private static final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    :goto_0
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lijz;->b:[I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

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

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    new-array v0, v0, [I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    sput-object v0, Lijz;->a:Lsdb;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    const-string v0, "ijz"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static a(Lcom/google/googlex/gcam/StaticMetadataVector;Lsxs;)F
    .locals 7

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v5, :cond_0

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

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1
    add-float/2addr v4, v3

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

    :goto_2
    invoke-static {v4, v5, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_FocalLength35mm(JLcom/google/googlex/gcam/StaticMetadata;)F

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/googlex/gcam/StaticMetadataVector;->b(I)Lcom/google/googlex/gcam/StaticMetadata;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_4
    cmpg-float v5, v4, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return v2

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x0

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_9
    cmp-long v3, v5, v3

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_26

    nop

    :goto_b
    invoke-static {v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->IsRgb(I)Z

    move-result v4

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move v1, v4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v3}, Lcom/google/googlex/gcam/StaticMetadata;->g()Lsyi;

    move-result-object v4

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x12

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_13
    if-ltz v5, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x11

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_15
    if-gtz v4, :cond_3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_16
    const/high16 v4, -0x3e200000    # -28.0f

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_17
    if-nez v4, :cond_4

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

    :cond_4
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_18
    move v2, v3

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1a
    iget v5, v4, Lsyi;->w:I

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

    :goto_1b
    iget v4, v4, Lsyi;->w:I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1c
    goto :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1e
    if-ltz v3, :cond_5

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3

    nop

    nop

    :goto_1f
    cmpg-float v4, v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_20
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/high16 v2, -0x40800000    # -1.0f

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_2a

    nop

    nop

    :goto_23
    iget-wide v4, v3, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_24
    invoke-static {v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->IsLogical(I)Z

    move-result v5

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

    nop

    nop

    :goto_25
    int-to-long v5, v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_26
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v3}, Lcom/google/googlex/gcam/StaticMetadata;->e()Lsxs;

    move-result-object v4

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-eq v4, p1, :cond_6

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0}, Lcom/google/googlex/gcam/StaticMetadataVector;->a()J

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2b
    add-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop
.end method

.method public static b(Lpnu;)Z
    .locals 5

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_f

    nop

    :goto_1
    goto/32 :goto_12

    nop

    nop

    :goto_2
    if-eq v3, v4, :cond_0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_0
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_5
    array-length v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_6
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p0, [I

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_1c

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    :goto_a
    return v0

    nop

    nop

    :catchall_0
    :cond_1
    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v2, "NOT SUPPORT RAW FORMAT MODULE "

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

    :goto_d
    if-lt v2, v0, :cond_2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_e
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p0, v0, v1}, Lpnu;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_12
    sget v0, Lcom/a;->aa:I

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v4, 0x3

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_16
    return p0

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_19
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1a
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1b
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sget-object v1, Lijz;->b:[I

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
    const-string v2, "ERROR_GCAM"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {p0}, Lpnu;->j()Lpnx;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_0

    nop

    :goto_25
    aget v3, p0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_26
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_27
    move v2, v1

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2a
    iget-object v2, v2, Lpnx;->a:Ljava/lang/String;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const v0, 0x9

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2c
    array-length v0, p0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2d
    if-eqz v0, :cond_5

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_5
    :try_start_0
    invoke-interface {p0}, Lpnu;->S()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lcom/CameraLensSpecification;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/CameraLensSpecification;->B()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, [I

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    add-int/lit8 v2, v2, 0x1

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
.end method

.method public static c(Landroid/content/pm/PackageInfo;Lcom/google/googlex/gcam/StaticMetadata;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/googlex/gcam/StaticMetadata;->n(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "com.google.android.GoogleCamera"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, p0}, Lcom/google/googlex/gcam/StaticMetadata;->o(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public static d(Lsyi;Lcom/google/googlex/gcam/StaticMetadata;ILpnu;Lhoh;)Lcom/google/googlex/gcam/StaticMetadata;
    .locals 3

    goto/32 :goto_20

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2
    const/4 p4, 0x2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p1, Ljava/lang/Integer;

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

    :goto_4
    invoke-static {p1, p2, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_frame_raw_max_width_get(JLcom/google/googlex/gcam/StaticMetadata;)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_13

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

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, p0}, Lcom/google/googlex/gcam/StaticMetadata;->m(F)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    new-instance p0, Lpck;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_8
    return-object v0

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p3, p0}, Lcom/google/googlex/gcam/hdrplus/NativeMetadataConverter;->e(Lpnu;Lpck;)J

    move-result-wide p0

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0}, Lcom/google/googlex/gcam/StaticMetadata;->c(Lcom/google/googlex/gcam/StaticMetadata;)J

    move-result-wide v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p4, v1, v2, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ApplySensorBinning__SWIG_1(IJLcom/google/googlex/gcam/StaticMetadata;)Z

    goto/32 :goto_1c

    nop

    nop

    :goto_d
    invoke-direct {v0, p1}, Lcom/google/googlex/gcam/StaticMetadata;-><init>(Lcom/google/googlex/gcam/StaticMetadata;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v0, Lcom/google/googlex/gcam/StaticMetadata;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0, p1, p2}, Lpck;-><init>(II)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v1, v2, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_pixel_array_height_get(JLcom/google/googlex/gcam/StaticMetadata;)I

    move-result p2

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_11
    iget-wide p1, v0, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    sget-object p1, Lhlx;->a:Lhmo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_13
    iget-wide v1, v0, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p4, p1}, Lcom/google/googlex/gcam/PixelRect;->k(I)V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, p0}, Lcom/google/googlex/gcam/StaticMetadata;->r(Lsyi;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p4, p1}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v1, v2, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_frame_raw_max_height_get(JLcom/google/googlex/gcam/StaticMetadata;)I

    move-result p2

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_19
    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1c
    invoke-virtual {v0}, Lcom/google/googlex/gcam/StaticMetadata;->f()Lcom/google/googlex/gcam/PixelRect;

    move-result-object p4

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_9

    nop

    nop

    :goto_1e
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1f
    iget-wide v1, v0, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, p2}, Lcom/google/googlex/gcam/StaticMetadata;->k(I)V

    goto/32 :goto_16

    nop

    nop

    :goto_22
    invoke-static {p0, p1}, Lcom/google/googlex/gcam/hdrplus/NativeMetadataConverter;->c(J)F

    move-result p0

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
.end method
