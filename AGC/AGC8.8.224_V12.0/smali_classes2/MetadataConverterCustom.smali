.class public LMetadataConverterCustom;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public analogGain:F

.field public digitalGain:F

.field public exposureTime:F


# direct methods
.method public constructor <init>(Lcom/google/googlex/gcam/FrameRequest;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/google/googlex/gcam/FrameRequest;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameRequest_desired_exposure_time_ms_get(JLcom/google/googlex/gcam/FrameRequest;)F

    move-result v0

    iput v0, p0, LMetadataConverterCustom;->exposureTime:F

    invoke-static {}, Lcom/custom/slider;->getManualExposureTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-float v0, v0

    float-to-int v1, v0

    if-eqz v1, :cond_0

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr v0, v1

    iput v0, p0, LMetadataConverterCustom;->exposureTime:F

    iget-wide v1, p1, Lcom/google/googlex/gcam/FrameRequest;->a:J

    invoke-static {v1, v2, p1, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameRequest_desired_exposure_time_ms_set(JLcom/google/googlex/gcam/FrameRequest;F)V

    :cond_0
    invoke-static {}, Lcom/custom/slider;->getManualIso()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    iget-wide v1, p1, Lcom/google/googlex/gcam/FrameRequest;->a:J

    invoke-static {v1, v2, p1, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameRequest_desired_analog_gain_set(JLcom/google/googlex/gcam/FrameRequest;F)V

    :cond_1
    iget-wide v0, p1, Lcom/google/googlex/gcam/FrameRequest;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameRequest_desired_analog_gain_get(JLcom/google/googlex/gcam/FrameRequest;)F

    move-result v0

    iput v0, p0, LMetadataConverterCustom;->analogGain:F

    iget-wide v0, p1, Lcom/google/googlex/gcam/FrameRequest;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameRequest_desired_digital_gain_get(JLcom/google/googlex/gcam/FrameRequest;)F

    move-result p1

    iput p1, p0, LMetadataConverterCustom;->digitalGain:F

    const-string p1, "pref_aemode_key"

    invoke-static {p1}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    iget v0, p0, LMetadataConverterCustom;->exposureTime:F

    sput v0, Lcom/Utils/IsoTime;->sGetDesired_exposure_time_ms:F

    iget v0, p0, LMetadataConverterCustom;->analogGain:F

    sput v0, Lcom/Utils/IsoTime;->sGetDesired_analog_gain:F

    iget v0, p0, LMetadataConverterCustom;->digitalGain:F

    sput v0, Lcom/Utils/IsoTime;->sGetDesired_digital_gain:F

    invoke-static {p1}, Lcom/Utils/IsoTime;->isoTimeParametrs(I)V

    sget p1, Lcom/Utils/IsoTime;->sGetDesired_exposure_time_ms:F

    iput p1, p0, LMetadataConverterCustom;->exposureTime:F

    sget p1, Lcom/Utils/IsoTime;->sGetDesired_analog_gain:F

    iput p1, p0, LMetadataConverterCustom;->analogGain:F

    sget p1, Lcom/Utils/IsoTime;->sGetDesired_digital_gain:F

    iput p1, p0, LMetadataConverterCustom;->digitalGain:F

    :cond_2
    return-void
.end method
