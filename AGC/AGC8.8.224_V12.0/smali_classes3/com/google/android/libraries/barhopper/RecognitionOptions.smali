.class public Lcom/google/android/libraries/barhopper/RecognitionOptions;
.super Ljava/lang/Object;


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

.field private onedRecognitionOptions:Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;

.field private outputUnrecognizedBarcodes:Z

.field private useQrMobilenetV3:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->barcodeFormats:I

    iput-boolean v0, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->outputUnrecognizedBarcodes:Z

    iput-boolean v0, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->useQrMobilenetV3:Z

    new-instance v0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;

    invoke-direct {v0}, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->onedRecognitionOptions:Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;

    return-void
.end method


# virtual methods
.method public getBarcodeFormats()I
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->barcodeFormats:I

    return v0
.end method

.method public getOnedRecognitionOptions()Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->onedRecognitionOptions:Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;

    return-object v0
.end method

.method public getOutputUnrecognizedBarcodes()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->outputUnrecognizedBarcodes:Z

    return v0
.end method

.method public getUseQrMobilenetV3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->useQrMobilenetV3:Z

    return v0
.end method

.method public setBarcodeFormats(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->barcodeFormats:I

    return-void
.end method

.method public setOnedRecognitionOptions(Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->onedRecognitionOptions:Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;

    return-void
.end method

.method public setOutputUnrecognizedBarcodes(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->outputUnrecognizedBarcodes:Z

    return-void
.end method

.method public setUseQrMobilenetV3(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/libraries/barhopper/RecognitionOptions;->useQrMobilenetV3:Z

    return-void
.end method
