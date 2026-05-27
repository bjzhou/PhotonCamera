.class public LAwb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getQcColorCalibration(Lcom/google/googlex/gcam/StaticMetadata;)V
    .locals 15

    const-string v0, ""

    invoke-static {}, Lagc/Agc;->getGcamAuxKey()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-static {}, Lagc/Agc;->getGcamAuxKey()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/Utils/Lens;->getAuxKey()I

    move-result v1

    :goto_0
    invoke-static {v1}, Lcom/Utils/Lens;->getCameraID(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "awb"

    const-string v3, "pref_awbratio_key"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/Utils/Pref;->getColorsFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v3

    const-string v5, "pref_awb_bg_coeff_key"

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v2, v5, v6}, Lcom/Utils/Pref;->getColorsFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v5

    const-string v7, "pref_awb_rg_coeff_key"

    invoke-static {v2, v7, v6}, Lcom/Utils/Pref;->getColorsFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v7

    const-string v8, "pref_awb_key"

    const-string v9, "0"

    invoke-static {v2, v8, v9}, Lcom/Utils/Pref;->getColorsStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    move-object v9, v2

    :goto_1
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v8

    const/16 v8, 0x2e

    invoke-virtual {v2, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    if-lez v8, :cond_2

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v8, "txt"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "gawb"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, -0x2

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v0, -0x1

    new-instance v8, Ljava/io/File;

    sget-object v9, Lcom/Globals;->awbFolder:Ljava/io/File;

    invoke-direct {v8, v9, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    :goto_3
    move-object v14, v2

    move v2, v0

    move-object v0, v14

    :goto_4
    invoke-static {v2, v0, v5, v7, v1}, Lagc/Agc;->newAwb(ILjava/lang/String;FFLjava/lang/String;)V

    new-instance v0, Lcom/google/googlex/gcam/QcColorCalibration;

    invoke-direct {v0}, Lcom/google/googlex/gcam/QcColorCalibration;-><init>()V

    :try_start_1
    new-instance v13, Lcom/google/googlex/gcam/QcIlluminantVector;

    invoke-direct {v13}, Lcom/google/googlex/gcam/QcIlluminantVector;-><init>()V

    const/4 v1, 0x0

    :goto_5
    invoke-static {}, Lagc/Agc;->getAWBEntryLen()I

    move-result v2

    if-ge v1, v2, :cond_5

    new-instance v12, Lcom/google/googlex/gcam/QcColorCalibration$IlluminantData;

    invoke-direct {v12}, Lcom/google/googlex/gcam/QcColorCalibration$IlluminantData;-><init>()V

    iget-wide v7, v12, Lcom/google/googlex/gcam/QcColorCalibration$IlluminantData;->a:J

    invoke-static {v1}, Lagc/Agc;->computeAWBEntryRG(I)F

    move-result v2

    invoke-static {v7, v8, v12, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->QcColorCalibration_IlluminantData_rg_ratio_set(JLcom/google/googlex/gcam/QcColorCalibration$IlluminantData;F)V

    iget-wide v7, v12, Lcom/google/googlex/gcam/QcColorCalibration$IlluminantData;->a:J

    invoke-static {v1}, Lagc/Agc;->computeAWBEntryBG(I)F

    move-result v2

    invoke-static {v7, v8, v12, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->QcColorCalibration_IlluminantData_bg_ratio_set(JLcom/google/googlex/gcam/QcColorCalibration$IlluminantData;F)V

    iget-wide v7, v13, Lcom/google/googlex/gcam/QcIlluminantVector;->a:J

    iget-wide v10, v12, Lcom/google/googlex/gcam/QcColorCalibration$IlluminantData;->a:J

    move-object v9, v13

    invoke-static/range {v7 .. v12}, Lcom/google/googlex/gcam/GcamModuleJNI;->QcIlluminantVector_add(JLcom/google/googlex/gcam/QcIlluminantVector;JLcom/google/googlex/gcam/QcColorCalibration$IlluminantData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    iget-wide v8, v0, Lcom/google/googlex/gcam/QcColorCalibration;->a:J

    iget-wide v11, v13, Lcom/google/googlex/gcam/QcIlluminantVector;->a:J

    move-object v10, v0

    invoke-static/range {v8 .. v13}, Lcom/google/googlex/gcam/GcamModuleJNI;->QcColorCalibration_illuminant_data_set(JLcom/google/googlex/gcam/QcColorCalibration;JLcom/google/googlex/gcam/QcIlluminantVector;)V

    cmpl-float v1, v3, v4

    if-nez v1, :cond_6

    invoke-static {}, Lagc/Agc;->computeAWBEntryGRGBRadio()F

    move-result v1

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_6

    invoke-static {}, Lagc/Agc;->computeAWBEntryGRGBRadio()F

    move-result v3

    :cond_6
    cmpl-float v1, v3, v4

    if-eqz v1, :cond_7

    const-string v1, "WB_CALIB_GR_OVER_GB_RATIO"

    invoke-static {v1, v3}, Lcom/agc/Log;->d(Ljava/lang/Object;F)I

    move v6, v3

    goto :goto_6

    :cond_7
    const-string v1, "Error WB_CALIB_GR_OVER_GB_RATIO is not available. Setting the value to 1.0f."

    invoke-static {v1}, Lcom/agc/Log;->e(Ljava/lang/Object;)I

    :goto_6
    iget-wide v1, v0, Lcom/google/googlex/gcam/QcColorCalibration;->a:J

    invoke-static {v1, v2, v0, v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->QcColorCalibration_grgb_ratio_set(JLcom/google/googlex/gcam/QcColorCalibration;F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v1

    const-string v1, "AWB didn\'t work"

    invoke-static {v1}, Lcom/agc/Log;->e(Ljava/lang/Object;)I

    :goto_7
    iget-wide v8, p0, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    iget-wide v11, v0, Lcom/google/googlex/gcam/QcColorCalibration;->a:J

    move-object v10, p0

    move-object v13, v0

    invoke-static/range {v8 .. v13}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_qc_color_calibration_set(JLcom/google/googlex/gcam/StaticMetadata;JLcom/google/googlex/gcam/QcColorCalibration;)V

    return-void
.end method
