.class public final Ldto;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p5, p0, Ldto;->e:F

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p3, p0, Ldto;->c:F

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Ldto;->a:F

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

    :goto_3
    iput p6, p0, Ldto;->f:F

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    iput p4, p0, Ldto;->d:F

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    iput p2, p0, Ldto;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method static b(I)Ldto;
    .locals 25

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_0
    mul-float v4, v4, v21

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget v11, v2, Ldty;->d:F

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_2
    mul-float/2addr v11, v9

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3
    cmpl-float v10, v6, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-float/2addr v5, v3

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

    :goto_5
    invoke-static {v12, v13, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_6
    mul-float/2addr v8, v9

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

    :goto_7
    const-wide v10, 0x3fdae147ae147ae1L    # 0.42

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    mul-double v10, v10, v19

    nop

    nop

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    mul-float/2addr v3, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    :goto_a
    mul-float/2addr v5, v6

    nop

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

    :goto_b
    return-object v3

    nop

    :goto_c
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v5

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_e
    move v12, v6

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_108

    nop

    nop

    :goto_10
    mul-double v0, v0, v18

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    aget-object v4, v4, v12

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_12
    aget v6, v6, v12

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

    :goto_13
    aget v6, v6, v12

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_14
    mul-float/2addr v0, v0

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_15
    const/high16 v10, 0x42200000    # 40.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_16
    sget-object v4, Ldtp;->a:[[F

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget v7, v2, Ldty;->b:F

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_18
    add-float v9, v9, v20

    nop

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    :goto_19
    mul-float/2addr v9, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1a
    const/high16 v7, 0x42480000    # 50.0f

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    double-to-float v6, v6

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_1c
    mul-float/2addr v13, v3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1d
    invoke-static {v4}, Ldtp;->a(I)F

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    nop

    nop

    :goto_1e
    aget v8, v6, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1f
    mul-float/2addr v15, v9

    nop

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

    :goto_20
    mul-float/2addr v4, v8

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_21
    aget-object v6, v6, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    nop

    :goto_22
    mul-float/2addr v6, v7

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_23
    double-to-float v5, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    :goto_24
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    :goto_25
    add-float/2addr v10, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    :goto_26
    mul-float/2addr v10, v9

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_27
    float-to-double v8, v5

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    :goto_28
    mul-float/2addr v9, v3

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    :goto_2a
    div-double/2addr v8, v13

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2b
    sget-object v6, Ldtp;->d:[[F

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    aget v13, v13, v12

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

    :goto_2d
    mul-float/2addr v9, v10

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_2e
    const v9, 0x3cbac711    # 0.0228f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_2f
    add-float/2addr v3, v4

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_30
    mul-float/2addr v0, v7

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_31
    mul-float/2addr v8, v5

    nop

    nop

    nop

    goto/32 :goto_139

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

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

    nop

    :goto_33
    const/4 v2, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_147

    nop

    nop

    nop

    :goto_34
    float-to-double v9, v10

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_35
    float-to-double v10, v12

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_36
    aget v14, v13, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    :goto_37
    mul-float/2addr v9, v8

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    float-to-double v11, v0

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-static {v9, v10, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    :goto_3a
    mul-float/2addr v3, v5

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    new-array v5, v5, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    :goto_3c
    aput v0, v5, v3

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

    nop

    nop

    :goto_3d
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    :goto_40
    const/high16 v10, -0x3c4c0000    # -360.0f

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    mul-float/2addr v5, v8

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget v5, v2, Ldty;->h:F

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    mul-float v20, v11, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    :goto_44
    sub-double/2addr v13, v11

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_45
    mul-float/2addr v6, v14

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_46
    const-wide v11, 0x3fe75c28f5c28f5cL    # 0.73

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_47
    add-float/2addr v8, v10

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    :goto_48
    div-float/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    div-float/2addr v10, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    :goto_4a
    float-to-double v12, v8

    nop

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    :goto_4b
    cmpg-float v10, v6, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    :goto_4c
    div-float/2addr v9, v10

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_4d
    div-double/2addr v9, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_4e
    double-to-float v10, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    :goto_4f
    mul-float/2addr v4, v10

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_50
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_51
    add-float/2addr v5, v11

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_52
    mul-float v11, v11, v19

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    :goto_53
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    nop

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    :goto_54
    add-float/2addr v8, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_55
    mul-float/2addr v9, v10

    nop

    goto/32 :goto_132

    nop

    nop

    :goto_56
    const/high16 v10, 0x43c80000    # 400.0f

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_57
    move/from16 v19, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    :goto_58
    aget v4, v4, v12

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    nop

    :goto_59
    const v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    aget v23, v5, v2

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    :goto_5b
    add-float/2addr v9, v11

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    aget v21, v5, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    :goto_5d
    aget v8, v8, v12

    nop

    goto/32 :goto_ee

    nop

    nop

    :goto_5e
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_5f
    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_60
    mul-float/2addr v10, v11

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    float-to-double v8, v8

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    :goto_62
    mul-float/2addr v10, v7

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

    nop

    :goto_63
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_64
    const/4 v10, 0x1

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    mul-float/2addr v4, v5

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    :goto_66
    add-float/2addr v14, v13

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_67
    const-wide v19, 0x400921fb54442d18L    # Math.PI

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_68
    add-float/2addr v0, v2

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    nop

    nop

    :goto_69
    mul-float/2addr v5, v5

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    move/from16 v20, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_6b
    add-float/2addr v9, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    :goto_6c
    mul-float v24, v9, v12

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

    nop

    nop

    :goto_6d
    double-to-float v8, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    goto/32 :goto_124

    nop

    :goto_6f
    const v8, 0x40490fdb    # (float)Math.PI

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    :goto_70
    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_71
    add-float/2addr v12, v6

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_72
    cmpg-double v10, v10, v21

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_73
    const v21, 0x40b981db

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_74
    add-float/2addr v9, v11

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    :goto_75
    const-wide/high16 v18, 0x4026000000000000L    # 11.0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_76
    float-to-double v11, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_138

    nop

    nop

    nop

    nop

    :goto_77
    mul-float/2addr v8, v5

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_78
    invoke-static {v3}, Ldtp;->a(I)F

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_79
    add-double/2addr v0, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_7a
    add-float/2addr v8, v6

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    nop

    :goto_7b
    div-float/2addr v5, v1

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    const v11, 0x45706276

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    div-float/2addr v10, v13

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_7e
    mul-float/2addr v5, v3

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

    nop

    nop

    :goto_7f
    const/high16 v7, 0x43340000    # 180.0f

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_80
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_81
    iget v10, v2, Ldty;->i:F

    nop

    goto/32 :goto_10d

    nop

    nop

    :goto_82
    aput v10, v5, v3

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    add-float/2addr v3, v5

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    aget v8, v8, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_85
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_86
    if-ltz v10, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_87
    float-to-double v12, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    :goto_88
    mul-float/2addr v10, v0

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

    nop

    :goto_89
    float-to-double v9, v3

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

    :goto_8a
    goto/16 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    goto/32 :goto_3

    nop

    nop

    :goto_8c
    const v5, 0x3be56042    # 0.007f

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_8d
    mul-float/2addr v6, v10

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

    :goto_8e
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_123

    nop

    :goto_8f
    new-array v1, v0, [F

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

    :goto_90
    double-to-float v0, v11

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

    :goto_91
    aget v4, v4, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    :goto_92
    double-to-float v12, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_93
    const-wide v12, 0x3feccccccccccccdL    # 0.9

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

    :goto_94
    aput v4, v5, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    const/4 v7, 0x0

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    div-float/2addr v8, v7

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

    :goto_97
    new-instance v3, Ldto;

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

    :goto_98
    aput v20, v7, v13

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_99
    const/high16 v13, 0x40800000    # 4.0f

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    :goto_9a
    if-gez v10, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    :cond_2
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_9b
    aget v16, v4, v7

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_9c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    mul-float/2addr v9, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    :goto_9e
    mul-float v5, v5, v16

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    :goto_9f
    float-to-double v13, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    :goto_a0
    add-float/2addr v6, v10

    nop

    nop

    nop

    :goto_a1
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_a2
    aget-object v6, v4, v7

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

    nop

    :goto_a3
    float-to-double v5, v14

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_a4
    float-to-double v8, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    :goto_a5
    div-float v4, v3, v4

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    mul-float v9, v9, v16

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_a7
    if-ltz v10, :cond_3

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_a8
    mul-float v7, v7, v17

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_a9
    iget v5, v2, Ldty;->f:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    add-float/2addr v6, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    aput v3, v5, v1

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_ac
    iget v7, v2, Ldty;->c:F

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_ad
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

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

    :goto_ae
    float-to-double v13, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    :goto_af
    aget v6, v4, v10

    nop

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

    :goto_b0
    add-float/2addr v7, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    :goto_b1
    div-float/2addr v4, v8

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_b2
    const v17, 0x3f30a3d7    # 0.69f

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_b3
    double-to-float v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    add-float/2addr v0, v5

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

    :goto_b5
    const-wide v19, 0x400e666666666666L    # 3.8

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    :goto_b6
    move/from16 v19, v4

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    :goto_b7
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_b8
    mul-float/2addr v6, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    :goto_b9
    float-to-double v11, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    add-float/2addr v9, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_bb
    aget-object v8, v6, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    :goto_bc
    double-to-float v0, v9

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

    nop

    :goto_bd
    double-to-float v5, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    :goto_be
    aput v24, v5, v3

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    div-float/2addr v2, v5

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    float-to-double v3, v10

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_c1
    div-float/2addr v9, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :goto_c2
    aput v9, v1, v10

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    iget-object v4, v2, Ldty;->g:[F

    nop

    nop

    nop

    goto/32 :goto_142

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    aget-object v13, v4, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_c5
    aput v2, v5, v0

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_c6
    mul-float/2addr v10, v11

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_c7
    move/from16 v17, v6

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_c8
    mul-float/2addr v4, v7

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    nop

    nop

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    :goto_ca
    double-to-float v0, v11

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    :goto_cb
    aget v9, v8, v7

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

    nop

    :goto_cc
    move-object v11, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    :goto_cd
    const/high16 v13, 0x41a00000    # 20.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    :goto_ce
    mul-float/2addr v4, v14

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_d0
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    const/4 v5, 0x7

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_d3
    const/4 v3, 0x6

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_d4
    add-float/2addr v5, v10

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    add-double v10, v10, v19

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_d6
    aget v5, v1, v7

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_d7
    const v0, 0x3e9c28f6    # 0.305f

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_d8
    mul-float/2addr v10, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d9
    aget v22, v5, v0

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_da
    mul-float/2addr v11, v4

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_db
    mul-double v12, v12, v18

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    mul-float/2addr v8, v9

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_dd
    div-float/2addr v6, v5

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

    :goto_de
    const/high16 v1, 0x41300000    # 11.0f

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_df
    aget v11, v8, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    aget v9, v8, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    const v2, 0x3fd9999a    # 1.7f

    nop

    goto/32 :goto_141

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    iget v7, v2, Ldty;->e:F

    nop

    nop

    nop

    goto/32 :goto_14b

    nop

    nop

    nop

    :goto_e4
    add-double v18, v12, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    add-float/2addr v9, v8

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    const/4 v12, 0x2

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_e7
    add-float v14, v9, v6

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_e8
    aget v16, v4, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_e9
    const/high16 v12, 0x43b40000    # 360.0f

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_ea
    const/4 v13, 0x1

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_eb
    mul-float v10, v10, v20

    nop

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    :goto_ec
    add-float/2addr v10, v14

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    float-to-double v7, v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    mul-float/2addr v8, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    :goto_ef
    mul-float v11, v11, v17

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    :goto_f0
    double-to-float v3, v8

    nop

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

    :goto_f1
    float-to-double v12, v6

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    :goto_f2
    move-object v7, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    :goto_f3
    add-float/2addr v9, v11

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_f4
    aget v15, v13, v10

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->signum(F)F

    move-result v9

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    aput v9, v1, v7

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    add-float/2addr v14, v15

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_f8
    mul-float/2addr v14, v5

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    :goto_f9
    const v10, 0x41d90a3d    # 27.13f

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    :goto_fa
    float-to-double v0, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    :goto_fb
    mul-float v14, v17, v13

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    :goto_fc
    double-to-float v0, v0

    nop

    goto/32 :goto_13a

    nop

    nop

    :goto_fd
    const/high16 v11, 0x3e800000    # 0.25f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    const-wide/high16 v18, -0x3fd8000000000000L    # -12.0

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    :goto_ff
    iget v4, v2, Ldty;->e:F

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    :goto_100
    move-object/from16 v18, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_101
    div-double/2addr v8, v13

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_102
    float-to-double v12, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    nop

    :goto_103
    add-double v10, v10, v19

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_104
    const/high16 v2, 0x40800000    # 4.0f

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_105
    invoke-direct/range {v18 .. v24}, Ldto;-><init>(FFFFFF)V

    goto/32 :goto_b

    nop

    nop

    :goto_106
    const v1, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_107
    const/high16 v4, 0x42c80000    # 100.0f

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_108
    const/high16 v10, 0x41a00000    # 20.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_109
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10a
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    :goto_10b
    iget v3, v2, Ldty;->h:F

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

    :goto_10c
    sub-double v5, v5, v18

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_10d
    mul-float/2addr v11, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_10e
    iget v8, v2, Ldty;->h:F

    nop

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    :goto_10f
    div-double v10, v10, v19

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_110
    div-float/2addr v6, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    :goto_111
    const/high16 v11, 0x41a80000    # 21.0f

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_112
    aget v11, v8, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_113
    double-to-float v9, v12

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_114
    mul-float/2addr v6, v5

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    :goto_115
    const-wide v21, 0x403423d70a3d70a4L    # 20.14

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_116
    float-to-double v10, v6

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    :goto_117
    mul-float/2addr v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_118
    add-float/2addr v9, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    :goto_119
    add-float/2addr v3, v10

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_11a
    const/4 v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11b
    const-wide v13, 0x3ffa3d70a3d70a3dL    # 1.64

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11c
    mul-float/2addr v4, v8

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    :goto_11d
    sget-object v2, Ldty;->a:Ldty;

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_11e
    double-to-float v4, v13

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_120
    aget v11, v6, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_121
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v8

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

    :goto_122
    mul-float v16, v16, v8

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_123
    goto/32 :goto_c

    nop

    :goto_124
    goto/32 :goto_3e

    nop

    nop

    :goto_125
    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    :goto_126
    aput v3, v1, v12

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_127
    iget v0, v2, Ldty;->e:F

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    :goto_128
    aput v6, v7, v1

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    :goto_129
    float-to-double v12, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    :goto_12a
    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_12b
    const/4 v10, 0x0

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

    :goto_12c
    aget v8, v6, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_12d
    iget v14, v2, Ldty;->i:F

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_12e
    const-wide v19, 0x4066800000000000L    # 180.0

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    :goto_12f
    aget v8, v6, v7

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_130
    add-double/2addr v0, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    :goto_131
    add-float/2addr v5, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_132
    const/high16 v11, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_133
    iget v0, v2, Ldty;->b:F

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    :goto_134
    mul-float/2addr v3, v4

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_135
    invoke-static {v5}, Ldtp;->a(I)F

    move-result v5

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

    :goto_136
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_137
    double-to-float v8, v14

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

    :goto_138
    const-wide v13, 0x3fd28f5c28f5c28fL    # 0.29

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    :goto_139
    aget v9, v1, v10

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13a
    const/high16 v1, 0x41100000    # 9.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_13b
    mul-float/2addr v11, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    :goto_13c
    const/4 v3, 0x3

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

    :goto_13d
    double-to-float v9, v9

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13e
    const v8, 0x422f7048

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_13f
    double-to-float v11, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_140
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    nop

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    :goto_141
    mul-float/2addr v2, v3

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_142
    aget v16, v4, v7

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_143
    div-float/2addr v11, v0

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

    :goto_144
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    :goto_145
    aget-object v8, v6, v10

    nop

    goto/32 :goto_e1

    nop

    nop

    :goto_146
    div-double/2addr v8, v13

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

    :goto_147
    aput v8, v5, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    :goto_148
    mul-float/2addr v9, v3

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_149
    mul-float/2addr v8, v6

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14a
    iget v7, v2, Ldty;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14b
    iget v7, v2, Ldty;->j:F

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_14c
    div-float/2addr v10, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop
.end method

.method public static c(FFF)Ldto;
    .locals 12

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_0
    mul-float/2addr v0, v4

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_1
    const-wide v2, 0x3f9758e219652bd4L    # 0.0228

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    float-to-double v0, v3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    div-float v8, v4, v2

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct/range {v4 .. v10}, Ldto;-><init>(FFFFFF)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    mul-float/2addr v2, p0

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_7
    mul-float/2addr v1, v2

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

    nop

    :goto_8
    iget v3, v0, Ldty;->b:F

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2b

    nop

    nop

    :goto_a
    iget v2, v0, Ldty;->e:F

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

    :goto_b
    float-to-double v0, v1

    nop

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

    :goto_c
    div-float v1, p1, v1

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

    :goto_d
    return-object v11

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_f
    mul-double/2addr v0, v2

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_10
    add-double/2addr v0, v2

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

    :goto_11
    double-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_12
    double-to-float v1, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget v0, v0, Ldty;->b:F

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_14
    iget v1, v0, Ldty;->e:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_15
    const v4, 0x422f7048

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_16
    mul-float v10, v0, v1

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

    :goto_17
    sget-object v0, Ldty;->a:Ldty;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/high16 v2, 0x43340000    # 180.0f

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_19
    const v1, 0x40490fdb    # (float)Math.PI

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1b
    move v6, p1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/high16 v5, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v2, 0x3f30a3d7    # 0.69f

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1e
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1f
    mul-float/2addr v3, p1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_20
    div-float/2addr v1, v2

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_21
    div-double/2addr v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_22
    add-float/2addr v2, v5

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_23
    move v5, p2

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    add-float/2addr v0, v2

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

    :goto_25
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_26
    div-float/2addr v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_27
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_29
    const v2, 0x3be56042    # 0.007f

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2a
    goto/32 :goto_e

    nop

    nop

    :goto_2b
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    move-object v4, v11

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/high16 v2, 0x40800000    # 4.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_2f
    const v1, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_30
    float-to-double v1, p0

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    double-to-float v0, v0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_32
    new-instance v11, Ldto;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_33
    mul-float/2addr v1, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_34
    float-to-double v1, v1

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

    :goto_35
    mul-float v9, v0, v3

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget v3, v0, Ldty;->i:F

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const v0, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_38
    mul-float/2addr v4, p0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_39
    move v7, p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3a
    double-to-float v3, v3

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

    :goto_3b
    rem-int v0, v0, v1

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

    :goto_3c
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_3d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_0
    goto/32 :goto_2a

    nop

    :goto_3e
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

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

    :goto_3f
    const v4, 0x3fd9999a    # 1.7f

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method final a(Ldty;)I
    .locals 18

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_0
    const-wide v11, 0x3fe75c28f5c28f5cL    # 0.73

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    float-to-double v2, v2

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sub-float/2addr v11, v3

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

    :goto_3
    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_63

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_6
    mul-float/2addr v7, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_7
    const-wide v9, 0x3ff1c71c71c71c72L    # 1.1111111111111112

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    mul-float/2addr v3, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/high16 v0, 0x43e60000    # 460.0f

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

    :goto_a
    mul-double/2addr v7, v14

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    double-to-float v4, v12

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_c
    mul-float/2addr v4, v2

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_d
    div-float/2addr v11, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    :goto_e
    const/high16 v4, 0x41300000    # 11.0f

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    aget v1, v1, v2

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_10
    mul-float/2addr v3, v4

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_11
    mul-float/2addr v0, v7

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v2, 0x2

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    float-to-double v3, v3

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_14
    mul-float/2addr v0, v4

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

    :goto_15
    mul-float/2addr v11, v0

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_16
    aget v10, v10, v2

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_17
    const-wide v14, 0x403b2147ae147ae1L    # 27.13

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_1a
    float-to-double v9, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_1b
    add-float/2addr v0, v11

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_1c
    const/high16 v8, 0x42c80000    # 100.0f

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v3, 0x45c4e000    # 6300.0f

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

    :goto_1e
    iget v9, v1, Ldty;->h:F

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_1f
    sub-double v2, v16, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_20
    double-to-float v3, v5

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

    :goto_21
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_22
    mul-float/2addr v4, v1

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const-wide v9, 0x3ffa3d70a3d70a3dL    # 1.64

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

    nop

    :goto_24
    iget v3, v0, Ldto;->a:F

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_26
    add-float/2addr v0, v4

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_27
    sget-object v1, Ldtp;->b:[[F

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_28
    float-to-double v3, v11

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v1, v1, Ldty;->g:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_2a
    div-double/2addr v12, v2

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

    :goto_2b
    div-double/2addr v14, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_2c
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    mul-double/2addr v9, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2e
    mul-float/2addr v4, v3

    nop

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

    :goto_2f
    mul-float/2addr v9, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_30
    const v3, 0x44af6000    # 1403.0f

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_31
    sub-double/2addr v9, v2

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_32
    aget v5, v1, v6

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

    :goto_33
    div-float/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_34
    const/high16 v2, 0x43900000    # 288.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_35
    mul-float/2addr v11, v0

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    div-float/2addr v11, v7

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const/high16 v4, 0x42d80000    # 108.0f

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    mul-float v3, v3, p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_39
    mul-float/2addr v4, v2

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

    nop

    :goto_3a
    double-to-float v3, v3

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_3b
    float-to-double v12, v10

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

    :goto_3c
    const v0, 0x11

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    :goto_3d
    mul-float/2addr v10, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_3e
    div-float/2addr v4, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_3f
    add-float/2addr v0, v7

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

    :goto_40
    invoke-static/range {v1 .. v6}, Ldtz;->b(DDD)I

    move-result v0

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_41
    mul-float/2addr v0, v7

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const v7, 0x45706276

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    float-to-double v8, v3

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const/4 v4, 0x0

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_45
    sub-double v16, v16, v3

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_46
    double-to-float v2, v12

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_47
    div-float/2addr v9, v0

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

    :goto_48
    cmpl-double v3, v9, v5

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_49
    float-to-double v2, v4

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4a
    add-double/2addr v9, v11

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_4b
    invoke-static {v11}, Ljava/lang/Math;->signum(F)F

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_4c
    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_4d
    float-to-double v3, v3

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_4e
    mul-float/2addr v7, v3

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    mul-float/2addr v4, v7

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    return v0

    nop

    nop

    :goto_51
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    const/high16 v3, 0x435c0000    # 220.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_53
    float-to-double v7, v4

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

    :goto_54
    iget v11, v1, Ldty;->b:F

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    :goto_55
    double-to-float v7, v7

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    :goto_56
    add-float/2addr v9, v11

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_57
    invoke-static {v12, v13, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

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

    nop

    :goto_58
    const v7, 0x445ec000    # 891.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    const-wide/16 v5, 0x0

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    mul-float/2addr v9, v3

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_5b
    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    add-float/2addr v0, v4

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_5d
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :goto_5e
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_5f
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_60
    mul-float/2addr v3, v4

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_61
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    div-float v4, v2, v3

    nop

    :goto_63
    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    :goto_64
    mul-float/2addr v9, v7

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_65
    aget v12, v10, v6

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    mul-float/2addr v4, v8

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_67
    mul-float/2addr v0, v5

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_68
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    div-double/2addr v9, v7

    nop

    goto/32 :goto_c7

    nop

    nop

    :goto_6a
    sub-double v12, v16, v12

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    if-eqz v3, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    iget v7, v1, Ldty;->c:F

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

    :goto_6d
    sub-float/2addr v7, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_6e
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    :goto_6f
    aget v6, v1, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_70
    float-to-double v9, v3

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_71
    div-double/2addr v2, v9

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

    :goto_72
    mul-float/2addr v2, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v10

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    aget v3, v3, v2

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

    :goto_75
    const-wide/16 v3, 0x0

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_76
    div-double v9, v9, v16

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_77
    const v10, 0x43828000    # 261.0f

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_78
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_79
    div-float/2addr v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    sub-float v7, v11, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    mul-float/2addr v0, v7

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_7c
    const/high16 v4, 0x43340000    # 180.0f

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_7d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_7e
    div-float/2addr v7, v8

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    const-wide v9, 0x3fd28f5c28f5c28fL    # 0.29

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_80
    const-wide/16 v2, 0x0

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    :goto_81
    const v0, 0x43e18000    # 451.0f

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_82
    add-float/2addr v8, v9

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

    nop

    :goto_83
    mul-float/2addr v11, v0

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_84
    double-to-float v4, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_85
    double-to-float v2, v2

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_86
    if-nez v3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    :cond_1
    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_87
    sub-float/2addr v11, v9

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_88
    mul-float/2addr v4, v3

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_89
    add-double/2addr v9, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_8a
    aget v8, v1, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8b
    aget-object v10, v1, v6

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_8c
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_8d
    aget-object v3, v1, v5

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    mul-float/2addr v0, v3

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_8f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    :goto_90
    aget-object v1, v1, v2

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_91
    iget v3, v1, Ldty;->h:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_92
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_93
    iget v0, v1, Ldty;->j:F

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_94
    aget v5, v1, v5

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_95
    float-to-double v12, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_96
    mul-float/2addr v7, v5

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_97
    const/high16 v8, 0x41b80000    # 23.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_98
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_99
    div-float/2addr v0, v6

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    aget v8, v3, v5

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_9b
    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    nop

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

    nop

    :goto_9c
    float-to-double v7, v0

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    iget v7, v1, Ldty;->d:F

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_9e
    div-float v3, v8, v3

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    mul-float/2addr v9, v7

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

    :goto_a0
    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v7

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

    :goto_a1
    div-float/2addr v7, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :goto_a2
    div-float/2addr v8, v9

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_a3
    aget v11, v10, v5

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_a4
    aget v9, v3, v6

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_a5
    add-float/2addr v11, v12

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    add-float/2addr v0, v2

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    add-float/2addr v11, v10

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_a8
    float-to-double v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_a9
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

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

    nop

    :goto_aa
    mul-float/2addr v10, v9

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    mul-float/2addr v12, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_ac
    iget v0, v1, Ldty;->e:F

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_ad
    float-to-double v2, v2

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    float-to-double v12, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_af
    add-float/2addr v0, v4

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

    nop

    :goto_b0
    iget v7, v1, Ldty;->h:F

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_b1
    move/from16 p0, v3

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    float-to-double v2, v10

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    move-object/from16 v1, p1

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_b4
    mul-float/2addr v8, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    mul-float/2addr v9, v8

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    div-double/2addr v12, v7

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_b7
    float-to-double v12, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    :goto_b8
    const-wide v5, 0x40030c30c30c30c3L    # 2.380952380952381

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_b9
    mul-float/2addr v0, v8

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_ba
    iget v3, v0, Ldto;->c:F

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

    :goto_bb
    iget v2, v0, Ldto;->b:F

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

    :goto_bc
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v3

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_bd
    mul-double/2addr v12, v14

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_be
    const v2, 0x44af6000    # 1403.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_bf
    mul-float/2addr v0, v7

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_c0
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v10

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    const v1, 0x7

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_c2
    mul-float/2addr v7, v3

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_c3
    float-to-double v1, v8

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

    :goto_c4
    aget v1, v1, v2

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_c5
    const/high16 v7, 0x3e800000    # 0.25f

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

    :goto_c6
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    :goto_c7
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    :goto_c8
    const-wide/high16 v16, 0x4079000000000000L    # 400.0

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_c9
    const-wide v14, 0x3ff7303b5e190e92L    # 1.4492753673265821

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

    :goto_ca
    double-to-float v0, v7

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_cb
    cmpl-double v3, v3, v5

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    :goto_cd
    float-to-double v5, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_ce
    double-to-float v0, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_cf
    const v4, 0x40490fdb    # (float)Math.PI

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_d0
    double-to-float v3, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_d1
    div-float v7, v8, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_d2
    double-to-float v3, v3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    iget v0, v0, Ldto;->c:F

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    :goto_d4
    double-to-float v2, v2

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_d5
    const-wide v11, 0x400e666666666666L    # 3.8

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_d6
    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_d7
    add-float/2addr v8, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    :goto_d8
    div-double/2addr v7, v12

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_da
    const v9, 0x3e9c28f6    # 0.305f

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_db
    iget v2, v1, Ldty;->f:F

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_dc
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop
.end method
