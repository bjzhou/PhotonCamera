.class public Lcom/agc/NoiseModels;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static cameraID:Ljava/lang/String; = null

.field private static noiseModel:Ljava/lang/String; = null

.field private static noiseModelFile:Ljava/lang/String; = ""

.field public static noiseModelID:I = -0x3

.field private static tuneCoeff:F

.field private static tuneManualISO:I

.field private static tuneModel:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static NR_Offset(FI)F
    .locals 1

    sget v0, Lcom/agc/NoiseModels;->noiseModelID:I

    if-nez v0, :cond_0

    return p0

    :cond_0
    invoke-static {p1}, Lagc/Agc;->computeNoiseModelEntryO(I)F

    move-result p0

    return p0
.end method

.method public static NR_Scale(FI)F
    .locals 1

    sget v0, Lcom/agc/NoiseModels;->noiseModelID:I

    if-nez v0, :cond_0

    return p0

    :cond_0
    invoke-static {p1}, Lagc/Agc;->computeNoiseModelEntryS(I)F

    move-result p0

    return p0
.end method

.method public static NoiseModelSelector([Landroid/util/Pair;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Pair<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    const-string v0, "noise_model"

    const-string v1, "pref_iso_noise_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/Utils/Pref;->getColorsIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/agc/NoiseModels;->tuneModel:I

    const-string v1, "pref_iso_noise_coeff_key"

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v0, v1, v3}, Lcom/Utils/Pref;->getColorsFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v1

    sput v1, Lcom/agc/NoiseModels;->tuneCoeff:F

    const-string v1, "pref_manual_iso_noise_key"

    const/16 v3, 0x1900

    invoke-static {v0, v1, v3}, Lcom/Utils/Pref;->getColorsIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/agc/NoiseModels;->tuneManualISO:I

    const-string v1, "pref_noise_model_key"

    const-string v3, ""

    invoke-static {v0, v1, v3}, Lcom/Utils/Pref;->getColorsStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/agc/NoiseModels;->noiseModel:Ljava/lang/String;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/agc/NoiseModels;->noiseModel:Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/NoiseModels;->noiseModelID:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/Globals;->noiseFolder:Ljava/io/File;

    sget-object v3, Lcom/agc/NoiseModels;->noiseModel:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/agc/NoiseModels;->noiseModelFile:Ljava/lang/String;

    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    :goto_2
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/Utils/Lens;->getAuxKey()I

    move-result p0

    invoke-static {p0}, Lcom/Utils/Lens;->getCameraID(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/agc/NoiseModels;->cameraID:Ljava/lang/String;

    sget v2, Lcom/agc/NoiseModels;->noiseModelID:I

    sget-object v3, Lcom/agc/NoiseModels;->noiseModelFile:Ljava/lang/String;

    const-string p0, ","

    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/agc/NoiseModels;->tuneModel:I

    sget v6, Lcom/agc/NoiseModels;->tuneCoeff:F

    sget v7, Lcom/agc/NoiseModels;->tuneManualISO:I

    sget v8, Lcom/Globals;->ISOsystem:I

    sget p0, Lcom/Globals;->maxAnalogSens:F

    float-to-double v9, p0

    invoke-static/range {v1 .. v10}, Lagc/Agc;->newNoiseModel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IFIID)V

    return-void
.end method
