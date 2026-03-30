.class public Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private codabarMinCodeLength:I

.field private codabarMinConsistentLines:I

.field private code128MinCodeLength:I

.field private code128MinConsistentLines:I

.field private code39MinCodeLength:I

.field private code39MinConsistentLines:I

.field private code39UseCheckDigit:Z

.field private code39UseExtendedMode:Z

.field private code93MinCodeLength:I

.field private code93MinConsistentLines:I

.field private ean13UpcaMinConsistentLines:I

.field private ean8MinConsistentLines:I

.field private itfMinCodeLength:I

.field private itfMinConsistentLines:I

.field private upceMinConsistentLines:I


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->codabarMinCodeLength:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_3
    const/4 v1, 0x3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput v1, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->ean8MinConsistentLines:I

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_8
    iput v0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code93MinCodeLength:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    iput-boolean v0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code39UseCheckDigit:Z

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_a
    iput v0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code128MinConsistentLines:I

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput v0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->ean13UpcaMinConsistentLines:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_e
    iput v0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code128MinCodeLength:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_12
    iput v0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code93MinConsistentLines:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput v0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->itfMinCodeLength:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x4

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_15
    const v1, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput-boolean v0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code39UseExtendedMode:Z

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput v0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code39MinCodeLength:I

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_18
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput v0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code39MinConsistentLines:I

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput v1, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->itfMinConsistentLines:I

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1b
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1c
    iput v1, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->upceMinConsistentLines:I

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1e
    iput v0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->codabarMinConsistentLines:I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public getCodabarMinCodeLength()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->codabarMinCodeLength:I

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

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public getCodabarMinConsistentLines()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->codabarMinConsistentLines:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop
.end method

.method public getCode128MinCodeLength()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code128MinCodeLength:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop
.end method

.method public getCode128MinConsistentLines()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    iget p0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code128MinConsistentLines:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public getCode39MinCodeLength()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code39MinCodeLength:I

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
    return p0

    nop

    nop

    nop

    nop
.end method

.method public getCode39MinConsistentLines()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code39MinConsistentLines:I

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

    nop
.end method

.method public getCode39UseCheckDigit()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean p0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code39UseCheckDigit:Z

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
    return p0

    nop
.end method

.method public getCode39UseExtendedMode()Z
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

    nop

    :goto_1
    iget-boolean p0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code39UseExtendedMode:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public getCode93MinCodeLength()I
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

    :goto_1
    iget p0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code93MinCodeLength:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public getCode93MinConsistentLines()I
    .locals 0

    goto/32 :goto_1

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

    :goto_1
    iget p0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code93MinConsistentLines:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public getEan13UpcaMinConsistentLines()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->ean13UpcaMinConsistentLines:I

    nop

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
.end method

.method public getEan8MinConsistentLines()I
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

    :goto_1
    iget p0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->ean8MinConsistentLines:I

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

.method public getItfMinCodeLength()I
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
    iget p0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->itfMinCodeLength:I

    nop

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
.end method

.method public getItfMinConsistentLines()I
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

    nop

    nop

    :goto_1
    iget p0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->itfMinConsistentLines:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public getUpceMinConsistentLines()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->upceMinConsistentLines:I

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

    nop

    :goto_1
    return p0

    nop
.end method

.method public setCodabarMinCodeLength(I)Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;
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

    nop

    nop

    nop

    nop

    :goto_1
    iput p1, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->codabarMinCodeLength:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public setCodabarMinConsistentLines(I)Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    iput p1, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->codabarMinConsistentLines:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public setCode128MinCodeLength(I)Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code128MinCodeLength:I

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
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public setCode128MinConsistentLines(I)Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code128MinConsistentLines:I

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop
.end method

.method public setCode39MinCodeLength(I)Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;
    .locals 0

    goto/32 :goto_1

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
    iput p1, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code39MinCodeLength:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public setCode39MinConsistentLines(I)Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    iput p1, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code39MinConsistentLines:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public setCode39UseCheckDigit(Z)Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code39UseCheckDigit:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop
.end method

.method public setCode39UseExtendedMode(Z)Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code39UseExtendedMode:Z

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

    nop
.end method

.method public setCode93MinCodeLength(I)Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code93MinCodeLength:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop
.end method

.method public setCode93MinConsistentLines(I)Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code93MinConsistentLines:I

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

    nop

    nop

    nop

    nop
.end method

.method public setEan13UpcaMinConsistentLines(I)Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->ean13UpcaMinConsistentLines:I

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
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public setEan8MinConsistentLines(I)Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;
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

    nop

    :goto_1
    iput p1, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->ean8MinConsistentLines:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public setItfMinCodeLength(I)Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;
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

    nop

    nop

    :goto_1
    iput p1, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->itfMinCodeLength:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public setItfMinConsistentLines(I)Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;
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
    iput p1, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->itfMinConsistentLines:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public setUpceMinConsistentLines(I)Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->upceMinConsistentLines:I

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method
