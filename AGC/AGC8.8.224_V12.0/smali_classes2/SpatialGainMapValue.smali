.class public LSpatialGainMapValue;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert([[[F)Lcom/google/googlex/gcam/SpatialGainMap;
    .locals 14

    array-length v0, p0

    const/4 v1, 0x0

    aget-object p0, p0, v1

    array-length v2, p0

    aget-object p0, p0, v1

    array-length p0, p0

    new-instance v10, Lcom/google/googlex/gcam/SpatialGainMap;

    invoke-static {p0, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_SpatialGainMap__SWIG_2(II)J

    move-result-wide v3

    invoke-direct {v10, v3, v4}, Lcom/google/googlex/gcam/SpatialGainMap;-><init>(J)V

    move v11, v1

    :goto_0
    if-ge v11, v0, :cond_2

    move v12, v1

    :goto_1
    if-ge v12, v2, :cond_1

    move v13, v1

    :goto_2
    if-ge v13, p0, :cond_0

    iget-wide v3, v10, Lcom/google/googlex/gcam/SpatialGainMap;->a:J

    const/high16 v9, 0x3f200000    # 0.625f

    move-object v5, v10

    move v6, v13

    move v7, v12

    move v8, v11

    invoke-static/range {v3 .. v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->SpatialGainMap_WriteRggb(JLcom/google/googlex/gcam/SpatialGainMap;IIIF)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    return-object v10
.end method

.method public static final getSpatialGainMap(I)Lcom/google/googlex/gcam/SpatialGainMap;
    .locals 0

    invoke-static {p0}, Lcom/SpatialGainMapValues;->getSpatialGainMap(I)[[[F

    move-result-object p0

    invoke-static {p0}, LSpatialGainMapValue;->convert([[[F)Lcom/google/googlex/gcam/SpatialGainMap;

    move-result-object p0

    return-object p0
.end method
