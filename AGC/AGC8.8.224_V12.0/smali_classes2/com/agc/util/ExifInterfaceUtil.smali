.class public Lcom/agc/util/ExifInterfaceUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static ExifInterface_Field_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/agc/util/ExifInterfaceUtil;->ExifInterface_Field_List:Ljava/util/List;

    const-string v1, "FNumber\nApertureValue\nArtist\nBitsPerSample\nBrightnessValue\nCFAPattern\nColorSpace\nComponentsConfiguration\nCompressedBitsPerPixel\nCompression\nContrast\nCopyright\nCustomRendered\nDateTime\nDateTimeDigitized\nDateTimeOriginal\nDefaultCropSize\nDeviceSettingDescription\nDigitalZoomRatio\nDNGVersion\nExifVersion\nExposureBiasValue\nExposureIndex\nExposureMode\nExposureProgram\nExposureTime\nFileSource\nFlash\nFlashpixVersion\nFlashEnergy\nFocalLength\nFocalLengthIn35mmFilm\nFocalPlaneResolutionUnit\nFocalPlaneXResolution\nFocalPlaneYResolution\nFNumber\nGainControl\nGPSAltitude\nGPSAltitudeRef\nGPSAreaInformation\nGPSDateStamp\nGPSDestBearing\nGPSDestBearingRef\nGPSDestDistance\nGPSDestDistanceRef\nGPSDestLatitude\nGPSDestLatitudeRef\nGPSDestLongitude\nGPSDestLongitudeRef\nGPSDifferential\nGPSDOP\nGPSImgDirection\nGPSImgDirectionRef\nGPSLatitude\nGPSLatitudeRef\nGPSLongitude\nGPSLongitudeRef\nGPSMapDatum\nGPSMeasureMode\nGPSProcessingMethod\nGPSSatellites\nGPSSpeed\nGPSSpeedRef\nGPSStatus\nGPSTimeStamp\nGPSTrack\nGPSTrackRef\nGPSVersionID\nImageDescription\nImageLength\nImageUniqueID\nImageWidth\nInteroperabilityIndex\nISOSpeedRatings\nISOSpeedRatings\nJPEGInterchangeFormat\nJPEGInterchangeFormatLength\nLightSource\nMake\nMakerNote\nMaxApertureValue\nMeteringMode\nModel\nNewSubfileType\nOECF\nOffsetTime\nOffsetTimeDigitized\nOffsetTimeOriginal\nAspectFrame\nPreviewImageLength\nPreviewImageStart\nThumbnailImage\nOrientation\nPhotometricInterpretation\nPixelXDimension\nPixelYDimension\nPlanarConfiguration\nPrimaryChromaticities\nReferenceBlackWhite\nRelatedSoundFile\nResolutionUnit\nRowsPerStrip\nISO\nJpgFromRaw\nSensorBottomBorder\nSensorLeftBorder\nSensorRightBorder\nSensorTopBorder\nSamplesPerPixel\nSaturation\nSceneCaptureType\nSceneType\nSensingMethod\nSharpness\nShutterSpeedValue\nSoftware\nSpatialFrequencyResponse\nSpectralSensitivity\nStripByteCounts\nStripOffsets\nSubfileType\nSubjectArea\nSubjectDistance\nSubjectDistanceRange\nSubjectLocation\nSubSecTime\nSubSecTimeDigitized\nSubSecTimeDigitized\nSubSecTimeOriginal\nSubSecTimeOriginal\nThumbnailImageLength\nThumbnailImageWidth\nThumbnailOrientation\nTransferFunction\nUserComment\nWhiteBalance\nWhitePoint\nXmp\nXResolution\nYCbCrCoefficients\nYCbCrPositioning\nYCbCrSubSampling\nYResolution"

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyExifInterface(Ljava/lang/String;Landroid/media/ExifInterface;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    sget-object p0, Lcom/agc/util/ExifInterfaceUtil;->ExifInterface_Field_List:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "ImageDescription"

    invoke-virtual {v0, p0, p2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/agc/util/ExifInterfaceUtil;->saveExifInterface(Landroid/media/ExifInterface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    :goto_1
    return-void
.end method

.method public static copyExifInterface(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p1, ""

    invoke-static {p0, v0, p1}, Lcom/agc/util/ExifInterfaceUtil;->copyExifInterface(Ljava/lang/String;Landroid/media/ExifInterface;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    return-void
.end method

.method public static get(Ljava/lang/String;)Landroid/media/ExifInterface;
    .locals 1

    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static saveExifInterface(Landroid/media/ExifInterface;)V
    .locals 2

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "OPPO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OnePlus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ro.vendor.oplus.market.name"

    invoke-static {v1, v0}, Lcom/agc/CrashHandler;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Model"

    invoke-virtual {p0, v1, v0}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/agc/CrashHandler;->getProfileTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "UserComment"

    invoke-virtual {p0, v1, v0}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    return-void
.end method

.method public static saveNowExifInterface(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".dng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/agc/util/ExifInterfaceUtil;->saveExifInterface(Landroid/media/ExifInterface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    return-void
.end method
