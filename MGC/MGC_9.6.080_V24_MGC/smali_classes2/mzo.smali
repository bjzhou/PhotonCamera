.class public final synthetic Lmzo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpcm;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/camera/ui/hotshot/HotshotController;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/camera/ui/hotshot/HotshotController;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lmzo;->a:Lcom/google/android/apps/camera/ui/hotshot/HotshotController;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 25

    goto/32 :goto_1cc

    nop

    nop

    nop

    :goto_0
    cmpg-float v14, v14, v5

    nop

    nop

    goto/32 :goto_204

    nop

    nop

    nop

    nop

    :goto_1
    move v4, v7

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v15, v11, Landroid/graphics/RectF;->top:F

    nop

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

    :goto_3
    if-eqz v2, :cond_0

    nop

    goto/32 :goto_25b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16c

    nop

    nop

    nop

    :goto_4
    if-lez v5, :cond_1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13a

    nop

    nop

    :goto_5
    if-gez v2, :cond_2

    nop

    goto/32 :goto_25b

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_14c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    nop

    goto/32 :goto_1e7

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_216

    nop

    nop

    :goto_8
    goto/32 :goto_177

    nop

    nop

    :goto_9
    goto/16 :goto_222

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_221

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    div-float v14, v14, v17

    nop

    nop

    goto/32 :goto_170

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    :goto_d
    goto/32 :goto_15d

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_25b

    nop

    nop

    :cond_3
    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-array v9, v5, [F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast v10, Lmzd;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v11, Lmzc;

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    :goto_12
    cmp-long v0, v5, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1a1

    nop

    nop

    nop

    :goto_13
    iput-object v3, v7, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->n:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_270

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v4

    nop

    goto/32 :goto_278

    nop

    nop

    nop

    :goto_15
    const-wide/16 v4, 0x5dc

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_16
    const/4 v13, 0x1

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    nop

    nop

    goto/32 :goto_1cb

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move v3, v4

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz v9, :cond_4

    nop

    nop

    goto/32 :goto_1bc

    nop

    :cond_4
    goto/32 :goto_239

    nop

    nop

    nop

    nop

    :goto_1b
    mul-float/2addr v13, v5

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance v4, Lkzs;

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    :goto_1d
    aput v8, v9, v3

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

    :goto_1e
    invoke-static {v3, v2}, Lnab;->b(ZF)Z

    move-result v2

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a9

    nop

    nop

    nop

    nop

    :goto_20
    if-ltz v4, :cond_5

    nop

    nop

    nop

    goto/32 :goto_fd

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

    :goto_21
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    nop

    :goto_22
    add-int/lit8 v7, v7, 0x1

    nop

    :goto_23
    goto/32 :goto_198

    nop

    nop

    :goto_24
    sub-float/2addr v14, v5

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

    nop

    :goto_25
    if-eqz v3, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_1ad

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1ac

    nop

    nop

    :goto_26
    invoke-virtual {v0}, Lnar;->a()Lryb;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_20b

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v5, v12, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->b:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_1da

    nop

    nop

    nop

    nop

    :goto_28
    if-ltz v4, :cond_7

    nop

    nop

    nop

    goto/32 :goto_26d

    nop

    nop

    :cond_7
    goto/32 :goto_26c

    nop

    nop

    :goto_29
    goto :goto_23

    nop

    :goto_2a
    goto/32 :goto_1aa

    nop

    nop

    nop

    nop

    :goto_2b
    iput v2, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->L:I

    nop

    nop

    :goto_2c
    goto/32 :goto_21d

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v3}, Lmzf;->a()Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_233

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1f3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v0, v0, Lnar;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_30
    cmpl-float v5, v5, v14

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    :goto_31
    iput-object v0, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->B:Lnac;

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->t()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_206

    nop

    nop

    nop

    nop

    nop

    :goto_33
    double-to-float v6, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v11, v9}, Lmzc;->b(I)V

    goto/32 :goto_23f

    nop

    nop

    nop

    :goto_35
    const/4 v0, 0x1

    nop

    goto/32 :goto_154

    nop

    nop

    :goto_36
    goto/16 :goto_140

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_195

    nop

    nop

    nop

    :goto_38
    goto/16 :goto_140

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_15c

    nop

    nop

    :goto_3a
    iget-object v11, v10, Lmzd;->d:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    move-object/from16 v8, v24

    nop

    nop

    goto/32 :goto_1f0

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-interface {v2, v4}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    :goto_3d
    if-nez v2, :cond_8

    nop

    nop

    nop

    goto/32 :goto_140

    nop

    :cond_8
    goto/32 :goto_1a3

    nop

    nop

    :goto_3e
    sub-float/2addr v7, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1ce

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v3, v4}, Lmzf;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20a

    nop

    nop

    nop

    nop

    :goto_40
    check-cast v12, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_41
    goto/16 :goto_1f7

    nop

    :goto_42
    goto/32 :goto_1f6

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    nop

    nop

    goto/32 :goto_1c1

    nop

    nop

    nop

    nop

    :goto_44
    move/from16 v20, v10

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    float-to-double v8, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_265

    nop

    nop

    :goto_46
    if-eqz v9, :cond_9

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_9
    goto/32 :goto_219

    nop

    nop

    :goto_47
    invoke-virtual {v2}, Lryb;->isEmpty()Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_161

    nop

    nop

    nop

    :goto_48
    goto/16 :goto_12e

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v0}, Lnab;->a()V

    goto/32 :goto_e0

    nop

    nop

    nop

    :goto_4b
    move-object v12, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_4c
    invoke-interface {v2, v0}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v0}, Lnar;->a()Lryb;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    if-ltz v5, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_243

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_227

    nop

    nop

    nop

    :goto_4f
    iget v8, v14, Landroid/graphics/RectF;->top:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    :goto_51
    move/from16 v18, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_17a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1f9

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v2, v3}, Lnam;->b(I)V

    goto/32 :goto_138

    nop

    nop

    :goto_54
    iput-wide v3, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->D:J

    nop

    nop

    nop

    nop

    goto/32 :goto_16a

    nop

    nop

    nop

    nop

    :goto_55
    check-cast v10, Lnaj;

    nop

    nop

    nop

    nop

    goto/32 :goto_18b

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v2}, Lj$/util/Optional;->isEmpty()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iput-wide v2, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->D:J

    nop

    nop

    nop

    goto/32 :goto_1c8

    nop

    nop

    nop

    :goto_58
    mul-float/2addr v6, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    nop

    :goto_59
    move v13, v4

    nop

    goto/32 :goto_e5

    nop

    nop

    :goto_5a
    invoke-virtual {v0}, Lhvp;->g()V

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_5b
    const/4 v9, 0x0

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_5c
    check-cast v2, Lmzd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    :goto_5d
    if-nez v7, :cond_b

    nop

    nop

    nop

    goto/32 :goto_259

    nop

    nop

    :cond_b
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iput-boolean v0, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->z:Z

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iget-boolean v2, v2, Lnam;->c:Z

    nop

    nop

    goto/32 :goto_19f

    nop

    nop

    nop

    nop

    nop

    :goto_60
    new-instance v12, Lnaj;

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_61
    iget-object v11, v8, Lnaj;->d:Lnas;

    nop

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

    :goto_62
    const/high16 v4, 0x42c80000    # 100.0f

    nop

    goto/32 :goto_14b

    nop

    nop

    nop

    :goto_63
    const/4 v3, 0x0

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

    :goto_64
    move/from16 v17, v6

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_65
    iget v7, v14, Landroid/graphics/RectF;->right:F

    nop

    nop

    goto/32 :goto_254

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iget-object v3, v7, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->b:Landroid/graphics/RectF;

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

    :goto_67
    check-cast v3, Lnai;

    nop

    goto/32 :goto_1b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iget-object v0, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->c:Landroid/view/accessibility/AccessibilityManager;

    nop

    goto/32 :goto_183

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    iget-object v3, v3, Lmzd;->a:Lmzf;

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

    :goto_6a
    const/high16 v5, 0x420c0000    # 35.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_279

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    if-ne v3, v4, :cond_c

    nop

    goto/32 :goto_203

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_231

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    sget-object v0, Lnac;->a:Lnac;

    nop

    nop

    goto/32 :goto_15e

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    if-eqz v2, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16b

    nop

    nop

    :cond_d
    goto/32 :goto_1ab

    nop

    nop

    :goto_6f
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_70
    if-nez v8, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    iput-boolean v2, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->A:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_223

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-virtual {v1, v6}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->a(F)Lnac;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v7}, Lmzf;->a()Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_74
    iget-object v8, v8, Lmzd;->d:Landroid/graphics/RectF;

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

    :goto_75
    return-void

    nop

    nop

    :goto_76
    goto/32 :goto_252

    nop

    nop

    :goto_77
    iget v4, v0, Lnab;->f:I

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_78
    move-object/from16 v21, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1b7

    nop

    nop

    :goto_7a
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {v4}, Lryb;->isEmpty()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_172

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    nop

    nop

    goto/32 :goto_193

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    nop

    nop

    nop

    goto/32 :goto_263

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    goto/16 :goto_22e

    nop

    :goto_7f
    goto/32 :goto_22d

    nop

    nop

    :goto_80
    cmpg-double v4, v6, v11

    nop

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

    :goto_81
    check-cast v3, Lmzd;

    nop

    nop

    nop

    goto/32 :goto_1a6

    nop

    nop

    nop

    :goto_82
    iget-object v2, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->o:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24f

    nop

    nop

    nop

    :goto_83
    sub-float/2addr v7, v14

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

    :goto_84
    move/from16 v9, v19

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    invoke-virtual {v2}, Lhsd;->a()Landroid/graphics/Matrix;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_214

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    goto/32 :goto_89

    nop

    :goto_87
    if-lez v4, :cond_f

    nop

    goto/32 :goto_1e1

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_1eb

    nop

    nop

    nop

    nop

    nop

    :goto_88
    goto/32 :goto_130

    nop

    nop

    nop

    :goto_89
    goto/32 :goto_1ca

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    sub-float/2addr v14, v5

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    iget v13, v13, Landroid/graphics/RectF;->left:F

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    :goto_8c
    invoke-virtual {v3}, Lpdl;->f()Z

    move-result v3

    nop

    goto/32 :goto_19c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    iget-object v15, v12, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->b:Landroid/graphics/RectF;

    nop

    goto/32 :goto_21e

    nop

    nop

    nop

    :goto_8e
    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->p()V

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-static {v0}, Lnai;->a(Lryb;)Lnai;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_90
    goto/32 :goto_1d7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    iget-boolean v4, v0, Lnab;->a:Z

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_92
    goto/16 :goto_211

    nop

    nop

    nop

    nop

    nop

    :goto_93
    goto/32 :goto_9d

    nop

    nop

    :goto_94
    invoke-static {v4, v3}, Lnab;->b(ZF)Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_95
    cmpg-float v12, v12, v15

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    :goto_96
    invoke-virtual {v2, v3}, Lnam;->a(Landroid/graphics/Rect;)V

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_97
    mul-float/2addr v4, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_98
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    :goto_99
    cmpg-float v5, v13, v5

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9a
    add-float/2addr v8, v14

    nop

    nop

    nop

    goto/32 :goto_24c

    nop

    nop

    nop

    nop

    :goto_9b
    iput-boolean v4, v0, Lnab;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    :goto_9c
    check-cast v3, Loxv;

    nop

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    :goto_9d
    if-eqz v14, :cond_10

    nop

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_1d1

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_245

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    goto/16 :goto_25b

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    goto/32 :goto_1df

    nop

    nop

    nop

    :goto_a1
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    nop

    goto/32 :goto_250

    nop

    nop

    nop

    nop

    :goto_a2
    sub-float/2addr v5, v4

    nop

    nop

    nop

    goto/32 :goto_266

    nop

    nop

    nop

    :goto_a3
    if-nez v5, :cond_11

    nop

    nop

    goto/32 :goto_163

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_244

    nop

    nop

    nop

    nop

    :goto_a4
    iget-boolean v2, v7, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->d:Z

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

    :goto_a5
    goto/16 :goto_1ed

    nop

    nop

    nop

    :goto_a6
    goto/32 :goto_1ec

    nop

    nop

    :goto_a7
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_a8
    sub-float/2addr v14, v12

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    if-ge v7, v9, :cond_12

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_1e6

    nop

    nop

    nop

    :goto_aa
    invoke-virtual {v0}, Lnar;->a()Lryb;

    move-result-object v2

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    move-object v5, v0

    nop

    nop

    goto/32 :goto_26a

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    check-cast v3, Lmzd;

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    iput-boolean v3, v0, Lnab;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23e

    nop

    nop

    nop

    nop

    :goto_ae
    const/4 v15, 0x0

    nop

    nop

    :goto_af
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    :goto_b1
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    nop

    goto/32 :goto_1c9

    nop

    nop

    nop

    nop

    :goto_b3
    iget v9, v10, Lmzd;->k:I

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

    :goto_b4
    check-cast v3, Lmzd;

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    check-cast v0, Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    const/4 v8, 0x1

    nop

    nop

    nop

    goto/32 :goto_25f

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    iget v14, v11, Landroid/graphics/RectF;->left:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    :goto_b8
    invoke-virtual {v12, v11, v13}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->b(Landroid/graphics/RectF;Z)Landroid/graphics/RectF;

    move-result-object v11

    nop

    nop

    nop

    goto/32 :goto_173

    nop

    nop

    nop

    nop

    :goto_b9
    new-instance v3, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    :goto_ba
    sget-object v3, Lnac;->a:Lnac;

    nop

    goto/32 :goto_1a7

    nop

    nop

    :goto_bb
    iput-object v2, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->C:Lnac;

    nop

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    :goto_bc
    iget-object v3, v2, Lnam;->b:Lrss;

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    invoke-virtual {v3, v7}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_be
    move v5, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_bf
    neg-float v3, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    :goto_c0
    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v14

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_c1
    sub-float/2addr v14, v5

    nop

    goto/32 :goto_260

    nop

    nop

    :goto_c2
    if-nez v2, :cond_13

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

    :cond_13
    goto/32 :goto_1bd

    nop

    nop

    nop

    nop

    :goto_c3
    move-object/from16 v17, v12

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    :goto_c4
    cmp-long v2, v2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c5
    sub-float/2addr v13, v14

    nop

    nop

    nop

    goto/32 :goto_182

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    const/4 v7, 0x0

    nop

    nop

    nop

    :goto_c7
    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    const v1, 0xa

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

    :goto_c9
    iget-boolean v3, v2, Lnam;->c:Z

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    :goto_ca
    move-object/from16 v24, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_cb
    cmpl-float v3, v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26b

    nop

    nop

    nop

    nop

    :goto_cc
    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_0
    monitor-exit v2

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_25a

    nop

    nop

    :goto_cd
    check-cast v3, Lmzd;

    nop

    nop

    goto/32 :goto_171

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    iget-object v3, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->l:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    :goto_cf
    invoke-direct {v4, v3, v5}, Lkzs;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_3c

    nop

    nop

    :goto_d0
    goto/16 :goto_23

    nop

    nop

    :goto_d1
    goto/32 :goto_fe

    nop

    nop

    :goto_d2
    invoke-virtual {v0}, Lhvp;->g()V

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    sget-object v0, Lnac;->f:Lnac;

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_d4
    const/4 v7, 0x1

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

    :goto_d5
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    iget-object v0, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->f:Lhvp;

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    :goto_d8
    move/from16 v18, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_238

    nop

    nop

    nop

    :goto_d9
    if-nez v3, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_220

    nop

    nop

    nop

    nop

    :goto_da
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_db
    check-cast v3, Lmzd;

    nop

    nop

    nop

    goto/32 :goto_17d

    nop

    nop

    nop

    :goto_dc
    invoke-interface {v3}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_1b9

    nop

    nop

    nop

    nop

    :goto_dd
    iget-object v3, v3, Lmzd;->a:Lmzf;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e3

    nop

    nop

    nop

    :goto_de
    add-int/lit8 v13, v13, 0x1

    nop

    nop

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    nop

    nop

    :goto_df
    const/16 v5, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    :goto_e0
    goto/16 :goto_f4

    nop

    nop

    :goto_e1
    goto/32 :goto_166

    nop

    nop

    :goto_e2
    if-gtz v5, :cond_15

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_be

    nop

    nop

    :goto_e3
    iget-object v0, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->o:Loyn;

    nop

    goto/32 :goto_153

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    iget-object v2, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->u:Ljava/lang/Object;

    nop

    goto/32 :goto_1a0

    nop

    nop

    :goto_e5
    const/4 v14, 0x0

    nop

    nop

    nop

    goto/32 :goto_210

    nop

    nop

    nop

    :goto_e6
    invoke-virtual {v2, v4}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_e7
    invoke-virtual {v0}, Lj$/util/Optional;->isEmpty()Z

    move-result v1

    nop

    nop

    goto/32 :goto_1f8

    nop

    nop

    :goto_e8
    if-ltz v12, :cond_16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_16
    goto/32 :goto_1b4

    nop

    nop

    nop

    :goto_e9
    const v4, 0x3ecccccd    # 0.4f

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    iget-object v2, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->f:Lhvp;

    nop

    nop

    nop

    nop

    goto/32 :goto_17f

    nop

    nop

    nop

    :goto_eb
    mul-float/2addr v5, v14

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_ec
    iget-wide v4, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->E:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_190

    nop

    nop

    :goto_ed
    iget-object v7, v7, Lnam;->b:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_275

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    check-cast v3, Lmzd;

    nop

    nop

    nop

    nop

    goto/32 :goto_176

    nop

    nop

    nop

    nop

    :goto_ef
    invoke-virtual {v2}, Lhvp;->h()V

    :goto_f0
    goto/32 :goto_181

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    check-cast v7, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    invoke-virtual {v2}, Lhvp;->h()V

    goto/32 :goto_218

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    iput-boolean v2, v0, Lnab;->d:Z

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    if-lez v4, :cond_17

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

    :cond_17
    goto/32 :goto_1b0

    nop

    nop

    nop

    :goto_f6
    iget-object v5, v12, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->b:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_1fa

    nop

    nop

    nop

    :goto_f7
    iget-object v14, v12, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->b:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    iget-object v3, v7, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->n:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_174

    nop

    nop

    :goto_f9
    const/high16 v7, 0x42c80000    # 100.0f

    nop

    goto/32 :goto_215

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    invoke-virtual {v4}, Lryb;->size()I

    move-result v8

    nop

    nop

    goto/32 :goto_232

    nop

    nop

    nop

    :goto_fb
    iput-wide v3, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->D:J

    nop

    nop

    goto/32 :goto_201

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fc
    move-wide v11, v6

    nop

    nop

    nop

    nop

    :goto_fd
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    iget-object v9, v8, Lnaj;->a:Lmzd;

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_ff
    iget v6, v10, Lmzd;->b:I

    nop

    nop

    nop

    goto/32 :goto_18c

    nop

    nop

    nop

    :goto_100
    invoke-static {v0}, Lnai;->a(Lryb;)Lnai;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_101
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_102
    if-nez v0, :cond_18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25b

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_103
    iget-object v7, v10, Lmzd;->a:Lmzf;

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

    :goto_104
    invoke-virtual {v11}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    nop

    goto/32 :goto_277

    nop

    nop

    nop

    nop

    :goto_105
    iget-object v4, v0, Lnai;->a:Lryb;

    nop

    nop

    goto/32 :goto_19b

    nop

    nop

    nop

    nop

    nop

    :goto_106
    goto/16 :goto_16b

    nop

    nop

    nop

    nop

    nop

    :goto_107
    goto/32 :goto_271

    nop

    nop

    nop

    nop

    nop

    :goto_108
    move-object/from16 v1, p0

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

    :goto_109
    goto/16 :goto_256

    nop

    nop

    nop

    :goto_10a
    goto/32 :goto_1c6

    nop

    nop

    nop

    :goto_10b
    iget-boolean v4, v0, Lnab;->b:Z

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_10c
    check-cast v2, Lhsd;

    nop

    goto/32 :goto_25c

    nop

    nop

    :goto_10d
    move-object/from16 v7, v23

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_10e
    invoke-virtual {v2}, Lmzm;->a()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ef

    nop

    nop

    nop

    nop

    nop

    :goto_10f
    if-eqz v3, :cond_19

    nop

    nop

    nop

    nop

    goto/32 :goto_213

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_267

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_110
    invoke-static {v4, v3}, Lnab;->b(ZF)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_188

    nop

    nop

    nop

    nop

    nop

    :goto_111
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_178

    nop

    nop

    nop

    nop

    nop

    :goto_112
    iget-object v3, v3, Lmzd;->d:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_1ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_113
    invoke-direct {v4, v5}, Lmpr;-><init>(I)V

    goto/32 :goto_180

    nop

    nop

    nop

    :goto_114
    sget-object v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_156

    nop

    nop

    nop

    :goto_115
    const/4 v5, 0x4

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    :goto_116
    invoke-virtual {v3}, Lryb;->size()I

    move-result v9

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_117
    invoke-direct/range {v17 .. v22}, Lnaj;-><init>(Lmzd;Lmze;FLnas;Landroid/graphics/Rect;)V

    goto/32 :goto_268

    nop

    nop

    nop

    :goto_118
    iget-object v0, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->r:Lnab;

    nop

    nop

    nop

    nop

    goto/32 :goto_1bf

    nop

    nop

    :goto_119
    new-instance v9, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_11a
    move-object/from16 v19, v9

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

    :goto_11b
    if-eqz v2, :cond_1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_1a
    goto/32 :goto_1d8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11c
    if-gtz v7, :cond_1b

    nop

    nop

    goto/32 :goto_1a5

    nop

    nop

    :cond_1b
    goto/32 :goto_217

    nop

    nop

    :goto_11d
    invoke-virtual {v3}, Lrss;->h()Z

    move-result v3

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_11e
    invoke-interface {v0, v1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    invoke-direct {v11, v9}, Lmzc;-><init>(Lmzd;)V

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :goto_120
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    :goto_121
    goto/32 :goto_12c

    nop

    nop

    nop

    :goto_122
    iget-object v0, v0, Lnar;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    :goto_123
    iput-object v0, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->B:Lnac;

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    :goto_124
    const/4 v8, 0x3

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_125
    check-cast v2, Loxv;

    nop

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    :goto_126
    check-cast v22, Landroid/graphics/Rect;

    nop

    goto/32 :goto_276

    nop

    nop

    :goto_127
    iget v5, v11, Landroid/graphics/RectF;->right:F

    nop

    nop

    nop

    goto/32 :goto_17e

    nop

    nop

    nop

    nop

    nop

    :goto_128
    move-object v7, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    :goto_129
    div-float v12, v12, v17

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

    :goto_12a
    new-instance v4, Lmpr;

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    :goto_12b
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v14

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_159

    nop

    nop

    nop

    nop

    nop

    :goto_12d
    const/4 v3, 0x0

    nop

    nop

    nop

    :goto_12e
    goto/32 :goto_1f5

    nop

    nop

    nop

    nop

    :goto_12f
    return-void

    nop

    :goto_130
    goto/32 :goto_86

    nop

    nop

    nop

    :goto_131
    invoke-virtual {v2}, Lryb;->size()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_269

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_132
    iget-object v11, v10, Lmzd;->f:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_224

    nop

    nop

    :goto_133
    iget v2, v2, Lmzd;->g:F

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_134
    iput-object v3, v0, Lnab;->e:Lmzf;

    nop

    nop

    nop

    goto/32 :goto_253

    nop

    nop

    nop

    nop

    :goto_135
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_136
    const/high16 v17, 0x40000000    # 2.0f

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

    nop

    :goto_137
    invoke-interface {v2}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object v2

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_138
    iget-object v2, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->h:Lnam;

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_139
    const/4 v0, 0x0

    nop

    goto/32 :goto_25e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13a
    const/4 v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_13b
    iget v4, v11, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    :goto_13c
    iget-object v2, v2, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_19e

    nop

    nop

    nop

    nop

    nop

    :goto_13d
    goto :goto_148

    nop

    nop

    nop

    nop

    :goto_13e
    goto/32 :goto_147

    nop

    nop

    nop

    :goto_13f
    div-float/2addr v6, v2

    nop

    nop

    :goto_140
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_141
    check-cast v3, Lmzd;

    nop

    nop

    goto/32 :goto_202

    nop

    nop

    nop

    nop

    nop

    :goto_142
    invoke-virtual {v7}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    :goto_143
    move/from16 v6, v17

    nop

    nop

    nop

    goto/32 :goto_21a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_144
    mul-float/2addr v4, v5

    nop

    goto/32 :goto_1e8

    nop

    nop

    nop

    nop

    :goto_145
    if-lez v15, :cond_1c

    nop

    goto/32 :goto_165

    nop

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_1b3

    nop

    nop

    nop

    :goto_146
    iget-object v3, v3, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_147
    move-object v10, v14

    nop

    :goto_148
    goto/32 :goto_241

    nop

    nop

    :goto_149
    int-to-float v6, v8

    nop

    nop

    nop

    goto/32 :goto_199

    nop

    nop

    nop

    nop

    nop

    :goto_14a
    neg-float v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_14b
    const/4 v5, 0x2

    nop

    nop

    nop

    goto/32 :goto_184

    nop

    nop

    nop

    :goto_14c
    iget-object v2, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->B:Lnac;

    nop

    goto/32 :goto_22c

    nop

    nop

    :goto_14d
    goto/16 :goto_121

    nop

    nop

    nop

    nop

    nop

    :goto_14e
    goto/32 :goto_157

    nop

    nop

    nop

    nop

    :goto_14f
    iget-object v4, v0, Lnab;->e:Lmzf;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_150
    check-cast v2, Lmzd;

    nop

    nop

    goto/32 :goto_22f

    nop

    nop

    :goto_151
    invoke-static {v5, v15}, Ljava/lang/Math;->min(FF)F

    move-result v5

    nop

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    nop

    nop

    :goto_152
    iget v15, v14, Landroid/graphics/RectF;->left:F

    nop

    nop

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    :goto_153
    sget-object v1, Lsbh;->a:Lryb;

    nop

    nop

    goto/32 :goto_1fe

    nop

    nop

    :goto_154
    iget-boolean v2, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->A:Z

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_155
    if-nez v0, :cond_1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25b

    nop

    :cond_1d
    goto/32 :goto_16f

    nop

    nop

    nop

    :goto_156
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_157
    invoke-static {v9}, Lryb;->j(Ljava/util/Collection;)Lryb;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_158
    new-instance v4, Lnaj;

    nop

    nop

    nop

    goto/32 :goto_205

    nop

    nop

    nop

    :goto_159
    if-nez v10, :cond_1e

    nop

    nop

    nop

    goto/32 :goto_14e

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_16e

    nop

    nop

    nop

    nop

    nop

    :goto_15a
    iget-object v9, v9, Lmzd;->f:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15b
    move v3, v4

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_15c
    iget-object v3, v7, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->n:Ljava/util/List;

    nop

    nop

    goto/32 :goto_1a8

    nop

    nop

    nop

    :goto_15d
    iget-wide v5, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->D:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_15e
    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->d(Lnac;)V

    goto/32 :goto_a7

    nop

    nop

    :goto_15f
    cmpl-float v7, v11, v7

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    :goto_160
    invoke-static {v5, v8}, Lnas;->a(II)Lnas;

    move-result-object v21

    nop

    nop

    nop

    goto/32 :goto_158

    nop

    nop

    :goto_161
    if-eqz v5, :cond_1f

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    :cond_1f
    goto/32 :goto_20f

    nop

    nop

    nop

    :goto_162
    goto/16 :goto_26f

    nop

    nop

    nop

    :goto_163
    goto/32 :goto_1dc

    nop

    nop

    :goto_164
    goto/16 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_165
    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_166
    iget-object v2, v2, Lnai;->a:Lryb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_167
    const v14, 0x3dcccccd    # 0.1f

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    :goto_168
    invoke-virtual {v0, v2}, Lnac;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_261

    nop

    nop

    nop

    nop

    :goto_169
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v13

    nop

    nop

    goto/32 :goto_187

    nop

    nop

    :goto_16a
    return-void

    nop

    nop

    :goto_16b
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_16c
    iput-boolean v0, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->A:Z

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

    :goto_16d
    iget v15, v15, Landroid/graphics/RectF;->right:F

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16e
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

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

    :goto_16f
    iget-object v0, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->c:Landroid/view/accessibility/AccessibilityManager;

    nop

    goto/32 :goto_17b

    nop

    nop

    :goto_170
    add-float/2addr v15, v14

    nop

    goto/32 :goto_1b2

    nop

    nop

    nop

    nop

    nop

    :goto_171
    iget-object v3, v3, Lmzd;->a:Lmzf;

    nop

    nop

    nop

    nop

    goto/32 :goto_240

    nop

    nop

    :goto_172
    if-nez v4, :cond_20

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    :cond_20
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_173
    iget-object v13, v12, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->b:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_174
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_175
    invoke-virtual {v2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    :goto_176
    iget v3, v3, Lmzd;->b:I

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_177
    invoke-virtual {v11}, Landroid/graphics/RectF;->centerX()F

    move-result v11

    nop

    goto/32 :goto_15f

    nop

    nop

    :goto_178
    goto/16 :goto_230

    nop

    :goto_179
    goto/32 :goto_12d

    nop

    nop

    :goto_17a
    move/from16 v19, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_251

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17b
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_17c
    const/4 v8, 0x1

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

    :goto_17d
    iget v3, v3, Lmzd;->b:I

    nop

    goto/32 :goto_192

    nop

    nop

    nop

    :goto_17e
    sub-float/2addr v15, v5

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    :goto_17f
    iget-object v5, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->B:Lnac;

    nop

    goto/32 :goto_1e9

    nop

    nop

    nop

    :goto_180
    invoke-interface {v2, v4}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v2

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

    :goto_181
    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->p()V

    goto/32 :goto_1d9

    nop

    nop

    :goto_182
    iget-object v14, v12, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->b:Landroid/graphics/RectF;

    nop

    goto/32 :goto_1db

    nop

    nop

    nop

    nop

    nop

    :goto_183
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    nop

    nop

    goto/32 :goto_155

    nop

    nop

    nop

    nop

    :goto_184
    const/high16 v6, -0x40800000    # -1.0f

    nop

    nop

    goto/32 :goto_1c2

    nop

    nop

    nop

    :goto_185
    move-object v14, v10

    nop

    nop

    :goto_186
    goto/32 :goto_de

    nop

    nop

    :goto_187
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_188
    iput-boolean v3, v0, Lnab;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1fb

    nop

    nop

    nop

    nop

    :goto_189
    invoke-virtual {v2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_18a
    sub-float/2addr v14, v15

    nop

    goto/32 :goto_273

    nop

    nop

    :goto_18b
    iget-object v10, v10, Lnaj;->a:Lmzd;

    nop

    nop

    nop

    nop

    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    nop

    :goto_18c
    if-eq v4, v6, :cond_21

    nop

    goto/32 :goto_186

    nop

    :cond_21
    goto/32 :goto_185

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18d
    goto/16 :goto_c7

    nop

    nop

    :goto_18e
    goto/32 :goto_194

    nop

    nop

    nop

    :goto_18f
    iget-object v0, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->B:Lnac;

    nop

    nop

    nop

    nop

    goto/32 :goto_23a

    nop

    nop

    nop

    nop

    nop

    :goto_190
    sub-long/2addr v2, v4

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_191
    const/4 v3, 0x1

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

    :goto_192
    iput v3, v0, Lnab;->f:I

    nop

    nop

    goto/32 :goto_189

    nop

    nop

    nop

    nop

    :goto_193
    int-to-float v5, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e2

    nop

    nop

    :goto_194
    invoke-static {v0}, Lryb;->j(Ljava/util/Collection;)Lryb;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26e

    nop

    nop

    nop

    :goto_195
    iget-object v3, v7, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->n:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_196
    iget v4, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->L:I

    nop

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    :goto_197
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_236

    nop

    nop

    :goto_198
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    goto/32 :goto_18d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_199
    sub-float/2addr v4, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_226

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19a
    invoke-virtual {v0, v2}, Lhvp;->j(Lhvq;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    :goto_19b
    invoke-virtual {v4}, Lryb;->isEmpty()Z

    move-result v5

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_19c
    if-eqz v3, :cond_22

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

    :cond_22
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_19d
    invoke-direct/range {v17 .. v22}, Lnaj;-><init>(Lmzd;Lmze;FLnas;Landroid/graphics/Rect;)V

    goto/32 :goto_1cd

    nop

    nop

    nop

    nop

    nop

    :goto_19e
    check-cast v2, Lnai;

    nop

    goto/32 :goto_23c

    nop

    nop

    nop

    nop

    nop

    :goto_19f
    if-nez v2, :cond_23

    nop

    nop

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    :cond_23
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1a0
    monitor-enter v2

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v3, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->v:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual {v0}, Lnar;->a()Lryb;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lryb;->t()Lscq;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    move v5, v4

    nop

    nop

    nop

    :cond_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    nop

    nop

    const/4 v7, 0x1

    nop

    nop

    nop

    if-eqz v6, :cond_25

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    check-cast v6, Lmzd;

    nop

    nop

    nop

    iget-object v8, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->v:Ljava/util/List;

    nop

    nop

    nop

    iget-object v6, v6, Lmzd;->a:Lmzf;

    nop

    nop

    nop

    iget-object v6, v6, Lmzf;->al:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v5, v7

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x5

    nop

    nop

    if-lt v5, v6, :cond_24

    nop

    nop

    :cond_25
    monitor-exit v2

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_aa

    nop

    nop

    :goto_1a1
    if-nez v0, :cond_26

    nop

    goto/32 :goto_25b

    nop

    nop

    nop

    nop

    :cond_26
    goto/32 :goto_18f

    nop

    nop

    nop

    nop

    :goto_1a2
    if-eqz v5, :cond_27

    nop

    nop

    goto/32 :goto_26f

    nop

    nop

    :cond_27
    goto/32 :goto_197

    nop

    nop

    :goto_1a3
    iget v2, v7, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->f:F

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_1a4
    goto/16 :goto_216

    nop

    nop

    nop

    nop

    :goto_1a5
    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    :goto_1a6
    iget v3, v3, Lmzd;->i:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a7
    invoke-virtual {v2, v3}, Lnac;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_1a8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

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

    :goto_1a9
    check-cast v8, Lmzd;

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_1aa
    iget-object v9, v8, Lnaj;->a:Lmzd;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1ab
    iget-object v2, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->R:Lmzm;

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    :goto_1ac
    goto/16 :goto_140

    nop

    nop

    :goto_1ad
    goto/32 :goto_142

    nop

    nop

    nop

    nop

    nop

    :goto_1ae
    check-cast v0, Lnar;

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    :goto_1af
    iget v14, v12, Landroid/graphics/RectF;->bottom:F

    nop

    goto/32 :goto_1c0

    nop

    nop

    nop

    nop

    :goto_1b0
    const/4 v4, 0x1

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

    :goto_1b1
    iget-object v7, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->h:Lnam;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_1b2
    iget-object v14, v12, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->b:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_272

    nop

    nop

    nop

    nop

    :goto_1b3
    const/4 v15, 0x1

    nop

    nop

    nop

    goto/32 :goto_164

    nop

    nop

    nop

    nop

    :goto_1b4
    const/high16 v7, 0x42c80000    # 100.0f

    nop

    nop

    goto/32 :goto_17c

    nop

    nop

    :goto_1b5
    if-eqz v3, :cond_28

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    :cond_28
    goto/32 :goto_175

    nop

    nop

    nop

    nop

    nop

    :goto_1b6
    iget-object v8, v8, Lnaj;->e:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_1b7
    if-lez v0, :cond_29

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :cond_29
    goto/32 :goto_88

    nop

    :goto_1b8
    div-float v20, v4, v13

    nop

    goto/32 :goto_160

    nop

    nop

    nop

    nop

    nop

    :goto_1b9
    check-cast v3, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    :goto_1ba
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_225

    nop

    nop

    nop

    nop

    nop

    :goto_1bb
    goto/16 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_1bc
    goto/32 :goto_246

    nop

    nop

    :goto_1bd
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

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

    nop

    :goto_1be
    aget v2, v9, v6

    nop

    nop

    nop

    goto/32 :goto_1ff

    nop

    nop

    nop

    :goto_1bf
    iget-object v2, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->o:Loyn;

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    nop

    :goto_1c0
    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v12

    nop

    nop

    nop

    goto/32 :goto_228

    nop

    nop

    nop

    nop

    :goto_1c1
    sub-float/2addr v6, v3

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

    :goto_1c2
    if-nez v3, :cond_2a

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    nop

    :cond_2a
    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_1c3
    check-cast v3, Landroid/graphics/Rect;

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

    :goto_1c4
    iget-object v0, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->f:Lhvp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21f

    nop

    nop

    nop

    nop

    :goto_1c5
    invoke-static {v3, v2}, Lnab;->b(ZF)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_1c6
    if-eqz v3, :cond_2b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_179

    nop

    nop

    :cond_2b
    goto/32 :goto_111

    nop

    nop

    :goto_1c7
    iget-object v1, v1, Lmzo;->a:Lcom/google/android/apps/camera/ui/hotshot/HotshotController;

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    :goto_1c8
    iget-object v0, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->f:Lhvp;

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_1c9
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v8

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

    :goto_1ca
    move-object/from16 v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    :goto_1cb
    move/from16 v17, v6

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    :goto_1cc
    const v0, 0x1c

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

    :goto_1cd
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1ce
    iget-object v4, v10, Lmzd;->d:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1cf
    check-cast v10, Lmzd;

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    :goto_1d0
    const/4 v6, 0x0

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    :goto_1d1
    if-eqz v15, :cond_2c

    nop

    nop

    nop

    goto/32 :goto_249

    nop

    nop

    nop

    :cond_2c
    goto/32 :goto_20e

    nop

    nop

    nop

    :goto_1d2
    invoke-static {v2}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v2

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    :goto_1d3
    iget-object v7, v10, Lmzd;->d:Landroid/graphics/RectF;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1d4
    const-wide/16 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    :goto_1d5
    const-wide v11, 0x7fefffffffffffffL    # Double.MAX_VALUE

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_1d6
    invoke-static {v0}, Lnai;->a(Lryb;)Lnai;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d7
    iget-object v3, v3, Lnai;->a:Lryb;

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    :goto_1d8
    iget-object v2, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->B:Lnac;

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_1d9
    iget-object v2, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->h:Lnam;

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    :goto_1da
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_167

    nop

    nop

    nop

    :goto_1db
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23b

    nop

    nop

    nop

    :goto_1dc
    invoke-virtual {v3}, Lryb;->isEmpty()Z

    move-result v5

    nop

    goto/32 :goto_1a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1dd
    iget-object v14, v12, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->b:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    :goto_1de
    iget-object v3, v7, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->n:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_1df
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e0
    move-object v14, v10

    nop

    nop

    nop

    nop

    nop

    :goto_1e1
    goto/32 :goto_196

    nop

    nop

    nop

    nop

    :goto_1e2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    nop

    nop

    goto/32 :goto_1d5

    nop

    nop

    :goto_1e3
    invoke-virtual {v3}, Lmzf;->a()Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_1f2

    nop

    nop

    nop

    :goto_1e4
    aget v6, v9, v3

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_1e5
    float-to-double v8, v6

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    :goto_1e6
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_1e7
    int-to-float v4, v6

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

    :goto_1e8
    iget-object v5, v12, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->b:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_169

    nop

    nop

    nop

    :goto_1e9
    iput-object v5, v2, Lhvp;->q:Lnac;

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    :goto_1ea
    const/4 v2, 0x0

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_1eb
    if-eqz v14, :cond_2d

    nop

    nop

    nop

    nop

    goto/32 :goto_1e1

    nop

    :cond_2d
    goto/32 :goto_1e0

    nop

    nop

    nop

    nop

    :goto_1ec
    const/4 v4, 0x0

    nop

    nop

    nop

    :goto_1ed
    goto/32 :goto_235

    nop

    nop

    :goto_1ee
    if-lt v13, v9, :cond_2e

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :cond_2e
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_1ef
    if-nez v2, :cond_2f

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    :cond_2f
    goto/32 :goto_106

    nop

    nop

    :goto_1f0
    const/4 v5, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    :goto_1f1
    iget-object v9, v8, Lnaj;->b:Lmze;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24e

    nop

    nop

    :goto_1f2
    if-nez v3, :cond_30

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :cond_30
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_1f3
    iget v2, v10, Lmzd;->b:I

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_1f4
    invoke-virtual {v7}, Lrss;->h()Z

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_1f5
    invoke-virtual {v2, v3}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object v2

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

    :goto_1f6
    const/4 v5, 0x2

    nop

    nop

    nop

    nop

    :goto_1f7
    goto/32 :goto_208

    nop

    nop

    nop

    :goto_1f8
    if-nez v1, :cond_31

    nop

    goto/32 :goto_a0

    nop

    nop

    :cond_31
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_1f9
    check-cast v3, Lmzd;

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

    nop

    :goto_1fa
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

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

    :goto_1fb
    iget-boolean v3, v0, Lnab;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1c5

    nop

    nop

    nop

    :goto_1fc
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v9

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    :goto_1fd
    mul-float/2addr v4, v7

    nop

    goto/32 :goto_1b8

    nop

    nop

    nop

    :goto_1fe
    invoke-static {v1}, Lnai;->a(Lryb;)Lnai;

    move-result-object v1

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    nop

    :goto_1ff
    iget-object v6, v7, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->b:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_200
    div-float v14, v14, v17

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_201
    iget-object v2, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->B:Lnac;

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    :goto_202
    invoke-virtual {v0}, Lnab;->a()V

    :goto_203
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_204
    if-lez v14, :cond_32

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

    :cond_32
    goto/32 :goto_21c

    nop

    nop

    nop

    nop

    nop

    :goto_205
    move-object/from16 v22, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    :goto_206
    if-nez v0, :cond_33

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    :cond_33
    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    :goto_207
    mul-float/2addr v15, v14

    nop

    nop

    goto/32 :goto_1dd

    nop

    nop

    nop

    :goto_208
    invoke-virtual {v11}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_209
    iget-object v2, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->S:Lkyf;

    nop

    nop

    goto/32 :goto_27b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20a
    if-eqz v4, :cond_34

    nop

    nop

    nop

    nop

    goto/32 :goto_22a

    nop

    nop

    :cond_34
    goto/32 :goto_257

    nop

    nop

    :goto_20b
    iget-object v7, v2, Lnam;->b:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f4

    nop

    nop

    nop

    nop

    nop

    :goto_20c
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_20d
    float-to-double v2, v2

    nop

    goto/32 :goto_1e5

    nop

    nop

    nop

    :goto_20e
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_248

    nop

    nop

    :goto_20f
    if-nez v3, :cond_35

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :cond_35
    goto/32 :goto_15b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_210
    const/4 v15, 0x0

    nop

    nop

    nop

    :goto_211
    goto/32 :goto_1ee

    nop

    nop

    nop

    nop

    nop

    :goto_212
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_213
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_214
    invoke-virtual {v2, v9}, Landroid/graphics/Matrix;->mapPoints([F)V

    goto/32 :goto_1be

    nop

    nop

    nop

    :goto_215
    const/4 v8, 0x2

    nop

    nop

    nop

    :goto_216
    goto/32 :goto_1fd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_217
    const/high16 v7, 0x42c80000    # 100.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a4

    nop

    nop

    :goto_218
    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->d(Lnac;)V

    goto/32 :goto_139

    nop

    nop

    nop

    nop

    nop

    :goto_219
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_29

    nop

    nop

    :goto_21a
    move/from16 v8, v18

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_21b
    invoke-direct {v2, v0, v3}, Lnar;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_247

    nop

    nop

    nop

    nop

    nop

    :goto_21c
    const/4 v14, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_21d
    new-instance v2, Lnar;

    nop

    nop

    goto/32 :goto_21b

    nop

    nop

    nop

    nop

    :goto_21e
    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v15

    nop

    nop

    goto/32 :goto_207

    nop

    nop

    nop

    nop

    nop

    :goto_21f
    sget-object v2, Lhvq;->k:Lhvq;

    nop

    nop

    goto/32 :goto_19a

    nop

    nop

    nop

    nop

    :goto_220
    iget-object v3, v0, Lnar;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c3

    nop

    nop

    :goto_221
    const/4 v5, 0x0

    nop

    nop

    nop

    :goto_222
    goto/32 :goto_274

    nop

    nop

    nop

    nop

    nop

    :goto_223
    iget-object v2, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->f:Lhvp;

    nop

    goto/32 :goto_ef

    nop

    nop

    :goto_224
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

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

    :goto_225
    iget-object v8, v7, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->n:Ljava/util/List;

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

    :goto_226
    float-to-double v6, v7

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

    :goto_227
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_242

    nop

    nop

    nop

    nop

    :goto_228
    sub-float/2addr v12, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    nop

    :goto_229
    invoke-virtual {v0}, Lnab;->a()V

    :goto_22a
    goto/32 :goto_134

    nop

    nop

    nop

    :goto_22b
    aput v3, v9, v6

    nop

    nop

    nop

    goto/32 :goto_191

    nop

    nop

    nop

    :goto_22c
    invoke-virtual {v0, v2}, Lnac;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_1d4

    nop

    nop

    nop

    :goto_22d
    const/4 v14, 0x0

    nop

    nop

    nop

    nop

    :goto_22e
    goto/32 :goto_99

    nop

    nop

    nop

    :goto_22f
    iget v2, v2, Lmzd;->b:I

    nop

    nop

    nop

    :goto_230
    goto/32 :goto_255

    nop

    nop

    nop

    :goto_231
    invoke-virtual {v2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_141

    nop

    nop

    nop

    :goto_232
    if-lt v5, v8, :cond_36

    nop

    nop

    nop

    goto/32 :goto_18e

    nop

    nop

    nop

    :cond_36
    goto/32 :goto_23d

    nop

    nop

    nop

    nop

    :goto_233
    if-nez v3, :cond_37

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    nop

    :cond_37
    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    :goto_234
    move-object v10, v15

    nop

    goto/32 :goto_13d

    nop

    nop

    :goto_235
    cmpg-float v15, v15, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    nop

    :goto_236
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_237

    nop

    nop

    :goto_237
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_238
    move/from16 v19, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_258

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_239
    sget-object v0, Lsbh;->a:Lryb;

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    :goto_23a
    sget-object v2, Lnac;->a:Lnac;

    nop

    nop

    nop

    goto/32 :goto_168

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23b
    iget v14, v14, Landroid/graphics/RectF;->top:F

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_23c
    sget-object v3, Lmzf;->c:Lmzf;

    nop

    nop

    nop

    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23d
    invoke-virtual {v4, v5}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_24a

    nop

    nop

    nop

    :goto_23e
    iget-boolean v3, v0, Lnab;->d:Z

    nop

    goto/32 :goto_14a

    nop

    nop

    :goto_23f
    invoke-virtual {v11}, Lmzc;->a()Lmzd;

    move-result-object v18

    nop

    nop

    nop

    goto/32 :goto_1f1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_240
    invoke-virtual {v3}, Lmzf;->a()Z

    move-result v3

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    :goto_241
    if-nez v10, :cond_38

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_38
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_242
    goto/16 :goto_1f7

    nop

    nop

    nop

    nop

    :goto_243
    goto/32 :goto_27a

    nop

    nop

    nop

    nop

    :goto_244
    sget-object v0, Lsbh;->a:Lryb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_245
    if-eqz v3, :cond_39

    nop

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    nop

    nop

    :cond_39
    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    :goto_246
    invoke-virtual {v7}, Lrss;->c()Ljava/lang/Object;

    move-result-object v7

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    :goto_247
    move-object v0, v2

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

    nop

    :goto_248
    goto/16 :goto_148

    nop

    :goto_249
    goto/32 :goto_234

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24a
    check-cast v8, Lnaj;

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24b
    move-object/from16 v22, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    :goto_24c
    iget-object v12, v12, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->b:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_1af

    nop

    nop

    nop

    nop

    :goto_24d
    invoke-virtual {v2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_24e
    iget v10, v8, Lnaj;->c:F

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

    :goto_24f
    move-object v3, v2

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_250
    sub-float/2addr v2, v6

    nop

    goto/32 :goto_1e4

    nop

    nop

    nop

    :goto_251
    float-to-double v8, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20c

    nop

    nop

    :goto_252
    iget-object v2, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->f:Lhvp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    :goto_253
    iget-object v4, v2, Lnai;->a:Lryb;

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

    :goto_254
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v14

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

    :goto_255
    iput v2, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->L:I

    nop

    nop

    nop

    nop

    nop

    :goto_256
    goto/32 :goto_209

    nop

    nop

    nop

    nop

    nop

    :goto_257
    iget-object v4, v0, Lnab;->e:Lmzf;

    nop

    goto/32 :goto_229

    nop

    nop

    nop

    :goto_258
    goto/16 :goto_186

    nop

    nop

    nop

    nop

    :goto_259
    goto/32 :goto_1d3

    nop

    nop

    :goto_25a
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_25b
    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    :goto_25c
    iget-object v3, v2, Lhsd;->e:Lpdl;

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25d
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

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

    :goto_25e
    iput-boolean v0, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->z:Z

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_25f
    if-gt v3, v8, :cond_3a

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :cond_3a
    goto/32 :goto_1de

    nop

    nop

    nop

    :goto_260
    div-float v14, v14, v17

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_261
    if-nez v0, :cond_3b

    nop

    nop

    nop

    nop

    goto/32 :goto_25b

    nop

    nop

    nop

    nop

    :cond_3b
    goto/32 :goto_1c4

    nop

    nop

    nop

    nop

    :goto_262
    if-nez v2, :cond_3c

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    :cond_3c
    goto/32 :goto_1ea

    nop

    nop

    nop

    nop

    :goto_263
    move-object/from16 v10, v16

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

    nop

    nop

    :goto_264
    move-object/from16 v18, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19d

    nop

    nop

    nop

    nop

    nop

    :goto_265
    cmpg-double v4, v6, v8

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_266
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_267
    move v3, v7

    nop

    goto/32 :goto_212

    nop

    nop

    nop

    nop

    nop

    :goto_268
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_269
    if-eq v3, v7, :cond_3d

    nop

    nop

    nop

    goto/32 :goto_213

    nop

    nop

    nop

    nop

    :cond_3d
    goto/32 :goto_e6

    nop

    nop

    :goto_26a
    check-cast v5, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_26b
    if-nez v3, :cond_3e

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    :cond_3e
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_26c
    move-object v15, v10

    nop

    nop

    nop

    :goto_26d
    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26e
    invoke-static {v0}, Lnai;->a(Lryb;)Lnai;

    move-result-object v0

    nop

    :goto_26f
    goto/32 :goto_4c

    nop

    nop

    :goto_270
    iget-object v3, v7, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->n:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_271
    iget-boolean v2, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->A:Z

    nop

    goto/32 :goto_262

    nop

    nop

    :goto_272
    move-object/from16 v23, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_273
    iget-object v15, v12, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->b:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_25d

    nop

    nop

    nop

    nop

    nop

    :goto_274
    invoke-static {v5, v14, v15, v4}, Lmze;->b(ZZZZ)Lmze;

    move-result-object v19

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_275
    invoke-virtual {v7}, Lrss;->h()Z

    move-result v9

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_276
    move-object/from16 v17, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_264

    nop

    nop

    nop

    nop

    :goto_277
    cmpg-float v5, v5, v8

    nop

    goto/32 :goto_124

    nop

    nop

    :goto_278
    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    nop

    :goto_279
    cmpg-float v4, v4, v5

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

    :goto_27a
    invoke-virtual {v11}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27b
    invoke-virtual {v2}, Lkyf;->B()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop
.end method
