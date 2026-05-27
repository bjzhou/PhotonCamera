.class public final Lebq;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;

.field private static final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/hdrplus/HdrPlusModule"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lebq;->a:Lnak;

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lebq;->b:[I

    return-void
.end method

.method public static a(Lcom/google/googlex/gcam/StaticMetadataVector;Lnqr;)F
    .locals 9

    const/4 v0, 0x0

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    :goto_0
    iget-wide v4, p0, Lcom/google/googlex/gcam/StaticMetadataVector;->a:J

    invoke-static {v4, v5, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadataVector_size(JLcom/google/googlex/gcam/StaticMetadataVector;)J

    move-result-wide v4

    int-to-long v6, v3

    cmp-long v8, v6, v4

    if-gez v8, :cond_1

    new-instance v4, Lcom/google/googlex/gcam/StaticMetadata;

    iget-wide v5, p0, Lcom/google/googlex/gcam/StaticMetadataVector;->a:J

    invoke-static {v5, v6, p0, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadataVector_get(JLcom/google/googlex/gcam/StaticMetadataVector;I)J

    move-result-wide v5

    invoke-direct {v4, v5, v6, v0}, Lcom/google/googlex/gcam/StaticMetadata;-><init>(JZ)V

    invoke-virtual {v4}, Lcom/google/googlex/gcam/StaticMetadata;->b()Lnqr;

    move-result-object v5

    if-ne v5, p1, :cond_0

    invoke-virtual {v4}, Lcom/google/googlex/gcam/StaticMetadata;->d()Lnrg;

    move-result-object v5

    iget v6, v5, Lnrg;->q:I

    invoke-static {v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->IsLogical(I)Z

    move-result v6

    if-nez v6, :cond_0

    iget v5, v5, Lnrg;->q:I

    invoke-static {v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->IsRgb(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-wide v5, v4, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    invoke-static {v5, v6, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_FocalLength35mm(JLcom/google/googlex/gcam/StaticMetadata;)F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v5, v4, v5

    if-lez v5, :cond_0

    const/high16 v5, -0x3e200000    # -28.0f

    add-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v6, v5, v1

    if-gez v6, :cond_0

    move v2, v4

    move v1, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static b()Lnrz;
    .locals 1

    new-instance v0, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    invoke-direct {v0}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;-><init>()V

    return-object v0
.end method

.method public static c(Lkli;)Z
    .locals 5

    sget-object v0, Lcom/DeveloperOptions;->fix_request_capabilities:Ldhj;

    invoke-static {v0}, Lcom/DeveloperOptions;->getPhenotypeBoolean(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v1, Lebq;->b:[I

    invoke-interface {p0, v0, v1}, Lkli;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p0, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static d(Landroid/content/pm/PackageInfo;Lcom/google/googlex/gcam/StaticMetadata;)V
    .locals 3

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-wide v1, p1, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    invoke-static {v1, v2, p1, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_package_name_set(JLcom/google/googlex/gcam/StaticMetadata;Ljava/lang/String;)V

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget-wide v0, p1, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    invoke-static {v0, v1, p1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_package_version_set(JLcom/google/googlex/gcam/StaticMetadata;Ljava/lang/String;)V

    return-void
.end method
