.class public final Lcom/google/android/libraries/barhopper/MultiScaleDecodingOptions;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private extraScales:[F

.field private minimumDetectedDimension:I

.field private skipProcessingIfBarcodeFound:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iput-object v0, p0, Lcom/google/android/libraries/barhopper/MultiScaleDecodingOptions;->extraScales:[F

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

    :goto_2
    const/16 v0, 0xa

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/libraries/barhopper/MultiScaleDecodingOptions;->skipProcessingIfBarcodeFound:Z

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-array v0, v0, [F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput v0, p0, Lcom/google/android/libraries/barhopper/MultiScaleDecodingOptions;->minimumDetectedDimension:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public getExtraScales()[F
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/android/libraries/barhopper/MultiScaleDecodingOptions;->extraScales:[F

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop
.end method

.method public getMinimumDetectedDimension()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lcom/google/android/libraries/barhopper/MultiScaleDecodingOptions;->minimumDetectedDimension:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop
.end method

.method public getSkipProcessingIfBarcodeFound()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean p0, p0, Lcom/google/android/libraries/barhopper/MultiScaleDecodingOptions;->skipProcessingIfBarcodeFound:Z

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

    nop

    :goto_1
    return p0

    nop

    nop
.end method

.method public setExtraScales([F)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lcom/google/android/libraries/barhopper/MultiScaleDecodingOptions;->extraScales:[F

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public setMinimumDetectedDimension(I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput p1, p0, Lcom/google/android/libraries/barhopper/MultiScaleDecodingOptions;->minimumDetectedDimension:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public setSkipProcessingIfBarcodeFound(Z)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/libraries/barhopper/MultiScaleDecodingOptions;->skipProcessingIfBarcodeFound:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method
