.class public Lcom/NoiseModels;
.super Ljava/lang/Object;
.source "NoiseModels.java"


# static fields
.field public static UserNM:I

.field public static UserNMCoeff:F

.field public static User_OFF:[Landroid/util/Pair;

.field public static User_SC:[Landroid/util/Pair;

.field public static showNM:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 6

    goto/32 :goto_45

    nop

    nop

    :goto_0
    invoke-static {v1, p1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v2, 0x0

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_3
    if-eqz v2, :cond_0

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    aput-object v1, v0, v2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_5
    if-eqz v4, :cond_1

    nop

    nop

    goto/32 :goto_3b

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

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

    :goto_9
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_a
    const-string v3, "dXNlcl9ubV9iMF9rZXk"

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

    :goto_b
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v3, p1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v3

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

    :goto_d
    const-string v3, "dXNlcl9ubV9kMl9rZXk"

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

    :goto_e
    sput v5, Lcom/NoiseModels;->UserNMCoeff:F

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_f
    const-string v5, "dXNlcl9ubV9jb2VmZl9rZXk"

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v1, p1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_11
    const-string v3, "dXNlcl9ubV9iMV9rZXk"

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_12
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_13
    if-eqz v4, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_14
    aput-object v1, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_15
    invoke-static {v1, v2, v3, v4}, Lcom/NoiseModels;->a(DD)Landroid/util/Pair;

    move-result-object v1

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_16
    const-string v3, "dXNlcl9ubV9kMV9rZXk"

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_18
    invoke-static {v1, v2, v3, v4}, Lcom/NoiseModels;->a(DD)Landroid/util/Pair;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_19
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1b
    const-string v1, "dXNlcl9ubV9hM19rZXk"

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v0, 0x4

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_1d
    invoke-virtual {v5}, Ljava/lang/Double;->floatValue()F

    move-result v5

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_20
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_21
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_22
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

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

    :goto_24
    invoke-static {v3, p1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

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

    :goto_26
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_28
    const-string v1, "dXNlcl9ubV9jM19rZXk"

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v0, 0x4

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_2a
    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_2c
    new-array v0, v0, [Landroid/util/Pair;

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_2d
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-eqz v4, :cond_3

    nop

    nop

    goto/32 :goto_3b

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const-string v1, "dXNlcl9ubV9hMl9rZXk"

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {v1, v2, v3, v4}, Lcom/NoiseModels;->a(DD)Landroid/util/Pair;

    move-result-object v1

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_31
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

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

    :goto_32
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const-string v0, "dXNlcl9ubV9wdGhjcl9rZXk"

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_35
    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_36
    invoke-static {v1, v2, v3, v4}, Lcom/NoiseModels;->a(DD)Landroid/util/Pair;

    move-result-object v1

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {v5, p1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_38
    const-string v1, "dXNlcl9ubV9jMV9rZXk"

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    aput-object v1, v0, v2

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_3a
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_70

    nop

    nop

    nop

    :goto_3c
    if-eqz v4, :cond_4

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {v1, p1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-static {v1, p1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_42
    sput-object v0, Lcom/NoiseModels;->User_OFF:[Landroid/util/Pair;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_43
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_63

    nop

    :goto_44
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_45
    const v0, 0x1

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const-string v1, "dXNlcl9ubV9hMF9rZXk"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_47
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_48
    invoke-static {v1, p1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_49
    invoke-static {v1, p1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4b
    if-nez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1c

    nop

    nop

    :goto_4c
    const v1, 0x1e

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4d
    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_50
    if-eqz v2, :cond_7

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_52
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    sput-object v0, Lcom/NoiseModels;->User_SC:[Landroid/util/Pair;

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

    :goto_55
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

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

    :goto_56
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    aput-object v1, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_5b
    if-eqz v4, :cond_8

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :cond_8
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-static {v0, p1}, Lcom/a;->ad_mb(Ljava/lang/Object;I)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-static {v3, p1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v3

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

    nop

    :goto_5e
    if-eqz v2, :cond_9

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-static {v3, p1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_60
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_61
    if-eqz v4, :cond_a

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_62
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

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

    :goto_63
    goto/32 :goto_66

    nop

    nop

    :goto_64
    goto/32 :goto_90

    nop

    nop

    :goto_65
    return-void

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_67
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_68
    new-array v0, v0, [Landroid/util/Pair;

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_69
    invoke-static {v1, v2, v3, v4}, Lcom/NoiseModels;->a(DD)Landroid/util/Pair;

    move-result-object v1

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_6a
    invoke-static {v1, v2, v3, v4}, Lcom/NoiseModels;->a(DD)Landroid/util/Pair;

    move-result-object v1

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

    :goto_6b
    aput-object v1, v0, v2

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_6c
    invoke-static {v3, p1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v3

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

    :goto_6d
    if-eqz v4, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_6e
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_64

    nop

    :goto_70
    sput v5, Lcom/NoiseModels;->UserNM:I

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_71
    invoke-static {v3, p1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_72
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_73
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_74
    if-eqz v2, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    if-eqz v2, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_2d

    nop

    nop

    :goto_76
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_77
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

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

    :goto_78
    invoke-static {v1, p1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_79
    if-eqz v4, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_7a
    aput-object v1, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_7b
    invoke-static {v1, v2, v3, v4}, Lcom/NoiseModels;->a(DD)Landroid/util/Pair;

    move-result-object v1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-static {v1, v2, v3, v4}, Lcom/NoiseModels;->a(DD)Landroid/util/Pair;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_7d
    const-string v3, "dXNlcl9ubV9kM19rZXk"

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_7e
    invoke-static {v3, p1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_80
    const-string v3, "dXNlcl9ubV9kMF9rZXk"

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_82
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_83
    aput-object v1, v0, v2

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_84
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_85
    aput-object v1, v0, v2

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_86
    const-string v1, "dXNlcl9ubV9jMl9rZXk"

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

    :goto_87
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    invoke-static {v3, p1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_89
    const-string v3, "dXNlcl9ubV9iM19rZXk"

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

    :goto_8a
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_8b
    const-string v1, "dXNlcl9ubV9jMF9rZXk"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    if-eqz v2, :cond_f

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_8d
    const-string v3, "dXNlcl9ubV9iMl9rZXk"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    const-string v1, "dXNlcl9ubV9hMV9rZXk"

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_91
    invoke-static {v1, p1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_92
    if-eqz v2, :cond_10

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_84

    nop

    nop

    nop

    :goto_93
    if-eqz v2, :cond_11

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :cond_11
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    nop

    nop

    goto/32 :goto_7b

    nop

    nop
.end method

.method public static NOISE_MODEL(Lpnu;Lpro;)Ljava/lang/Object;
    .locals 9

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, v4}, Lpnu;->o(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1
    mul-float/2addr v1, v5

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sub-float/2addr v1, v4

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    if-nez v4, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_0
    goto/32 :goto_32

    nop

    nop

    :goto_4
    return-object v3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v4, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v4, Landroid/util/Pair;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_MAX_ANALOG_SENSITIVITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

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

    :goto_9
    goto/16 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_24

    nop

    nop

    :goto_b
    invoke-interface {p0, v4}, Lpnu;->o(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_d
    const/4 v8, 0x4

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

    :goto_e
    const v0, 0xa

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

    nop

    :goto_f
    if-lt v2, v8, :cond_1

    nop

    goto/32 :goto_2d

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    :goto_10
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_36

    nop

    :goto_11
    if-eqz v4, :cond_3

    nop

    goto/32 :goto_5

    nop

    :cond_3
    goto/32 :goto_2e

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast v4, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_14
    int-to-float v1, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/high16 v4, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_16
    sget v5, Lcom/NoiseModels;->UserNMCoeff:F

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_17
    sget-object v5, Lcom/NoiseModels;->User_SC:[Landroid/util/Pair;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_18
    invoke-static {v2, v1, v5}, Lcom/NoiseModels;->a(II[Landroid/util/Pair;)D

    move-result-wide v6

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1a
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

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

    nop

    :goto_1b
    add-float/2addr v1, v4

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1c
    const v1, 0xb

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    float-to-int v1, v1

    nop

    nop

    nop

    nop

    .local v1, "v1":I
    :goto_1e
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v3}, Lcom/NoiseModels;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_20
    cmpl-float v4, v5, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_22
    new-array v3, v8, [Landroid/util/Pair;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_37

    nop

    nop

    :goto_25
    sget-object v6, Lcom/NoiseModels;->User_OFF:[Landroid/util/Pair;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_26
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

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

    nop

    :goto_27
    invoke-interface {p1, v4}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_28
    check-cast v4, Ljava/lang/Integer;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_29
    invoke-interface {p1, v4}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_2a
    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

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

    nop

    :goto_2b
    check-cast v4, Landroid/util/Range;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_2c
    check-cast v3, [Landroid/util/Pair;

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2e
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SENSOR_NOISE_PROFILE:Landroid/hardware/camera2/CaptureResult$Key;

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

    :goto_2f
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_32
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_33
    aput-object v4, v3, v2

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

    :goto_34
    invoke-static {v2, v1, v0, v6}, Lcom/NoiseModels;->b(III[Landroid/util/Pair;)D

    move-result-wide v6

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

    :goto_35
    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_38
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_39
    sget v4, Lcom/NoiseModels;->UserNM:I

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3a
    int-to-float v4, v4

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop
.end method

.method static a(II[Landroid/util/Pair;)D
    .locals 10

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_1
    const v1, 0x1c

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

    :goto_2
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

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

    :goto_3
    move-wide v2, v6

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

    :goto_4
    add-double v2, v8, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    aget-object v4, p2, p0

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

    :goto_6
    aget-object v4, p2, p0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_8
    const-wide/16 v6, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    cmpl-double v4, v2, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_a
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    :goto_c
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    mul-double v8, v4, v0

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

    nop

    :goto_e
    int-to-double v4, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_13

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_11
    check-cast v4, Ljava/lang/Double;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_12
    goto :goto_16

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    check-cast v4, Ljava/lang/Double;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_15
    if-gez v4, :cond_1

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_1
    :goto_16
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_18
    return-wide v2

    nop

    nop

    :goto_19
    goto/32 :goto_3

    nop

    nop

    :goto_1a
    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1b
    const v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method static a(DD)Landroid/util/Pair;
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    const v1, 0x14

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Landroid/util/Pair;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

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

    :goto_7
    const v0, 0x4

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

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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

    :goto_b
    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method static b(III[Landroid/util/Pair;)D
    .locals 12

    goto/32 :goto_28

    nop

    nop

    :goto_0
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

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

    :goto_1
    mul-double v10, v4, v6

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_2
    cmpl-double v8, v8, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_4
    return-wide v2

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_8
    const-wide/16 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_9
    int-to-double v8, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_a
    add-double v2, v8, v10

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

    :goto_b
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_1d

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    div-double v6, v8, v10

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_11
    check-cast v8, Ljava/lang/Double;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_e

    nop

    :goto_13
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_15
    check-cast v8, Ljava/lang/Double;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_16
    mul-double/2addr v8, v10

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_17
    mul-double/2addr v10, v6

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_18
    int-to-double v8, p1

    nop

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

    :goto_19
    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

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

    :goto_1b
    int-to-double v10, p1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1c
    if-gez v8, :cond_1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_1
    :goto_1d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const-wide/16 v2, 0x0

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

    :goto_1f
    aget-object v8, p3, p0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_20
    int-to-double v10, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_21
    cmpl-double v8, v2, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_22
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_23
    int-to-double v10, p2

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-gez v8, :cond_2

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

    :cond_2
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    aget-object v8, p3, p0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    div-double/2addr v8, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_27
    mul-double/2addr v8, v0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const v0, 0x6

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

    :goto_29
    const v1, 0x1

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

    :goto_2a
    int-to-double v8, p1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static j(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    goto/32 :goto_25

    nop

    nop

    :goto_0
    const-wide/16 v7, 0x0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_1
    aget-object v2, p0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_4
    new-array v10, v0, [Landroid/util/Pair;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_13

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_8
    check-cast v5, Ljava/lang/Double;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_9
    cmpl-double v7, v3, v5

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-wide v5, 0x1

    nop

    :goto_b
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v2, Landroid/util/Pair;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_e
    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    const-wide/16 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v9, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_23

    nop

    nop

    :goto_13
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_14
    array-length v0, p0

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

    :goto_15
    if-lt v1, v0, :cond_2

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_16
    invoke-static {v3, v4, v5, v6}, Lcom/NoiseModels;->a(DD)Landroid/util/Pair;

    move-result-object v7

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

    :goto_17
    check-cast p0, [Landroid/util/Pair;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

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

    :goto_19
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_3

    nop

    nop

    :goto_1d
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-eqz v7, :cond_3

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1f
    aput-object v7, v10, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_20
    const-wide v3, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return-object v10

    nop

    nop

    :goto_23
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_24
    check-cast v3, Ljava/lang/Double;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const v0, 0x5

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_26
    cmpl-double v9, v5, v7

    nop

    goto/32 :goto_10

    nop

    nop

    nop
.end method

.method public static showNM([Landroid/util/Pair;I)V
    .locals 7

    goto/32 :goto_3b

    nop

    nop

    :goto_0
    const-string v5, "R - "

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v1, Landroid/util/Pair;

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

    :goto_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast v5, Ljava/lang/Double;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_74

    nop

    nop

    :goto_9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_b
    const-string v5, "\n"

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_f
    const-string v5, "\n"

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_7c

    nop

    nop

    :goto_11
    add-double v0, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_12
    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_14
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_35

    nop

    nop

    :goto_16
    aget-object v2, p0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_17
    const-string v5, "G - "

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_18
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_19
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const-string v5, "\n"

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_1b
    check-cast v1, Ljava/lang/Double;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_1c
    goto/16 :goto_25

    nop

    nop

    :pswitch_0
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_21
    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_24
    sput-object v4, Lcom/NoiseModels;->showNM:Ljava/lang/String;

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_26
    check-cast v3, Ljava/lang/Double;

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    nop

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

    nop

    :goto_29
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    nop

    packed-switch p1, :pswitch_data_0

    goto/32 :goto_2f

    nop

    nop

    :goto_2a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_2b
    new-instance v4, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto :goto_25

    nop

    nop

    :pswitch_1
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    return-void

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch

    :goto_2e
    goto/32 :goto_45

    nop

    nop

    :goto_2f
    return-void

    nop

    nop

    :pswitch_2
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_30
    aget-object v1, p0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_31
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const-string v5, "\n"

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_36
    const-string v5, "\n"

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_37
    const-string v5, "G - "

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_38
    check-cast v3, Ljava/lang/Double;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_39
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_3a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const v0, 0x9

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

    :goto_3c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_49

    nop

    nop

    :goto_3e
    const-string v5, "\n"

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_3f
    const-string v5, "\n"

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_40
    goto/16 :goto_25

    nop

    :pswitch_3
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_41
    const/4 v2, 0x2

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

    :goto_42
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_43
    new-instance v4, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_44
    const-string v5, "\n"

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_6f

    nop

    :goto_46
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_48
    check-cast v0, Ljava/lang/Double;

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

    :goto_49
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_4a
    const-string v5, "\n"

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

    :goto_4b
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4a

    nop

    nop

    :goto_4c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_51
    add-double v1, v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    const-string v5, "B - "

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_55
    const-string v5, "G - "

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

    :goto_56
    const-string v5, "R - "

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_57
    check-cast v0, Landroid/util/Pair;

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

    nop

    :goto_58
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    nop

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

    :goto_5b
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    check-cast v3, Landroid/util/Pair;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_7d

    nop

    nop

    :goto_5f
    const-string v5, "R - "

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_60
    const-string v5, "G - "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_61
    sput-object v4, Lcom/NoiseModels;->showNM:Ljava/lang/String;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    check-cast v2, Ljava/lang/Double;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_63
    const-string v5, "\n"

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_64
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_65
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_66
    aget-object v0, p0, v0

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_67
    add-double v2, v2, v4

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_69
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    const/4 v3, 0x3

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    const-string v5, "G - "

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6d
    const-string v5, "\n"

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

    :goto_6e
    goto/32 :goto_2e

    nop

    nop

    :goto_6f
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_70
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_71
    const-string v5, "B - "

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    aget-object v3, p0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    const-string v5, "R - "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_75
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_76
    const/4 v0, 0x0

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_77
    const-string v5, "\n"

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

    :goto_78
    const-string v5, "G - "

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

    :goto_79
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_7a
    sput-object v4, Lcom/NoiseModels;->showNM:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    const-string v5, "G - "

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7e
    check-cast v4, Ljava/lang/Double;

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_7f
    const-string v5, "B - "

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_80
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_81
    const-string v5, "\n"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_82
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_83
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_84
    const-string v5, "\n"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_85
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_87
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_88
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_6c

    nop

    nop

    :goto_89
    const-string v5, "G - "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_8a
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_8b
    add-double v3, v3, v5

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    check-cast v2, Landroid/util/Pair;

    nop

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

    :goto_8d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    const-string v5, "\n"

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_8f
    check-cast v2, Ljava/lang/Double;

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_90
    const-string v5, "\n"

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    const-string v5, "B - "

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

    :goto_92
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_93
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_94
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_95
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :cond_0
    goto/32 :goto_6e

    nop

    :goto_96
    sput-object v4, Lcom/NoiseModels;->showNM:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_97
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_98
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_99
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9a
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method
