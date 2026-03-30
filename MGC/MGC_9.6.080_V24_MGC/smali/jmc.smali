.class public final Ljmc;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static a:Lmhz;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    goto/32 :goto_0

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
.end method

.method public static a(Lfhg;)Lmhz;
    .locals 22

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_0
    if-lt v5, v6, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_0
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_1
    cmpl-double v8, v12, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_2
    cmpg-double v4, v14, v20

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    int-to-double v12, v4

    nop

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

    :goto_4
    move-object/from16 v18, v1

    nop

    goto/32 :goto_e4

    nop

    nop

    :goto_5
    cmpl-double v7, v3, v0

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    aput v9, v0, v4

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_7
    const v1, 0x1f

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

    :goto_8
    check-cast v10, Lfhs;

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_85

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-wide v0, 0x3f9eb851eb851eb8L    # 0.03

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int/lit8 v5, v5, 0x1

    nop

    :goto_10
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-ltz v4, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    :cond_1
    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_13
    move-object/from16 v19, v0

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_14
    add-int/lit16 v8, v8, -0xbb8

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_15
    move-wide v5, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_16
    check-cast v1, Lfhs;

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

    :goto_17
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_18
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_19
    goto/16 :goto_c0

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_b5

    nop

    nop

    :goto_1b
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_d

    nop

    nop

    :goto_1c
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-wide v9, 0x3f9eb851eb851eb8L    # 0.03

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_1e
    move-wide/from16 v18, v9

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast v4, Lfhs;

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    :goto_20
    invoke-virtual/range {v16 .. v16}, Lfhs;->b()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v3}, Lfhs;->b()I

    move-result v3

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_a2

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v6}, Lfhs;->a()I

    move-result v6

    nop

    goto/32 :goto_dd

    nop

    nop

    :goto_25
    add-int/lit8 v4, v4, 0x1

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_26
    if-lt v4, v6, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_27
    sub-double/2addr v14, v7

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-lt v7, v8, :cond_3

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    :goto_29
    if-gez v8, :cond_4

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_2a
    goto/16 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_2d
    const v0, 0x1c

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v8}, Lfhs;->b()I

    move-result v8

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2f
    div-double/2addr v14, v0

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_30
    int-to-double v14, v4

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    check-cast v16, Lfhs;

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

    :goto_32
    aput v8, v0, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_33
    move-wide v5, v12

    nop

    nop

    :goto_34
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    :goto_38
    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    int-to-double v10, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_3a
    move-object/from16 v19, v0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3b
    cmpg-double v4, v12, v5

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_3d
    if-lt v13, v14, :cond_5

    nop

    goto/32 :goto_d9

    nop

    nop

    :cond_5
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v0, v0, Lfhg;->c:Ljava/util/ArrayList;

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

    :goto_40
    if-lt v3, v6, :cond_6

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    :cond_6
    goto/32 :goto_ed

    nop

    nop

    nop

    :goto_41
    const-wide v16, 0x3f9eb851eb851eb8L    # 0.03

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

    :goto_42
    add-double/2addr v7, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    :goto_43
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

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

    :goto_44
    move-wide/from16 v9, v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    :goto_45
    if-ltz v8, :cond_7

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const-wide/high16 v5, 0x4094000000000000L    # 1280.0

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

    :goto_47
    goto/16 :goto_97

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_49
    if-eqz v1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    :cond_8
    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    if-ltz v4, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_4b
    aget v3, v0, v4

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_4c
    aget v4, v19, v3

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    int-to-double v12, v4

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    const-wide v10, -0x400aaaaaaaaaaaabL    # -1.3333333333333333

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

    nop

    :goto_4f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_50
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    :goto_51
    invoke-virtual {v8}, Lfhs;->a()I

    move-result v8

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_52
    if-lt v3, v7, :cond_a

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_63

    nop

    nop

    nop

    :goto_53
    int-to-double v7, v4

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    :goto_54
    if-eqz v5, :cond_b

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_55
    const-wide v14, 0x3f9eb851eb851eb8L    # 0.03

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    nop

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

    nop

    :goto_57
    if-ltz v4, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    :cond_c
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    sput-object v1, Ljmc;->a:Lmhz;

    nop

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

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

    :goto_5b
    check-cast v8, Lfhs;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_5c
    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    nop

    nop

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

    :goto_5d
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

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

    :goto_5e
    if-gtz v7, :cond_d

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :cond_d
    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    add-int/lit8 v7, v7, 0x1

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

    :goto_60
    sget-object v0, Ljmc;->a:Lmhz;

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_61
    move-object/from16 v18, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v6}, Lfhs;->b()I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    :goto_63
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_64
    goto/16 :goto_af

    nop

    :goto_65
    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_66
    move v8, v9

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    :goto_67
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    :goto_68
    move-object/from16 v18, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_6a
    if-ltz v12, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    aget v0, v19, v9

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_6c
    cmpg-double v8, v0, v3

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_6d
    add-int/lit16 v4, v4, -0xbb8

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_6e
    check-cast v4, Lfhs;

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    :goto_6f
    move v6, v3

    nop

    nop

    nop

    :goto_70
    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_71
    int-to-double v9, v3

    nop

    goto/32 :goto_bd

    nop

    nop

    :goto_72
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_73
    if-lt v7, v10, :cond_f

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v1}, Lfhs;->b()I

    goto/32 :goto_eb

    nop

    nop

    nop

    :goto_75
    const/4 v13, 0x0

    nop

    :goto_76
    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    div-double v14, v9, v11

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_78
    cmpg-double v3, v7, v9

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_7a
    const/4 v9, -0x1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_7b
    move v9, v3

    nop

    :goto_7c
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    const-wide v16, 0x3f9eb851eb851eb8L    # 0.03

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    add-int/lit16 v3, v3, -0x500

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_80
    goto/16 :goto_d4

    nop

    nop

    nop

    nop

    :goto_81
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    move-object/from16 v19, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_83
    if-lez v0, :cond_10

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_35

    nop

    :goto_84
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_85
    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    :goto_87
    if-gez v9, :cond_11

    nop

    goto/32 :goto_a4

    nop

    nop

    :cond_11
    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_88
    check-cast v8, Lfhs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_89
    if-ltz v4, :cond_12

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    check-cast v3, Lfhs;

    nop

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    :goto_8c
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_8d
    add-int/lit8 v13, v13, 0x1

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    :goto_8f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_90
    check-cast v0, Lfhs;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_91
    check-cast v8, Lfhs;

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_92
    if-ltz v4, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_13
    goto/32 :goto_be

    nop

    nop

    :goto_93
    if-gez v3, :cond_14

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

    :cond_14
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_94
    const v6, 0x7fffffff

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

    :goto_95
    rem-int v0, v0, v1

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_97
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_98
    if-lt v3, v4, :cond_15

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

    :cond_15
    goto/32 :goto_4c

    nop

    nop

    :goto_99
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_9a
    return-object v0

    nop

    nop

    nop

    nop

    :goto_9b
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    add-int/lit8 v7, v7, 0x1

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    if-ltz v3, :cond_16

    nop

    goto/32 :goto_70

    nop

    :cond_16
    goto/32 :goto_e0

    nop

    nop

    nop

    :goto_9f
    const/16 v7, 0x5a0

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_a0
    invoke-virtual {v8}, Lfhs;->b()I

    move-result v8

    nop

    goto/32 :goto_c9

    nop

    nop

    :goto_a1
    const/4 v5, 0x0

    nop

    :goto_a2
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    if-ltz v8, :cond_17

    nop

    nop

    goto/32 :goto_a6

    nop

    :cond_17
    :goto_a4
    goto/32 :goto_de

    nop

    nop

    nop

    :goto_a5
    move-wide v5, v12

    nop

    nop

    nop

    :goto_a6
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_a7
    cmpg-double v8, v12, v5

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_a8
    check-cast v2, Lfhs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_a9
    move-object/from16 v1, v18

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_aa
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v14

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_ac
    check-cast v6, Lfhs;

    nop

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

    nop

    :goto_ad
    move-object/from16 v0, v19

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_ae
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_af
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    if-ltz v4, :cond_18

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_ca

    nop

    nop

    nop

    :goto_b1
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    if-eqz v8, :cond_19

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    :cond_19
    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_b3
    if-ltz v12, :cond_1a

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_cc

    nop

    nop

    nop

    :goto_b4
    add-int/lit16 v4, v4, -0xbb8

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_b5
    sub-double v14, v7, v0

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    div-double/2addr v7, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_b7
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    invoke-virtual {v4}, Lfhs;->b()I

    move-result v4

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    cmpg-double v12, v10, v5

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

    :goto_ba
    add-double/2addr v14, v10

    nop

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

    :goto_bb
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

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

    :goto_bc
    move-wide v0, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    :goto_bd
    div-double/2addr v7, v9

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

    :goto_be
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    move-wide v5, v12

    nop

    nop

    :goto_c0
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_c1
    check-cast v4, Lfhs;

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    :goto_c2
    move v9, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    :goto_c3
    cmpg-double v4, v20, v0

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

    :goto_c4
    move-wide v5, v10

    nop

    nop

    nop

    nop

    :goto_c5
    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    invoke-virtual {v3}, Lfhs;->a()I

    move-result v3

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

    :goto_c7
    const-wide v20, 0x4090680000000000L    # 1050.0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c8
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_c9
    int-to-double v14, v8

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    move-wide v0, v7

    nop

    nop

    nop

    nop

    :goto_cb
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_cc
    move v8, v7

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_ce
    aget v8, v0, v7

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

    :goto_cf
    invoke-virtual {v4}, Lfhs;->a()I

    move-result v4

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

    :goto_d0
    check-cast v3, Lfhs;

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    :goto_d1
    invoke-virtual {v4}, Lfhs;->b()I

    move-result v4

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_d2
    if-ltz v4, :cond_1b

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    :cond_1b
    goto/32 :goto_3b

    nop

    nop

    :goto_d3
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    :goto_d4
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    new-array v0, v0, [I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_d6
    check-cast v6, Lfhs;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_d7
    move-object/from16 v3, v18

    nop

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

    :goto_d8
    goto/16 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    goto/32 :goto_4b

    nop

    nop

    :goto_da
    add-double v20, v7, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    :goto_db
    move v9, v7

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_dc
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    int-to-double v11, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_de
    move-wide v3, v0

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    :goto_df
    int-to-double v7, v3

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    :goto_e1
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_e2
    check-cast v3, Lfhs;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_e3
    int-to-double v12, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_e4
    int-to-double v0, v8

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    new-instance v1, Lmhz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    add-int/lit16 v10, v10, -0x500

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_e7
    sget-object v1, Ljmc;->a:Lmhz;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_e8
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    :goto_e9
    int-to-double v9, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_ea
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    :goto_eb
    invoke-virtual {v1}, Lfhs;->a()I

    goto/32 :goto_e5

    nop

    nop

    nop

    :goto_ec
    invoke-direct {v1, v0, v2, v3}, Lmhz;-><init>(Ljava/lang/Object;Ljava/lang/Object;[B)V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    aput v13, v0, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_ee
    cmpg-double v4, v14, v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :goto_ef
    invoke-virtual {v4}, Lfhs;->b()I

    move-result v4

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    move-wide v0, v3

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    goto/16 :goto_a6

    nop

    nop

    :goto_f2
    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    check-cast v4, Lfhs;

    nop

    nop

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

    :goto_f4
    invoke-virtual {v10}, Lfhs;->b()I

    move-result v10

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    :goto_f5
    invoke-virtual {v3}, Lfhs;->b()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_f6
    iget-object v1, v0, Lfhg;->f:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop
.end method
