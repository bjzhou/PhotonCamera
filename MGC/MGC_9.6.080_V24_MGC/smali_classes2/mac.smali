.class public Lmac;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lsdb;

.field private static final b:Ljava/util/EnumMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lmac;->a:Lsdb;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
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

    :goto_3
    const v0, 0xc

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

    :goto_4
    new-instance v0, Ljava/util/EnumMap;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_5
    const v1, 0xe

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

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    sput-object v0, Lmac;->b:Ljava/util/EnumMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    const-class v1, Lpog;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_10
    const-string v0, "mac"

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;Lpog;)Lpck;
    .locals 18

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v3, v4, Lmab;->c:Lpck;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v0, Lmaa;->a:Lpck;

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v7, Lscz;

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v14, v13, Lpck;->a:I

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget v8, v7, Lpck;->a:I

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_5
    return-object v0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eq v7, v6, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_8
    if-eq v7, v8, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    mul-int/2addr v7, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_a
    iput-object v7, v4, Lmab;->b:Lpck;

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

    :goto_b
    check-cast v3, Lpck;

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/16 v8, 0x103a

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    :goto_d
    add-int/lit8 v8, v8, -0x1

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

    :goto_e
    check-cast v5, Lpck;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v5, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    :cond_2
    goto/32 :goto_6e

    nop

    nop

    :goto_10
    div-float v12, v8, v7

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_11
    goto/16 :goto_4d

    nop

    :goto_12
    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_13
    new-instance v5, Ldqy;

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v8, v9}, Lpck;->equals(Ljava/lang/Object;)Z

    move-result v8

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

    :goto_15
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    nop

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

    :goto_16
    goto :goto_1d

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-object v3, v4, Lmab;->c:Lpck;

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v4, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x3

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

    :goto_1b
    if-lt v11, v10, :cond_3

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1c
    add-int/lit8 v7, v7, -0x1

    nop

    nop

    :goto_1d
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1f
    goto/32 :goto_91

    nop

    nop

    :goto_20
    move-object v3, v9

    nop

    :goto_21
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_23
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_24
    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    :goto_25
    const-string v3, "x"

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

    nop

    nop

    :goto_26
    rem-int v0, v0, v1

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    sget-object v3, Lmac;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    :goto_28
    const/16 v5, 0x103b

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_29
    if-nez v3, :cond_4

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_4
    goto/32 :goto_9c

    nop

    nop

    :goto_2a
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

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

    :goto_2b
    if-nez v3, :cond_5

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :cond_5
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto :goto_32

    nop

    :goto_2d
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {v3, v5}, Lmac;->c(Ljava/util/List;I)I

    move-result v5

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

    :goto_2f
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_30
    iget-object v5, v4, Lmab;->a:Lpck;

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/16 :goto_6

    nop

    :goto_32
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_33
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    int-to-float v7, v7

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

    :goto_35
    iget-object v0, v2, Lmab;->a:Lpck;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    :goto_36
    invoke-interface {v3, v5}, Lscz;->M(I)Lsdo;

    move-result-object v3

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

    :goto_37
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-nez v7, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const/16 v9, 0x1039

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_bc

    nop

    nop

    :goto_3c
    iput-object v7, v4, Lmab;->b:Lpck;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_3d
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v7}, Lscs;->c()Lsdo;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3f
    const/4 v8, 0x1

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

    :goto_40
    iput-object v3, v4, Lmab;->b:Lpck;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v0, v2, Lmab;->b:Lpck;

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const/high16 v8, 0x3e800000    # 0.25f

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_43
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_44
    float-to-int v5, v5

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_45
    if-eq v3, v6, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_7
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_46
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

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

    :goto_47
    iput-object v5, v4, Lmab;->b:Lpck;

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

    :goto_48
    goto/16 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_4a
    goto/16 :goto_99

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_4c
    iput-object v3, v4, Lmab;->c:Lpck;

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_74

    nop

    nop

    :goto_4e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    check-cast v7, Lpck;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_50
    new-instance v9, Ljava/util/ArrayList;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    goto/16 :goto_32

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_53
    const-string v9, "Exactly three supported resolutions."

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_54
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_55
    iget v7, v5, Lpck;->a:I

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_56
    iget-object v0, v2, Lmab;->a:Lpck;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_57
    cmpg-double v12, v14, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_58
    const-string v5, "Only one supported resolution."

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    const-string v3, "small"

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_5a
    array-length v3, v3

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

    :goto_5b
    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_5c
    check-cast v3, Lpck;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_5d
    int-to-float v5, v7

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    const/4 v6, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_5f
    if-lt v5, v8, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_8
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_60
    invoke-static/range {p0 .. p0}, Lolx;->aH(Ljava/lang/String;)Lpck;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_61
    mul-float/2addr v7, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_63
    move-object/from16 v2, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_64
    check-cast v7, Lscz;

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_65
    check-cast v2, Lmab;

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    check-cast v3, Lpck;

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

    :goto_67
    iput-object v7, v4, Lmab;->a:Lpck;

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_68
    if-nez v0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_69
    if-lez v0, :cond_a

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    :cond_a
    goto/32 :goto_a3

    nop

    :goto_6a
    check-cast v3, Lscz;

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_6b
    check-cast v8, Lpck;

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_6c
    goto/32 :goto_a4

    nop

    nop

    :goto_6d
    invoke-virtual {v3, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_bd

    nop

    nop

    :goto_6e
    invoke-virtual {v4, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

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

    :goto_70
    int-to-float v8, v8

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

    nop

    :goto_71
    iput-object v3, v4, Lmab;->c:Lpck;

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :goto_72
    float-to-double v14, v12

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_73
    invoke-interface {v7, v9}, Lscz;->M(I)Lsdo;

    move-result-object v7

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

    :goto_74
    sget-object v3, Lmac;->b:Ljava/util/EnumMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_75
    invoke-interface {v7, v8}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-interface {v3, v5}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    div-float/2addr v14, v15

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    const/high16 v7, 0x3f000000    # 0.5f

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_79
    const-wide v16, 0x3f847ae147ae147bL    # 0.01

    nop

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

    :goto_7a
    iget v15, v13, Lpck;->b:I

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-interface {v7, v9}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_7c
    const/16 v7, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_7d
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_7e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7f
    iget v7, v7, Lpck;->b:I

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_80
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

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

    :goto_81
    goto/16 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_82
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_83
    if-eqz v3, :cond_b

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_85
    const-string v8, "Only two supported resolutions."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_86
    sget-object v7, Lmac;->a:Lsdb;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_87
    check-cast v7, Lpck;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_88
    const-string v3, "large"

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

    :goto_89
    int-to-float v15, v15

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_8a
    if-ltz v12, :cond_c

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_c
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_8b
    new-instance v4, Lmab;

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_8d
    sget-object v7, Lmac;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    :goto_8e
    const v0, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_8f
    new-instance v3, Ljava/util/ArrayList;

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

    :goto_90
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_91
    add-int/lit8 v11, v11, 0x1

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_92
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

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

    nop

    :goto_93
    sub-float/2addr v14, v12

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

    :goto_94
    invoke-direct {v5, v7}, Ldqy;-><init>(I)V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_95
    if-eqz v1, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_31

    nop

    nop

    :goto_96
    iget-object v3, v4, Lmab;->a:Lpck;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_97
    int-to-float v14, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_98
    move v11, v5

    nop

    nop

    nop

    nop

    :goto_99
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_9a
    if-ge v7, v6, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_e
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    iget-object v0, v2, Lmab;->c:Lpck;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_9d
    const-string v3, "medium"

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    :goto_9e
    invoke-static {v3, v7}, Lmac;->c(Ljava/util/List;I)I

    move-result v7

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_9f
    if-nez v3, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_a0
    move-object/from16 v0, p0

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    const-string v3, "1836x3264"

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    if-nez v8, :cond_10

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_46

    nop

    nop

    :goto_a3
    goto/32 :goto_af

    nop

    nop

    nop

    :goto_a4
    goto/32 :goto_a0

    nop

    nop

    :goto_a5
    iget-object v7, v4, Lmab;->a:Lpck;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a6
    invoke-virtual {v3}, Lscs;->c()Lsdo;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_a7
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_a8
    invoke-interface {v7, v8}, Lscz;->M(I)Lsdo;

    move-result-object v7

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_aa
    return-object v0

    nop

    nop

    :goto_ab
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_ac
    mul-float/2addr v5, v8

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

    :goto_ad
    float-to-int v7, v7

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_ae
    return-object v0

    nop

    nop

    nop

    :goto_af
    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_b0
    invoke-direct {v4}, Lmab;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

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

    :goto_b2
    goto/16 :goto_be

    nop

    :goto_b3
    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_b4
    goto/16 :goto_4d

    nop

    :goto_b5
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_b6
    move-object/from16 v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_b7
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    check-cast v13, Lpck;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b9
    check-cast v7, Lpck;

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_ba
    invoke-virtual {v7}, Lscs;->c()Lsdo;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_bb
    iget v5, v5, Lpck;->b:I

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_bc
    sget-object v4, Lmac;->b:Ljava/util/EnumMap;

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

    :goto_bd
    move-object v2, v4

    nop

    nop

    :goto_be
    goto/32 :goto_22

    nop

    nop

    nop
.end method

.method public static b(Lpog;)Ljava/lang/String;
    .locals 2

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2
    if-ne v0, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    :goto_3
    const/4 v1, 0x1

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

    :goto_4
    sget-object p0, Lcom/google/android/apps/camera/ui/captureframe/UrAR/NrBoRltj;->GyriqiGHmBCJCO:Ljava/lang/String;

    nop

    :goto_5
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_5

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    :goto_8
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_5

    nop

    :goto_a
    goto/32 :goto_1c

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

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

    :goto_c
    const-string p0, "pref_camera_picturesize_back_key"

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

    :goto_d
    goto/32 :goto_14

    nop

    :goto_e
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

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

    :goto_10
    if-nez v0, :cond_1

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lpog;->ordinal()I

    move-result v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_12
    sget-object v0, Lmac;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-object p0

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_16
    invoke-interface {v0, v1, p0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast v0, Lscz;

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

    :goto_18
    const-string v1, "Unsupported facing value: %s"

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_19
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    :goto_1b
    const/16 v1, 0x103c

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

    :goto_1c
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1d
    goto/32 :goto_e

    nop

    nop
.end method

.method private static c(Ljava/util/List;I)I
    .locals 5

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move v2, v4

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

    :goto_1
    move v2, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    move v1, v0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sub-int/2addr v4, p1

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

    :goto_5
    goto/16 :goto_14

    nop

    nop

    :goto_6
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_7
    move v1, v0

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lt v3, v2, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

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

    :goto_b
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x9

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

    :goto_f
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_10
    move v4, v3

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_11
    check-cast v3, Lpck;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_12
    iget v4, v3, Lpck;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    move v4, v2

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_16
    if-lt v3, v2, :cond_1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_17
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1e

    nop

    nop

    :goto_19
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1a
    if-lt v0, v3, :cond_2

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1b
    const v1, 0x7fffffff

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1c
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1d
    mul-int/2addr v4, v3

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_c

    nop

    :goto_1f
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    :goto_20
    iget v3, v3, Lpck;->b:I

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_21
    const/4 v0, 0x0

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

    :goto_22
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_24
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method
