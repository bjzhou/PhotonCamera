.class public Lcom/google/android/libraries/barhopper/RecognitionOptions;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final AZTEC:I = 0x1000

.field public static final CODABAR:I = 0x8

.field public static final CODE_128:I = 0x1

.field public static final CODE_39:I = 0x2

.field public static final CODE_93:I = 0x4

.field public static final DATA_MATRIX:I = 0x10

.field public static final EAN_13:I = 0x20

.field public static final EAN_8:I = 0x40

.field public static final ITF:I = 0x80

.field public static final PDF417:I = 0x800

.field public static final QR_CODE:I = 0x100

.field public static final TEZ_CODE:I = 0x8000

.field public static final UNRECOGNIZED:I = 0x0

.field public static final UPC_A:I = 0x200

.field public static final UPC_E:I = 0x400


# instance fields
.field private barcodeFormats:I

.field private enableQrAlignmentGrid:Z

.field private enableUseKeypointAsFinderPattern:Z

.field private multiScaleDecodingOptions:Lcom/google/android/libraries/barhopper/MultiScaleDecodingOptions;

.field private multiScaleDetectionOptions:Lcom/google/android/libraries/barhopper/MultiScaleDetectionOptions;

.field private onedRecognitionOptions:Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;

.field private outputUnrecognizedBarcodes:Z

.field private qrEnableFourthCornerApproximation:Z

.field private useDetectionAsCornerPointsForOneD:Z

.field private useHalideAffineCrop:Z

.field private useQrMobilenetV3:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->qrEnableFourthCornerApproximation:Z

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean v1, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->enableQrAlignmentGrid:Z

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->useQrMobilenetV3:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v1, Lcom/google/android/libraries/barhopper/MultiScaleDetectionOptions;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v1, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    iput-boolean v0, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->useHalideAffineCrop:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_b
    new-instance v1, Lcom/google/android/libraries/barhopper/MultiScaleDecodingOptions;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_c
    invoke-direct {v1}, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-boolean v1, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->enableUseKeypointAsFinderPattern:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-boolean v0, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->outputUnrecognizedBarcodes:Z

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    :goto_11
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_13
    iput-object v1, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->multiScaleDetectionOptions:Lcom/google/android/libraries/barhopper/MultiScaleDetectionOptions;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_a

    nop

    nop

    :goto_16
    iput-boolean v0, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->useDetectionAsCornerPointsForOneD:Z

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_17
    const/4 v0, 0x0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_18
    iput-object v1, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->multiScaleDecodingOptions:Lcom/google/android/libraries/barhopper/MultiScaleDecodingOptions;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object v1, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->onedRecognitionOptions:Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput v0, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->barcodeFormats:I

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v1}, Lcom/google/android/libraries/barhopper/MultiScaleDetectionOptions;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v1}, Lcom/google/android/libraries/barhopper/MultiScaleDecodingOptions;-><init>()V

    goto/32 :goto_18

    nop

    nop

    nop
.end method


# virtual methods
.method public getBarcodeFormats()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    iget p0, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->barcodeFormats:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public getEnableQrAlignmentGrid()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean p0, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->enableQrAlignmentGrid:Z

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

.method public getEnableUseKeypointAsFinderPattern()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean p0, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->enableUseKeypointAsFinderPattern:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop
.end method

.method public getMultiScaleDecodingOptions()Lcom/google/android/libraries/barhopper/MultiScaleDecodingOptions;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    iget-object p0, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->multiScaleDecodingOptions:Lcom/google/android/libraries/barhopper/MultiScaleDecodingOptions;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public getMultiScaleDetectionOptions()Lcom/google/android/libraries/barhopper/MultiScaleDetectionOptions;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->multiScaleDetectionOptions:Lcom/google/android/libraries/barhopper/MultiScaleDetectionOptions;

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
.end method

.method public getOnedRecognitionOptions()Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->onedRecognitionOptions:Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop
.end method

.method public getOutputUnrecognizedBarcodes()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean p0, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->outputUnrecognizedBarcodes:Z

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public getQrEnableFourthCornerApproximation()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    iget-boolean p0, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->qrEnableFourthCornerApproximation:Z

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public getUseDetectionAsCornerPointsForOneD()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean p0, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->useDetectionAsCornerPointsForOneD:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public getUseHalideAffineCrop()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean p0, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->useHalideAffineCrop:Z

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

    nop
.end method

.method public getUseQrMobilenetV3()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean p0, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->useQrMobilenetV3:Z

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public setBarcodeFormats(I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput p1, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->barcodeFormats:I

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
.end method

.method public setEnableQrAlignmentGrid(Z)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->enableQrAlignmentGrid:Z

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
    return-void

    nop
.end method

.method public setEnableUseKeypointAsFinderPattern(Z)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->enableUseKeypointAsFinderPattern:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public setMultiScaleDecodingOptions(Lcom/google/android/libraries/barhopper/MultiScaleDecodingOptions;)V
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

    :goto_1
    iput-object p1, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->multiScaleDecodingOptions:Lcom/google/android/libraries/barhopper/MultiScaleDecodingOptions;

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

.method public setMultiScaleDetectionOptions(Lcom/google/android/libraries/barhopper/MultiScaleDetectionOptions;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput-object p1, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->multiScaleDetectionOptions:Lcom/google/android/libraries/barhopper/MultiScaleDetectionOptions;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public setOnedRecognitionOptions(Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;)V
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
    iput-object p1, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->onedRecognitionOptions:Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public setOutputUnrecognizedBarcodes(Z)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iput-boolean p1, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->outputUnrecognizedBarcodes:Z

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public setQrEnableFourthCornerApproximation(Z)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->qrEnableFourthCornerApproximation:Z

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
.end method

.method public setUseDetectionAsCornerPointsForOneD(Z)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean p1, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->useDetectionAsCornerPointsForOneD:Z

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public setUseHalideAffineCrop(Z)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->useHalideAffineCrop:Z

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

.method public setUseQrMobilenetV3(Z)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->useQrMobilenetV3:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method
