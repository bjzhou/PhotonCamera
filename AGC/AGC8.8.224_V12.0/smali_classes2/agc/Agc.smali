.class public abstract Lagc/Agc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lagc/Agc$proxyStringCollection;
    }
.end annotation


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lgo/Seq;->touch()V

    invoke-static {}, Lagc/Agc;->_init()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native _init()V
.end method

.method public static native armToString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native calculateCamera()V
.end method

.method public static native computeAWBEntryBG(I)F
.end method

.method public static native computeAWBEntryGRGBRadio()F
.end method

.method public static native computeAWBEntryRG(I)F
.end method

.method public static native computeColorTransformEntryVal(I)F
.end method

.method public static native computeNoiseModelEntryO(I)F
.end method

.method public static native computeNoiseModelEntryS(I)F
.end method

.method public static native configColorPath(Ljava/lang/String;)V
.end method

.method public static native configDatabasePath(Ljava/lang/String;)V
.end method

.method public static native configFilePath(Ljava/lang/String;)V
.end method

.method public static native configLogPath(Ljava/lang/String;Z)V
.end method

.method public static native configPreferencePath(Ljava/lang/String;)V
.end method

.method public static native curveList(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native devSetting(Ljava/lang/String;)Z
.end method

.method public static native downloadFilePath(Ljava/lang/String;)V
.end method

.method public static native drawTimeWaterMark(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native drawWatermark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public static native drawWatermarkV10Bitmap(Lagc/Bitmap;Z)Lagc/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public static native drawWatermarkV11Bitmap(Lagc/Bitmap;Ljava/lang/String;Z)Lagc/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public static native drawWatermarkV12(Lagc/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lagc/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public static native drawWatermarkV13(Lagc/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lagc/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public static native drawWatermarkV1Bitmap(Lagc/Bitmap;Ljava/lang/String;Z)Lagc/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public static native drawWatermarkV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public static native drawWatermarkV2Bitmap(Lagc/Bitmap;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lagc/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public static native drawWatermarkV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public static native drawWatermarkV3Bitmap(Lagc/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lagc/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public static native drawWatermarkV4Bitmap(Lagc/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lagc/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public static native drawWatermarkV5Bitmap(Lagc/Bitmap;Ljava/lang/String;Z)Lagc/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public static native drawWatermarkV6Bitmap(Lagc/Bitmap;Ljava/lang/String;Ljava/lang/String;Z)Lagc/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public static native drawWatermarkV7Bitmap(Lagc/Bitmap;Ljava/lang/String;Z)Lagc/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public static native drawWatermarkV8Bitmap(Lagc/Bitmap;Ljava/lang/String;Ljava/lang/String;Z)Lagc/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public static native drawWatermarkV9Bitmap(Lagc/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lagc/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public static native experimentalKeys(I)V
.end method

.method public static native extractValue(Ljava/lang/String;)D
.end method

.method public static native flipImageHorizontal(Ljava/lang/String;)V
.end method

.method public static native forceGetFocal()Z
.end method

.method public static native forceSingleExposure(Z)Z
.end method

.method public static native formatCube2Png(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getAWBEntryLen()I
.end method

.method public static native getBackMainCameraId()Ljava/lang/String;
.end method

.method public static native getCameraID()Ljava/lang/String;
.end method

.method public static native getCameraIdBySensorSize(FF)Ljava/lang/String;
.end method

.method public static native getCameraMinimumFocusDistance()F
.end method

.method public static native getDefaultDeviceProperties(I)Ljava/lang/String;
.end method

.method public static native getDevice(I)Ljava/lang/String;
.end method

.method public static native getDeviceId()Ljava/lang/String;
.end method

.method public static native getDeviceInfo()Ljava/lang/String;
.end method

.method public static native getDeviceName()Ljava/lang/String;
.end method

.method public static native getEntries(Ljava/lang/String;)Lagc/StringArray;
.end method

.method public static native getExampleStringArray()Lagc/StringArray;
.end method

.method public static native getFilteredCameraIDs()Ljava/lang/String;
.end method

.method public static native getFixResolution(I)I
.end method

.method public static native getFixSpatialGainMap()I
.end method

.method public static native getFrontMainCameraId()Ljava/lang/String;
.end method

.method public static native getGcamAuxKey()I
.end method

.method public static native getGcamCameraId()I
.end method

.method public static native getGcamSensorID(FFZI)I
.end method

.method public static native getHardwareLevel(I)I
.end method

.method public static native getImageExif(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getImageFormat(I)I
.end method

.method public static native getKey(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getNoiseModelID()I
.end method

.method public static native getSMode()I
.end method

.method public static native getSensorExposureTime(IF)F
.end method

.method public static native getSensorId()I
.end method

.method public static native getShutterSpeed(D)Ljava/lang/String;
.end method

.method public static native getStreamConfig(I)I
.end method

.method public static native getUpdateNoiseModelPref(ILjava/lang/String;)D
.end method

.method public static native getViewfinderFormat()I
.end method

.method public static native histogram(Lagc/Bitmap;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public static native imageProcessing(Ljava/lang/String;)V
.end method

.method public static native initColorTune(ZZFFFFFFFFFFFFFFFFF)V
.end method

.method public static native isDefaultOpenHdrNet()Z
.end method

.method public static native isGoogleDevice()Z
.end method

.method public static native isHuaweiDevice()Z
.end method

.method public static native isLevel3Supported(ZLjava/lang/String;)Z
.end method

.method public static native isLogicalLens()Z
.end method

.method public static native isMTKDevice()Z
.end method

.method public static native isMotorolaDevice()Z
.end method

.method public static native isNewGoogleDevice()Z
.end method

.method public static native isOldGoogleDevice()Z
.end method

.method public static native isOnePlusDevice()Z
.end method

.method public static native isOppoDevice()Z
.end method

.method public static native isRealmeDevice()Z
.end method

.method public static native isRedmiNote11()Z
.end method

.method public static native isRedmiNote9()Z
.end method

.method public static native isSDM()Z
.end method

.method public static native isSamsDevice()Z
.end method

.method public static native isSamsExynosDevice()Z
.end method

.method public static native isSamsungFix()Z
.end method

.method public static native isSamsungS21UltraExynos()Z
.end method

.method public static native isSamsungS22Ultra()Z
.end method

.method public static native isSamsungS22UltraExynos()Z
.end method

.method public static native isSamsungS22UltraSnapdragon()Z
.end method

.method public static native isSamsungS23UltraSnapdragon()Z
.end method

.method public static native isSonyDevice()Z
.end method

.method public static native isSupportLEVEL3()Z
.end method

.method public static native isSupportRAW10()Z
.end method

.method public static native isSupportRAW16()Z
.end method

.method public static native isTeleLens()Z
.end method

.method public static native isUsingSensorId()Z
.end method

.method public static native isVivoDevice()Z
.end method

.method public static native isVivoX90PPDevice()Z
.end method

.method public static native isXiaomi10U()Z
.end method

.method public static native isXiaomi11P()Z
.end method

.method public static native isXiaomi11U()Z
.end method

.method public static native isXiaomi12SUltra()Z
.end method

.method public static native isXiaomi13Pro()Z
.end method

.method public static native isXiaomi13Ultra()Z
.end method

.method public static native isXiaomi14()Z
.end method

.method public static native isXiaomi14Pro()Z
.end method

.method public static native isXiaomi14Series()Z
.end method

.method public static native isXiaomi14Ultra()Z
.end method

.method public static native isZFLIP4()Z
.end method

.method public static native isZFold4()Z
.end method

.method public static native libDefaultValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native logToFile(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public static native medianFilter(Ljava/lang/String;I)V
.end method

.method public static native mergeMethod(ZZZZII)I
.end method

.method public static native needFixAWBGains()Z
.end method

.method public static native needFixExposureTime()Z
.end method

.method public static native needFixResolution()Z
.end method

.method public static native needFixed()Z
.end method

.method public static native newAwb(ILjava/lang/String;FFLjava/lang/String;)V
.end method

.method public static native newBitmap(JJ[B)Lagc/Bitmap;
.end method

.method public static native newCamera(Ljava/lang/String;Ljava/lang/String;ZZFFFFFIIZZZLjava/lang/String;Ljava/lang/String;I)V
.end method

.method public static native newColorTransform(ILjava/lang/String;Ljava/lang/String;FFFFFILjava/lang/String;)V
.end method

.method public static native newDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public static native newDeviceOld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public static native newNoiseModel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IFIID)V
.end method

.method public static native onPreferenceChanged(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native parseCrashLog(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native parseGawb(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native patch(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native patchDefaultValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native patchLensProfile(II)V
.end method

.method public static native patchOne(Ljava/lang/String;F)V
.end method

.method public static native patchProfile(I)V
.end method

.method public static native patchRestore(Ljava/lang/String;)V
.end method

.method public static native patchValueCorrect(Ljava/lang/String;F)F
.end method

.method public static native preferenceAfterExport(Ljava/lang/String;)I
.end method

.method public static native preferenceImport(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native preferenceLoadProcess(Ljava/lang/String;Ljava/lang/String;Z)I
.end method

.method public static native processImageWithLUT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;)V
.end method

.method public static native ramPatcher(Ljava/lang/String;)V
.end method

.method public static native setCachePath(Ljava/lang/String;)V
.end method

.method public static native setCameraID(Ljava/lang/String;)V
.end method

.method public static native setDeviceId(Ljava/lang/String;)V
.end method

.method public static native setGcamCameraId(I)V
.end method

.method public static native setLeicaMode(Z)V
.end method

.method public static native setSMode(Ljava/lang/String;)V
.end method

.method public static native setSensorId(I)V
.end method

.method public static native setTimeZoneOffset(I)V
.end method

.method public static native skipCaptureResult()Z
.end method

.method public static touch()V
    .locals 0

    return-void
.end method

.method public static native ultraTeleZoomRatioFacingBack()F
.end method

.method public static native updateNoiseModelPref(Ljava/lang/String;)V
.end method
