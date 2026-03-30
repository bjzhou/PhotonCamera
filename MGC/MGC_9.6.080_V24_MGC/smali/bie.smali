.class public final Lbie;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lbox;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    :goto_0
    invoke-direct {v1, v0}, Lbre;-><init>(Luaz;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x14

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    sput-object v1, Lbie;->a:Lbox;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    sget-object v0, Lbid;->a:Lbid;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_d

    nop

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

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v1, Lbre;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x13

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method

.method public static synthetic a(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJI)Lbic;
    .locals 76

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_0
    move-wide/from16 v60, v0

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_1
    move-wide v14, v1

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    :goto_2
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_ed

    nop

    nop

    :goto_3
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_56

    nop

    :cond_1
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move-wide/from16 v54, p50

    nop

    :goto_5
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move-wide/from16 v60, p56

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_121

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_d2

    nop

    :goto_9
    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    :goto_a
    move-wide/from16 v12, p8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move-wide/from16 v26, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    sget-wide v1, Lbkg;->a:J

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_e
    goto/16 :goto_aa

    nop

    :goto_f
    goto/32 :goto_a9

    nop

    nop

    :goto_10
    and-int/lit16 v1, v0, 0x100

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_11
    goto :goto_1b

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1a

    nop

    nop

    :goto_13
    move-wide v10, v1

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_14
    move-wide/from16 v58, v1

    nop

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

    nop

    :goto_15
    const/high16 v1, 0x4000000

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x8000

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_2
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/high16 v1, 0x10000

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    :goto_19
    sget-wide v1, Lbkg;->a:J

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    move-wide/from16 v24, p20

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_1c
    sget-wide v1, Lbkg;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    :goto_1d
    and-int/2addr v1, v0

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_1e
    sget-wide v66, Lbkg;->A:J

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_1f
    move-wide v4, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    nop

    :goto_20
    sget-wide v1, Lbkg;->a:J

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_24
    and-int/lit8 v1, v0, 0x8

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_ca

    nop

    :goto_26
    sget-wide v1, Lbkg;->h:J

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    move-wide/from16 v16, p12

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_29
    const/high16 v1, 0x8000000

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

    nop

    :goto_2a
    and-int/lit16 v1, v0, 0x400

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_2b
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    :goto_2c
    move-wide/from16 v16, v1

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_cb

    nop

    :goto_2e
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    :cond_5
    goto/32 :goto_37

    nop

    nop

    :goto_2f
    move-wide/from16 v40, v1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_30
    if-nez v1, :cond_6

    nop

    goto/32 :goto_115

    nop

    :cond_6
    goto/32 :goto_80

    nop

    nop

    :goto_31
    sget-wide v1, Lbkg;->I:J

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_32
    and-int/lit16 v1, v0, 0x2000

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_33
    sget-wide v1, Lbkg;->y:J

    nop

    goto/32 :goto_ff

    nop

    nop

    :goto_34
    const/high16 v1, 0x2000000

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_99

    nop

    :goto_36
    goto/32 :goto_98

    nop

    nop

    :goto_37
    sget-wide v0, Lbkg;->a:J

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    nop

    :goto_38
    goto/16 :goto_a7

    nop

    nop

    :goto_39
    goto/32 :goto_a6

    nop

    nop

    :goto_3a
    sget-wide v1, Lbkg;->s:J

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3b
    sget-wide v70, Lbkg;->C:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    sget-wide v1, Lbkg;->x:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_3d
    move-wide/from16 v10, p6

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    move-wide v12, v1

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    :goto_40
    sget-wide v1, Lbkg;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_41
    and-int/lit8 v1, v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_42
    sget-wide v1, Lbkg;->a:J

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

    :goto_43
    sget-wide v1, Lbkg;->a:J

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    move-wide/from16 v48, v1

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

    :goto_45
    if-nez v1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :goto_46
    move-wide/from16 v18, v1

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    nop

    :goto_47
    const/high16 v1, 0x100000

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_48
    if-nez v1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_104

    nop

    nop

    nop

    nop

    :goto_49
    goto/16 :goto_3e

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_4b
    and-int/2addr v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_4c
    and-int/2addr v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    :goto_4d
    sget-wide v62, Lbkg;->z:J

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

    :goto_4e
    const v0, 0x9

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    move-wide/from16 v58, p54

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_8e

    nop

    nop

    :goto_51
    move-wide/from16 v44, v1

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    :goto_52
    sget-wide v1, Lbkg;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    :goto_53
    move-wide/from16 v46, p42

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    goto/16 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_57
    move-wide/from16 v42, v4

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    :goto_58
    if-nez v1, :cond_9

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_9
    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    :goto_59
    move-wide/from16 v28, p24

    nop

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_5b
    sget-wide v1, Lbkg;->f:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_5c
    move-object v3, v0

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    :goto_5d
    and-int/2addr v1, v0

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    sget-wide v1, Lbkg;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    sget-wide v1, Lbkg;->l:J

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_60
    goto/16 :goto_ad

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_62
    move-wide/from16 v40, p36

    nop

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_110

    nop

    nop

    nop

    :goto_64
    goto :goto_5a

    nop

    :goto_65
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_66
    const/high16 v1, 0x20000

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    :goto_67
    goto/16 :goto_77

    nop

    nop

    nop

    nop

    :goto_68
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    and-int/2addr v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    :goto_6a
    if-nez v1, :cond_a

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_d

    nop

    nop

    :goto_6b
    move-wide/from16 v22, v1

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    move-wide/from16 v32, p28

    nop

    :goto_6d
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    move-wide/from16 v38, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    :goto_6f
    if-nez v1, :cond_b

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_70
    sget-wide v1, Lbkg;->w:J

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    sget-wide v1, Lbkg;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    :goto_72
    sget-wide v1, Lbkg;->b:J

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_73
    sget-wide v1, Lbkg;->a:J

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_74
    sget-wide v1, Lbkg;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_75
    sget-wide v1, Lbkg;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    :goto_76
    move-wide/from16 v20, p16

    nop

    nop

    nop

    nop

    :goto_77
    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    const/high16 v1, 0x1000000

    nop

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    nop

    :goto_79
    move-wide/from16 v50, p46

    nop

    nop

    nop

    :goto_7a
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    sget-wide v1, Lbkg;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    sget-wide v68, Lbkg;->B:J

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

    :goto_7d
    move-wide/from16 v32, v1

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_7e
    goto/16 :goto_6d

    nop

    nop

    nop

    :goto_7f
    goto/32 :goto_6c

    nop

    nop

    :goto_80
    sget-wide v1, Lbkg;->a:J

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

    :goto_81
    sget-wide v1, Lbkg;->m:J

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    :goto_82
    and-int/2addr v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    goto/16 :goto_112

    nop

    nop

    nop

    :goto_84
    goto/32 :goto_111

    nop

    nop

    nop

    :goto_85
    if-nez v1, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_86
    goto/16 :goto_5

    nop

    nop

    nop

    :goto_87
    goto/32 :goto_4

    nop

    nop

    :goto_88
    sget-wide v1, Lbkg;->q:J

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    if-nez v1, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_d7

    nop

    nop

    nop

    :goto_8a
    and-int/lit16 v1, v0, 0x80

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

    nop

    :goto_8b
    move-wide/from16 v30, p26

    nop

    nop

    nop

    nop

    :goto_8c
    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    sget-wide v1, Lbkg;->r:J

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    const/high16 v1, 0x10000000

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_8f
    if-nez v1, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :cond_e
    goto/32 :goto_40

    nop

    nop

    :goto_90
    const/high16 v1, 0x40000

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    :goto_91
    sget-wide v1, Lbkg;->u:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    :goto_92
    and-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_93
    sget-wide v74, Lbkg;->E:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    move-wide/from16 v44, p40

    nop

    nop

    nop

    nop

    nop

    :goto_95
    goto/32 :goto_113

    nop

    nop

    nop

    :goto_96
    goto/16 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_97
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_98
    move-wide/from16 v22, p18

    nop

    nop

    nop

    nop

    nop

    :goto_99
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    sget-wide v1, Lbkg;->j:J

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    if-nez v1, :cond_f

    nop

    goto/32 :goto_65

    nop

    :cond_f
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    goto/16 :goto_7a

    nop

    nop

    nop

    nop

    :goto_9d
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_9e
    if-nez v1, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    :cond_10
    goto/32 :goto_c1

    nop

    nop

    :goto_9f
    if-nez v1, :cond_11

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    :cond_11
    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_a0
    move-wide/from16 v52, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a1
    move/from16 v0, p58

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_a2
    if-nez v1, :cond_12

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :cond_12
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    new-instance v0, Lbic;

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    move-wide/from16 v36, p32

    nop

    :goto_a5
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    move-wide/from16 v56, p52

    nop

    nop

    nop

    :goto_a7
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_a8
    and-int/lit16 v1, v0, 0x800

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

    :goto_a9
    move-wide/from16 v52, p48

    nop

    nop

    nop

    :goto_aa
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_ac
    move-wide/from16 v48, p44

    nop

    :goto_ad
    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    if-nez v1, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    :cond_13
    goto/32 :goto_106

    nop

    nop

    nop

    :goto_af
    if-nez v1, :cond_14

    nop

    nop

    goto/32 :goto_118

    nop

    :cond_14
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_b0
    if-nez v1, :cond_15

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    sget-wide v1, Lbkg;->k:J

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    sget-wide v1, Lbkg;->t:J

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    const/high16 v1, 0x800000

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    :goto_b5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    return-object v0

    nop

    :goto_b7
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    sget-wide v1, Lbkg;->a:J

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

    :goto_b9
    sget-wide v1, Lbkg;->a:J

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_ba
    move-wide/from16 v38, p34

    nop

    :goto_bb
    goto/32 :goto_90

    nop

    nop

    nop

    :goto_bc
    sget-wide v1, Lbkg;->a:J

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

    :goto_bd
    sget-wide v72, Lbkg;->D:J

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_be
    sget-wide v1, Lbkg;->a:J

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_bf
    move-wide/from16 v42, p38

    nop

    nop

    :goto_c0
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_c1
    sget-wide v1, Lbkg;->a:J

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    if-nez v1, :cond_16

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_16
    goto/32 :goto_cf

    nop

    nop

    :goto_c3
    goto/16 :goto_95

    nop

    nop

    :goto_c4
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_c5
    and-int/lit16 v1, v0, 0x4000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    and-int/lit8 v1, v0, 0x40

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    move-wide/from16 v56, v1

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_c8
    goto/16 :goto_10b

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    goto/32 :goto_10a

    nop

    nop

    nop

    :goto_ca
    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_cb
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    sget-wide v1, Lbkg;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    :goto_cd
    sget-wide v1, Lbkg;->a:J

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

    nop

    :goto_ce
    sget-wide v1, Lbkg;->i:J

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    sget-wide v1, Lbkg;->a:J

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    move-wide/from16 v50, v1

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    :goto_d1
    move-wide/from16 v26, p22

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    move-wide/from16 v4, p0

    nop

    nop

    nop

    nop

    :goto_d4
    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    :goto_d5
    goto :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    :goto_d7
    sget-wide v1, Lbkg;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    and-int/lit8 v1, v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    :goto_d9
    and-int/2addr v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    :goto_da
    if-nez v1, :cond_17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_db
    goto/16 :goto_b

    nop

    nop

    :goto_dc
    goto/32 :goto_a

    nop

    nop

    :goto_dd
    sget-wide v64, Lbkg;->F:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_de
    sget-wide v1, Lbkg;->c:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_df
    and-int/lit16 v1, v0, 0x200

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_e0
    move-wide/from16 v14, p10

    nop

    nop

    :goto_e1
    goto/32 :goto_c6

    nop

    nop

    :goto_e2
    goto/16 :goto_8c

    nop

    nop

    :goto_e3
    goto/32 :goto_8b

    nop

    nop

    :goto_e4
    if-nez v1, :cond_18

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_18
    goto/32 :goto_20

    nop

    nop

    :goto_e5
    sget-wide v1, Lbkg;->a:J

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    if-nez v1, :cond_19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    :cond_19
    goto/32 :goto_74

    nop

    nop

    :goto_e7
    sget-wide v1, Lbkg;->o:J

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_e8
    and-int/2addr v1, v0

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    if-nez v1, :cond_1a

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_ea
    sget-wide v1, Lbkg;->d:J

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    and-int/lit8 v1, v0, 0x10

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_ec
    if-nez v1, :cond_1b

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    :cond_1b
    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    sget-wide v1, Lbkg;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    :goto_ee
    and-int/lit8 v1, v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_ef
    move-wide/from16 v54, v1

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    sget-wide v1, Lbkg;->G:J

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_f1
    goto/16 :goto_54

    nop

    nop

    nop

    nop

    :goto_f2
    goto/32 :goto_53

    nop

    nop

    :goto_f3
    add-int v0, v0, v1

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

    :goto_f4
    move-wide/from16 v34, p30

    nop

    nop

    nop

    :goto_f5
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    sget-wide v1, Lbkg;->H:J

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_f7
    sget-wide v1, Lbkg;->n:J

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    :goto_f8
    const/high16 v1, 0x400000

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    move-wide/from16 v46, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    :goto_fa
    and-int/lit8 v1, v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_fb
    if-nez v1, :cond_1c

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    :cond_1c
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_fc
    sget-wide v1, Lbkg;->p:J

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    and-int/2addr v1, v0

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

    :goto_fe
    sget-wide v1, Lbkg;->e:J

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_ff
    move-wide/from16 v34, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_100
    and-int/2addr v1, v0

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_101
    move-wide/from16 v30, v1

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    :goto_102
    goto/16 :goto_bb

    nop

    :goto_103
    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_104
    sget-wide v1, Lbkg;->a:J

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_105
    move-wide/from16 v20, v1

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_106
    sget-wide v1, Lbkg;->a:J

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_107
    goto/16 :goto_c0

    nop

    nop

    :goto_108
    goto/32 :goto_bf

    nop

    nop

    :goto_109
    move-wide v6, v1

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_10a
    move-wide/from16 v8, p4

    nop

    nop

    nop

    nop

    nop

    :goto_10b
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_10c
    if-nez v1, :cond_1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_be

    nop

    nop

    :goto_10d
    move-wide/from16 v36, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    :goto_10e
    move-wide/from16 v18, p14

    nop

    nop

    :goto_10f
    goto/32 :goto_10

    nop

    nop

    :goto_110
    const/high16 v1, 0x80000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    nop

    nop

    :goto_111
    move-wide/from16 v6, p2

    nop

    nop

    :goto_112
    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    :goto_113
    const/high16 v1, 0x200000

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_114
    goto :goto_10f

    nop

    nop

    nop

    :goto_115
    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    :goto_116
    sget-wide v1, Lbkg;->g:J

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_117
    goto/16 :goto_d4

    nop

    nop

    nop

    nop

    :goto_118
    goto/32 :goto_d3

    nop

    nop

    :goto_119
    move-wide/from16 v28, v1

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_11a
    goto/16 :goto_a5

    nop

    nop

    nop

    :goto_11b
    goto/32 :goto_a4

    nop

    nop

    :goto_11c
    and-int/2addr v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_11d
    goto/16 :goto_f5

    nop

    nop

    nop

    nop

    :goto_11e
    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    :goto_11f
    and-int/lit16 v1, v0, 0x1000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_120
    invoke-direct/range {v3 .. v75}, Lbic;-><init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)V

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_121
    sget-wide v0, Lbkg;->a:J

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_122
    sget-wide v0, Lbkg;->v:J

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_123
    and-int/2addr v1, v0

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_124
    move-wide v8, v1

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :goto_125
    and-int/2addr v1, v0

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    :goto_126
    move-wide/from16 v24, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method
