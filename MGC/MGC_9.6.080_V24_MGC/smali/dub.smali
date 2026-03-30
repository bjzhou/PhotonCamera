.class public final Ldub;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:C

.field public final b:[F


# direct methods
.method public constructor <init>(C[F)V
    .locals 0

    goto/32 :goto_2

    nop

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

    :goto_1
    iput-char p1, p0, Ldub;->a:C

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Ldub;->b:[F

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

.method public constructor <init>(Ldub;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    array-length v0, p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Ldub;->b:[F

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
    iput-char v0, p0, Ldub;->a:C

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    iget-char v0, p1, Ldub;->a:C

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    iget-object p1, p1, Ldub;->b:[F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p1, v0}, Ldsw;->G([FI)[F

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop
.end method

.method public static a(Landroid/graphics/Path;FFFFFFFZZ)V
    .locals 69

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :goto_0
    const-wide/high16 v64, 0x4008000000000000L    # 3.0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_1
    move/from16 v4, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    :goto_2
    goto/16 :goto_3e

    nop

    :goto_3
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    :goto_5
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

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

    :goto_6
    move/from16 v3, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    mul-double/2addr v2, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_9
    move-wide/from16 v36, v24

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_a
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v46

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    :goto_c
    div-double v20, v20, v64

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_d
    move/from16 v5, p9

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    :goto_e
    mul-double v48, v48, v22

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_f
    add-double v42, v42, v44

    nop

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

    nop

    :goto_10
    move/from16 v0, p5

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_11
    move-wide/from16 v20, v36

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_12
    return-void

    nop

    :goto_13
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

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
    add-double v2, v24, v30

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

    :goto_16
    move-wide/from16 p1, v0

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-double v32, v32, v36

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    :goto_18
    move-wide/from16 v22, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_19
    div-double v62, v20, v32

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    mul-double v18, v7, v12

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_1b
    move/from16 v4, p8

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    mul-double/2addr v6, v10

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_1d
    mul-double v4, v2, v34

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1e
    move-wide/from16 v28, v6

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1f
    mul-double v54, v22, v46

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_64

    nop

    :goto_21
    goto/32 :goto_63

    nop

    nop

    :goto_22
    mul-double v66, v66, v62

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-ltz v4, :cond_0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d7

    nop

    nop

    :goto_25
    add-double v9, v20, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    :goto_26
    if-gtz v4, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_27
    mul-double v14, v0, v18

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_28
    move-wide/from16 p3, v2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_29
    move-wide/from16 v6, p7

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    :goto_2a
    move/from16 v64, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_2b
    move-wide/from16 p5, v4

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_2c
    move/from16 v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_2d
    move/from16 v1, p1

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    mul-double v9, v9, v26

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

    :goto_2f
    move/from16 v65, v2

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_30
    move-wide/from16 v20, v14

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    move-wide/from16 v26, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_32
    float-to-double v12, v0

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_33
    return-void

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    move/from16 v66, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    :goto_36
    mul-double v30, v28, v28

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_37
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    :cond_2
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_38
    div-double v0, v0, v32

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_39
    cmpl-double v4, v6, v30

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

    :goto_3a
    move-wide/from16 v12, v40

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    mul-double v28, v28, v10

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    :goto_3c
    add-double v40, v40, v52

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_3d
    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_e7

    nop

    nop

    nop

    :goto_3f
    move-wide/from16 v24, v7

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_42
    move-wide/from16 v34, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_43
    move/from16 v8, p4

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_44
    move-wide/from16 v9, v60

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_45
    mul-double v36, v34, v30

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    :goto_47
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_48
    double-to-int v8, v8

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    add-double v40, v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_4a
    float-to-double v4, v7

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static/range {v62 .. v63}, Ljava/lang/Math;->tan(D)D

    move-result-wide v62

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4c
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    mul-double v40, v38, v28

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    add-double v0, v14, v8

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_50
    if-lt v11, v8, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    :cond_3
    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    :goto_51
    double-to-float v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_52
    mul-double v36, v36, v20

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_54
    neg-float v6, v1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_55
    float-to-double v4, v8

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

    :goto_56
    move/from16 v68, v9

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    :goto_57
    mul-double v22, v7, v10

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_59
    mul-double v66, v62, v64

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_5b
    add-int/lit8 v11, v11, 0x1

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_5c
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_5d
    move/from16 v2, p6

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    :goto_5e
    move/from16 v63, v0

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

    :goto_5f
    sub-double v6, v42, v50

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_60
    move/from16 v9, p9

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_61
    sub-double v10, v16, v2

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    :goto_62
    sub-double v36, v36, v40

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    :goto_63
    const/4 v9, 0x1

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    :goto_65
    move-wide/from16 v36, v9

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    float-to-double v14, v6

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    mul-double v52, v12, v26

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    :goto_68
    const-wide/high16 v66, -0x4010000000000000L    # -1.0

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_69
    double-to-float v0, v0

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

    :goto_6a
    sub-double/2addr v6, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_6b
    mul-double v0, v0, v34

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_6c
    const-wide v5, 0x3ffffff583a53b8eL    # 1.99999

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    mul-double v46, v46, v60

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

    :goto_6e
    add-double v2, v16, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_6f
    if-ltz v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_70
    move-wide/from16 v18, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_71
    double-to-float v3, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    :goto_72
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    const-string v0, " Points are coincident"

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_74
    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_75
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v48

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    :goto_76
    mul-double v20, v20, v24

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    :goto_77
    add-double v62, v62, v66

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_78
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_79
    mul-double v2, v2, v18

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    sub-double v20, v9, v20

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_7b
    add-double v10, v30, v32

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

    nop

    nop

    :goto_7c
    const-wide/high16 v16, 0x4010000000000000L    # 4.0

    nop

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

    :goto_7d
    div-double v9, v6, v9

    nop

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

    nop

    :goto_7e
    add-double v6, v6, v28

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    mul-double v10, v10, v22

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_80
    float-to-double v7, v6

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_81
    goto/16 :goto_d5

    nop

    nop

    nop

    nop

    nop

    :goto_82
    goto/32 :goto_b0

    nop

    nop

    :goto_83
    double-to-float v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_84
    move/from16 v2, p2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_85
    move-wide/from16 v4, p5

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_86
    move-wide/from16 v20, p2

    nop

    :goto_87
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_88
    move/from16 v9, p9

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

    nop

    :goto_89
    sub-double/2addr v2, v10

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_8a
    move-wide/from16 v0, p1

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    div-double/2addr v6, v12

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    add-double v0, v0, v28

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    add-int v0, v0, v1

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

    :goto_8e
    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    float-to-double v14, v1

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    :goto_90
    mul-double/2addr v8, v12

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_91
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_92
    mul-float v5, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :goto_93
    sub-double v24, v56, v58

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

    nop

    :goto_94
    mul-double v20, v20, v62

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_95
    neg-float v1, v3

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    :goto_96
    mul-double v30, v30, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    :goto_97
    invoke-virtual {v5, v4, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    goto/32 :goto_3c

    nop

    nop

    :goto_98
    move/from16 v8, p8

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_99
    mul-double/2addr v4, v10

    nop

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

    nop

    :goto_9a
    sub-double v22, v14, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    sub-double v8, v4, v24

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    add-double/2addr v8, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_9d
    div-double v16, v16, v12

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_9e
    add-double v30, v46, v48

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_9f
    add-double v0, v28, v36

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    double-to-float v2, v12

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

    :goto_a1
    div-double/2addr v3, v5

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    mul-double v58, v38, v48

    nop

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    :goto_a3
    const-string v4, "Points are too far apart "

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_a4
    move-wide/from16 p7, v6

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_a5
    const-wide/16 v30, 0x0

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_a6
    const-wide/high16 v36, -0x4030000000000000L    # -0.25

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_a7
    cmpg-double v1, v32, v30

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

    :goto_a8
    float-to-double v6, v3

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_a9
    move-object/from16 v62, p0

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_aa
    mul-double v16, v14, v10

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    sub-double v12, v6, v20

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_ac
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

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

    :goto_ad
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_ae
    add-double v66, v66, v16

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    :goto_af
    mul-double v22, v22, v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    add-double/2addr v2, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    :goto_b1
    mul-double v38, v22, v26

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

    nop

    :goto_b2
    invoke-static/range {v0 .. v9}, Ldub;->a(Landroid/graphics/Path;FFFFFFFZZ)V

    goto/32 :goto_e2

    nop

    nop

    :goto_b3
    sub-double/2addr v8, v0

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_b4
    mul-float v6, v2, v1

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

    :goto_b5
    move-wide/from16 p2, v10

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    :goto_b6
    const-wide v28, 0x400921fb54442d18L    # Math.PI

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    move/from16 v6, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_b8
    int-to-double v9, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_b9
    mul-double v24, v20, v30

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :goto_ba
    add-double v4, v40, v54

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_bb
    div-double v18, v18, v28

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

    :goto_bc
    const-wide v4, -0x3fe6de04abbbd2e8L    # -6.283185307179586

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_bd
    mul-double v34, v9, v18

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_be
    move-wide/from16 v24, v4

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_bf
    sub-double v28, v16, v6

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_c0
    const v0, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_c1
    move/from16 v28, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_c2
    float-to-double v4, v2

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    :goto_c3
    invoke-virtual/range {v62 .. v68}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto/32 :goto_5b

    nop

    nop

    :goto_c4
    double-to-float v9, v4

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_c5
    const-string v3, "PathParser"

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_c6
    if-eq v4, v5, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    :cond_5
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_c7
    goto/16 :goto_87

    nop

    :goto_c8
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_c9
    cmpl-double v1, v10, v30

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :goto_ca
    mul-double v32, v22, v22

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_cb
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_cc
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_f7

    nop

    nop

    nop

    :goto_ce
    move/from16 v3, p3

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    move-wide/from16 v2, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    :goto_d0
    move-wide/from16 v40, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_d1
    invoke-static/range {v66 .. v67}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v62

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_d2
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_d3
    neg-double v9, v12

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

    :goto_d4
    sub-double v0, v0, v28

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_d6
    mul-double v56, v34, v46

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_d7
    const/4 v9, 0x0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_d8
    sub-double/2addr v14, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_d9
    mul-double v18, v6, v16

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_da
    div-double/2addr v14, v4

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    :goto_db
    sub-double/2addr v6, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_dc
    mul-double v52, v52, v48

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

    :goto_dd
    sub-double v42, v4, v14

    nop

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

    :goto_de
    div-double v32, v32, v10

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_df
    move-wide/from16 v28, v20

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    if-ne v5, v9, :cond_6

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_26

    nop

    nop

    :goto_e1
    double-to-float v8, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    :goto_e2
    return-void

    nop

    nop

    nop

    :goto_e3
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    mul-double v28, v4, v12

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

    :goto_e5
    add-double v14, v14, v22

    nop

    goto/32 :goto_c2

    nop

    nop

    :goto_e6
    move-wide/from16 p1, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_e7
    add-double/2addr v6, v4

    nop

    nop

    nop

    nop

    :goto_e8
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e9
    add-double v30, v30, v28

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_ea
    mul-double v50, v38, v46

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_eb
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    mul-double v44, v44, v48

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    :goto_ed
    float-to-double v8, v1

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_ee
    mul-double v44, v12, v18

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

    :goto_ef
    div-double v2, v2, v32

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_f0
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    move/from16 v8, v28

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_f2
    if-lez v0, :cond_7

    nop

    goto/32 :goto_cc

    nop

    nop

    :cond_7
    goto/32 :goto_cb

    nop

    :goto_f3
    add-double v16, v16, v18

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

    :goto_f4
    move/from16 v7, p7

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_f5
    mul-double v30, v30, v20

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

    :goto_f6
    mul-double v0, v0, v22

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_f7
    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/32 :goto_14

    nop

    nop

    :goto_f8
    move-wide/from16 v60, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_f9
    mul-double v28, v28, v22

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    :goto_fa
    move/from16 v7, p7

    nop

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

    :goto_fb
    move/from16 v67, v8

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_fc
    div-double/2addr v8, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_fd
    mul-double/2addr v14, v12

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    move-object/from16 v5, p0

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop
.end method
