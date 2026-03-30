.class synthetic Landroid/support/v8/renderscript/Element$1;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final synthetic $SwitchMap$android$support$v8$renderscript$Element$DataKind:[I

.field static final synthetic $SwitchMap$android$support$v8$renderscript$Element$DataType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    array-length v0, v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object v2, Landroid/support/v8/renderscript/Element$1;->$SwitchMap$android$support$v8$renderscript$Element$DataKind:[I

    nop

    nop

    nop

    nop

    sget-object v3, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/support/v8/renderscript/Element$DataKind;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3}, Landroid/support/v8/renderscript/Element$1;->zgKCdSnnlnKUCyhy(Landroid/support/v8/renderscript/Element$DataKind;)I

    move-result v3

    nop

    aput v0, v2, v3

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x16

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    :try_start_1
    sget-object v3, Landroid/support/v8/renderscript/Element$1;->$SwitchMap$android$support$v8$renderscript$Element$DataKind:[I

    nop

    nop

    nop

    nop

    sget-object v4, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/support/v8/renderscript/Element$DataKind;

    nop

    invoke-static {v4}, Landroid/support/v8/renderscript/Element$1;->ZWSedlfquEhuNAAw(Landroid/support/v8/renderscript/Element$DataKind;)I

    move-result v4

    nop

    aput v2, v3, v4

    nop
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    goto/32 :goto_c

    nop

    nop

    :goto_4
    sput-object v3, Landroid/support/v8/renderscript/Element$1;->$SwitchMap$android$support$v8$renderscript$Element$DataType:[I

    nop

    nop

    nop

    :try_start_2
    sget-object v4, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    invoke-static {v4}, Landroid/support/v8/renderscript/Element$1;->oNadJsHaDSopiYnm(Landroid/support/v8/renderscript/Element$DataType;)I

    move-result v4

    nop

    nop

    nop

    aput v1, v3, v4

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Landroid/support/v8/renderscript/Element$1;->$SwitchMap$android$support$v8$renderscript$Element$DataType:[I

    nop

    nop

    nop

    sget-object v3, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_64:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    invoke-static {v3}, Landroid/support/v8/renderscript/Element$1;->ATRbBGFpvOtgGSeh(Landroid/support/v8/renderscript/Element$DataType;)I

    move-result v3

    nop

    nop

    nop

    aput v0, v1, v3

    nop

    nop
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Landroid/support/v8/renderscript/Element$1;->$SwitchMap$android$support$v8$renderscript$Element$DataType:[I

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    nop

    invoke-static {v1}, Landroid/support/v8/renderscript/Element$1;->ietrmrYyaxgHRPNJ(Landroid/support/v8/renderscript/Element$DataType;)I

    move-result v1

    nop

    nop

    nop

    aput v2, v0, v1

    nop

    nop
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Landroid/support/v8/renderscript/Element$1;->$SwitchMap$android$support$v8$renderscript$Element$DataType:[I

    nop

    nop

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    nop

    invoke-static {v1}, Landroid/support/v8/renderscript/Element$1;->ivKRGwPbrOhdXzFF(Landroid/support/v8/renderscript/Element$DataType;)I

    move-result v1

    nop

    const/4 v2, 0x4

    nop

    nop

    aput v2, v0, v1

    nop

    nop

    nop
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Landroid/support/v8/renderscript/Element$1;->$SwitchMap$android$support$v8$renderscript$Element$DataType:[I

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    nop

    nop

    invoke-static {v1}, Landroid/support/v8/renderscript/Element$1;->AFMNAUNLzprkivAn(Landroid/support/v8/renderscript/Element$DataType;)I

    move-result v1

    nop

    const/4 v2, 0x5

    nop

    nop

    aput v2, v0, v1

    nop
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Landroid/support/v8/renderscript/Element$1;->$SwitchMap$android$support$v8$renderscript$Element$DataType:[I

    nop

    nop

    nop

    nop

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_64:Landroid/support/v8/renderscript/Element$DataType;

    nop

    invoke-static {v1}, Landroid/support/v8/renderscript/Element$1;->skKXtijXOMJhdjLZ(Landroid/support/v8/renderscript/Element$DataType;)I

    move-result v1

    nop

    const/4 v2, 0x6

    nop

    nop

    nop

    aput v2, v0, v1

    nop

    nop
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Landroid/support/v8/renderscript/Element$1;->$SwitchMap$android$support$v8$renderscript$Element$DataType:[I

    nop

    nop

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    invoke-static {v1}, Landroid/support/v8/renderscript/Element$1;->GPViQdMREDciECUg(Landroid/support/v8/renderscript/Element$DataType;)I

    move-result v1

    nop

    const/4 v2, 0x7

    nop

    nop

    nop

    aput v2, v0, v1

    nop

    nop
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Landroid/support/v8/renderscript/Element$1;->$SwitchMap$android$support$v8$renderscript$Element$DataType:[I

    nop

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1}, Landroid/support/v8/renderscript/Element$1;->socSkVPwHUVJAYOs(Landroid/support/v8/renderscript/Element$DataType;)I

    move-result v1

    nop

    const/16 v2, 0x8

    nop

    nop

    nop

    nop

    nop

    aput v2, v0, v1

    nop
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Landroid/support/v8/renderscript/Element$1;->$SwitchMap$android$support$v8$renderscript$Element$DataType:[I

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    nop

    invoke-static {v1}, Landroid/support/v8/renderscript/Element$1;->sWYuDTyTnIypWZoN(Landroid/support/v8/renderscript/Element$DataType;)I

    move-result v1

    nop

    nop

    nop

    const/16 v2, 0x9

    nop

    nop

    nop

    nop

    aput v2, v0, v1

    nop

    nop

    nop

    nop
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Landroid/support/v8/renderscript/Element$1;->$SwitchMap$android$support$v8$renderscript$Element$DataType:[I

    nop

    nop

    nop

    nop

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_64:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    nop

    nop

    invoke-static {v1}, Landroid/support/v8/renderscript/Element$1;->TxAOzlwhtEsxWGzz(Landroid/support/v8/renderscript/Element$DataType;)I

    move-result v1

    nop

    nop

    nop

    nop

    const/16 v2, 0xa

    nop

    aput v2, v0, v1

    nop

    nop

    nop
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Landroid/support/v8/renderscript/Element$1;->$SwitchMap$android$support$v8$renderscript$Element$DataType:[I

    nop

    nop

    nop

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->BOOLEAN:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1}, Landroid/support/v8/renderscript/Element$1;->QhCtwrYLjISURZzL(Landroid/support/v8/renderscript/Element$DataType;)I

    move-result v1

    nop

    const/16 v2, 0xb

    nop

    nop

    nop

    aput v2, v0, v1

    nop

    nop
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    goto/32 :goto_7

    nop

    nop

    :goto_5
    array-length v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    invoke-static {}, Landroid/support/v8/renderscript/Element$1;->mYYPxTuRskkltKiO()[Landroid/support/v8/renderscript/Element$DataType;

    move-result-object v3

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_e
    const/4 v1, 0x1

    nop

    :try_start_d
    sget-object v2, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_LA:Landroid/support/v8/renderscript/Element$DataKind;

    nop

    nop

    nop

    nop

    invoke-static {v2}, Landroid/support/v8/renderscript/Element$1;->dzwCQqOxVgZPbmoL(Landroid/support/v8/renderscript/Element$DataKind;)I

    move-result v2

    nop

    nop

    nop

    aput v1, v0, v2

    nop

    nop
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    goto/32 :goto_1

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    :goto_10
    new-array v0, v0, [I

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-array v3, v3, [I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {}, Landroid/support/v8/renderscript/Element$1;->ZvKpazsprVPiVBHX()[Landroid/support/v8/renderscript/Element$DataKind;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    sput-object v0, Landroid/support/v8/renderscript/Element$1;->$SwitchMap$android$support$v8$renderscript$Element$DataKind:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop
.end method

.method public static AFMNAUNLzprkivAn(Landroid/support/v8/renderscript/Element$DataType;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Element$DataType;->ordinal()I

    move-result v0

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
    return v0

    nop

    nop

    nop
.end method

.method public static ATRbBGFpvOtgGSeh(Landroid/support/v8/renderscript/Element$DataType;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Element$DataType;->ordinal()I

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop
.end method

.method public static GPViQdMREDciECUg(Landroid/support/v8/renderscript/Element$DataType;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Element$DataType;->ordinal()I

    move-result v0

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

    :goto_1
    return v0

    nop

    nop

    nop

    nop
.end method

.method public static QhCtwrYLjISURZzL(Landroid/support/v8/renderscript/Element$DataType;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Element$DataType;->ordinal()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static TxAOzlwhtEsxWGzz(Landroid/support/v8/renderscript/Element$DataType;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Element$DataType;->ordinal()I

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop
.end method

.method public static ZWSedlfquEhuNAAw(Landroid/support/v8/renderscript/Element$DataKind;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Element$DataKind;->ordinal()I

    move-result v0

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
    return v0

    nop

    nop

    nop
.end method

.method public static ZvKpazsprVPiVBHX()[Landroid/support/v8/renderscript/Element$DataKind;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Landroid/support/v8/renderscript/Element$DataKind;->values()[Landroid/support/v8/renderscript/Element$DataKind;

    move-result-object v0

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
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method public static dzwCQqOxVgZPbmoL(Landroid/support/v8/renderscript/Element$DataKind;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Element$DataKind;->ordinal()I

    move-result v0

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

.method public static ietrmrYyaxgHRPNJ(Landroid/support/v8/renderscript/Element$DataType;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Element$DataType;->ordinal()I

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static ivKRGwPbrOhdXzFF(Landroid/support/v8/renderscript/Element$DataType;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Element$DataType;->ordinal()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static mYYPxTuRskkltKiO()[Landroid/support/v8/renderscript/Element$DataType;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-static {}, Landroid/support/v8/renderscript/Element$DataType;->values()[Landroid/support/v8/renderscript/Element$DataType;

    move-result-object v0

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

.method public static oNadJsHaDSopiYnm(Landroid/support/v8/renderscript/Element$DataType;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Element$DataType;->ordinal()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static sWYuDTyTnIypWZoN(Landroid/support/v8/renderscript/Element$DataType;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Element$DataType;->ordinal()I

    move-result v0

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

.method public static skKXtijXOMJhdjLZ(Landroid/support/v8/renderscript/Element$DataType;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Element$DataType;->ordinal()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop
.end method

.method public static socSkVPwHUVJAYOs(Landroid/support/v8/renderscript/Element$DataType;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Element$DataType;->ordinal()I

    move-result v0

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
    return v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static zgKCdSnnlnKUCyhy(Landroid/support/v8/renderscript/Element$DataKind;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Element$DataKind;->ordinal()I

    move-result v0

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
