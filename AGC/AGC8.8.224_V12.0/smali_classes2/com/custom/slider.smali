.class public Lcom/custom/slider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static focusDistance:F

.field private static focusMode:I

.field public static isoIndex:I

.field public static sGainAE:F

.field public static sManualIsoGain:F

.field public static shutterIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDesiredExposureTimeMs()Ljava/lang/Long;
    .locals 2

    sget v0, Lcom/custom/slider;->shutterIndex:I

    invoke-static {v0}, Lcom/custom/slider;->getShutter(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static getFocusDistance()Ljava/lang/Float;
    .locals 1

    sget v0, Lcom/custom/slider;->focusDistance:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public static getFocusMode()Ljava/lang/Integer;
    .locals 1

    sget v0, Lcom/custom/slider;->focusMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static getISO(I)F
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/high16 p0, 0x45480000    # 3200.0f

    return p0

    :pswitch_1
    const/high16 p0, 0x44c80000    # 1600.0f

    return p0

    :pswitch_2
    const/high16 p0, 0x44480000    # 800.0f

    return p0

    :pswitch_3
    const/high16 p0, 0x44200000    # 640.0f

    return p0

    :pswitch_4
    const/high16 p0, 0x43fa0000    # 500.0f

    return p0

    :pswitch_5
    const/high16 p0, 0x43c80000    # 400.0f

    return p0

    :pswitch_6
    const/high16 p0, 0x43a00000    # 320.0f

    return p0

    :pswitch_7
    const/high16 p0, 0x437a0000    # 250.0f

    return p0

    :pswitch_8
    const/high16 p0, 0x43480000    # 200.0f

    return p0

    :pswitch_9
    const/high16 p0, 0x43200000    # 160.0f

    return p0

    :pswitch_a
    const/high16 p0, 0x42fa0000    # 125.0f

    return p0

    :pswitch_b
    const/high16 p0, 0x42c80000    # 100.0f

    return p0

    :pswitch_c
    const/high16 p0, 0x42a00000    # 80.0f

    return p0

    :pswitch_d
    const/high16 p0, 0x42800000    # 64.0f

    return p0

    :pswitch_e
    const/high16 p0, 0x42480000    # 50.0f

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getManualExposureTime()Ljava/lang/Long;
    .locals 2

    sget v0, Lcom/custom/slider;->shutterIndex:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/custom/slider;->getShutter(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getManualIso()F
    .locals 6

    sget v0, Lcom/custom/slider;->isoIndex:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-lt v0, v2, :cond_1

    const/16 v3, 0x20

    if-gt v0, v3, :cond_1

    int-to-float v0, v0

    return v0

    :cond_1
    const/4 v0, 0x6

    :goto_0
    const/16 v3, 0x9

    if-gt v0, v3, :cond_3

    shl-int v3, v2, v0

    int-to-float v3, v3

    sget v4, Lcom/custom/slider;->isoIndex:I

    add-int/lit8 v5, v0, 0x1b

    if-ne v4, v5, :cond_2

    return v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private static getShutter(I)J
    .locals 2

    packed-switch p0, :pswitch_data_0

    const-wide/16 v0, 0x0

    return-wide v0

    :pswitch_0
    const-wide v0, 0xdbcac8e00L

    return-wide v0

    :pswitch_1
    const-wide v0, 0xba43b7400L

    return-wide v0

    :pswitch_2
    const-wide v0, 0x9502f9000L

    return-wide v0

    :pswitch_3
    const-wide v0, 0x6fc23ac00L

    return-wide v0

    :pswitch_4
    const-wide v0, 0x4a817c800L

    return-wide v0

    :pswitch_5
    const-wide v0, 0x3b9aca000L

    return-wide v0

    :pswitch_6
    const-wide v0, 0x2cb417800L

    return-wide v0

    :pswitch_7
    const-wide v0, 0x2540be400L

    return-wide v0

    :pswitch_8
    const-wide v0, 0x1dcd65000L

    return-wide v0

    :pswitch_9
    const-wide v0, 0x165a0bc00L

    return-wide v0

    :pswitch_a
    const-wide v0, 0xee6b2800L

    return-wide v0

    :pswitch_b
    const-wide v0, 0xb2d05e00L

    return-wide v0

    :pswitch_c
    const-wide/32 v0, 0x77359400

    return-wide v0

    :pswitch_d
    const-wide/32 v0, 0x3b9aca00

    return-wide v0

    :pswitch_e
    const-wide/32 v0, 0x1dcd6500

    return-wide v0

    :pswitch_f
    const-wide/32 v0, 0x13de4355

    return-wide v0

    :pswitch_10
    const-wide/32 v0, 0xee6b280

    return-wide v0

    :pswitch_11
    const-wide/32 v0, 0x7735940

    return-wide v0

    :pswitch_12
    const-wide/32 v0, 0x3f940aa

    return-wide v0

    :pswitch_13
    const-wide/32 v0, 0x1fca055

    return-wide v0

    :pswitch_14
    const-wide/32 v0, 0xfe502a

    return-wide v0

    :pswitch_15
    const-wide/32 v0, 0x7a1200

    return-wide v0

    :pswitch_16
    const-wide/32 v0, 0x3d0900

    return-wide v0

    :pswitch_17
    const-wide/32 v0, 0x1e8480

    return-wide v0

    :pswitch_18
    const-wide/32 v0, 0xf4240

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setFocusSeek(IF)V
    .locals 1

    sput p0, Lcom/custom/slider;->focusMode:I

    if-nez p0, :cond_0

    const-string p0, "pref_af_mode"

    const-string p1, "0"

    invoke-static {p0, p1}, Lcom/Utils/Pref;->setMenuValue(Ljava/lang/String;Ljava/lang/String;)V

    const p0, 0x38d1b717    # 1.0E-4f

    :goto_0
    sput p0, Lcom/custom/slider;->focusDistance:F

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    sput p1, Lcom/custom/slider;->focusDistance:F

    :goto_1
    return-void
.end method

.method public static setIsoSeek(I)V
    .locals 0

    sput p0, Lcom/custom/slider;->isoIndex:I

    return-void
.end method

.method public static setManualIsoSlider()V
    .locals 5

    sget v0, Lcom/custom/slider;->isoIndex:I

    if-nez v0, :cond_0

    sget v0, Lcom/custom/slider;->sGainAE:F

    :goto_0
    sput v0, Lcom/custom/slider;->sManualIsoGain:F

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    const/16 v2, 0x20

    if-gt v0, v2, :cond_1

    int-to-float v0, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x6

    :goto_1
    const/16 v3, 0x9

    if-gt v2, v3, :cond_3

    shl-int v3, v1, v2

    int-to-float v3, v3

    add-int/lit8 v4, v2, 0x1b

    if-ne v0, v4, :cond_2

    sput v3, Lcom/custom/slider;->sManualIsoGain:F

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public static setShutterSeek(I)V
    .locals 0

    sput p0, Lcom/custom/slider;->shutterIndex:I

    return-void
.end method
