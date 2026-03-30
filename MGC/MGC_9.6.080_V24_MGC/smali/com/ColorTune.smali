.class public Lcom/ColorTune;
.super Ljava/lang/Object;
.source "Experimental.java"


# static fields
.field public static CCT_WB:I

.field private static CCT_WB_Offset:F

.field private static CCT_WB_intensity:F

.field public static WB1:F

.field public static WB2:F

.field public static WB3:F

.field private static custom_cct_on:I

.field private static pref_B_hue:F

.field private static pref_G_hue:F

.field private static pref_R_hue:F

.field private static pref_customCCT1:F

.field private static pref_customCCT2:F

.field private static pref_customCCT3:F

.field private static pref_customCCT4:F

.field private static pref_customCCT5:F

.field private static pref_customCCT6:F

.field private static pref_customCCT7:F

.field private static pref_customCCT8:F

.field private static pref_customCCT9:F

.field private static pref_global_hue:F

.field private static pref_satCCT:F

.field private static pref_satCCT_B:F

.field private static pref_satCCT_G:F

.field private static pref_satCCT_R:F


# direct methods
.method public constructor <init>(I)V
    .locals 2

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    :cond_1
    goto/32 :goto_88

    nop

    nop

    :goto_3
    goto/16 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v0, "cHJlZl9jdXN0b21DQ1Q3"

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2c

    nop

    :goto_7
    sput v0, Lcom/ColorTune;->WB3:F

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_a
    const-string v0, "cHJlZl9jdXN0b21DQ1Q5"

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_b
    const-string v0, "cHJlZl9CX2h1ZQ"

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    :goto_c
    const-string v0, "cHJlZl9jdXN0b21DQ1Qy"

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c8

    nop

    nop

    :goto_e
    invoke-static {v0, p1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string v0, "1.0"

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_57

    nop

    nop

    nop

    :goto_11
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sput v0, Lcom/ColorTune;->pref_customCCT4:F

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v0, p1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_15
    sput v0, Lcom/ColorTune;->pref_satCCT_G:F

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_16
    const-string v0, "cHJlZl9SX2h1ZQ"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_54

    nop

    nop

    :goto_19
    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v0, p1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_1e
    invoke-static {v0, p1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v0, "cHJlZl9jdXN0b21DQ1Qz"

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_20
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_21
    const v0, 0x19

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {v0, p1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_24
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_25
    const-string v0, "cHJlZl9zYXRDQ1Q"

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_29
    sput v0, Lcom/ColorTune;->pref_R_hue:F

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {v0, p1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_70

    nop

    nop

    :goto_2c
    goto/32 :goto_4f

    nop

    nop

    :goto_2d
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    nop

    nop

    :goto_2f
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    :goto_31
    invoke-static {v0, p1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_33
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_28

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const-string v0, "cHJlZl9zYXRDQ1RfQg"

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    :cond_4
    goto/32 :goto_5c

    nop

    nop

    :goto_39
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_a4

    nop

    nop

    :goto_3b
    invoke-static {v0, p1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const-string v0, "Q0NUX1dCX09mZnNldA"

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_3d
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    nop

    nop

    :goto_3e
    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/16 :goto_60

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const-string v0, "1.0"

    nop

    nop

    :goto_42
    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_43
    sput v0, Lcom/ColorTune;->CCT_WB_Offset:F

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    sput v0, Lcom/ColorTune;->pref_customCCT2:F

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    if-nez v1, :cond_5

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_47
    sput v0, Lcom/ColorTune;->WB1:F

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-static {v0, p1}, Lcom/a;->ad_mb(Ljava/lang/Object;I)I

    move-result v0

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_4b
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4c
    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-static {v0, p1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_90

    nop

    nop

    :goto_50
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_51
    if-nez v1, :cond_7

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_53
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_55
    if-nez v1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :cond_8
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_56
    if-nez v1, :cond_9

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_58
    const-string v0, "cHJlZl9zYXRDQ1RfUg"

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    goto/16 :goto_3a

    nop

    nop

    :goto_5b
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_5c
    const-string v0, "0.0"

    nop

    :goto_5d
    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-static {v0, p1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_63
    const-string v0, "cHJlZl9jdXN0b21DQ1Q1"

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_64
    const-string v0, "cHJlZl9HX2h1ZQ"

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_65
    const-string v0, "1.0"

    nop

    nop

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_af

    nop

    nop

    :goto_67
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_68
    sput v0, Lcom/ColorTune;->pref_G_hue:F

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    nop

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    sput v0, Lcom/ColorTune;->pref_customCCT3:F

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    :goto_6c
    if-lez v0, :cond_a

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_2b

    nop

    :goto_6d
    sput v0, Lcom/ColorTune;->WB2:F

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_6f
    return-void

    nop

    :goto_70
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_71
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_72
    sput v0, Lcom/ColorTune;->pref_customCCT5:F

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_73
    invoke-static {v0, p1}, Lcom/a;->ad_mb(Ljava/lang/Object;I)I

    move-result v0

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_74
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :goto_75
    const-string v0, "0.0"

    nop

    nop

    nop

    nop

    :goto_76
    goto/32 :goto_89

    nop

    nop

    :goto_77
    goto :goto_6a

    nop

    :goto_78
    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    const-string v0, "1.0"

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_7b
    const-string v0, "cHJlZl9jdXN0b21DQ1Q2"

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-static {v0, p1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    goto/16 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7f
    sput v0, Lcom/ColorTune;->pref_satCCT:F

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_80
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    :goto_81
    goto/32 :goto_99

    nop

    nop

    :goto_82
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    invoke-static {v0, p1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_84
    const-string v0, "0.0"

    nop

    :goto_85
    goto/32 :goto_98

    nop

    nop

    nop

    :goto_86
    sput v0, Lcom/ColorTune;->pref_global_hue:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_87
    if-nez v0, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    :cond_b
    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_88
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_8a
    const-string v0, "cHJlZl9jdXN0b21DQ1Qx"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_8b
    if-nez v1, :cond_c

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    sput v0, Lcom/ColorTune;->pref_satCCT_R:F

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_8d
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    if-nez v1, :cond_d

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_90
    const v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_91
    const-string v0, "Y3VzdG9tX2NjdF9vbg"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_92
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_93
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_94
    invoke-static {v0, p1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_95
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_96
    invoke-static {v0, p1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    :goto_97
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_98
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

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

    :goto_99
    sput v0, Lcom/ColorTune;->pref_customCCT9:F

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_9b
    const-string v0, "0.0"

    nop

    nop

    nop

    :goto_9c
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_9d
    if-nez v1, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-static {v0, p1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_a0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_a2
    invoke-static {v0, p1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_a3
    const-string v0, "Q0NUX1dCX2ludGVuc2l0eQ"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_a4
    sput v0, Lcom/ColorTune;->pref_customCCT8:F

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

    :goto_a5
    invoke-static {v0, p1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_a6
    sput v0, Lcom/ColorTune;->pref_satCCT_B:F

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    const-string v0, "cHJlZl9jdXN0b21DQ1Q0"

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-static {v0, p1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_a9
    const-string v0, "1.0"

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    goto/16 :goto_2f

    nop

    nop

    :goto_ae
    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_af
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_b0
    sput v0, Lcom/ColorTune;->pref_customCCT1:F

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_b2
    if-nez v1, :cond_f

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    if-nez v1, :cond_10

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    invoke-static {v0, p1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    :goto_b6
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_b7
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_b8
    if-nez v1, :cond_11

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    if-nez v1, :cond_12

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_ba
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_bb
    sput v0, Lcom/ColorTune;->pref_customCCT7:F

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    const-string v0, "cHJlZl9jdXN0b21DQ1Q4"

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_bd
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_be
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

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

    :goto_c0
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    goto/32 :goto_bb

    nop

    nop

    :goto_c2
    sput v0, Lcom/ColorTune;->pref_B_hue:F

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_c3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_c4
    sput v0, Lcom/ColorTune;->CCT_WB_intensity:F

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    goto/16 :goto_81

    nop

    :goto_c6
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c7
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    const-string v0, "1.0"

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    goto/32 :goto_bd

    nop

    nop

    :goto_ca
    sput v0, Lcom/ColorTune;->pref_customCCT6:F

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_cb
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_cc
    const-string v0, "Y2N0X3diX2tleQ"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    const-string v0, "cHJlZl9nbG9iYWxfaHVl"

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    const-string v0, "cHJlZl9zYXRDQ1RfRw"

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    sput v0, Lcom/ColorTune;->CCT_WB:I

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    if-nez v1, :cond_13

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_d2
    sput v0, Lcom/ColorTune;->custom_cct_on:I

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    if-nez v1, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_50

    nop

    nop
.end method

.method private static ArrayToFloatArray9([F)Lcom/google/googlex/gcam/FloatArray9;
    .locals 3

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/16 v2, 0x0

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    :goto_4
    goto :goto_3

    nop

    nop

    :goto_5
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_8
    aget v1, p0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    const/16 v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_13

    nop

    nop

    :goto_c
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v2, v1}, Lcom/google/googlex/gcam/FloatArray9;->b(IF)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    if-lt v2, v1, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_10
    invoke-direct {v0}, Lcom/google/googlex/gcam/FloatArray9;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_11
    new-instance v0, Lcom/google/googlex/gcam/FloatArray9;

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

    :goto_12
    return-object v0

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0xe

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method

.method public static CCTSaturation([FF)[F
    .locals 14

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sub-float v0, v7, v4

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1
    mul-float v4, v2, v10

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    aput v0, v13, v12

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_3
    invoke-static {v13}, Lcom/ColorTune;->CCT_WB([F)[F

    move-result-object v10

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sub-float v0, v7, v4

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    mul-float v4, v11, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3a

    nop

    :goto_7
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v7, 0x3d9374bc    # 0.072f

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v12, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_a
    sub-float v0, v2, v4

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_b
    sub-float v0, v5, v4

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_c
    const v6, 0x3e91eb85    # 0.285f

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_d
    const v12, 0x5

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_e
    const v2, 0x3e5a1cac    # 0.213f

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-float v0, v7, v4

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    aput v0, v13, v12

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_11
    sget v10, Lcom/ColorTune;->CCT_WB:I

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_12
    aput v0, v13, v12

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_13
    const v11, 0x3f6d9168    # 0.928f

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_14
    add-float v0, v5, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_15
    const v12, 0x3

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    aput v0, v13, v12

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_17
    new-array v13, v1, [F

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_18
    sub-float v0, v5, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_19
    if-nez v10, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v12, 0x6

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_1b
    const v12, 0x0

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v12, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_1d
    move v10, p1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1f
    mul-float v4, v2, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_20
    move-object p0, v13

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_21
    aput v0, v13, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_22
    add-float v0, v2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_23
    mul-float v4, v5, v10

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    :goto_25
    const v3, 0x3f4978d5    # 0.787f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const v5, 0x3f370a3d    # 0.715f

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    aput v0, v13, v12

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_28
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_29
    mul-float v4, v7, v10

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    sub-float v0, v2, v4

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v13, p0}, Lcom/ColorTune;->MMulP2([F[F)[F

    move-result-object v13

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2c
    const v12, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const v12, 0x2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_2e
    mul-float v4, v7, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2f
    const v0, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_30
    mul-float v4, v6, v10

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_31
    aput v0, v13, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    mul-float v4, v5, v10

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_33
    aput v0, v13, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_34
    invoke-static {v13, v10}, Lcom/ColorTune;->MMulP2([F[F)[F

    move-result-object v13

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_20

    nop

    nop

    :goto_36
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_37
    const v12, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_38
    const v1, 0x5

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_39
    return-object p0

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    mul-float v4, v3, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_3c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_3d
    aput v0, v13, v12

    nop

    nop

    goto/32 :goto_1c

    nop

    nop
.end method

.method public static CCT_WB([F)[F
    .locals 14

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_0
    div-float v7, v7, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    sget v7, Lcom/ColorTune;->WB1:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_2
    const v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_3
    div-float v8, v8, v3

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-float v7, v7, v5

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    mul-float v9, v9, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_6
    add-float v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_7
    mul-float v1, v1, v11

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_8
    mul-float v3, v3, v4

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x3f800000    # 1.0f

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

    :goto_a
    aget v8, v3, v0

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_b
    mul-float v3, v3, v4

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_c
    const v1, 0x40e00000    # 7.0f

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_d
    div-float v8, v8, v3

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    float-to-int v12, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    mul-float v1, v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_10
    aput v8, v10, v0

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

    :goto_11
    const v4, 0x3f000000    # 0.5f

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sget v9, Lcom/ColorTune;->WB3:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-float v8, v8, v5

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    mul-float v9, v3, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v6, 0x4b189680    # 1.0E7f

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_16
    sub-float v3, v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_17
    aput v7, v10, v0

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :cond_0
    goto/32 :goto_47

    nop

    :goto_19
    const v2, 0x3f757555

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_1a
    const v3, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_1b
    add-float v7, v7, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_1c
    mul-float v4, v4, v4

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1d
    div-float v9, v9, v0

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_1e
    sget v4, Lcom/ColorTune;->CCT_WB_Offset:F

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1f
    add-float v7, v7, v3

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    mul-float v11, v11, v11

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_21
    mul-float v8, v8, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_22
    div-float v5, v5, v1

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

    :goto_23
    const v1, 0x40400000    # 3.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const v6, 0x3ecccccd    # 0.4f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_25
    const v12, 0x45cb2000    # 6500.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_26
    const v3, 0x3d4ccccd    # 0.05f

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

    nop

    :goto_27
    mul-float v1, v1, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_28
    const v0, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    add-float v8, v8, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_2a
    div-float v1, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2b
    div-float v9, v9, v3

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    div-float v4, v9, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    div-float v8, v8, v0

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_2e
    sub-float v8, v8, v3

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2f
    const v0, 0x1

    nop

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

    :goto_30
    float-to-int v12, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const v3, 0x437f0000    # 255.0f

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_32
    const v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-ge v12, v5, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_65

    nop

    nop

    :goto_34
    return-object p0

    nop

    nop

    nop

    nop

    .array-data 4
        0x3f7cab93
        -0x41e96aad
        0x3e23cd57
        0x3edd5715
        0x3f04b33e
        0x3d49e55c    # 0.049291f
        -0x43f442c8    # -0.008529f
        0x3d240421    # 0.040043f
        0x3f77eec4
    .end array-data

    .array-data 4
        0x3f652546    # 0.8951f
        0x3e886595    # 0.2664f
        -0x41dab9f5    # -0.1614f
        -0x40bff2e5    # -0.7502f
        0x3fdb53f8    # 1.7135f
        0x3d1652bd    # 0.0367f
        0x3d1f559b    # 0.0389f
        -0x4273b646    # -0.0685f
        0x3f83c9ef    # 1.0296f
    .end array-data

    :goto_35
    goto/32 :goto_6f

    nop

    nop

    :goto_36
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_37
    sub-float v11, v11, v12

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    add-float v9, v9, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_3a
    const v3, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_3b
    sub-float v3, v0, v1

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

    :goto_3c
    float-to-int v5, v4

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    mul-float v8, v3, v8

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_3f
    sub-float v7, v7, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {v3, v4}, Lcom/ColorTune;->getRgbFromTemperature(D)[F

    move-result-object v3

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const v12, 0x3f19999a    # 0.6f

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_42
    add-float v3, v3, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_43
    div-float v7, v7, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    sub-float v5, v1, v4

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    mul-float v4, v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_46
    new-array v10, v1, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_49
    add-float v4, v7, v8

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    mul-float v3, v3, v4

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_4b
    add-float v7, v7, v4

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

    :goto_4c
    if-eqz v6, :cond_2

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4f

    nop

    nop

    :goto_4d
    add-float v9, v9, v2

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_4e
    add-float v8, v7, v9

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    const v1, 0x33d6bf95    # 1.0E-7f

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    div-float v11, v4, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_52
    sub-float v3, v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_53
    add-float v3, v3, v1

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const v1, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_55
    const v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_56
    mul-float v7, v3, v7

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    sget v1, Lcom/ColorTune;->CCT_WB_intensity:F

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_58
    aput v9, v10, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_59
    const v4, 0x45cb2000    # 6500.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_5a
    const v0, 0x3f854555

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    add-float v3, v3, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_5c
    const v2, 0x3f000000    # 0.5f

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    add-float v9, v9, v3

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    add-int v0, v0, v1

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    aget v9, v3, v0

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_60
    if-le v12, v5, :cond_3

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_74

    nop

    nop

    :goto_61
    mul-float v4, v4, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    mul-float v3, v12, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    float-to-int v6, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_64
    add-float v8, v8, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_65
    const v11, 0x41200000    # 10.0f

    nop

    nop

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_11

    nop

    nop

    :goto_67
    add-float v4, v9, v4

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_68
    float-to-int v5, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_69
    sget v8, Lcom/ColorTune;->WB2:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6a
    const v1, 0x17

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    mul-float v7, v7, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    const v4, 0x41800000    # 16.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_6d
    float-to-double v3, v3

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    aget v7, v3, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_70
    sub-float v9, v9, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_71
    add-float v9, v9, v4

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_72
    const v6, 0x40400000    # 3.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_73
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    const v11, 0x3f000000    # 0.5f

    nop

    nop

    :goto_75
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_76
    const v0, 0x2

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_77
    mul-float v6, v1, v6

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_78
    mul-float v1, v1, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_79
    move-object p0, v10

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_7a
    add-float v8, v8, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop
.end method

.method public static ColorMod([FF)[F
    .locals 14

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_0
    float-to-double v12, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    new-array v9, v1, [F

    nop

    fill-array-data v9, :array_1

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_3
    move-object v1, p0

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

    :goto_4
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_5
    new-array v10, v1, [F

    nop

    fill-array-data v10, :array_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

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

    nop

    :goto_7
    double-to-float v2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v8, v6}, Lcom/ColorTune;->MMulONE([FF)[F

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    invoke-static {v10, v7}, Lcom/ColorTune;->MADD([F[F)[F

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_13

    nop

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move v12, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    move v6, v2

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_10
    const/16 v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_11
    move-object p0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_12
    return-object p0

    nop

    :array_0
    .array-data 4
        0x3e5a1cac    # 0.213f
        0x3e5a1cac    # 0.213f
        0x3e5a1cac    # 0.213f
        0x3f370a3d    # 0.715f
        0x3f370a3d    # 0.715f
        0x3f370a3d    # 0.715f
        0x3d9374bc    # 0.072f
        0x3d9374bc    # 0.072f
        0x3d9374bc    # 0.072f
    .end array-data

    :array_1
    .array-data 4
        0x3f4978d5    # 0.787f
        -0x41a5e354    # -0.213f
        -0x41a5e354    # -0.213f
        -0x40c8f5c3    # -0.715f
        0x3e91eb85    # 0.285f
        -0x40c8f5c3    # -0.715f
        -0x426c8b44    # -0.072f
        -0x426c8b44    # -0.072f
        0x3f6d9168    # 0.928f
    .end array-data

    :array_2
    .array-data 4
        -0x41a5e354    # -0.213f
        0x3e126e98    # 0.143f
        -0x40b6872b    # -0.787f
        -0x40c8f5c3    # -0.715f
        0x3e0f5c29    # 0.14f
        0x3f370a3d    # 0.715f
        0x3f6d9168    # 0.928f
        -0x416f1aa0    # -0.283f
        0x3d9374bc    # 0.072f
    .end array-data

    :array_3
    .array-data 4
        0x3eaaaaaa
        0x3eaaaaaa
        0x3eaaaaaa
        0x3eaaaaaa
        0x3eaaaaaa
        0x3eaaaaaa
        0x3eaaaaaa
        0x3eaaaaaa
        0x3eaaaaaa
    .end array-data

    :goto_13
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move v7, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_16
    double-to-float v1, v1

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_17
    invoke-static {v7, v6}, Lcom/ColorTune;->MADD([F[F)[F

    move-result-object v6

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

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

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1a
    invoke-static {v6, v1}, Lcom/ColorTune;->MMulP2([F[F)[F

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1c
    invoke-static {v9, v7}, Lcom/ColorTune;->MMulONE([FF)[F

    move-result-object v7

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1d
    new-array v8, v1, [F

    nop

    fill-array-data v8, :array_2

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    new-array v5, v1, [F

    nop

    nop

    nop

    nop

    nop

    fill-array-data v5, :array_3

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method

.method public static ColorMod1([F)Lcom/google/googlex/gcam/FloatArray9;
    .locals 14

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    invoke-static {v13, v11}, Lcom/ColorTune;->ColorMod([FF)[F

    move-result-object v0

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_1
    sget v10, Lcom/ColorTune;->pref_satCCT_B:F

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

    :goto_2
    move-object/from16 v13, p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v13}, Lcom/ColorTune;->ArrayToFloatArray9([F)Lcom/google/googlex/gcam/FloatArray9;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_4
    if-nez v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_31

    nop

    :goto_6
    const v12, 0x8

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_7
    const v12, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget v9, Lcom/ColorTune;->pref_global_hue:F

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sget v10, Lcom/ColorTune;->pref_satCCT:F

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_a
    aput v3, v0, v12

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_b
    sget v2, Lcom/ColorTune;->custom_cct_on:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    aget v3, v2, v12

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_d
    sget v11, Lcom/ColorTune;->pref_R_hue:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_e
    invoke-static {v13}, Lcom/ColorTune;->CustomCCT([F)[F

    move-result-object v13

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    :goto_10
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v12, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_12
    aput v3, v0, v12

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v13, v10}, Lcom/ColorTune;->ColorMod([FF)[F

    move-result-object v1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    aget v3, v1, v12

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_15
    aput v3, v0, v12

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v13, v9}, Lcom/ColorTune;->ColorMod([FF)[F

    move-result-object v13

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v12, 0x4

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_30

    nop

    :goto_19
    invoke-static {v2, v10}, Lcom/ColorTune;->CCTSaturation([FF)[F

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v13, v9}, Lcom/ColorTune;->ColorMod([FF)[F

    move-result-object v2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    aget v3, v1, v12

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1c
    aput v3, v0, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sget v10, Lcom/ColorTune;->pref_satCCT_G:F

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_1e
    invoke-static {v13, v10}, Lcom/ColorTune;->CCTSaturation([FF)[F

    move-result-object v13

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1f
    move-object v13, v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_20
    aget v3, v1, v12

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

    :goto_21
    aput v3, v0, v12

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_22
    const v12, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_24
    const v12, 0x3

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_25
    sget v10, Lcom/ColorTune;->pref_satCCT_R:F

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_26
    return-object p0

    nop

    nop

    :goto_27
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_28
    const v1, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_29
    aget v3, v2, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2a
    aput v3, v0, v12

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2b
    sget v9, Lcom/ColorTune;->pref_B_hue:F

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

    :goto_2c
    sget v10, Lcom/ColorTune;->pref_G_hue:F

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    aget v3, v2, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {v0, v10}, Lcom/ColorTune;->CCTSaturation([FF)[F

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_30
    goto/32 :goto_27

    nop

    :goto_31
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_32
    invoke-static {v1, v10}, Lcom/ColorTune;->CCTSaturation([FF)[F

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop
.end method

.method public static CustomCCT([F)[F
    .locals 5

    goto/32 :goto_3f

    nop

    nop

    :goto_0
    aput v0, v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_44

    nop

    nop

    :goto_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz v4, :cond_0

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    aget v0, p0, v2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_6
    cmpl-float v4, v3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz v4, :cond_1

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_1
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_8
    cmpl-float v4, v3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sget v0, Lcom/ColorTune;->pref_customCCT3:F

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v4, :cond_2

    nop

    goto/32 :goto_36

    nop

    :cond_2
    goto/32 :goto_35

    nop

    nop

    :goto_b
    cmpl-float v4, v3, v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    aget v0, p0, v2

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2e

    nop

    nop

    :goto_e
    aput v0, v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_f
    sget v0, Lcom/ColorTune;->pref_customCCT6:F

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x9

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    cmpl-float v4, v3, v0

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    aput v0, v1, v2

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz v4, :cond_3

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_3
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_14
    const v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_16
    sget v0, Lcom/ColorTune;->pref_customCCT5:F

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_17
    aget v0, p0, v2

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_19
    aget v0, p0, v2

    nop

    nop

    :goto_1a
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v2, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1c
    aput v0, v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v2, 0x1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    cmpl-float v4, v3, v0

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_1f
    sget v0, Lcom/ColorTune;->pref_customCCT8:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v2, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_22
    goto/32 :goto_2

    nop

    nop

    :goto_23
    const v2, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_24
    aget v0, p0, v2

    nop

    :goto_25
    goto/32 :goto_1c

    nop

    nop

    :goto_26
    sget v0, Lcom/ColorTune;->pref_customCCT9:F

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-eqz v4, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4

    nop

    nop

    :goto_28
    const v2, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_29
    cmpl-float v4, v3, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2a
    if-eqz v4, :cond_5

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_5
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    sget v0, Lcom/ColorTune;->pref_customCCT4:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-lez v0, :cond_6

    nop

    goto/32 :goto_2

    nop

    :cond_6
    goto/32 :goto_1

    nop

    :goto_2d
    const v1, 0x5

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_2e
    aput v0, v1, v2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2f
    aput v0, v1, v2

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_31
    cmpl-float v4, v3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_32
    aget v0, p0, v2

    nop

    :goto_33
    goto/32 :goto_37

    nop

    nop

    :goto_34
    aput v0, v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_35
    aget v0, p0, v2

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_37
    aput v0, v1, v2

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_38
    if-eqz v4, :cond_7

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_3a

    nop

    nop

    :goto_39
    sget v0, Lcom/ColorTune;->pref_customCCT1:F

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3a
    aget v0, p0, v2

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3c
    aput v0, v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    cmpl-float v4, v3, v0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_3e
    new-array v1, v1, [F

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_3f
    const v0, 0xf

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_40
    const v2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_41
    sget v0, Lcom/ColorTune;->pref_customCCT2:F

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const v2, 0x8

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

    nop

    :goto_43
    return-object v1

    nop

    :goto_44
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_45
    sget v0, Lcom/ColorTune;->pref_customCCT7:F

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_46
    if-eqz v4, :cond_8

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_4a

    nop

    nop

    :goto_47
    cmpl-float v4, v3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_48
    const v2, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_49
    if-eqz v4, :cond_9

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_4a
    aget v0, p0, v2

    nop

    :goto_4b
    goto/32 :goto_2f

    nop

    nop

    nop
.end method

.method public static MADD([F[F)[F
    .locals 12

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v11, 0x2

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1
    add-float v5, v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    const v11, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_16

    nop

    :goto_5
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v11, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    const v11, 0x1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_8
    aget v4, v1, v11

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_9
    const/16 v6, 0x9

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_a
    const v11, 0x3

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v11, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_c
    const v11, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_d
    aget v4, v1, v11

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_e
    move-object p0, v2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_f
    const v11, 0x6

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_10
    aget v3, v0, v11

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_11
    new-array v2, v6, [F

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_12
    aget v4, v1, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_13
    const v11, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_14
    aget v3, v0, v11

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-object p0

    nop

    :goto_16
    goto/32 :goto_2

    nop

    nop

    :goto_17
    add-float v5, v3, v4

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_18
    aget v4, v1, v11

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_19
    aget v3, v0, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_1a
    add-float v5, v3, v4

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_1b
    move-object v0, p0

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    aput v5, v2, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-float v5, v3, v4

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1e
    aput v5, v2, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    aget v3, v0, v11

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_20
    aput v5, v2, v11

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_21
    aput v5, v2, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_23
    aput v5, v2, v11

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

    :goto_24
    add-float v5, v3, v4

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_25
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_26
    add-float v5, v3, v4

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_27
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_28
    aget v3, v0, v11

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_29
    aget v4, v1, v11

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    aput v5, v2, v11

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2b
    aput v5, v2, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2c
    aget v3, v0, v11

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    aget v3, v0, v11

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    aput v5, v2, v11

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    aget v3, v0, v11

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_30
    aput v5, v2, v11

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_31
    move-object v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_32
    add-float v5, v3, v4

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_33
    const v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_34
    aget v3, v0, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    add-float v5, v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    aget v4, v1, v11

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_37
    aget v4, v1, v11

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

    :goto_38
    aget v4, v1, v11

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_39
    add-float v5, v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_3a
    aget v4, v1, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const v0, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop
.end method

.method public static MMulONE([FF)[F
    .locals 10

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    move v1, p1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1
    mul-float v5, v3, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2
    const p1, 0x7

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3
    mul-float v5, v3, v1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_5
    mul-float v5, v3, v1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_6
    mul-float v5, v3, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    aget v3, v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_8
    aget v3, v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    aget v3, v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_a
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_24

    nop

    nop

    :goto_c
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    aput v5, v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    aput v5, v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_10
    aget v3, v0, p1

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

    :goto_11
    goto/32 :goto_c

    nop

    :goto_12
    aput v5, v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_13
    aput v5, v0, p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_14
    aget v3, v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const p1, 0x6

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_16
    mul-float v5, v3, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_17
    const p1, 0x5

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_18
    const p1, 0x0

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

    :goto_19
    const p1, 0x2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1a
    mul-float v5, v3, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1b
    const v1, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    aget v3, v0, p1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    move-object p0, v0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1e
    const p1, 0x3

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

    nop

    nop

    :goto_1f
    mul-float v5, v3, v1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_20
    const p1, 0x4

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_21
    aget v3, v0, p1

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

    nop

    :goto_22
    aget v3, v0, p1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_23
    return-object p0

    nop

    :goto_24
    goto/32 :goto_11

    nop

    nop

    :goto_25
    mul-float v5, v3, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_26
    aput v5, v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_28
    aput v5, v0, p1

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

    :goto_29
    const p1, 0x8

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    aput v5, v0, p1

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

    :goto_2b
    aget v3, v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    mul-float v5, v3, v1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    aput v5, v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2e
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_2f
    move-object v0, p0

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

    :goto_30
    aput v5, v0, p1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static MMulP1([F[F)[F
    .locals 10

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const p1, 0x0

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_1
    const p1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_2
    mul-float v5, v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_66

    nop

    nop

    :goto_5
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    aget v3, v0, p1

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    aget v3, v0, p1

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_8
    aget v4, v1, p1

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_9
    move-object v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_a
    aput v7, v1, p1

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_b
    const p1, 0x0

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_c
    aput v7, v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move-object p0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    const p1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const p1, 0x7

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const p1, 0x8

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    mul-float v7, v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const p1, 0x7

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-float v6, v5, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_15
    const p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    aget v4, v1, p1

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const p1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_18
    aget v3, v0, p1

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_19
    const p1, 0x4

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1a
    mul-float v7, v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    mul-float v6, v3, v4

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_1c
    const p1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_1d
    aput v7, v1, p1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    aget v3, v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-float v6, v5, v6

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_20
    aget v3, v0, p1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    aget v3, v0, p1

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_22
    add-float v6, v5, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_23
    const p1, 0x0

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

    nop

    :goto_24
    aput v7, v1, p1

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    aget v4, v1, p1

    nop

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

    :goto_26
    mul-float v5, v3, v4

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_27
    const p1, 0x2

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_28
    mul-float v5, v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    :goto_29
    const p1, 0x5

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const p1, 0x7

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_2b
    add-float v6, v5, v6

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_2c
    const p1, 0x8

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    mul-float v6, v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_2e
    aget v3, v0, p1

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    aget v3, v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_30
    add-float v6, v5, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    aget v4, v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_32
    aget v3, v0, p1

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_33
    aput v7, v1, p1

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_34
    aget v4, v1, p1

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_35
    mul-float v5, v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_36
    const p1, 0x0

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_37
    const p1, 0x2

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const p1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    aget v3, v0, p1

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const p1, 0x6

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_3b
    const p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_3c
    aget v4, v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const p1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_3e
    aput v7, v1, p1

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    aget v4, v1, p1

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_40
    mul-float v7, v3, v4

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_41
    add-float v7, v6, v7

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_42
    aget v3, v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_43
    mul-float v5, v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_44
    mul-float v5, v3, v4

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

    :goto_45
    aget v3, v0, p1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_46
    aget v4, v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    aget v3, v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_48
    add-float v7, v6, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    aget v3, v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_4a
    aget v4, v1, p1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_4b
    aget v3, v0, p1

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_4c
    mul-float v5, v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_4d
    aget v3, v0, p1

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    const p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    const p1, 0x2

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_50
    const p1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_51
    aget v4, v1, p1

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_52
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    add-float v6, v5, v6

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_54
    aget v3, v0, p1

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_55
    const p1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_56
    add-float v7, v6, v7

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_57
    aget v3, v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    const p1, 0x2

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_59
    aget v4, v1, p1

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    const p1, 0x4

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_5b
    add-float v7, v6, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    aget v3, v0, p1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    const p1, 0x8

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_5e
    const p1, 0x5

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_5f
    mul-float v6, v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_60
    const p1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    add-float v6, v5, v6

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_62
    aget v4, v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_63
    mul-float v5, v3, v4

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

    :goto_64
    const p1, 0x4

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_65
    const p1, 0x0

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_79

    nop

    nop

    :goto_67
    aget v3, v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_68
    mul-float v6, v3, v4

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_69
    add-float v7, v6, v7

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    const p1, 0x5

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_6b
    aput v7, v1, p1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6c
    aget v3, v0, p1

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_6d
    aget v4, v1, p1

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_6e
    mul-float v7, v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    const p1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_70
    const p1, 0x5

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_71
    const p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_72
    mul-float v7, v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_73
    aget v4, v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    const p1, 0x3

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_75
    mul-float v6, v3, v4

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_76
    const p1, 0x2

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_77
    const p1, 0x6

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_79
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    mul-float v7, v3, v4

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_7b
    aget v4, v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    const p1, 0x3

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_7d
    mul-float v6, v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_7e
    const p1, 0x6

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7f
    const p1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_80
    aget v4, v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_81
    add-float v7, v6, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    const p1, 0x5

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    const p1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    :goto_84
    add-float v6, v5, v6

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_85
    aget v3, v0, p1

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    aget v3, v0, p1

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_87
    add-float v7, v6, v7

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    const p1, 0x7

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_89
    const p1, 0x6

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_8a
    aget v4, v1, p1

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

    :goto_8b
    const p1, 0x4

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_8c
    aget v4, v1, p1

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    aget v4, v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    mul-float v7, v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_8f
    aget v4, v1, p1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_90
    const p1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_92
    aget v4, v1, p1

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_93
    aget v4, v1, p1

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_94
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :cond_0
    goto/32 :goto_78

    nop

    :goto_95
    const p1, 0x7

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_96
    add-float v7, v6, v7

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_97
    aget v3, v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_98
    add-float v7, v6, v7

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    aget v4, v1, p1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    const p1, 0x1

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_9b
    mul-float v6, v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_9c
    aget v4, v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    aget v3, v0, p1

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    const p1, 0x3

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    const p1, 0x0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    aget v4, v1, p1

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_a1
    move-object v0, p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    aput v7, v1, p1

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    const p1, 0x6

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_a4
    const p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_a5
    const p1, 0x8

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_a6
    const p1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_a7
    mul-float v7, v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_a8
    aget v3, v0, p1

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_a9
    aput v7, v1, p1

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    mul-float v6, v3, v4

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_ab
    const p1, 0x1

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    mul-float v5, v3, v4

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    aget v4, v1, p1

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    aget v4, v1, p1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_af
    const p1, 0x7

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    mul-float v7, v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    mul-float v6, v3, v4

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_b2
    const p1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    :goto_b3
    const p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    aget v3, v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_b5
    const p1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_b6
    const p1, 0x5

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    add-float v6, v5, v6

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop
.end method

.method public static MMulP2([F[F)[F
    .locals 10

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_0
    const p1, 0x5

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-float v7, v6, v7

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_2
    const p1, 0x7

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_3
    aput v7, v8, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    aget v4, v1, p1

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_6
    add-float v7, v6, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-float v7, v6, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_8
    aget v3, v0, p1

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const p1, 0x7

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_a
    const p1, 0x3

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    mul-float v7, v3, v4

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_c
    mul-float v6, v3, v4

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    aget v3, v0, p1

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_e
    const p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-float v6, v5, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    aput v7, v8, p1

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    mul-float v7, v3, v4

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_12
    aget v3, v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_13
    add-float v7, v6, v7

    nop

    goto/32 :goto_b1

    nop

    nop

    :goto_14
    add-float v6, v5, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_15
    aget v3, v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_16
    mul-float v5, v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_17
    mul-float v7, v3, v4

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const p1, 0x2

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const p1, 0x0

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_1a
    const p1, 0x1

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_1b
    aget v3, v0, p1

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_1c
    add-float v7, v6, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_1d
    const p1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_1e
    add-float v7, v6, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_1f
    mul-float v6, v3, v4

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_20
    const p1, 0x4

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_21
    const p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_22
    aget v3, v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const p1, 0x6

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const p1, 0x6

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const p1, 0x7

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_26
    mul-float v6, v3, v4

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    :goto_27
    add-float v6, v5, v6

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_28
    aget v4, v1, p1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_29
    const p1, 0x4

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_2a
    const p1, 0x6

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2b
    const p1, 0x3

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_2c
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2d
    aget v3, v0, p1

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const p1, 0x8

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_2f
    add-float v6, v5, v6

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_30
    const p1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    aget v3, v0, p1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_32
    aget v4, v1, p1

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_33
    add-float v6, v5, v6

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_34
    const p1, 0x5

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_35
    add-float v7, v6, v7

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    aget v3, v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    mul-float v6, v3, v4

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_38
    aput v7, v8, p1

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_39
    const p1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_3a
    mul-float v7, v3, v4

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_3b
    aget v3, v0, p1

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

    :goto_3c
    aget v4, v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3d
    move-object v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_3e
    mul-float v7, v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const p1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    mul-float v6, v3, v4

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_41
    aget v4, v1, p1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_42
    aget v4, v1, p1

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    mul-float v5, v3, v4

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_44
    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_47
    const p1, 0x8

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const p1, 0x4

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_49
    const p1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    aget v4, v1, p1

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    move-object p0, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_4c
    const p1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    mul-float v7, v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    add-float v6, v5, v6

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4f
    const p1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_50
    const p1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_51
    const p1, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_52
    aget v3, v0, p1

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_53
    mul-float v7, v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_54
    mul-float v7, v3, v4

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_55
    mul-float v6, v3, v4

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_56
    mul-float v6, v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_57
    const p1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_58
    move-object v1, p1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_59
    mul-float v7, v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    aget v4, v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_5b
    aget v4, v1, p1

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    const p1, 0x0

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

    :goto_5d
    aget v4, v1, p1

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_5e
    const p1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_5f
    const p1, 0x6

    nop

    goto/32 :goto_b6

    nop

    nop

    :goto_60
    const p1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_61
    mul-float v5, v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_62
    aget v3, v0, p1

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_63
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_64
    const p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_65
    aget v4, v1, p1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    const p1, 0x6

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_67
    mul-float v5, v3, v4

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_68
    const p1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    const p1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_6a
    const p1, 0x1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6b
    const p1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_6c
    aput v7, v8, p1

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_6d
    aget v4, v1, p1

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    aget v3, v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_6f
    aget v3, v0, p1

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_70
    aput v7, v8, p1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_71
    if-lez v0, :cond_0

    nop

    goto/32 :goto_45

    nop

    :cond_0
    goto/32 :goto_44

    nop

    :goto_72
    aput v7, v8, p1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_73
    new-array v8, v1, [F

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_74
    const p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_75
    aget v3, v0, p1

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_76
    aget v4, v1, p1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_77
    const p1, 0x3

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    mul-float v5, v3, v4

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_79
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    mul-float v5, v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    aget v4, v1, p1

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    aget v3, v0, p1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    aget v3, v0, p1

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    :goto_7e
    aget v4, v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    const p1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_80
    const p1, 0x5

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_81
    add-float v6, v5, v6

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_82
    aget v4, v1, p1

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_83
    add-float v7, v6, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_84
    aget v3, v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_85
    const p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    aget v3, v0, p1

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_87
    mul-float v5, v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_88
    add-float v7, v6, v7

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_89
    const p1, 0x7

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_8a
    mul-float v5, v3, v4

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    aget v4, v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_8c
    aget v3, v0, p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8d
    aget v4, v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_8e
    aget v4, v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_8f
    const p1, 0x2

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_90
    aget v4, v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_91
    aput v7, v8, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_92
    const p1, 0x1

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_93
    const v0, 0xd

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_94
    aget v3, v0, p1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_95
    mul-float v5, v3, v4

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_96
    add-float v6, v5, v6

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

    :goto_97
    const p1, 0x3

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    mul-float v6, v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_99
    aget v3, v0, p1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_9a
    return-object p0

    nop

    nop

    :goto_9b
    goto/32 :goto_46

    nop

    nop

    :goto_9c
    const p1, 0x2

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    const p1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_9e
    const p1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_9f
    aget v4, v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_a0
    aget v4, v1, p1

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_a1
    const p1, 0x7

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    aget v4, v1, p1

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    const p1, 0x4

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    :goto_a4
    aput v7, v8, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    aget v4, v1, p1

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    const p1, 0x0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    add-float v6, v5, v6

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_a8
    aget v4, v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_a9
    const p1, 0x0

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_aa
    const p1, 0x2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_ab
    aget v4, v1, p1

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    const p1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_ad
    aput v7, v8, p1

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_ae
    const p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    mul-float v6, v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_b0
    const p1, 0x1

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_b1
    const p1, 0x4

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b2
    const p1, 0x2

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    aget v4, v1, p1

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_b4
    aget v3, v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    const p1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_b6
    aget v3, v0, p1

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    aget v3, v0, p1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b8
    aget v3, v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_b9
    aget v3, v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static MORDER([F)[F
    .locals 12

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_0
    aget v3, v0, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v11, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_f

    nop

    :goto_3
    aput v3, v0, v11

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    aget v3, v0, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_6
    aput v3, v0, v11

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_7
    const v11, 0x5

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    const v11, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v11, 0x6

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    aget v3, v0, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    aget v3, v0, v11

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_11
    aput v3, v0, v11

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_12
    const v11, 0x6

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    aput v3, v0, v11

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    aget v3, v0, v11

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_16
    const v11, 0x0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_17
    aput v3, v0, v11

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_18
    move-object p0, v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v11, 0x4

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1a
    const v11, 0x8

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1b
    const v11, 0x0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1c
    move-object v0, p0

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1d
    aput v3, v0, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v11, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v11, 0x7

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_20
    const v11, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    aget v3, v0, v11

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_22
    const v11, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_23
    const v1, 0xc

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

    nop

    :goto_24
    aput v3, v0, v11

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

    :goto_25
    const v11, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_26
    const v11, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_27
    aget v3, v0, v11

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_28
    aput v3, v0, v11

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_29
    const v11, 0x5

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const v11, 0x2

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    aget v3, v0, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2d
    aget v3, v0, v11

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    aput v3, v0, v11

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2f
    const v11, 0x2

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
.end method

.method public static clamp(DDD)D
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-wide p0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public static clamp(FFF)F
    .locals 0

    goto/32 :goto_2

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
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

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

    :goto_2
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public static clamp(III)I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

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
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    nop

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
    return p0

    nop

    nop

    nop
.end method

.method public static getRgbFromTemperature(D)[F
    .locals 13

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1
    move v7, v5

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sub-double/2addr p0, v3

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_3
    const-wide v7, 0x40749b2dfcd49634L    # 329.698727446

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_4
    goto/16 :goto_49

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_6
    if-gez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    mul-double/2addr v2, v8

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_49

    nop

    nop

    :goto_9
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_1b

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_e
    move-wide v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_f
    aput v7, p0, v6

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_10
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-wide v10, -0x404cab0f1052d94dL    # -0.0755148492

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_13
    cmpg-double v0, p0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_14
    div-double/2addr p0, v0

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-wide/high16 v3, 0x404e000000000000L    # 60.0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x1a

    nop

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

    :goto_17
    const/16 v5, 0xff

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sub-double v2, p0, v3

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_19
    const-wide v2, 0x408f400000000000L    # 1000.0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v7, v6, v5}, Lcom/ColorTune;->clamp(III)I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-wide v8, 0x407201f4680909dcL    # 288.1221695283

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    mul-double/2addr v8, v2

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    mul-double/2addr v9, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v0, 0x14

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static/range {v0 .. v5}, Lcom/ColorTune;->clamp(DDD)D

    move-result-wide p0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_22
    const/4 p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_23
    const-wide v2, 0x4058de21a12b8afeL    # 99.4708025861

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    sub-double/2addr p0, v0

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {v2, v6, v5}, Lcom/ColorTune;->clamp(III)I

    move-result v2

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_26
    double-to-int v7, v9

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_28
    double-to-int v2, v2

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    new-array p0, p0, [F

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2b
    if-lez v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2c
    double-to-int p0, p0

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_2d
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_10

    nop

    :goto_2e
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 p0, 0x3

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_30
    int-to-float v5, v5

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_31
    mul-double/2addr p0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_32
    cmpl-double v0, p0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_33
    const-wide v0, 0x406150914111eaa4L    # 138.5177312231

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_4
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    move v5, v6

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

    :goto_36
    const-wide v2, 0x406423d3809e615aL    # 161.1195681661

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_37
    const/4 v6, 0x0

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_38
    sub-double v9, p0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_39
    goto/16 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    double-to-int v2, v8

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    aput v2, p0, p1

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_3d
    const-wide v0, 0x407310b778951748L    # 305.0447927307

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3f
    int-to-float v2, v2

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_40
    return-object p0

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_42
    sub-double/2addr v8, v2

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_43
    int-to-float v7, v7

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_44
    cmpg-double v2, p0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_45
    const-wide v4, 0x40e3880000000000L    # 40000.0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_48
    invoke-static {p0, v6, v5}, Lcom/ColorTune;->clamp(III)I

    move-result v5

    nop

    :goto_49
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_4a
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_4b
    const-wide v11, -0x403ef3257dc83fbbL    # -0.1332047592

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_4c
    aput v5, p0, p1

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    const-wide v0, 0x4050800000000000L    # 66.0

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    const/4 p1, 0x2

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_4f
    const-wide/high16 v0, 0x4033000000000000L    # 19.0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop
.end method
