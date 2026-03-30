.class public Llrd;
.super Llrg;
.source "PG"


# instance fields
.field protected final a:Lpck;

.field protected final b:I

.field private final i:Lpdf;


# direct methods
.method public constructor <init>(Llqw;Ljava/util/concurrent/Executor;Llqo;ILlxa;Lpck;ILpdf;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p6, p0, Llrd;->a:Lpck;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iput p7, p0, Llrd;->b:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct/range {p0 .. p5}, Llrg;-><init>(Llqw;Ljava/util/concurrent/Executor;Llqo;ILlxa;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p8, p0, Llrd;->i:Lpdf;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method protected static a(IIIIIIII)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    div-int v0, p4, p2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    mul-int/2addr p1, p4

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    div-int p2, p5, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    add-int/2addr p7, p6

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    div-int/2addr p1, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    add-int/2addr p7, p1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    add-int/2addr p7, p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    mul-int/2addr p0, p5

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    div-int/2addr p0, p3

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    mul-int/2addr p6, p2

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

    :goto_b
    mul-int/2addr p7, v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method protected static final d(II)I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    div-int/lit8 p0, p0, 0x2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    :goto_3
    add-int/lit8 p0, p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method protected static final f(Llqw;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Llqw;->a:Lprw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Lprw;->b()I

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0}, Lprw;->c()I

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method protected static final g(Lprw;Landroid/graphics/Rect;IZ)[I
    .locals 34

    goto/32 :goto_130

    nop

    nop

    :goto_0
    move/from16 v33, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_155

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez p3, :cond_0

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-ltz v6, :cond_1

    nop

    goto/32 :goto_12d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12c

    nop

    nop

    :goto_5
    move v7, v5

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_7
    move-object/from16 v10, v28

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

    :goto_8
    return-object v26

    nop

    nop

    :goto_9
    goto/32 :goto_ef

    nop

    nop

    :goto_a
    move/from16 v8, v29

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_b
    move v2, v8

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_54

    nop

    nop

    :goto_d
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-gt v6, v5, :cond_2

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

    :cond_2
    goto/32 :goto_c9

    nop

    nop

    :goto_f
    move/from16 v8, v28

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_fc

    nop

    nop

    nop

    :goto_11
    if-ltz v7, :cond_3

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    mul-int v15, v5, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_13
    if-gt v12, v5, :cond_4

    nop

    nop

    goto/32 :goto_156

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v0}, Lprv;->getPixelStride()I

    goto/32 :goto_159

    nop

    nop

    nop

    nop

    nop

    :goto_15
    sub-int v7, v3, v0

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

    :goto_16
    shl-int/lit8 v31, v33, 0x10

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    :goto_17
    move-object/from16 v12, v30

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_18
    goto :goto_10

    nop

    nop

    :goto_19
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v2, v3}, Llrd;->d(II)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    :goto_1b
    add-int/lit8 v3, v3, 0x2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1c
    or-int/2addr v4, v5

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static/range {v0 .. v7}, Llrd;->a(IIIIIIII)I

    move-result v0

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    :goto_1e
    const/4 v8, 0x0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1f
    move v2, v0

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_20
    move v8, v5

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_22
    move/from16 v22, v6

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_23
    if-ltz v11, :cond_5

    nop

    nop

    goto/32 :goto_59

    nop

    :cond_5
    goto/32 :goto_58

    nop

    nop

    :goto_24
    move v4, v15

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {v5}, Lprv;->getRowStride()I

    move-result v5

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    add-int v28, v7, v6

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

    :goto_27
    const/high16 v10, -0x1000000

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_28
    move/from16 v5, v18

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

    :goto_29
    check-cast v5, Lprv;

    nop

    goto/32 :goto_e2

    nop

    nop

    :goto_2a
    iget v5, v0, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    :goto_2b
    move v11, v5

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    add-int v28, v7, v11

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

    :goto_2e
    add-int/lit8 v30, v24, 0x1

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_2f
    mul-int/lit16 v4, v4, 0x1c5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const/4 v11, 0x2

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    shl-int/lit8 v10, v32, 0x10

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

    :goto_33
    rem-int v0, v0, v1

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

    :goto_34
    add-int/2addr v11, v7

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_35
    move/from16 v1, v28

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_36
    add-int/lit8 v4, v25, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_37
    const/4 v7, 0x0

    nop

    nop

    :goto_38
    goto/32 :goto_157

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    mul-int v13, v5, p2

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3a
    invoke-static/range {v0 .. v7}, Llrd;->a(IIIIIIII)I

    move-result v31

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_3b
    move v7, v3

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_3c
    move/from16 v29, v8

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

    :goto_3d
    sub-int v7, v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    move-object/from16 v28, v10

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_3f
    check-cast v5, Lprv;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_40
    or-int/2addr v8, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    :goto_41
    throw v0

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_15c

    nop

    nop

    nop

    nop

    :goto_43
    add-int/2addr v6, v7

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

    nop

    nop

    :goto_44
    const v1, 0x2

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_45
    add-int v0, v0, v1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_46
    if-lt v4, v6, :cond_6

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    :goto_47
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    move v7, v5

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_4b
    const/4 v3, 0x3

    nop

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    :goto_4c
    move/from16 v12, v33

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_4d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    :goto_4e
    const/4 v3, 0x2

    nop

    goto/32 :goto_cf

    nop

    nop

    :goto_4f
    mul-int/lit8 v28, v4, -0x58

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    :goto_51
    goto/16 :goto_c

    nop

    :goto_52
    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    if-gt v8, v5, :cond_7

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_148

    nop

    nop

    :goto_54
    mul-int/lit8 v5, v5, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    :goto_55
    const/4 v3, 0x1

    nop

    goto/32 :goto_f3

    nop

    nop

    :goto_56
    invoke-static {v7}, Llrd;->k(I)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    :goto_57
    shl-int/lit8 v8, v8, 0x8

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    const/4 v11, 0x0

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_43

    nop

    nop

    :goto_5a
    add-int/2addr v1, v4

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    shl-int/lit8 v8, v8, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    :goto_5c
    add-int v7, v7, v16

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_5d
    add-int v28, v28, v11

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    :goto_5e
    check-cast v5, Lprv;

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    :goto_5f
    add-int/2addr v7, v4

    nop

    goto/32 :goto_10b

    nop

    nop

    :goto_60
    if-ltz v10, :cond_8

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_2

    nop

    nop

    :goto_61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    :goto_62
    const/4 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    :goto_63
    goto/16 :goto_d4

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    :goto_65
    move/from16 v32, v5

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    :goto_66
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_67
    if-ltz v28, :cond_9

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

    :cond_9
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    check-cast v5, Lprv;

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_69
    move v4, v13

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_6a
    if-gt v11, v5, :cond_a

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    move/from16 v2, v31

    nop

    :goto_6c
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_6d
    const/4 v11, 0x2

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_6e
    const/16 v5, 0xff

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_6f
    add-int v0, v0, v18

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_70
    add-int/2addr v7, v4

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_71
    if-lez v0, :cond_b

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_9c

    nop

    :goto_72
    shl-int/lit8 v6, v11, 0x8

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_73
    const/high16 v5, -0x1000000

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_74
    add-int v2, v2, v17

    nop

    nop

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

    :goto_75
    move v6, v7

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

    nop

    :goto_76
    move v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_77
    if-gt v8, v5, :cond_c

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_78
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    nop

    :goto_79
    check-cast v5, Lprv;

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

    nop

    nop

    :goto_7a
    mul-int v14, v5, p2

    nop

    goto/32 :goto_141

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    move-object/from16 v26, v5

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_7c
    move/from16 v6, v29

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_7d
    add-int v10, v8, v11

    nop

    goto/32 :goto_d7

    nop

    nop

    :goto_7e
    const-string v1, ") in YUV Image Object"

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    :goto_7f
    move v4, v14

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    :goto_80
    move/from16 v6, v20

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    :goto_81
    move/from16 v5, v16

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

    :goto_82
    if-gt v7, v5, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_122

    nop

    nop

    nop

    :goto_83
    move v6, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_15b

    nop

    nop

    nop

    nop

    nop

    :goto_84
    invoke-interface {v0}, Lprv;->getPixelStride()I

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    move/from16 v23, v21

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_86
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_87
    move v0, v8

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_88
    invoke-interface {v5}, Lprv;->getPixelStride()I

    move-result v5

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    :goto_89
    if-gt v7, v5, :cond_e

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_e
    goto/32 :goto_5

    nop

    nop

    :goto_8a
    invoke-static {v3}, Llrd;->k(I)I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_8b
    move-object/from16 v5, v26

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    :goto_8c
    or-int/2addr v4, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    :goto_8d
    mul-int v17, v5, p2

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

    :goto_8e
    if-lt v3, v8, :cond_f

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    :cond_f
    goto/32 :goto_113

    nop

    nop

    :goto_8f
    check-cast v5, Lprv;

    nop

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    :goto_90
    move v7, v3

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

    :goto_91
    invoke-static/range {v0 .. v7}, Llrd;->a(IIIIIIII)I

    move-result v28

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    :goto_92
    const/4 v4, 0x1

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

    :goto_93
    move v7, v0

    nop

    nop

    nop

    nop

    :goto_94
    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    add-int/2addr v8, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_147

    nop

    nop

    nop

    nop

    :goto_96
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_41

    nop

    nop

    :goto_97
    add-int v10, v7, v11

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_98
    goto/16 :goto_11f

    nop

    nop

    nop

    nop

    nop

    :goto_99
    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    :goto_9a
    shr-int/lit8 v6, v6, 0x8

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_9b
    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    :goto_9c
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    goto/32 :goto_117

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-static {v3}, Llrd;->k(I)I

    move-result v7

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    :goto_9f
    goto/16 :goto_6c

    nop

    nop

    nop

    :goto_a0
    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    move/from16 v10, v32

    nop

    goto/32 :goto_f6

    nop

    nop

    :goto_a2
    move/from16 v25, v4

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    if-ltz v28, :cond_10

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    :cond_10
    goto/32 :goto_139

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    shl-int/lit8 v4, v6, 0x10

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_a5
    move/from16 v32, v10

    nop

    :goto_a6
    goto/32 :goto_89

    nop

    nop

    :goto_a7
    move/from16 v5, v17

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    if-ltz v7, :cond_11

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

    :cond_11
    goto/32 :goto_47

    nop

    nop

    :goto_a9
    and-int/2addr v7, v5

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_aa
    check-cast v0, Lprv;

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-interface {v0}, Lprv;->getRowStride()I

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    or-int/2addr v7, v8

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    :goto_ad
    const/high16 v8, -0x1000000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    :goto_ae
    and-int/2addr v7, v5

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

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

    :goto_b0
    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    move v10, v5

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    goto/32 :goto_15e

    nop

    nop

    :goto_b3
    add-int v30, v7, v6

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    goto/16 :goto_94

    nop

    nop

    nop

    :goto_b5
    goto/32 :goto_fd

    nop

    nop

    nop

    :goto_b6
    if-gt v7, v5, :cond_12

    nop

    goto/32 :goto_4a

    nop

    nop

    :cond_12
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    invoke-interface {v5}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_b8
    or-int/2addr v8, v10

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    invoke-interface {v5}, Lprv;->getPixelStride()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    add-int v30, v8, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_150

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    move/from16 v7, v30

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    and-int/2addr v4, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    :goto_bd
    move/from16 v7, v19

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

    :goto_be
    move-object/from16 v30, v12

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_bf
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_c0
    add-int v12, v24, v22

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    add-int/2addr v3, v0

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

    :goto_c2
    move/from16 v21, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_c3
    div-int/lit8 v3, v3, 0x2

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

    nop

    :goto_c4
    add-int/2addr v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    :goto_c5
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

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

    nop

    nop

    :goto_c6
    invoke-static {v2}, Llrd;->k(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    move/from16 v23, v2

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_c8
    mul-int v24, v0, v22

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    move v6, v5

    nop

    nop

    nop

    nop

    :goto_ca
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    shr-int/lit8 v4, v4, 0x8

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_cc
    move/from16 v33, v12

    nop

    :goto_cd
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_ce
    const/high16 v8, -0x1000000

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    :goto_cf
    move/from16 v1, v25

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

    :goto_d0
    add-int/2addr v7, v4

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    :goto_d2
    iget v0, v0, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    goto/32 :goto_138

    nop

    nop

    nop

    :goto_d3
    move/from16 v8, v30

    nop

    nop

    nop

    nop

    :goto_d4
    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    if-ltz v30, :cond_13

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

    :cond_13
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    or-int/2addr v8, v10

    nop

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    if-ltz v10, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_7e

    nop

    nop

    :goto_d9
    shl-int/lit8 v10, v10, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    :goto_da
    invoke-interface {v4}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_db
    shr-int/lit8 v11, v28, 0x8

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_dc
    move/from16 v6, v27

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    :goto_dd
    add-int v7, v1, v16

    nop

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_de
    add-int/lit8 v24, v24, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_df
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    :goto_e0
    aput v8, v26, v12

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    move v1, v4

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    invoke-interface {v5}, Lprv;->getRowStride()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_e3
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_142

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    sub-int v0, v4, v21

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    :goto_e6
    add-int/lit8 v12, v12, 0x1

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_e7
    goto/16 :goto_13e

    nop

    nop

    nop

    nop

    :goto_e8
    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    :goto_e9
    or-int/2addr v7, v8

    nop

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    :goto_ea
    if-gt v2, v3, :cond_15

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :cond_15
    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    move-object/from16 v26, v5

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_ec
    goto/16 :goto_a6

    nop

    :goto_ed
    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_ee
    div-int/lit8 v29, v20, 0x2

    nop

    goto/32 :goto_110

    nop

    nop

    :goto_ef
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_f0
    move v5, v7

    nop

    nop

    :goto_f1
    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    :goto_f2
    mul-int v5, v0, v0

    nop

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    move/from16 v0, v23

    nop

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    :goto_f4
    and-int/2addr v7, v5

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_f5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_61

    nop

    nop

    :goto_f6
    if-gt v10, v5, :cond_16

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    div-int/lit8 v2, v2, 0x2

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

    :goto_f8
    const/4 v11, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_d8

    nop

    nop

    :goto_fa
    move v8, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_fb
    move/from16 v7, v29

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fc
    mul-int/lit16 v6, v6, 0x166

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_fd
    mul-int v5, v2, v3

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

    :goto_fe
    check-cast v0, Lprv;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    aput v7, v26, v30

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    :goto_100
    goto/16 :goto_14f

    nop

    nop

    nop

    :goto_101
    goto/32 :goto_14e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_102
    check-cast v5, Lprv;

    nop

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_103
    add-int v4, v16, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_104
    move/from16 v29, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    nop

    :goto_105
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    :goto_106
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_107
    move v7, v3

    nop

    nop

    nop

    goto/32 :goto_154

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_108
    const/4 v10, 0x0

    nop

    nop

    :goto_109
    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    :goto_10b
    if-ltz v7, :cond_17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    :cond_17
    goto/32 :goto_105

    nop

    nop

    nop

    nop

    :goto_10c
    const/16 v33, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    :goto_10d
    move-object/from16 v28, v10

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10e
    invoke-interface {v0}, Lprv;->getRowStride()I

    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10f
    move/from16 v3, v23

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

    :goto_110
    div-int/lit8 v30, v19, 0x2

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_111
    add-int/lit8 v6, v6, -0x80

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_112
    invoke-interface {v5}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    :goto_113
    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_114
    add-int v7, v1, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_115
    or-int v10, v31, v10

    nop

    nop

    goto/32 :goto_14b

    nop

    nop

    :goto_116
    div-int v2, v2, p2

    nop

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    nop

    :goto_117
    invoke-static/range {p0 .. p1}, Llrd;->i(Lprw;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    nop

    goto/32 :goto_151

    nop

    nop

    nop

    nop

    nop

    :goto_118
    const/4 v8, 0x0

    nop

    nop

    nop

    :goto_119
    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11a
    move/from16 v27, v6

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

    :goto_11b
    move v8, v5

    nop

    nop

    nop

    nop

    :goto_11c
    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_11d
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_11e
    move/from16 v4, v21

    nop

    :goto_11f
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_120
    mul-int/lit16 v11, v6, -0xb6

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_121
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    :goto_122
    goto/16 :goto_f1

    nop

    nop

    nop

    nop

    nop

    :goto_123
    goto/32 :goto_f0

    nop

    nop

    nop

    :goto_124
    aput v7, v26, v24

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_125
    invoke-virtual {v12, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    :goto_126
    and-int/2addr v8, v5

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_127
    const-string v3, "Incorrect number planes ("

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    :goto_128
    mul-int v16, v5, p2

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    :goto_129
    or-int/2addr v4, v5

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

    :goto_12a
    check-cast v0, Lprv;

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_12b
    add-int v6, v0, v0

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    :goto_12c
    const/4 v6, 0x0

    nop

    nop

    nop

    :goto_12d
    goto/32 :goto_70

    nop

    nop

    :goto_12e
    move-object/from16 v30, v12

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_12f
    move/from16 v2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_130
    const v0, 0x8

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_131
    or-int/2addr v7, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    :goto_132
    mul-int v18, v5, p2

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_133
    aput v4, v26, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    :goto_134
    or-int/2addr v7, v8

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_135
    check-cast v5, Lprv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_136
    add-int/lit8 v4, v4, -0x80

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    :goto_137
    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    :goto_138
    invoke-static {v0}, Llrd;->k(I)I

    move-result v20

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_139
    const/16 v32, 0x0

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13a
    new-array v5, v5, [I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    nop

    :goto_13b
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    :goto_13c
    invoke-static {v2}, Llrd;->k(I)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_15a

    nop

    nop

    :goto_13d
    move/from16 v32, v28

    nop

    nop

    nop

    nop

    nop

    :goto_13e
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_13f
    if-gt v10, v5, :cond_18

    nop

    goto/32 :goto_153

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_152

    nop

    nop

    nop

    nop

    :goto_140
    invoke-static {v5}, Llrd;->k(I)I

    move-result v19

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_141
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_142
    check-cast v4, Lprv;

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    :goto_143
    if-eq v2, v3, :cond_19

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_144
    and-int/2addr v6, v5

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

    nop

    :goto_145
    div-int v3, v3, p2

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

    :goto_146
    invoke-interface {v5}, Lprv;->getPixelStride()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_147
    if-ltz v8, :cond_1a

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    :goto_148
    move v8, v5

    nop

    :goto_149
    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14a
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15d

    nop

    nop

    :goto_14b
    or-int/2addr v8, v10

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_14c
    invoke-interface {v5}, Lprv;->getRowStride()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_14d
    shl-int/lit8 v10, v10, 0x8

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    :goto_14e
    move/from16 v33, v30

    nop

    nop

    :goto_14f
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_150
    if-ltz v30, :cond_1b

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_10c

    nop

    nop

    :goto_151
    invoke-interface/range {p0 .. p0}, Lprw;->g()Ljava/util/List;

    move-result-object v1

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_152
    move v10, v5

    nop

    nop

    nop

    :goto_153
    goto/32 :goto_12e

    nop

    nop

    nop

    :goto_154
    move v3, v2

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

    :goto_155
    goto/16 :goto_cd

    nop

    nop

    :goto_156
    goto/32 :goto_cc

    nop

    nop

    nop

    :goto_157
    if-gt v10, v5, :cond_1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_158
    move/from16 v22, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_159
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_15a
    invoke-static {v7}, Llrd;->k(I)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_15b
    move/from16 v21, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15c
    goto/32 :goto_9d

    nop

    :goto_15d
    check-cast v0, Lprv;

    nop

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    :goto_15e
    if-gt v8, v5, :cond_1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_11b

    nop

    nop
.end method

.method private static k(I)I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    add-int/2addr p0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    div-int/lit8 p0, p0, 0x2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final b(Llqw;I)Llre;
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p2

    nop

    nop

    :goto_1
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_4
    if-eq p0, v1, :cond_1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p2, Llre;

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

    :goto_6
    div-int/2addr v0, p2

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

    :goto_7
    iget-object v0, p1, Llqw;->a:Lprw;

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

    :goto_8
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    iget-object v1, p1, Llqw;->d:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    div-int/2addr v0, p2

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v0, v1}, Llrd;->i(Lprw;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x1a

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

    :goto_10
    move v0, p0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_12
    add-int/2addr p0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p0, v0}, Llrd;->d(II)I

    move-result p0

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

    :goto_14
    invoke-direct {p2, p1, p0, v0}, Llre;-><init>(Lpcg;II)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_16
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_17
    div-int/2addr p0, p2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget p0, p0, Llrd;->b:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    div-int/2addr p0, p2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1c
    goto :goto_11

    nop

    :goto_1d
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1e
    iget-object p1, p1, Llqw;->b:Lpcg;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_1a

    nop

    nop

    nop

    nop
.end method

.method protected final c(Lprw;Landroid/graphics/Rect;I)[I
    .locals 44

    goto/32 :goto_1ef

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/2addr v8, v0

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move/from16 v43, v41

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    :goto_2
    if-gt v1, v15, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_17e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    shl-int/lit8 v13, v13, 0x8

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    mul-int/lit8 v8, v8, -0x58

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_5
    move v14, v2

    nop

    goto/32 :goto_14e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object v0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1d6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v11, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    nop

    nop

    nop

    goto/32 :goto_1db

    nop

    nop

    :goto_9
    move-object/from16 v31, v10

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    :goto_a
    move v13, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_195

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move/from16 v7, v35

    nop

    nop

    nop

    nop

    goto/32 :goto_18a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move/from16 v8, p3

    nop

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lt v9, v4, :cond_1

    nop

    goto/32 :goto_1c3

    nop

    nop

    :cond_1
    goto/32 :goto_1c2

    nop

    nop

    nop

    :goto_e
    if-gt v2, v3, :cond_2

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_156

    nop

    nop

    nop

    :goto_f
    shl-int/lit8 v0, v0, 0x10

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

    :goto_10
    move v0, v8

    nop

    nop

    :goto_11
    goto/32 :goto_173

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/16 v15, 0xff

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_191

    nop

    nop

    nop

    :goto_15
    shr-int/lit8 v10, v10, 0x8

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

    :goto_16
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1ad

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v12, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move v0, v1

    nop

    nop

    goto/32 :goto_188

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/high16 v38, -0x1000000

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1ab

    nop

    nop

    nop

    :goto_1b
    add-int v14, v13, v8

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    :goto_1c
    if-lt v7, v14, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_155

    nop

    nop

    :cond_3
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-ltz v0, :cond_4

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_94

    nop

    nop

    :goto_1e
    invoke-static {v0, v1, v8, v10}, Llrd;->g(Lprw;Landroid/graphics/Rect;IZ)[I

    move-result-object v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_1e8

    nop

    nop

    :goto_20
    goto/32 :goto_12f

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_3e

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_197

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v15, 0x0

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_24
    add-int/2addr v13, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    :goto_25
    move-object/from16 v0, p1

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_26
    move-object/from16 v32, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_27
    move-object/from16 v6, v31

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v3, 0x3

    nop

    goto/32 :goto_113

    nop

    nop

    :goto_29
    invoke-interface/range {v17 .. v17}, Lprv;->getRowStride()I

    move-result v17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_2a
    sub-int v2, v25, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1bd

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    move/from16 v12, p2

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    shl-int/lit8 v0, v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_1ac

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-ltz v14, :cond_5

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/16 v13, 0xff

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

    :goto_30
    invoke-static {v6}, Llrd;->k(I)I

    move-result v6

    nop

    nop

    goto/32 :goto_17f

    nop

    nop

    nop

    :goto_31
    move/from16 v39, v13

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_32
    move-object/from16 v1, p2

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    :goto_33
    if-lez v0, :cond_6

    nop

    goto/32 :goto_19d

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_19c

    nop

    :goto_34
    double-to-int v1, v1

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

    :goto_35
    shl-int/lit8 v14, v14, 0x8

    nop

    goto/32 :goto_1f5

    nop

    nop

    nop

    nop

    nop

    :goto_36
    sub-int v5, v26, v5

    nop

    nop

    nop

    goto/32 :goto_1df

    nop

    nop

    nop

    nop

    nop

    :goto_37
    add-int v0, v5, v17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_38
    if-ne v7, v3, :cond_7

    nop

    goto/32 :goto_165

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_13f

    nop

    nop

    nop

    :goto_39
    const/high16 v32, -0x1000000

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_175

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_174

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    add-int/lit8 v9, v7, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_3d
    move/from16 v32, v38

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_14d

    nop

    nop

    :goto_3f
    const/4 v10, 0x0

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    :goto_40
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_c3

    nop

    nop

    :goto_41
    if-gt v15, v14, :cond_8

    nop

    goto/32 :goto_1d3

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    or-int/2addr v0, v10

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_43
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    nop

    nop

    nop

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-lt v9, v2, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_170

    nop

    nop

    nop

    :goto_45
    mul-int v17, v17, v8

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

    nop

    :goto_46
    if-eq v9, v2, :cond_a

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    add-int v33, v27, v23

    nop

    nop

    goto/32 :goto_1d1

    nop

    nop

    nop

    nop

    :goto_48
    move-object/from16 v28, v37

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    nop

    :goto_49
    return-object v0

    nop

    :goto_4a
    goto/32 :goto_117

    nop

    nop

    nop

    :goto_4b
    move/from16 v41, v0

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_4c
    goto/16 :goto_22

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    move/from16 v0, v43

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_19d

    nop

    :goto_51
    check-cast v1, Lprv;

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_52
    const/4 v1, 0x0

    nop

    :goto_53
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_54
    shl-int/lit8 v14, v14, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    :goto_55
    add-int/2addr v0, v11

    nop

    nop

    goto/32 :goto_18c

    nop

    nop

    nop

    nop

    nop

    :goto_56
    add-int/2addr v1, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    :goto_57
    invoke-interface {v1}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_58
    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    :goto_59
    move v13, v14

    nop

    :goto_5a
    goto/32 :goto_181

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    move/from16 v42, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    :goto_5c
    if-ne v2, v3, :cond_b

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_5d
    invoke-interface/range {v19 .. v19}, Lprv;->getRowStride()I

    move-result v19

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_5e
    goto/16 :goto_d5

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-interface {v0}, Lprv;->getPixelStride()I

    goto/32 :goto_1ed

    nop

    nop

    nop

    nop

    nop

    :goto_61
    move/from16 v29, v4

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    nop

    :goto_62
    goto/16 :goto_1ee

    nop

    :goto_63
    goto/32 :goto_15c

    nop

    nop

    nop

    nop

    nop

    :goto_64
    add-int/lit8 v7, v7, 0x2

    nop

    goto/32 :goto_150

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    check-cast v2, Lprv;

    nop

    nop

    nop

    nop

    goto/32 :goto_16b

    nop

    nop

    :goto_66
    add-int v14, v13, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    :goto_67
    move/from16 v42, v15

    nop

    goto/32 :goto_1c4

    nop

    nop

    nop

    nop

    :goto_68
    double-to-int v3, v5

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_69
    if-le v7, v3, :cond_c

    nop

    nop

    goto/32 :goto_171

    nop

    nop

    nop

    nop

    nop

    :cond_c
    :goto_6a
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    mul-int/lit16 v10, v8, 0x1c5

    nop

    nop

    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    :goto_6d
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d7

    nop

    nop

    nop

    :goto_6e
    check-cast v19, Lprv;

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1d5

    nop

    nop

    :goto_70
    invoke-virtual {v10, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_71
    sub-int v5, v5, v24

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15f

    nop

    nop

    nop

    nop

    :goto_72
    move-object/from16 v37, v11

    nop

    nop

    goto/32 :goto_192

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    goto/16 :goto_1de

    nop

    :goto_74
    goto/32 :goto_83

    nop

    nop

    nop

    :goto_75
    if-ltz v0, :cond_d

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_76
    div-int/lit8 v34, v12, 0x2

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    move/from16 v0, v38

    nop

    nop

    nop

    :goto_78
    goto/32 :goto_ed

    nop

    nop

    nop

    :goto_79
    move/from16 v39, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_1c6

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-interface {v1}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18d

    nop

    nop

    nop

    nop

    :goto_7b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    check-cast v1, Lprv;

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    goto/16 :goto_1b5

    nop

    nop

    nop

    nop

    :goto_7e
    goto/32 :goto_1b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    check-cast v21, Lprv;

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    :goto_80
    mul-int v19, v19, v8

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    :goto_81
    move/from16 p1, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    nop

    :goto_82
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_17a

    nop

    nop

    nop

    nop

    nop

    :goto_83
    if-ne v9, v1, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e3

    nop

    :cond_e
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    nop

    nop

    goto/32 :goto_1c9

    nop

    nop

    :goto_85
    const/high16 v0, -0x1000000

    nop

    goto/32 :goto_1e2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    check-cast v20, Lprv;

    nop

    nop

    nop

    goto/32 :goto_1f3

    nop

    nop

    :goto_87
    add-int/2addr v1, v5

    nop

    nop

    nop

    goto/32 :goto_168

    nop

    nop

    nop

    :goto_88
    mul-int/lit16 v12, v12, 0x166

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    :goto_89
    invoke-interface {v2}, Lprv;->getRowStride()I

    goto/32 :goto_1a3

    nop

    nop

    :goto_8a
    check-cast v2, Lprv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    :goto_8b
    add-int/2addr v5, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_157

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    move/from16 v1, v38

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_8e
    const/4 v0, 0x0

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    :goto_8f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    :goto_90
    or-int/2addr v0, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_199

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    move v0, v10

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :goto_92
    mul-int v21, v21, v8

    nop

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

    :goto_93
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_94
    const/4 v0, 0x0

    nop

    nop

    :goto_95
    goto/32 :goto_198

    nop

    nop

    nop

    nop

    :goto_96
    invoke-interface/range {v22 .. v22}, Lprv;->getPixelStride()I

    move-result v22

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    :goto_97
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    const/16 v14, 0xff

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    add-int/lit8 v8, v8, -0x80

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_9a
    aput v0, v30, v33

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_9b
    move/from16 v40, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_9c
    and-int/2addr v0, v13

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    :goto_9d
    return-object v30

    nop

    nop

    nop

    nop

    :goto_9e
    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    const/16 v8, 0xff

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_a0
    or-int/2addr v0, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_a1
    or-int/2addr v0, v13

    nop

    goto/32 :goto_189

    nop

    nop

    :goto_a2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_a3
    move-object/from16 v12, v32

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_a4
    const/4 v14, 0x0

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_a5
    move-object/from16 v12, v32

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_a6
    invoke-virtual {v12, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

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

    :goto_a7
    or-int v0, v0, v38

    nop

    nop

    nop

    goto/32 :goto_18e

    nop

    nop

    :goto_a8
    check-cast v1, Lprv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1cd

    nop

    nop

    :goto_a9
    move v10, v8

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_aa
    goto/16 :goto_139

    nop

    nop

    :goto_ab
    goto/32 :goto_f3

    nop

    nop

    nop

    :goto_ac
    move/from16 v6, v36

    nop

    :goto_ad
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    move/from16 v14, v40

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    :goto_af
    if-ltz v13, :cond_f

    nop

    nop

    nop

    goto/32 :goto_1cf

    nop

    :cond_f
    goto/32 :goto_1ce

    nop

    nop

    nop

    :goto_b0
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_b1
    if-gt v14, v8, :cond_10

    nop

    nop

    nop

    goto/32 :goto_1da

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_1d9

    nop

    nop

    :goto_b2
    invoke-interface/range {v21 .. v21}, Lprv;->getPixelStride()I

    move-result v21

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    shl-int/lit8 v13, v13, 0x10

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_b4
    move v13, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b5
    move v1, v15

    nop

    nop

    nop

    nop

    :goto_b6
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    add-int v14, v0, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    :goto_b8
    add-int v6, v6, v21

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    aput v10, v30, v34

    nop

    goto/32 :goto_cc

    nop

    nop

    :goto_ba
    invoke-interface/range {v18 .. v18}, Lprv;->getRowStride()I

    move-result v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    move v14, v15

    nop

    nop

    nop

    :goto_bc
    goto/32 :goto_19a

    nop

    nop

    nop

    nop

    :goto_bd
    sub-int v4, v25, v3

    nop

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    :goto_be
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_1a1

    nop

    nop

    nop

    :goto_bf
    add-int v23, v5, v5

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    move/from16 v42, v15

    nop

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    add-int v1, v20, v20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_c2
    const/16 v1, 0xff

    nop

    goto/32 :goto_1d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_1cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    move-object/from16 v1, v37

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_179

    nop

    nop

    :goto_c5
    if-gt v13, v15, :cond_11

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    move/from16 v8, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_186

    nop

    nop

    nop

    nop

    :goto_c7
    mul-int v27, v0, v23

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    :goto_c8
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_c9
    goto/32 :goto_1a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    move/from16 v42, v15

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    const/16 v15, 0xff

    nop

    goto/32 :goto_1f0

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    move/from16 v41, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_cd
    move v15, v14

    nop

    goto/32 :goto_d4

    nop

    nop

    :goto_ce
    move/from16 v12, p2

    nop

    nop

    nop

    goto/32 :goto_154

    nop

    nop

    nop

    :goto_cf
    if-ne v2, v9, :cond_12

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :cond_12
    goto/32 :goto_5c

    nop

    nop

    :goto_d0
    move v7, v11

    nop

    goto/32 :goto_187

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    move/from16 v41, v0

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_d2
    if-gt v7, v1, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_69

    nop

    nop

    nop

    :goto_d3
    if-gt v14, v15, :cond_14

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_d4
    const/16 v14, 0xff

    nop

    nop

    nop

    nop

    :goto_d5
    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    :goto_d6
    move/from16 p1, v11

    nop

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    aput v10, v30, v27

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    :goto_d8
    move-object v7, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b0

    nop

    nop

    nop

    :goto_d9
    add-int/2addr v0, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    nop

    nop

    :goto_da
    add-int/lit8 v35, v27, 0x1

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    :goto_db
    and-int/2addr v8, v10

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    :goto_dc
    move-object/from16 v31, v6

    nop

    goto/32 :goto_1e9

    nop

    nop

    nop

    :goto_dd
    sub-int v4, v29, v24

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f2

    nop

    nop

    nop

    :goto_de
    move-object/from16 v12, v32

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_df
    aput v10, v30, v35

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1cb

    nop

    nop

    nop

    :goto_e0
    goto/16 :goto_1a

    nop

    nop

    nop

    :goto_e1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    add-int/lit8 v4, v29, 0x2

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    move-object/from16 v32, v7

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    :goto_e4
    float-to-double v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18f

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    if-eq v2, v3, :cond_15

    nop

    goto/32 :goto_9e

    nop

    :cond_15
    goto/32 :goto_159

    nop

    nop

    nop

    :goto_e6
    move-object/from16 v12, v32

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    :goto_e7
    if-ltz v41, :cond_16

    nop

    goto/32 :goto_1f1

    nop

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_16a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    move/from16 v15, v42

    nop

    goto/32 :goto_15e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    const/16 v14, 0xff

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

    :goto_ea
    move/from16 v40, v14

    nop

    goto/32 :goto_196

    nop

    nop

    :goto_eb
    move/from16 v8, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    :goto_ec
    div-int/lit8 v24, v3, 0x2

    nop

    goto/32 :goto_172

    nop

    nop

    nop

    :goto_ed
    add-int v13, v5, v20

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

    nop

    nop

    :goto_ee
    mul-int v22, v22, v8

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_ef
    add-int v1, v41, v22

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_f0
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c7

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    nop

    nop

    nop

    nop

    goto/32 :goto_1dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    move-object/from16 v2, p0

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_f3
    div-int/lit8 v1, v3, 0x2

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    add-int v15, v13, v10

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_f5
    move/from16 p1, v11

    nop

    nop

    goto/32 :goto_161

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    add-double/2addr v1, v3

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_f7
    sub-int v6, v1, v5

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    shr-int/lit8 v11, v12, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_1b6

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    if-le v9, v1, :cond_17

    nop

    goto/32 :goto_1de

    nop

    nop

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_19f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    add-int v1, v0, v10

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_fb
    move/from16 v1, v29

    nop

    nop

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    :goto_fc
    const/4 v14, 0x0

    nop

    :goto_fd
    goto/32 :goto_19e

    nop

    nop

    :goto_fe
    const/16 v14, 0xff

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    :goto_ff
    or-int/2addr v1, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17c

    nop

    nop

    nop

    nop

    nop

    :goto_100
    invoke-interface {v2}, Lprv;->getRowStride()I

    goto/32 :goto_143

    nop

    nop

    :goto_101
    const/16 v0, 0xff

    nop

    nop

    nop

    nop

    nop

    :goto_102
    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :goto_103
    mul-int/lit8 v2, v26, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_104
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_105
    sub-int v6, v1, v5

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_106
    if-ltz v14, :cond_18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1af

    nop

    :cond_18
    goto/32 :goto_1ae

    nop

    nop

    nop

    nop

    nop

    :goto_107
    move/from16 v5, v33

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_108
    add-int v0, v5, v17

    nop

    goto/32 :goto_193

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_109
    move/from16 v4, v19

    nop

    nop

    goto/32 :goto_1e5

    nop

    nop

    :goto_10a
    goto/16 :goto_17b

    nop

    nop

    nop

    nop

    :goto_10b
    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10c
    const-string v3, "Incorrect number planes ("

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_10d
    move v14, v15

    nop

    nop

    nop

    nop

    nop

    :goto_10e
    goto/32 :goto_c5

    nop

    nop

    :goto_10f
    move/from16 v6, v34

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_110
    goto/16 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_111
    goto/32 :goto_37

    nop

    nop

    :goto_112
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    :goto_113
    const/4 v4, 0x1

    nop

    goto/32 :goto_1c8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_114
    goto/16 :goto_1d8

    nop

    :goto_115
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_116
    add-int v41, v13, v10

    nop

    nop

    nop

    goto/32 :goto_185

    nop

    nop

    nop

    :goto_117
    invoke-static/range {p1 .. p2}, Llrd;->i(Lprw;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    nop

    goto/32 :goto_178

    nop

    nop

    nop

    nop

    :goto_118
    move v1, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15b

    nop

    nop

    nop

    nop

    nop

    :goto_119
    const/16 v10, 0xff

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    :goto_11a
    div-int/lit8 v35, v11, 0x2

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_11b
    or-int/2addr v13, v14

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

    nop

    :goto_11c
    move v13, v15

    nop

    nop

    :goto_11d
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_11e
    div-int/2addr v3, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    add-int v13, v0, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_120
    move/from16 v4, v17

    nop

    goto/32 :goto_184

    nop

    nop

    nop

    :goto_121
    move-object/from16 v37, v28

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

    :goto_122
    mul-int v18, v18, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_123
    and-int/2addr v13, v14

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_124
    goto/16 :goto_1e3

    nop

    nop

    nop

    :goto_125
    goto/32 :goto_85

    nop

    nop

    nop

    :goto_126
    if-lt v7, v2, :cond_19

    nop

    nop

    goto/32 :goto_1eb

    nop

    nop

    :cond_19
    goto/32 :goto_1ea

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_127
    move-object/from16 v10, v31

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_128
    if-gt v14, v15, :cond_1a

    nop

    nop

    goto/32 :goto_10e

    nop

    :cond_1a
    goto/32 :goto_10d

    nop

    nop

    :goto_129
    const/4 v3, 0x1

    nop

    goto/32 :goto_144

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12a
    goto/16 :goto_17b

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_12c
    if-ltz v15, :cond_1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a2

    nop

    :cond_1b
    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_12d
    if-gt v13, v14, :cond_1c

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    :cond_1c
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_12e
    move-object/from16 v37, v28

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12f
    const/4 v0, 0x0

    nop

    goto/32 :goto_1e7

    nop

    nop

    nop

    nop

    :goto_130
    move v10, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_131
    move/from16 v5, v20

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_132
    move/from16 v32, v1

    nop

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_133
    sub-int v1, v26, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_134
    const/4 v13, 0x0

    nop

    :goto_135
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_136
    invoke-static/range {v0 .. v7}, Llrd;->a(IIIIIIII)I

    move-result v0

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

    :goto_137
    sub-int v0, v4, v15

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_138
    move/from16 v16, v10

    nop

    nop

    nop

    :goto_139
    goto/32 :goto_145

    nop

    nop

    nop

    :goto_13a
    invoke-static {v1}, Llrd;->k(I)I

    move-result v12

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

    :goto_13b
    move/from16 v4, v18

    nop

    goto/32 :goto_160

    nop

    nop

    nop

    :goto_13c
    throw v1

    nop

    nop

    :goto_13d
    goto/32 :goto_50

    nop

    nop

    :goto_13e
    move/from16 p2, v12

    nop

    nop

    goto/32 :goto_153

    nop

    nop

    nop

    nop

    :goto_13f
    if-eq v7, v4, :cond_1d

    nop

    goto/32 :goto_1b2

    nop

    nop

    :cond_1d
    goto/32 :goto_1b1

    nop

    nop

    :goto_140
    invoke-static {v1}, Llrd;->k(I)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_180

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_141
    move-object v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_142
    if-gt v0, v15, :cond_1e

    nop

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_101

    nop

    nop

    nop

    :goto_143
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_144
    move/from16 v0, v16

    nop

    goto/32 :goto_141

    nop

    nop

    :goto_145
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_146
    if-ltz v13, :cond_1f

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    nop

    :cond_1f
    goto/32 :goto_134

    nop

    nop

    nop

    nop

    nop

    :goto_147
    mul-int v26, v5, v5

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_148
    move-object/from16 v12, v32

    nop

    nop

    goto/32 :goto_18b

    nop

    nop

    nop

    nop

    nop

    :goto_149
    add-int v3, v25, v3

    nop

    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14a
    check-cast v17, Lprv;

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

    :goto_14b
    add-int/lit8 v12, v12, -0x80

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14c
    move/from16 v13, v39

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_14d
    invoke-virtual {v12, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_14e
    move v15, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_138

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14f
    add-int/2addr v8, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16c

    nop

    nop

    nop

    nop

    :goto_150
    move/from16 v11, p1

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

    :goto_151
    move/from16 v32, v1

    nop

    nop

    goto/32 :goto_1c1

    nop

    nop

    :goto_152
    check-cast v0, Lprv;

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_153
    move/from16 v39, v13

    nop

    nop

    goto/32 :goto_1e6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_154
    goto/16 :goto_ad

    nop

    nop

    :goto_155
    goto/32 :goto_15d

    nop

    nop

    :goto_156
    div-int/lit8 v1, v2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    :goto_157
    add-int/lit8 v27, v27, 0x2

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_158
    const/16 v15, 0xff

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_159
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_15a
    move/from16 v7, v16

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    :goto_15b
    move-object/from16 v28, v2

    nop

    nop

    nop

    goto/32 :goto_1bf

    nop

    nop

    nop

    nop

    :goto_15c
    move-object/from16 v30, v5

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_15d
    move v0, v10

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_15e
    const/4 v9, 0x2

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_15f
    mul-int/2addr v5, v5

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_160
    move/from16 v5, v21

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    :goto_161
    move/from16 p2, v12

    nop

    goto/32 :goto_182

    nop

    nop

    :goto_162
    move/from16 p2, v12

    nop

    nop

    goto/32 :goto_19b

    nop

    nop

    nop

    :goto_163
    if-le v7, v1, :cond_20

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    :cond_20
    goto/32 :goto_126

    nop

    nop

    nop

    nop

    :goto_164
    goto/16 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_165
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_166
    shl-int/lit8 v13, v13, 0x10

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

    :goto_167
    const v1, 0x8

    nop

    goto/32 :goto_169

    nop

    nop

    nop

    :goto_168
    invoke-static {v1}, Llrd;->k(I)I

    move-result v1

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_169
    add-int v0, v0, v1

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16a
    move/from16 v41, v0

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_16b
    invoke-interface {v2}, Lprv;->getPixelStride()I

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_16c
    shr-int/lit8 v8, v8, 0x8

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16d
    move v13, v15

    nop

    nop

    nop

    nop

    nop

    :goto_16e
    goto/32 :goto_142

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16f
    new-array v5, v2, [I

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_170
    if-lt v7, v4, :cond_21

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    :cond_21
    :goto_171
    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :goto_172
    div-int/lit8 v25, v2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_147

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_173
    if-gt v1, v8, :cond_22

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :cond_22
    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_174
    move v14, v8

    nop

    nop

    :goto_175
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_176
    const/4 v13, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_177
    goto/32 :goto_e7

    nop

    nop

    :goto_178
    invoke-interface/range {p1 .. p1}, Lprw;->g()Ljava/util/List;

    move-result-object v0

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_179
    const/4 v9, 0x2

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

    :goto_17a
    aput v0, v30, v34

    nop

    nop

    :goto_17b
    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :goto_17c
    or-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b7

    nop

    nop

    nop

    :goto_17d
    const/16 v1, 0xff

    nop

    nop

    :goto_17e
    goto/32 :goto_166

    nop

    nop

    nop

    nop

    nop

    :goto_17f
    move v14, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_180
    invoke-static {v6}, Llrd;->k(I)I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_181
    if-gt v0, v14, :cond_23

    nop

    nop

    nop

    goto/32 :goto_1a7

    nop

    nop

    nop

    nop

    :cond_23
    goto/32 :goto_1a6

    nop

    nop

    :goto_182
    move-object/from16 v11, v28

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_183
    if-eq v7, v2, :cond_24

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :cond_24
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_184
    move-object/from16 v30, v5

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    nop

    :goto_185
    add-int/2addr v13, v11

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_186
    iget v2, v2, Llrd;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ec

    nop

    nop

    nop

    nop

    :goto_187
    invoke-static/range {v0 .. v7}, Llrd;->a(IIIIIIII)I

    move-result v33

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_188
    move/from16 v1, v32

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_189
    or-int v0, v0, v32

    nop

    nop

    nop

    goto/32 :goto_1a9

    nop

    nop

    nop

    nop

    nop

    :goto_18a
    invoke-static/range {v0 .. v7}, Llrd;->a(IIIIIIII)I

    move-result v36

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    :goto_18b
    move/from16 v32, v1

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    :goto_18c
    if-ltz v8, :cond_25

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :cond_25
    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_18d
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_18e
    aput v0, v30, v34

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_18f
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    nop

    nop

    nop

    goto/32 :goto_1f4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_190
    mul-int v20, v20, v8

    nop

    nop

    goto/32 :goto_1a5

    nop

    nop

    nop

    nop

    nop

    :goto_191
    check-cast v18, Lprv;

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_192
    mul-int/lit16 v11, v12, -0xb6

    nop

    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    :goto_193
    if-ne v9, v3, :cond_26

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_26
    goto/32 :goto_194

    nop

    nop

    :goto_194
    if-eq v9, v4, :cond_27

    nop

    goto/32 :goto_e1

    nop

    nop

    :cond_27
    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    :goto_195
    move/from16 v16, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1be

    nop

    nop

    nop

    :goto_196
    move/from16 v42, v15

    nop

    goto/32 :goto_12e

    nop

    nop

    :goto_197
    move/from16 v39, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    :goto_198
    if-ltz v14, :cond_28

    nop

    goto/32 :goto_5f

    nop

    nop

    :cond_28
    goto/32 :goto_e9

    nop

    nop

    nop

    :goto_199
    or-int/2addr v0, v1

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

    :goto_19a
    if-gt v13, v15, :cond_29

    nop

    goto/32 :goto_16e

    nop

    nop

    nop

    nop

    nop

    :cond_29
    goto/32 :goto_16d

    nop

    nop

    nop

    nop

    :goto_19b
    move/from16 v39, v13

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    :goto_19c
    goto/32 :goto_13d

    nop

    nop

    nop

    :goto_19d
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_19e
    if-ltz v13, :cond_2a

    nop

    nop

    nop

    nop

    goto/32 :goto_177

    nop

    nop

    :cond_2a
    goto/32 :goto_176

    nop

    nop

    nop

    nop

    :goto_19f
    if-lt v9, v2, :cond_2b

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    :cond_2b
    goto/32 :goto_73

    nop

    nop

    :goto_1a0
    invoke-static {v2, v3}, Llrd;->d(II)I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_1c0

    nop

    nop

    :goto_1a1
    goto/16 :goto_b6

    nop

    nop

    :goto_1a2
    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_1a3
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    nop

    :goto_1a4
    iget v1, v1, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    nop

    :goto_1a5
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_1a6
    move v0, v14

    nop

    nop

    nop

    nop

    :goto_1a7
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_1a8
    if-ltz v1, :cond_2c

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

    :cond_2c
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_1a9
    aput v0, v30, v27

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    nop

    :goto_1aa
    if-ne v7, v1, :cond_2d

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

    :cond_2d
    goto/32 :goto_183

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ab
    add-int v0, v0, v20

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

    :goto_1ac
    shl-int/lit8 v1, v14, 0x8

    nop

    goto/32 :goto_1e4

    nop

    nop

    nop

    :goto_1ad
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_13c

    nop

    nop

    nop

    :goto_1ae
    const/4 v14, 0x0

    nop

    nop

    :goto_1af
    goto/32 :goto_af

    nop

    nop

    :goto_1b0
    move-object/from16 v5, v30

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

    :goto_1b1
    goto/16 :goto_165

    nop

    nop

    nop

    nop

    :goto_1b2
    goto/32 :goto_1f7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b3
    if-lt v7, v4, :cond_2e

    nop

    nop

    goto/32 :goto_111

    nop

    :cond_2e
    goto/32 :goto_110

    nop

    nop

    nop

    :goto_1b4
    move v10, v1

    nop

    nop

    nop

    nop

    nop

    :goto_1b5
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b6
    const/high16 v38, -0x80000000

    nop

    nop

    goto/32 :goto_163

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b7
    aput v0, v30, v35

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1dd

    nop

    nop

    nop

    nop

    :goto_1b8
    and-int/2addr v13, v14

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b9
    if-le v7, v3, :cond_2f

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_2f
    goto/32 :goto_1b3

    nop

    nop

    nop

    :goto_1ba
    invoke-static {v6}, Llrd;->k(I)I

    move-result v11

    nop

    nop

    goto/32 :goto_1a4

    nop

    nop

    :goto_1bb
    float-to-double v5, v5

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1bc
    if-lt v4, v13, :cond_30

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :cond_30
    goto/32 :goto_137

    nop

    nop

    nop

    nop

    :goto_1bd
    add-int v1, v25, v1

    nop

    goto/32 :goto_1c5

    nop

    nop

    :goto_1be
    move v15, v10

    nop

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

    nop

    :goto_1bf
    move/from16 v2, p3

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

    :goto_1c0
    iget v6, v1, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_1ba

    nop

    nop

    nop

    nop

    :goto_1c1
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1e0

    nop

    nop

    :goto_1c2
    goto/16 :goto_12b

    nop

    nop

    nop

    :goto_1c3
    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    :goto_1c4
    const/4 v0, 0x0

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :goto_1c5
    add-int/lit8 v5, v29, 0x1

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_1c6
    move/from16 v40, v14

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    :goto_1c7
    add-double/2addr v5, v3

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

    :goto_1c8
    const/4 v9, 0x2

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_1c9
    div-int/2addr v2, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    :goto_1ca
    if-gt v0, v8, :cond_31

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_31
    goto/32 :goto_10

    nop

    nop

    :goto_1cb
    aput v10, v30, v33

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    :goto_1cc
    const-string v0, ") in YUV Image Object"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1cd
    invoke-interface {v1}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_1f6

    nop

    nop

    nop

    nop

    :goto_1ce
    const/4 v13, 0x0

    nop

    nop

    :goto_1cf
    goto/32 :goto_132

    nop

    nop

    nop

    nop

    nop

    :goto_1d0
    and-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1d1
    add-int/lit8 v34, v33, 0x1

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    :goto_1d2
    const/16 v15, 0xff

    nop

    nop

    :goto_1d3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1d4
    if-le v9, v3, :cond_32

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

    :cond_32
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1d5
    check-cast v2, Lprv;

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_1d6
    invoke-static {v0, v1, v8, v4}, Llrd;->g(Lprw;Landroid/graphics/Rect;IZ)[I

    move-result-object v0

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_1d7
    aput v0, v30, v27

    nop

    nop

    nop

    :goto_1d8
    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    :goto_1d9
    move v14, v8

    nop

    :goto_1da
    goto/32 :goto_1ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1db
    and-int/2addr v12, v10

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

    :goto_1dc
    check-cast v22, Lprv;

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_1dd
    goto :goto_1e1

    nop

    nop

    nop

    nop

    :goto_1de
    goto/32 :goto_151

    nop

    nop

    nop

    :goto_1df
    int-to-float v5, v5

    nop

    nop

    goto/32 :goto_1bb

    nop

    nop

    nop

    nop

    :goto_1e0
    aput v0, v30, v35

    nop

    nop

    :goto_1e1
    goto/32 :goto_1b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e2
    goto/16 :goto_78

    nop

    nop

    nop

    :goto_1e3
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_1e4
    or-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_1e5
    move/from16 v5, v22

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    :goto_1e6
    move/from16 v40, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_1e7
    aput v0, v30, v33

    nop

    :goto_1e8
    goto/32 :goto_1d4

    nop

    nop

    nop

    :goto_1e9
    move v6, v12

    nop

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

    nop

    :goto_1ea
    goto/16 :goto_115

    nop

    nop

    :goto_1eb
    goto/32 :goto_1aa

    nop

    nop

    nop

    nop

    :goto_1ec
    add-int/lit8 v2, v2, -0x1

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

    :goto_1ed
    move v4, v15

    nop

    nop

    nop

    :goto_1ee
    goto/32 :goto_1bc

    nop

    nop

    nop

    nop

    :goto_1ef
    const v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_167

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f0
    goto/16 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_1f1
    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_1f2
    mul-int/2addr v4, v4

    nop

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    :goto_1f3
    invoke-interface/range {v20 .. v20}, Lprv;->getPixelStride()I

    move-result v20

    nop

    nop

    nop

    goto/32 :goto_190

    nop

    nop

    nop

    :goto_1f4
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    :goto_1f5
    or-int/2addr v13, v14

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

    nop

    :goto_1f6
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_1f7
    const/high16 v1, -0x1000000

    nop

    nop

    goto/32 :goto_164

    nop

    nop

    nop
.end method

.method public final e(Llre;[II)V
    .locals 3

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p1, Lfdo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Llqo;->k:Llqt;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_4
    const/4 p3, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p1, p2, p3}, Lfdo;-><init>(Ljava/lang/Object;[B)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Llrf;

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

    :goto_8
    const v1, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    iget-wide v1, p0, Llrd;->d:J

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_d

    nop

    :goto_f
    iget-object p0, p0, Llrd;->h:Llqo;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_10
    const v0, 0x2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p0, v0, p1}, Llqs;->d(Llrf;Lfdo;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0, v1, v2, p1, p3}, Llrf;-><init>(JLlre;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public run()V
    .locals 8

    goto/32 :goto_37

    nop

    nop

    :goto_0
    invoke-static {v2, v3}, Llto;->i(Lpck;Lpck;)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1
    const v1, 0x18

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Llrd;->f(Llqw;)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3
    throw v1

    nop

    nop

    :goto_4
    goto/32 :goto_49

    nop

    nop

    :goto_5
    move v2, v4

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2b

    nop

    nop

    :goto_7
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_2f

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3e

    nop

    nop

    :goto_b
    invoke-static {v2, v3}, Llto;->j(II)Z

    move-result v4

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v1, "CAM_TaskRGBPreview"

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_d
    iget-object v0, v0, Llqw;->a:Lprw;

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

    :goto_e
    iget-object v2, p0, Llrd;->h:Llqo;

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

    :goto_f
    new-instance v2, Lpck;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Llrd;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_6

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v3, p0, Llrd;->a:Lpck;

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

    :goto_14
    if-ge v3, v4, :cond_0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    :goto_15
    goto/16 :goto_6

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget v3, v3, Lpck;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_18
    if-ne v3, v4, :cond_1

    nop

    goto/32 :goto_16

    nop

    :cond_1
    goto/32 :goto_44

    nop

    nop

    :goto_19
    const/4 v4, 0x3

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception v1

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

    :goto_1b
    iget v4, v2, Lpck;->a:I

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_1c
    iget v2, v2, Lpck;->b:I

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

    :goto_1d
    if-eqz v4, :cond_2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1f
    div-int/2addr v6, v7

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

    :goto_20
    iget-object v0, p0, Llrd;->e:Llqw;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_21
    add-int/lit8 v3, v3, -0x1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v2, v0, p0}, Llqo;->b(Lprw;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_23
    iget-object v4, p0, Llrd;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_24
    iget-object v1, v0, Llqw;->a:Lprw;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v0, v0, Llqw;->a:Lprw;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0, v3, v1, v5}, Llrd;->e(Llre;[II)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_4

    nop

    :goto_29
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_2a
    iget-object p0, p0, Llrd;->i:Lpdf;

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

    :goto_2b
    invoke-virtual {p0, v0, v2}, Llrd;->b(Llqw;I)Llre;

    move-result-object v3

    nop

    nop

    nop

    :try_start_0
    iget-wide v6, p0, Llrd;->d:J

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v6, v7, v3, v5}, Llrg;->j(JLlre;I)V

    iget-object v4, v0, Llqw;->a:Lprw;

    nop

    nop

    invoke-interface {v4}, Lprw;->c()I

    iget-object v4, v0, Llqw;->a:Lprw;

    nop

    nop

    nop

    invoke-interface {v4}, Lprw;->b()I

    iget-object v4, v0, Llqw;->a:Lprw;

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v4, v1, v2}, Llrd;->c(Lprw;Landroid/graphics/Rect;I)[I

    move-result-object v1

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_32

    nop

    nop

    :goto_2c
    if-lez v3, :cond_3

    nop

    goto/32 :goto_42

    nop

    nop

    :cond_3
    goto/32 :goto_3f

    nop

    nop

    :goto_2d
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    nop

    nop

    :goto_2f
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_30
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_4
    goto/32 :goto_28

    nop

    :goto_31
    invoke-static {v1, v2}, Llrd;->i(Lprw;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v2, p0, Llrd;->h:Llqo;

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

    nop

    :goto_33
    goto/16 :goto_16

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_35
    const/4 v4, 0x2

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

    :goto_36
    const/4 v5, 0x1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const v0, 0x19

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

    :goto_38
    iget v3, p0, Llrd;->b:I

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_39
    iget-object v0, p0, Llrd;->i:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3a
    iget v4, v2, Lpck;->a:I

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-eq v3, v4, :cond_5

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-direct {v2, v3, v4}, Lpck;-><init>(II)V

    goto/32 :goto_38

    nop

    nop

    :goto_3d
    iget-object v2, v0, Llqw;->d:Landroid/graphics/Rect;

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_3e
    move v2, v3

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3f
    move v2, v5

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_40
    iget v6, v2, Lpck;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_41
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_43
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_44
    const/4 v4, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v2, v0, v4}, Llqo;->b(Lprw;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v3, p0, Llrd;->a:Lpck;

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

    :goto_47
    div-int/2addr v4, v3

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_48
    iget v7, v3, Lpck;->b:I

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_49
    goto/32 :goto_29

    nop

    nop

    :goto_4a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop
.end method
