.class public final Lfbk;
.super Lfay;
.source "PG"


# instance fields
.field public e:Ljava/util/List;

.field private final f:Lfcv;

.field private final g:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lfay;-><init>(Ljava/util/List;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lfbk;->g:Landroid/graphics/Path;

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

    :goto_2
    iput-object p1, p0, Lfbk;->f:Lfcv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    new-instance p1, Landroid/graphics/Path;

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

    :goto_5
    invoke-direct {p1}, Lfcv;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance p1, Lfcv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic f(Lffj;F)Ljava/lang/Object;
    .locals 21

    goto/32 :goto_14c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    div-float v1, v7, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_182

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_168

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_149

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v8, v15, Landroid/graphics/PointF;->y:F

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    :goto_4
    new-instance v4, Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_1be

    nop

    nop

    nop

    :goto_5
    iget-object v5, v3, Lfap;->b:Lfcv;

    nop

    nop

    nop

    goto/32 :goto_163

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v6, v15, Landroid/graphics/PointF;->x:F

    nop

    nop

    goto/32 :goto_196

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v13, v13, Lfbr;->a:Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v2, v1, Lfcv;->a:Ljava/util/List;

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_9
    check-cast v14, Lfbr;

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b0

    nop

    nop

    :goto_b
    const/4 v6, 0x1

    nop

    goto/32 :goto_1e0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move v7, v12

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    :goto_d
    add-int/lit8 v10, v10, 0x2

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v13, v5}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_f
    const/4 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_166

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v9, v11, v10}, Lfbr;->b(FF)V

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move v11, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    :goto_12
    check-cast v2, Lfbr;

    nop

    nop

    nop

    goto/32 :goto_1e2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget v2, v2, Landroid/graphics/PointF;->x:F

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

    :goto_15
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    :goto_16
    iget v3, v11, Landroid/graphics/PointF;->x:F

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget v8, v15, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v9, v0, Lfbk;->g:Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_19
    iget v14, v15, Landroid/graphics/PointF;->x:F

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sub-float/2addr v4, v2

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sub-float/2addr v11, v9

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_16b

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_150

    nop

    nop

    nop

    nop

    :goto_1e
    const-string v9, "Curves must have the same number of control points. Shape 1: "

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    mul-float/2addr v4, v0

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_15d

    nop

    :goto_21
    goto/32 :goto_fb

    nop

    nop

    nop

    :goto_22
    iget v1, v15, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_23
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    :goto_24
    if-nez v1, :cond_0

    nop

    goto/32 :goto_1c4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    add-int/lit8 v6, v6, 0x1

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

    :goto_26
    invoke-virtual {v0, v2, v3}, Lfbr;->c(FF)V

    goto/32 :goto_106

    nop

    nop

    :goto_27
    invoke-virtual {v7}, Lfay;->e()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_28
    invoke-virtual {v14, v3, v4}, Lfbr;->a(FF)V

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_29
    check-cast v13, Lfbr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f0

    nop

    nop

    nop

    :goto_2a
    check-cast v7, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    new-instance v9, Lfbr;

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_2c
    new-instance v9, Lfbr;

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_13d

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v4, v2, Lfcv;->a:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_30
    if-gt v7, v4, :cond_1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_202

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const/4 v8, 0x2

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_32
    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

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

    :goto_33
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_34
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    add-float/2addr v11, v13

    nop

    goto/32 :goto_1e8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-nez v11, :cond_2

    nop

    goto/32 :goto_c2

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_37
    move v9, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    :goto_38
    iget v6, v3, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3a
    iget v4, v2, Landroid/graphics/PointF;->y:F

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    move-object/from16 v18, v1

    nop

    goto/32 :goto_206

    nop

    nop

    :goto_3c
    if-eqz v11, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1e1

    nop

    :cond_3
    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const/4 v8, 0x0

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

    :goto_3e
    if-gt v7, v8, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_142

    nop

    :cond_4
    goto/32 :goto_131

    nop

    nop

    nop

    :goto_3f
    move/from16 p2, v6

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    :goto_40
    iget-object v6, v14, Lfbr;->b:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_18f

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget v2, v15, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    :goto_43
    iget-object v4, v3, Lfcv;->b:Landroid/graphics/PointF;

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

    :goto_44
    sub-float/2addr v14, v1

    nop

    nop

    nop

    goto/32 :goto_215

    nop

    nop

    :goto_45
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    nop

    goto/32 :goto_1e3

    nop

    nop

    nop

    nop

    :goto_46
    mul-float/2addr v1, v12

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

    :goto_47
    add-int/lit8 v11, v10, 0x1

    nop

    nop

    goto/32 :goto_171

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v15, v5}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v11

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_49
    check-cast v7, Lfbr;

    nop

    nop

    goto/32 :goto_203

    nop

    nop

    :goto_4a
    sub-float/2addr v6, v8

    nop

    nop

    goto/32 :goto_1c1

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_181

    nop

    nop

    nop

    nop

    :goto_4c
    add-int/lit8 v12, v12, 0x1

    nop

    nop

    :goto_4d
    goto/32 :goto_11

    nop

    nop

    :goto_4e
    iget v7, v7, Landroid/graphics/PointF;->y:F

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object v15, v14, Lfbr;->c:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_16c

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget v3, v11, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    :goto_52
    if-gez v2, :cond_5

    nop

    nop

    goto/32 :goto_1f5

    nop

    :cond_5
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_208

    nop

    nop

    :goto_54
    move-object v3, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_218

    nop

    nop

    :goto_55
    const/4 v10, 0x0

    nop

    :goto_56
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_57
    iget v13, v12, Landroid/graphics/PointF;->x:F

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    :goto_58
    iget v11, v11, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iget-object v0, v13, Lfbr;->a:Landroid/graphics/PointF;

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_5b
    div-float v0, v7, v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5c
    goto/16 :goto_d9

    nop

    :goto_5d
    goto/32 :goto_125

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    mul-float/2addr v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_5f
    sget-object v2, Lffd;->a:Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-virtual {v13, v14, v9}, Lfbr;->a(FF)V

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    goto/32 :goto_153

    nop

    nop

    :goto_62
    add-float/2addr v7, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19a

    nop

    nop

    nop

    nop

    :goto_63
    iget v3, v3, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_64
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    :cond_6
    goto/32 :goto_dc

    nop

    :goto_65
    iget-object v1, v1, Lffj;->c:Ljava/lang/Object;

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

    :goto_66
    goto/32 :goto_dd

    nop

    :goto_67
    iget v4, v4, Landroid/graphics/PointF;->y:F

    nop

    nop

    goto/32 :goto_217

    nop

    nop

    nop

    :goto_68
    if-nez v2, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_205

    nop

    nop

    :cond_7
    goto/32 :goto_173

    nop

    nop

    nop

    nop

    nop

    :goto_69
    if-nez v9, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_142

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    :goto_6a
    check-cast v15, Lfbr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20a

    nop

    nop

    nop

    :goto_6b
    iget v14, v9, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1c9

    nop

    nop

    nop

    nop

    :goto_6c
    sub-float/2addr v12, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    :goto_6d
    iget-object v9, v3, Lfcv;->a:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_1d2

    nop

    nop

    nop

    :goto_6e
    goto/16 :goto_110

    nop

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_1ab

    nop

    nop

    :goto_70
    add-float/2addr v6, v2

    nop

    goto/32 :goto_19b

    nop

    nop

    nop

    :goto_71
    goto/16 :goto_1af

    nop

    nop

    :goto_72
    goto/32 :goto_187

    nop

    nop

    nop

    nop

    :goto_73
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1ce

    nop

    nop

    :goto_75
    if-lt v7, v4, :cond_9

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    iget v6, v2, Landroid/graphics/PointF;->x:F

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_77
    add-float/2addr v0, v6

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v0, v2, v3}, Lfbr;->b(FF)V

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    :goto_79
    move-object/from16 v19, v4

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

    nop

    nop

    :goto_7a
    iget v8, v4, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :goto_7b
    double-to-float v0, v0

    nop

    goto/32 :goto_18c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_210

    nop

    nop

    :goto_7d
    invoke-virtual {v3, v5, v6}, Lfcv;->a(FF)V

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    mul-float/2addr v2, v12

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-static {v15, v8}, Lfap;->a(II)I

    move-result v8

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_80
    iget-object v7, v1, Lfcv;->b:Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_81
    move-object/from16 v20, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_185

    nop

    nop

    nop

    nop

    :goto_82
    iget v2, v2, Landroid/graphics/PointF;->y:F

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_83
    iget-boolean v6, v1, Lfcv;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1b2

    nop

    nop

    :goto_84
    mul-float v11, v11, p2

    nop

    nop

    nop

    goto/32 :goto_1ca

    nop

    nop

    :goto_85
    add-float/2addr v8, v9

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    check-cast v9, Lfbr;

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

    nop

    nop

    :goto_87
    check-cast v3, Lfap;

    nop

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    if-eqz v4, :cond_a

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_1fe

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    iget-object v0, v0, Lfbk;->g:Landroid/graphics/Path;

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_8a
    invoke-direct {v9}, Lfbr;-><init>()V

    goto/32 :goto_17d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    iget-object v11, v8, Lfbr;->a:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_164

    nop

    nop

    nop

    nop

    :goto_8c
    sub-float v8, v0, v8

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_8d
    check-cast v13, Lfbr;

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    const/4 v13, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_139

    nop

    nop

    nop

    nop

    :goto_8f
    iget-object v2, v14, Lfbr;->b:Landroid/graphics/PointF;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    iget-object v5, v3, Lfcv;->a:Ljava/util/List;

    nop

    goto/32 :goto_1ed

    nop

    nop

    nop

    nop

    nop

    :goto_91
    iget-object v3, v0, Lfbk;->e:Ljava/util/List;

    nop

    nop

    goto/32 :goto_1cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    iget v12, v12, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_93
    if-eqz v11, :cond_b

    nop

    nop

    nop

    goto/32 :goto_1e5

    nop

    nop

    :cond_b
    goto/32 :goto_144

    nop

    nop

    nop

    nop

    :goto_94
    float-to-double v13, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    :goto_95
    iget-object v8, v8, Lfbr;->c:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    goto/32 :goto_178

    nop

    nop

    :goto_96
    iget-object v9, v3, Lfcv;->a:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    :goto_97
    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    goto/32 :goto_195

    nop

    nop

    nop

    :goto_98
    if-ne v4, v7, :cond_c

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    :goto_99
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    goto/32 :goto_66

    nop

    nop

    nop

    :goto_9b
    invoke-virtual {v14, v0, v6}, Lfbr;->c(FF)V

    goto/32 :goto_19e

    nop

    nop

    nop

    nop

    :goto_9c
    add-int/lit8 v4, v4, -0x1

    nop

    nop

    goto/32 :goto_1c7

    nop

    nop

    :goto_9d
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

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

    :goto_9e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    goto/16 :goto_ed

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    goto/32 :goto_1e9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    invoke-virtual {v9, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_a2
    iget v5, v3, Landroid/graphics/PointF;->x:F

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_a3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_a5
    move-object/from16 v17, v13

    nop

    nop

    nop

    goto/32 :goto_1ef

    nop

    nop

    :goto_a6
    sub-float/2addr v3, v1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    if-nez v5, :cond_d

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_11e

    nop

    nop

    :goto_a8
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_a9
    sub-float v12, v6, v13

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_aa
    cmpl-float v9, v7, v8

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_ab
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1cf

    nop

    nop

    nop

    nop

    :goto_ac
    sget-object v3, Lffd;->a:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    goto/32 :goto_19f

    nop

    nop

    nop

    :goto_ad
    invoke-static {v12, v14}, Lfap;->a(II)I

    move-result v12

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    :goto_ae
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    :goto_af
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_b0
    iget-object v4, v2, Lfbr;->b:Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_1f7

    nop

    nop

    :goto_b1
    iget v6, v8, Landroid/graphics/PointF;->x:F

    nop

    goto/32 :goto_18b

    nop

    nop

    nop

    :goto_b2
    add-float/2addr v4, v6

    nop

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

    nop

    :goto_b3
    if-nez v6, :cond_e

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_145

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    invoke-virtual {v3, v2}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_b5
    sget-object v10, Lffd;->a:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    goto/32 :goto_1bb

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    sub-float/2addr v2, v8

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

    :goto_b7
    invoke-virtual {v3, v4, v2}, Landroid/graphics/PointF;->set(FF)V

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_b8
    move/from16 p2, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16d

    nop

    nop

    nop

    nop

    :goto_b9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    :goto_ba
    move v8, v13

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    :goto_bb
    check-cast v2, Lfcv;

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_bc
    iget v3, v2, Landroid/graphics/PointF;->x:F

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_bd
    if-eqz v9, :cond_f

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_eb

    nop

    nop

    :goto_be
    goto/16 :goto_159

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c0
    add-float/2addr v3, v4

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    :goto_c1
    goto/16 :goto_4d

    nop

    nop

    nop

    :goto_c2
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

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

    nop

    :goto_c4
    invoke-static {v4}, Lffb;->a(Ljava/lang/String;)V

    :goto_c5
    goto/32 :goto_19c

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    sub-float v2, v4, v2

    nop

    nop

    nop

    goto/32 :goto_18a

    nop

    nop

    :goto_c7
    iget-object v2, v1, Lffj;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_c8
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

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

    :goto_c9
    add-int/lit8 v2, v2, -0x1

    nop

    nop

    nop

    nop

    :goto_ca
    goto/32 :goto_52

    nop

    nop

    nop

    :goto_cb
    iget v9, v7, Landroid/graphics/PointF;->x:F

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    iget v4, v8, Landroid/graphics/PointF;->x:F

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

    :goto_cd
    iget v12, v11, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    goto/32 :goto_197

    nop

    nop

    :goto_ce
    goto/16 :goto_10c

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    goto/32 :goto_201

    nop

    nop

    nop

    nop

    :goto_d0
    sub-float/2addr v6, v8

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    iget v14, v2, Landroid/graphics/PointF;->y:F

    nop

    goto/32 :goto_1e6

    nop

    nop

    :goto_d2
    mul-float v15, v15, p2

    nop

    nop

    nop

    goto/32 :goto_1ba

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    sub-float v1, v3, v1

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

    nop

    :goto_d5
    iget-boolean v4, v2, Lfcv;->c:Z

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

    :goto_d6
    mul-float v12, v12, p2

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    mul-float v7, v7, p2

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    nop

    :goto_d9
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_da
    sub-float v13, v6, v13

    nop

    nop

    goto/32 :goto_175

    nop

    nop

    nop

    :goto_db
    sub-float/2addr v6, v13

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    nop

    :goto_dc
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    goto/32 :goto_21a

    nop

    nop

    nop

    nop

    :goto_de
    iget-boolean v10, v1, Lfcv;->c:Z

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

    :goto_df
    sub-float/2addr v8, v7

    nop

    goto/32 :goto_1d1

    nop

    nop

    :goto_e0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    nop

    goto/32 :goto_180

    nop

    nop

    :goto_e1
    iget-object v9, v1, Lfcv;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    :goto_e2
    check-cast v12, Lfbr;

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_e3
    iget v3, v15, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :goto_e4
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    :goto_e5
    const/4 v4, 0x1

    nop

    nop

    :goto_e6
    goto/32 :goto_188

    nop

    nop

    nop

    nop

    :goto_e7
    iget v4, v11, Landroid/graphics/PointF;->y:F

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

    :goto_e8
    goto/16 :goto_50

    nop

    nop

    nop

    :goto_e9
    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    iget v10, v7, Landroid/graphics/PointF;->x:F

    nop

    nop

    goto/32 :goto_1da

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    if-eqz v6, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    :cond_10
    goto/32 :goto_169

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    move v10, v11

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    goto/32 :goto_1c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    if-lt v7, v4, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_1d6

    nop

    nop

    nop

    nop

    :goto_ef
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    nop

    nop

    nop

    nop

    goto/32 :goto_20c

    nop

    nop

    :goto_f0
    if-lt v9, v11, :cond_12

    nop

    nop

    goto/32 :goto_cf

    nop

    :cond_12
    goto/32 :goto_47

    nop

    nop

    :goto_f1
    mul-float v13, v13, p2

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_f2
    move-object v6, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_198

    nop

    nop

    nop

    nop

    :goto_f3
    goto/16 :goto_1d

    nop

    nop

    :goto_f4
    goto/32 :goto_155

    nop

    nop

    :goto_f5
    invoke-direct {v9}, Lfbr;-><init>()V

    goto/32 :goto_192

    nop

    nop

    nop

    nop

    :goto_f6
    if-nez v2, :cond_13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_205

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_14d

    nop

    nop

    :goto_f7
    iget-object v7, v2, Lfcv;->a:Ljava/util/List;

    nop

    nop

    goto/32 :goto_1bd

    nop

    nop

    nop

    nop

    :goto_f8
    move-object/from16 v1, p1

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

    :goto_f9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    add-int/lit8 v11, v11, -0x1

    nop

    nop

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    iget-object v4, v2, Lfcv;->b:Landroid/graphics/PointF;

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_fc
    invoke-static {v12, v0}, Lfap;->a(II)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    :goto_fd
    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    :goto_fe
    sub-float/2addr v15, v14

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :goto_ff
    if-ge v7, v4, :cond_14

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_214

    nop

    nop

    nop

    :goto_100
    iget v8, v8, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    :goto_101
    iget-object v15, v15, Lfbr;->b:Landroid/graphics/PointF;

    nop

    :goto_102
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_103
    add-int/lit8 v7, v7, -0x1

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_104
    invoke-virtual {v12, v3, v4}, Lfbr;->b(FF)V

    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_105
    move-object/from16 v15, v20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1fc

    nop

    nop

    nop

    nop

    nop

    :goto_106
    move-object/from16 v13, v17

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_107
    move-object v2, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    :goto_108
    move v3, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_189

    nop

    nop

    nop

    nop

    nop

    :goto_109
    invoke-interface {v8, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_10a
    invoke-virtual {v9, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/32 :goto_204

    nop

    nop

    :goto_10b
    move v10, v9

    nop

    nop

    nop

    nop

    nop

    :goto_10c
    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10d
    mul-float/2addr v13, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_17b

    nop

    nop

    nop

    nop

    nop

    :goto_10e
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    nop

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

    :goto_10f
    goto/16 :goto_e6

    nop

    :goto_110
    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_111
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_112
    goto/32 :goto_120

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_113
    add-float/2addr v4, v7

    nop

    goto/32 :goto_1c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_114
    double-to-float v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_115
    check-cast v0, Lfbr;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_116
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_117
    iget v6, v6, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_118
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b4

    nop

    nop

    :goto_119
    mul-float/2addr v6, v0

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    :goto_11a
    if-eqz v13, :cond_15

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

    :cond_15
    goto/32 :goto_154

    nop

    nop

    nop

    :goto_11b
    add-int/lit8 v9, v9, -0x1

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

    :goto_11c
    iget-object v10, v7, Lfbr;->b:Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    iget-object v7, v3, Lfcv;->a:Ljava/util/List;

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

    :goto_11e
    if-eqz v6, :cond_16

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_1ad

    nop

    nop

    nop

    nop

    :goto_11f
    add-float/2addr v10, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_120
    sget-object v2, Lffd;->a:Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_121
    iget-object v7, v1, Lfcv;->a:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_122
    iget v3, v3, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_123
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    :goto_124
    iget-object v7, v7, Lfbr;->c:Landroid/graphics/PointF;

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_125
    iget-object v1, v0, Lfbk;->f:Lfcv;

    nop

    nop

    goto/32 :goto_152

    nop

    nop

    :goto_126
    iget v7, v4, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1a6

    nop

    nop

    nop

    :goto_127
    move-object v15, v3

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

    nop

    :goto_128
    iget v13, v2, Landroid/graphics/PointF;->x:F

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_129
    iget v6, v15, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1b8

    nop

    nop

    nop

    nop

    :goto_12a
    iget v4, v15, Landroid/graphics/PointF;->y:F

    nop

    goto/32 :goto_1df

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    const v12, 0x3f0d4952    # 0.5519f

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    :goto_12c
    iget-object v2, v14, Lfbr;->c:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    goto/32 :goto_170

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12d
    iget-object v4, v2, Lfcv;->a:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_12e
    invoke-virtual {v15, v3, v4}, Lfcv;->a(FF)V

    :goto_12f
    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    :goto_130
    sub-float/2addr v13, v11

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    :goto_131
    iget-object v7, v3, Lfap;->a:Lfay;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_132
    invoke-direct {v5, v12}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_1ae

    nop

    nop

    nop

    nop

    :goto_133
    goto/16 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_134
    goto/32 :goto_b8

    nop

    nop

    :goto_135
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_136
    iget-object v2, v1, Lfcv;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    :goto_137
    move-object/from16 v18, v1

    nop

    nop

    nop

    :goto_138
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_139
    goto/16 :goto_1d4

    nop

    nop

    nop

    nop

    :goto_13a
    goto/32 :goto_1d3

    nop

    nop

    nop

    nop

    nop

    :goto_13b
    iget-object v4, v1, Lfcv;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_13c
    iget-object v5, v15, Lfbr;->c:Landroid/graphics/PointF;

    nop

    nop

    nop

    :goto_13d
    goto/32 :goto_93

    nop

    nop

    nop

    :goto_13e
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_13f
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_140
    if-eqz v9, :cond_17

    nop

    nop

    goto/32 :goto_13a

    nop

    :cond_17
    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    :goto_141
    goto/16 :goto_20e

    nop

    :goto_142
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_143
    const v1, 0x5

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_144
    if-eqz v10, :cond_18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e5

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_1eb

    nop

    nop

    nop

    nop

    :goto_145
    invoke-virtual {v0, v15}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1b1

    nop

    nop

    :goto_146
    iget v0, v0, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    goto/32 :goto_1fb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_147
    iget-object v4, v3, Lfcv;->a:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_148
    sub-float/2addr v13, v14

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_149
    iget-object v7, v3, Lfcv;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_17f

    nop

    nop

    nop

    :goto_14a
    iget-object v3, v14, Lfbr;->c:Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_14b
    iget-object v7, v1, Lfcv;->a:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    :goto_14c
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    :goto_14d
    iget v2, v11, Landroid/graphics/PointF;->x:F

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_14e
    iget-object v3, v0, Lfbk;->f:Lfcv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_14f
    iget-object v6, v1, Lfcv;->b:Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    :goto_150
    new-instance v5, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    nop

    nop

    :goto_151
    if-ne v5, v12, :cond_19

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    :goto_152
    iget-object v2, v0, Lfbk;->e:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_1d9

    nop

    nop

    nop

    nop

    nop

    :goto_153
    add-int/lit8 v10, v10, 0x1

    nop

    goto/32 :goto_190

    nop

    nop

    nop

    nop

    :goto_154
    iget v0, v15, Landroid/graphics/PointF;->x:F

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

    :goto_155
    const/4 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_156
    sub-float/2addr v11, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_1a5

    nop

    nop

    nop

    :goto_157
    iget v0, v15, Landroid/graphics/PointF;->x:F

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_158
    const/4 v12, 0x0

    nop

    :goto_159
    goto/32 :goto_1de

    nop

    nop

    nop

    :goto_15a
    invoke-virtual {v12, v3, v4}, Lfbr;->c(FF)V

    goto/32 :goto_105

    nop

    nop

    :goto_15b
    iget-object v3, v14, Lfbr;->b:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    :goto_15c
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    :goto_15d
    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    :goto_15e
    move/from16 p2, v6

    nop

    nop

    :goto_15f
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_160
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    goto/32 :goto_c4

    nop

    nop

    :goto_161
    move v5, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_1ee

    nop

    nop

    nop

    nop

    nop

    :goto_162
    if-eqz v13, :cond_1a

    nop

    nop

    nop

    goto/32 :goto_13a

    nop

    :cond_1a
    goto/32 :goto_8e

    nop

    nop

    :goto_163
    if-nez v5, :cond_1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_1b
    goto/32 :goto_1d8

    nop

    nop

    nop

    :goto_164
    iget-object v12, v8, Lfbr;->b:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_219

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_165
    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    nop

    nop

    goto/32 :goto_1fd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_166
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_1a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_167
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    nop

    nop

    nop

    :goto_168
    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    :goto_169
    iget-object v9, v1, Lfcv;->b:Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_172

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16a
    iput-object v6, v3, Lfap;->b:Lfcv;

    nop

    nop

    nop

    nop

    nop

    :goto_16b
    goto/32 :goto_17c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16c
    if-eqz v9, :cond_1c

    nop

    nop

    nop

    nop

    goto/32 :goto_1f2

    nop

    :cond_1c
    goto/32 :goto_1db

    nop

    nop

    nop

    nop

    :goto_16d
    const/4 v9, 0x0

    nop

    goto/32 :goto_1f1

    nop

    nop

    :goto_16e
    const-string v4, "\tShape 2: "

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_16f
    check-cast v14, Lfbr;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f8

    nop

    nop

    nop

    :goto_170
    iget v2, v2, Landroid/graphics/PointF;->x:F

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

    :goto_171
    add-int/lit8 v12, v10, -0x1

    nop

    goto/32 :goto_118

    nop

    nop

    :goto_172
    move-object v15, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_1b7

    nop

    nop

    nop

    :goto_173
    invoke-virtual {v4, v11}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_174
    check-cast v9, Lfbr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_200

    nop

    nop

    nop

    nop

    :goto_175
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

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

    nop

    :goto_176
    check-cast v8, Lfbr;

    nop

    nop

    goto/32 :goto_17a

    nop

    nop

    nop

    :goto_177
    iget-object v2, v13, Lfbr;->c:Landroid/graphics/PointF;

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_178
    move/from16 v16, v2

    nop

    goto/32 :goto_177

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_179
    if-lt v6, v12, :cond_1d

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_2c

    nop

    nop

    :goto_17a
    iget-object v9, v7, Lfbr;->a:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    :goto_17b
    mul-float/2addr v8, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_17c
    iget-object v3, v3, Lfap;->b:Lfcv;

    nop

    goto/32 :goto_1a8

    nop

    nop

    nop

    nop

    :goto_17d
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1c6

    nop

    nop

    nop

    nop

    :goto_17e
    iget-boolean v1, v1, Lfcv;->c:Z

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

    :goto_17f
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_180
    add-int/lit8 v6, v6, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b3

    nop

    nop

    nop

    nop

    nop

    :goto_181
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_160

    nop

    nop

    nop

    nop

    :goto_182
    const/high16 v3, 0x3f000000    # 0.5f

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    :goto_183
    iget-object v13, v3, Lfcv;->a:Ljava/util/List;

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

    :goto_184
    invoke-virtual {v6, v15}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_185
    move-object/from16 v19, v4

    nop

    nop

    goto/32 :goto_199

    nop

    nop

    :goto_186
    if-eqz v4, :cond_1e

    nop

    nop

    nop

    goto/32 :goto_18e

    nop

    nop

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_187
    new-instance v6, Lfcv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c0

    nop

    nop

    nop

    nop

    nop

    :goto_188
    iput-boolean v4, v3, Lfcv;->c:Z

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_189
    move v4, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_161

    nop

    nop

    nop

    :goto_18a
    iget v8, v15, Landroid/graphics/PointF;->x:F

    nop

    nop

    goto/32 :goto_209

    nop

    nop

    nop

    nop

    nop

    :goto_18b
    sub-float/2addr v0, v6

    nop

    goto/32 :goto_1f6

    nop

    nop

    nop

    :goto_18c
    float-to-double v3, v13

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

    :goto_18d
    iput-object v4, v3, Lfcv;->b:Landroid/graphics/PointF;

    nop

    nop

    nop

    :goto_18e
    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    :goto_18f
    iget-object v0, v13, Lfbr;->a:Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_190
    goto/16 :goto_56

    nop

    nop

    nop

    :goto_191
    goto/32 :goto_17e

    nop

    nop

    nop

    nop

    nop

    :goto_192
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_193
    iget v8, v15, Landroid/graphics/PointF;->y:F

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

    :goto_194
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_1f4

    nop

    nop

    nop

    :goto_195
    iget-object v2, v1, Lfcv;->b:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_196
    sub-float/2addr v4, v6

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_197
    iget v13, v11, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_198
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_199
    float-to-double v3, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    :goto_19a
    invoke-virtual {v9, v10, v7}, Lfbr;->c(FF)V

    goto/32 :goto_5c

    nop

    nop

    :goto_19b
    iget v1, v15, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    :goto_19c
    iget-object v4, v2, Lfcv;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_19d
    move-object/from16 v4, v19

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    :goto_19e
    invoke-virtual {v1, v0, v6}, Lfbr;->a(FF)V

    goto/32 :goto_d

    nop

    nop

    :goto_19f
    iget v4, v2, Landroid/graphics/PointF;->x:F

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a0
    check-cast v1, Lfcv;

    nop

    nop

    goto/32 :goto_14e

    nop

    nop

    nop

    :goto_1a1
    check-cast v1, Lfbr;

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_1a2
    move/from16 v6, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_1a3
    iget-object v5, v1, Lfcv;->b:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a4

    nop

    nop

    :goto_1a4
    iget v5, v5, Landroid/graphics/PointF;->x:F

    nop

    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    :goto_1a5
    mul-float v11, v11, p2

    nop

    nop

    nop

    goto/32 :goto_1ac

    nop

    nop

    nop

    nop

    nop

    :goto_1a6
    iget v8, v4, Landroid/graphics/PointF;->y:F

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_1a7
    invoke-static {v14, v15}, Lfap;->a(II)I

    move-result v15

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a8
    iput-boolean v10, v3, Lfcv;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1a3

    nop

    nop

    nop

    nop

    :goto_1a9
    mul-float v9, v9, p2

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_1aa
    const/4 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_1dc

    nop

    nop

    nop

    nop

    nop

    :goto_1ab
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    :goto_1ac
    add-float/2addr v10, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_1ad
    add-int/lit8 v12, v12, 0x2

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    :goto_1ae
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_1af
    goto/32 :goto_179

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b0
    iget-object v7, v1, Lfcv;->a:Ljava/util/List;

    nop

    nop

    goto/32 :goto_1f3

    nop

    nop

    nop

    nop

    nop

    :goto_1b1
    if-nez v0, :cond_1f

    nop

    goto/32 :goto_a0

    nop

    nop

    :cond_1f
    goto/32 :goto_11a

    nop

    nop

    nop

    :goto_1b2
    if-eqz v6, :cond_20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e1

    nop

    nop

    nop

    nop

    :cond_20
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_1b3
    if-eqz v6, :cond_21

    nop

    nop

    goto/32 :goto_1e1

    nop

    nop

    nop

    nop

    nop

    :cond_21
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b4
    check-cast v13, Lfbr;

    nop

    goto/32 :goto_1b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b5
    add-int/lit8 v14, v9, -0x1

    nop

    nop

    nop

    goto/32 :goto_216

    nop

    nop

    nop

    :goto_1b6
    move-object v15, v3

    nop

    nop

    goto/32 :goto_1c8

    nop

    nop

    nop

    nop

    nop

    :goto_1b7
    const/4 v9, 0x0

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    :goto_1b8
    iget v2, v2, Landroid/graphics/PointF;->y:F

    nop

    goto/32 :goto_193

    nop

    nop

    nop

    nop

    :goto_1b9
    iget v13, v15, Landroid/graphics/PointF;->y:F

    nop

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

    :goto_1ba
    add-float/2addr v14, v15

    nop

    goto/32 :goto_20f

    nop

    nop

    :goto_1bb
    sub-float/2addr v9, v8

    nop

    goto/32 :goto_1a9

    nop

    nop

    :goto_1bc
    if-eqz v10, :cond_22

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

    :cond_22
    goto/32 :goto_1ec

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1bd
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_1be
    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    goto/32 :goto_18d

    nop

    nop

    nop

    nop

    nop

    :goto_1bf
    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    nop

    nop

    nop

    goto/32 :goto_16f

    nop

    nop

    :goto_1c0
    new-instance v9, Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_1ff

    nop

    nop

    :goto_1c1
    mul-float/2addr v6, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_1c2
    invoke-virtual {v3, v8, v4}, Lfcv;->a(FF)V

    goto/32 :goto_147

    nop

    nop

    nop

    nop

    :goto_1c3
    invoke-virtual {v9}, Landroid/graphics/Path;->close()V

    :goto_1c4
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c5
    add-int/lit8 v9, v9, 0x1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1c6
    add-int/lit8 v7, v7, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1c7
    if-gez v4, :cond_23

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :cond_23
    goto/32 :goto_f7

    nop

    nop

    :goto_1c8
    move-object v1, v15

    nop

    nop

    nop

    goto/32 :goto_141

    nop

    nop

    nop

    :goto_1c9
    iget v15, v11, Landroid/graphics/PointF;->x:F

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ca
    add-float/2addr v9, v11

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1cb
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_1cc
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    :goto_1cd
    if-nez v4, :cond_24

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :cond_24
    goto/32 :goto_6e

    nop

    nop

    :goto_1ce
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_16e

    nop

    nop

    :goto_1cf
    check-cast v8, Lfbr;

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_1d0
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_176

    nop

    nop

    nop

    nop

    :goto_1d1
    mul-float v8, v8, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_1d2
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_174

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d3
    const/4 v13, 0x0

    nop

    nop

    nop

    :goto_1d4
    goto/32 :goto_184

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d5
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a7

    nop

    nop

    :goto_1d6
    iget-object v8, v3, Lfcv;->a:Ljava/util/List;

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

    :goto_1d7
    move-object/from16 v1, v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19d

    nop

    nop

    :goto_1d8
    iget-object v5, v5, Lfcv;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_1d9
    if-nez v2, :cond_25

    nop

    goto/32 :goto_138

    nop

    :cond_25
    goto/32 :goto_1cc

    nop

    nop

    nop

    nop

    :goto_1da
    iget v11, v8, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    goto/32 :goto_156

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1db
    if-eqz v6, :cond_26

    nop

    nop

    nop

    nop

    goto/32 :goto_134

    nop

    nop

    :cond_26
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_1dc
    invoke-direct {v6, v9, v8, v5}, Lfcv;-><init>(Landroid/graphics/PointF;ZLjava/util/List;)V

    goto/32 :goto_16a

    nop

    nop

    nop

    nop

    :goto_1dd
    iget v13, v8, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    :goto_1de
    if-gez v11, :cond_27

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    :cond_27
    goto/32 :goto_1f9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1df
    iget v6, v8, Landroid/graphics/PointF;->y:F

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

    :goto_1e0
    goto/16 :goto_213

    nop

    nop

    nop

    :goto_1e1
    goto/32 :goto_212

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e2
    iget-object v3, v2, Lfbr;->a:Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_1e3
    if-lt v10, v2, :cond_28

    nop

    nop

    goto/32 :goto_191

    nop

    :cond_28
    goto/32 :goto_136

    nop

    nop

    nop

    nop

    :goto_1e4
    goto/16 :goto_102

    nop

    nop

    :goto_1e5
    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    :goto_1e6
    move-object/from16 v18, v1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1e7
    sub-float/2addr v7, v4

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :goto_1e8
    iget v10, v10, Landroid/graphics/PointF;->y:F

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

    :goto_1e9
    move-object/from16 v18, v1

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    :goto_1ea
    if-eqz v13, :cond_29

    nop

    nop

    nop

    goto/32 :goto_13a

    nop

    :cond_29
    goto/32 :goto_140

    nop

    nop

    nop

    :goto_1eb
    move-object v15, v5

    nop

    goto/32 :goto_1e4

    nop

    nop

    nop

    nop

    :goto_1ec
    iget-object v5, v1, Lfcv;->b:Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_1ed
    iget-boolean v6, v1, Lfcv;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_1ee
    move v6, v8

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1ef
    iget-boolean v13, v1, Lfcv;->c:Z

    nop

    nop

    goto/32 :goto_1ea

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f0
    add-int/lit8 v14, v11, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d5

    nop

    nop

    nop

    :goto_1f1
    goto/16 :goto_15f

    nop

    :goto_1f2
    goto/32 :goto_15e

    nop

    nop

    nop

    nop

    :goto_1f3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_165

    nop

    nop

    nop

    nop

    nop

    :goto_1f4
    goto/16 :goto_ca

    nop

    nop

    nop

    nop

    :goto_1f5
    goto/32 :goto_137

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f6
    iget v6, v15, Landroid/graphics/PointF;->y:F

    nop

    goto/32 :goto_1dd

    nop

    nop

    nop

    :goto_1f7
    iget-object v11, v2, Lfbr;->c:Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_1f8
    add-int/lit8 v15, v9, -0x2

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_1f9
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1fa
    invoke-virtual {v1, v0, v2}, Lfbr;->a(FF)V

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1fb
    iget-object v2, v13, Lfbr;->a:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20b

    nop

    nop

    nop

    nop

    :goto_1fc
    if-eqz v9, :cond_2a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    :cond_2a
    goto/32 :goto_12e

    nop

    nop

    nop

    :goto_1fd
    iget-object v7, v3, Lfcv;->a:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_1fe
    iget-boolean v4, v1, Lfcv;->c:Z

    nop

    nop

    goto/32 :goto_1cd

    nop

    nop

    nop

    nop

    nop

    :goto_1ff
    invoke-direct {v9, v8, v8}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_1aa

    nop

    nop

    nop

    :goto_200
    iget v11, v10, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_201
    move/from16 v16, v2

    nop

    nop

    goto/32 :goto_1b6

    nop

    nop

    nop

    nop

    nop

    :goto_202
    iget-object v7, v3, Lfcv;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15c

    nop

    nop

    :goto_203
    iget-object v8, v1, Lfcv;->a:Ljava/util/List;

    nop

    nop

    goto/32 :goto_1d0

    nop

    nop

    nop

    nop

    nop

    :goto_204
    goto/16 :goto_112

    nop

    nop

    nop

    nop

    nop

    :goto_205
    goto/32 :goto_a2

    nop

    nop

    :goto_206
    move/from16 v16, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_207
    invoke-static {v14, v15}, Lfap;->a(II)I

    move-result v14

    nop

    nop

    goto/32 :goto_1bf

    nop

    nop

    :goto_208
    new-instance v8, Ljava/lang/StringBuilder;

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

    :goto_209
    sub-float v8, v0, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_1b9

    nop

    nop

    nop

    :goto_20a
    if-eqz v11, :cond_2b

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_2b
    goto/32 :goto_1bc

    nop

    nop

    nop

    :goto_20b
    iget v2, v2, Landroid/graphics/PointF;->y:F

    nop

    goto/32 :goto_1fa

    nop

    nop

    nop

    nop

    nop

    :goto_20c
    add-int/lit8 v13, v13, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    nop

    :goto_20d
    move-object/from16 v1, v18

    nop

    nop

    :goto_20e
    goto/32 :goto_21b

    nop

    nop

    :goto_20f
    iget v9, v9, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_210
    check-cast v1, Lfbr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_211

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_211
    invoke-virtual {v14, v8, v12}, Lfbr;->b(FF)V

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_212
    const/4 v6, 0x0

    nop

    nop

    :goto_213
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_214
    iget-object v8, v3, Lfcv;->a:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_215
    float-to-double v0, v0

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_216
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    nop

    nop

    nop

    nop

    goto/32 :goto_207

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_217
    iget v7, v7, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e7

    nop

    nop

    nop

    nop

    nop

    :goto_218
    move/from16 v2, v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d7

    nop

    nop

    nop

    nop

    nop

    :goto_219
    iget-object v8, v8, Lfbr;->c:Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_183

    nop

    nop

    nop

    nop

    :goto_21a
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21b
    add-int/lit8 v2, v16, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_194

    nop

    nop

    nop

    nop
.end method
