.class public final synthetic Lkbm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpcm;


# instance fields
.field public final synthetic a:Lkbn;


# direct methods
.method public synthetic constructor <init>(Lkbn;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lkbm;->a:Lkbn;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 30

    goto/32 :goto_10f

    nop

    nop

    nop

    :goto_0
    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_316

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_2
    iget-boolean v1, v0, Lkbn;->f:Z

    nop

    nop

    nop

    goto/32 :goto_257

    nop

    nop

    nop

    :goto_3
    new-instance v0, Ljava/lang/IllegalStateException;

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

    :goto_4
    aget-object v10, v3, v7

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sub-long v1, v4, v1

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v15

    nop

    nop

    goto/32 :goto_1f5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v3

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_8
    invoke-virtual {v2}, Lpcg;->a()I

    move-result v2

    nop

    goto/32 :goto_17b

    nop

    nop

    nop

    nop

    :goto_9
    if-gtz v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25c

    nop

    :cond_0
    goto/32 :goto_273

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v3, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    :goto_b
    if-nez v13, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_338

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move/from16 v5, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_220

    nop

    nop

    :goto_d
    iget-boolean v13, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->w:Z

    nop

    goto/32 :goto_213

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v4, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->B:Lnac;

    nop

    goto/32 :goto_17f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v4, :cond_2

    nop

    goto/32 :goto_2ee

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_18a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {v3, v4}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17d

    nop

    nop

    :goto_11
    if-ne v13, v8, :cond_3

    nop

    nop

    goto/32 :goto_2f0

    nop

    nop

    :cond_3
    goto/32 :goto_2bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v2, :cond_4

    nop

    goto/32 :goto_2c9

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2c8

    nop

    nop

    :goto_13
    sub-int v6, v10, v6

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v7, v13, v1, v2}, La;->bh(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_16
    iget-object v1, v9, Lhvp;->r:Loyd;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_17
    iget-object v9, v0, Lkbn;->b:Lhvp;

    nop

    nop

    nop

    nop

    goto/32 :goto_302

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v6, 0x0

    nop

    :goto_19
    goto/32 :goto_110

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v4, v5}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v4

    nop

    goto/32 :goto_293

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v1, v9, Lhvp;->r:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v3, v0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1b4

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_277

    nop

    nop

    :goto_1e
    const/high16 v4, 0x42c80000    # 100.0f

    nop

    nop

    nop

    goto/32 :goto_288

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    int-to-float v3, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b2

    nop

    nop

    nop

    nop

    nop

    :goto_20
    sub-float/2addr v5, v15

    nop

    goto/32 :goto_1a5

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_1f8

    nop

    nop

    :goto_22
    goto/32 :goto_3

    nop

    nop

    :goto_23
    iget-object v4, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->f:Lhvp;

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

    :goto_24
    iget-object v15, v15, Lprf;->c:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_206

    nop

    nop

    nop

    :goto_25
    iget-object v5, v4, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->b:Landroid/graphics/RectF;

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v15, v5, v7}, Lrrf;->o(ZLjava/lang/String;I)V

    goto/32 :goto_1ce

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v4, 0x0

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_32f

    nop

    nop

    :goto_29
    int-to-float v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_286

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v2, v3}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto/32 :goto_23d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    aput-object v15, v12, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_2ab

    nop

    nop

    nop

    :goto_2c
    invoke-interface {v1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2ad

    nop

    nop

    :goto_2d
    invoke-interface {v3}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_218

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v4, v9, Lhvp;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_251

    nop

    nop

    nop

    nop

    :goto_2f
    iget-boolean v9, v15, Lnak;->b:Z

    nop

    goto/32 :goto_23b

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v25

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

    :goto_31
    iput-object v4, v8, Lmzc;->b:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_2f9

    nop

    nop

    :goto_32
    invoke-virtual {v3, v4}, Lmzt;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    :goto_33
    if-ge v6, v7, :cond_5

    nop

    nop

    nop

    goto/32 :goto_14d

    nop

    :cond_5
    goto/32 :goto_22d

    nop

    nop

    nop

    :goto_34
    sub-float/2addr v6, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    :goto_35
    const-wide/16 v19, -0x1

    nop

    goto/32 :goto_25d

    nop

    nop

    :goto_36
    new-array v12, v7, [Lnak;

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v15}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v16

    nop

    nop

    goto/32 :goto_32c

    nop

    nop

    :goto_38
    if-nez v4, :cond_6

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

    :cond_6
    goto/32 :goto_26f

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v3, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->c:Landroid/view/accessibility/AccessibilityManager;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-static {v5, v11, v14}, Lhvp;->o(III)I

    move-result v5

    nop

    :goto_3b
    goto/32 :goto_244

    nop

    nop

    :goto_3c
    mul-float v4, v4, v18

    nop

    goto/32 :goto_211

    nop

    nop

    :goto_3d
    invoke-virtual {v8, v4}, Lmzc;->d(Ljava/lang/String;)V

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    div-float/2addr v5, v3

    nop

    nop

    :goto_3f
    goto/32 :goto_2a6

    nop

    nop

    nop

    nop

    nop

    :goto_40
    if-eqz v6, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    :cond_7
    goto/32 :goto_176

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    check-cast v12, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_42
    iput-object v5, v4, Lhvp;->q:Lnac;

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    nop

    nop

    goto/32 :goto_28c

    nop

    nop

    :goto_44
    const/4 v11, 0x1

    nop

    nop

    :goto_45
    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    array-length v10, v15

    nop

    nop

    goto/32 :goto_2b5

    nop

    nop

    nop

    :goto_47
    invoke-interface {v4}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v6}, Llad;->a()Lpcg;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    :goto_49
    invoke-direct/range {v21 .. v27}, Lprf;-><init>(ILandroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_4a
    new-instance v3, Lhiu;

    nop

    nop

    goto/32 :goto_174

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v3}, Lrss;->c()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_248

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object v1, v0, Lkbn;->h:Lkog;

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_4d
    check-cast v3, Lmzt;

    nop

    nop

    nop

    goto/32 :goto_1d9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    check-cast v7, Ljava/lang/Integer;

    nop

    goto/32 :goto_238

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    goto/32 :goto_1aa

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_51
    iget-boolean v0, v0, Llad;->d:Z

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v13}, Lmzm;->a()Z

    move-result v13

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

    :goto_53
    goto/32 :goto_2c7

    nop

    nop

    nop

    nop

    :goto_54
    move v7, v12

    nop

    nop

    goto/32 :goto_2e2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_204

    nop

    nop

    nop

    nop

    :goto_56
    aget-object v10, v6, v7

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

    nop

    nop

    :goto_57
    aget-object v10, v3, v7

    nop

    goto/32 :goto_1a2

    nop

    nop

    :goto_58
    if-nez v1, :cond_8

    nop

    goto/32 :goto_25c

    nop

    :cond_8
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_59
    iget-object v9, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->d:Lhco;

    nop

    goto/32 :goto_1f2

    nop

    nop

    :goto_5a
    iget-object v6, v4, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->b:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_312

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    const/4 v4, 0x1

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    :goto_5c
    if-nez v2, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_2ee

    nop

    :cond_9
    goto/32 :goto_283

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-direct {v5, v8}, Lgdm;-><init>(I)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iget v2, v9, Lhvp;->i:I

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    sget-object v1, Lcom/google/android/clockwork/common/wearable/wearmaterial/pageindicator/KvcD/IYYyjJUHLbynRQ;->dBKRBLSzp:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a3

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-virtual {v3, v4}, Lnam;->b(I)V

    goto/32 :goto_2a8

    nop

    nop

    :goto_61
    if-gtz v1, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_2f7

    nop

    nop

    :cond_a
    goto/32 :goto_2f6

    nop

    nop

    :goto_62
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    nop

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

    :goto_63
    move-object v10, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2dc

    nop

    nop

    nop

    :goto_64
    iget-boolean v4, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->A:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b8

    nop

    nop

    nop

    :goto_65
    if-nez v14, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_26d

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_26c

    nop

    nop

    nop

    nop

    nop

    :goto_66
    move/from16 v24, v9

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

    :goto_67
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_MAX_FACE_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    goto/32 :goto_258

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iget-object v1, v0, Lkbn;->h:Lkog;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_212

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    long-to-int v6, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2cc

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object v0, v3, Lhxc;->c:Liof;

    nop

    goto/32 :goto_2a7

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iput-boolean v3, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->z:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_296

    nop

    nop

    :goto_6c
    iget-object v0, v0, Lkbm;->a:Lkbn;

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

    :goto_6d
    invoke-virtual {v13}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v16

    nop

    nop

    goto/32 :goto_19e

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-virtual/range {v14 .. v20}, Lhvp;->f([Lnak;Landroid/graphics/Rect;IIIZ)V

    :goto_6f
    goto/32 :goto_21a

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24c

    nop

    nop

    nop

    nop

    :goto_71
    int-to-float v5, v5

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :goto_72
    const/16 v26, 0x0

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

    :goto_73
    new-array v9, v8, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_18f

    nop

    nop

    nop

    :goto_74
    if-nez v4, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :cond_c
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_75
    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v2

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_76
    move-object/from16 v21, v13

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    iget-object v3, v9, Lhvp;->r:Loyd;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    check-cast v0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_7a
    check-cast v3, Lhsd;

    nop

    nop

    goto/32 :goto_1e7

    nop

    nop

    :goto_7b
    goto/16 :goto_147

    nop

    nop

    nop

    :goto_7c
    goto/32 :goto_146

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    aget-object v10, v3, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    :goto_7e
    const-wide/16 v19, 0xbb8

    nop

    nop

    goto/32 :goto_16a

    nop

    nop

    nop

    :goto_7f
    if-eqz v6, :cond_d

    nop

    nop

    nop

    goto/32 :goto_2f3

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_2f2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    iput-object v2, v0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->e:Ljava/util/List;

    nop

    goto/32 :goto_2cd

    nop

    nop

    nop

    :goto_81
    iput-object v4, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->C:Lnac;

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    goto/16 :goto_2f0

    nop

    nop

    nop

    :goto_83
    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    :goto_84
    const/16 v8, 0x10e

    nop

    nop

    nop

    nop

    goto/32 :goto_2bb

    nop

    nop

    nop

    nop

    nop

    :goto_85
    invoke-static {v6, v10, v14}, Lhvp;->o(III)I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_186

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-direct {v11, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    goto/32 :goto_99

    nop

    nop

    :goto_87
    const-wide/16 v6, 0x5dc

    nop

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

    :goto_88
    check-cast v6, [Lnak;

    nop

    nop

    nop

    nop

    goto/32 :goto_32d

    nop

    nop

    :goto_89
    int-to-float v5, v5

    nop

    nop

    nop

    goto/32 :goto_2aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    iget-wide v3, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->D:J

    nop

    nop

    nop

    goto/32 :goto_173

    nop

    nop

    nop

    :goto_8b
    int-to-float v7, v7

    nop

    nop

    goto/32 :goto_157

    nop

    nop

    nop

    :goto_8c
    new-instance v9, Lprf;

    nop

    nop

    nop

    goto/32 :goto_245

    nop

    nop

    :goto_8d
    const-string v4, "Face"

    nop

    nop

    goto/32 :goto_241

    nop

    nop

    nop

    nop

    :goto_8e
    iget-object v13, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->F:Landroid/graphics/Rect;

    nop

    goto/32 :goto_201

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    nop

    :goto_90
    if-nez v3, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25c

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_29f

    nop

    nop

    :goto_91
    new-array v6, v6, [Lprf;

    nop

    goto/32 :goto_326

    nop

    nop

    nop

    nop

    :goto_92
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    goto/32 :goto_19d

    nop

    nop

    :goto_93
    goto/16 :goto_1fe

    nop

    :goto_94
    goto/32 :goto_29b

    nop

    nop

    nop

    :goto_95
    if-nez v4, :cond_f

    nop

    goto/32 :goto_3f

    nop

    :cond_f
    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    :goto_96
    aget-object v5, v6, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a9

    nop

    nop

    :goto_97
    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v9

    nop

    goto/32 :goto_263

    nop

    nop

    :goto_98
    check-cast v7, Landroid/hardware/camera2/params/Face;

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    :goto_99
    check-cast v10, Landroid/graphics/Rect;

    nop

    goto/32 :goto_1bf

    nop

    nop

    :goto_9a
    const/16 v11, 0x10e

    nop

    goto/32 :goto_233

    nop

    nop

    nop

    :goto_9b
    iget-object v4, v9, Lhvp;->e:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    :goto_9c
    goto/16 :goto_26d

    nop

    :goto_9d
    goto/32 :goto_65

    nop

    nop

    nop

    :goto_9e
    if-nez v4, :cond_10

    nop

    goto/32 :goto_1ab

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_19b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    sub-int v6, v10, v6

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_a0
    if-nez v13, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    const v18, 0x3fcccccd    # 1.6f

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    :goto_a2
    iget-object v4, v14, Lhvp;->e:Loyd;

    nop

    nop

    nop

    goto/32 :goto_1f3

    nop

    nop

    nop

    :goto_a3
    invoke-interface {v6}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    :goto_a4
    check-cast v3, Lhxh;

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    sub-int v5, v11, v5

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_a6
    if-nez v3, :cond_12

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_12
    goto/32 :goto_325

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v27

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a8
    iput v5, v11, Landroid/graphics/RectF;->right:F

    nop

    goto/32 :goto_2b4

    nop

    nop

    nop

    :goto_a9
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_2d7

    nop

    nop

    :goto_aa
    aget-object v10, v3, v7

    nop

    nop

    nop

    goto/32 :goto_260

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    const v5, 0x7f140479

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    :goto_ac
    const/4 v1, 0x0

    nop

    :goto_ad
    goto/32 :goto_320

    nop

    nop

    nop

    nop

    :goto_ae
    move v12, v7

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

    :goto_af
    iput-boolean v3, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->z:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_261

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    nop

    nop

    nop

    nop

    goto/32 :goto_208

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-static {v6, v10, v14}, Lhvp;->o(III)I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_178

    nop

    nop

    nop

    :goto_b2
    if-nez v1, :cond_13

    nop

    nop

    nop

    goto/32 :goto_2a2

    nop

    :cond_13
    goto/32 :goto_d0

    nop

    nop

    :goto_b3
    iput-object v3, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->B:Lnac;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_b4
    double-to-float v5, v5

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

    :goto_b5
    goto/16 :goto_122

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    goto/32 :goto_121

    nop

    nop

    :goto_b7
    iget-boolean v13, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->A:Z

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    check-cast v3, Lmzt;

    nop

    nop

    nop

    goto/32 :goto_199

    nop

    nop

    nop

    nop

    :goto_b9
    invoke-virtual {v3}, Lrss;->c()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    :goto_ba
    new-instance v13, Lprf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d3

    nop

    nop

    nop

    :goto_bb
    iget-boolean v4, v3, Lnam;->c:Z

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    sget-object v9, Lmzf;->b:Lmzf;

    nop

    nop

    nop

    goto/32 :goto_310

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    invoke-direct {v4, v5}, Lgdm;-><init>(I)V

    goto/32 :goto_10

    nop

    nop

    :goto_be
    invoke-virtual {v13}, Lncn;->h()Z

    move-result v13

    nop

    nop

    goto/32 :goto_16e

    nop

    nop

    nop

    nop

    :goto_bf
    move-object/from16 p0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_340

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    iget-object v15, v15, Lnak;->a:Lprf;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_c1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_314

    nop

    nop

    nop

    nop

    :goto_c2
    invoke-static {v11, v5, v12}, Lrrf;->o(ZLjava/lang/String;I)V

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v3

    nop

    nop

    goto/32 :goto_319

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    iget-object v7, v4, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->l:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_c5
    new-array v6, v1, [Lprf;

    nop

    nop

    :goto_c6
    goto/32 :goto_294

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    if-lt v7, v9, :cond_14

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

    :cond_14
    goto/32 :goto_8c

    nop

    nop

    :goto_c8
    sget-object v13, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    :goto_c9
    check-cast v4, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    :goto_ca
    iget-object v9, v15, Lnak;->a:Lprf;

    nop

    nop

    nop

    goto/32 :goto_255

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    if-eqz v14, :cond_15

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    aget-object v7, v4, v6

    nop

    goto/32 :goto_217

    nop

    nop

    nop

    :goto_cd
    iget-object v0, v0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_194

    nop

    nop

    :goto_ce
    move v6, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_1f7

    nop

    nop

    :goto_cf
    const/4 v1, 0x0

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    if-nez v2, :cond_16

    nop

    goto/32 :goto_2a2

    nop

    :cond_16
    goto/32 :goto_e4

    nop

    nop

    :goto_d1
    iget-object v1, v0, Lkbn;->c:Lcom/google/android/apps/camera/ui/hotshot/HotshotController;

    nop

    nop

    nop

    nop

    goto/32 :goto_30f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    iget-object v3, v3, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->c:Landroid/graphics/Rect;

    nop

    goto/32 :goto_2db

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    iget-object v2, v9, Lhvp;->b:Landroid/view/View;

    nop

    nop

    goto/32 :goto_169

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    iget-object v1, v0, Lkbn;->a:Landroid/view/accessibility/AccessibilityManager;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    :goto_d5
    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    :goto_d6
    invoke-virtual {v8, v4}, Lmzc;->b(I)V

    goto/32 :goto_265

    nop

    nop

    :goto_d7
    iget-object v3, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->f:Lhvp;

    nop

    nop

    nop

    nop

    goto/32 :goto_2fc

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    iget-wide v1, v9, Lhvp;->h:J

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    div-float/2addr v3, v10

    nop

    goto/32 :goto_214

    nop

    nop

    nop

    nop

    :goto_da
    goto/16 :goto_ad

    nop

    nop

    nop

    :goto_db
    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    check-cast v6, [Lnak;

    nop

    nop

    nop

    goto/32 :goto_31f

    nop

    nop

    nop

    :goto_dd
    iget-wide v10, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->D:J

    nop

    nop

    nop

    goto/32 :goto_2e8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_de
    check-cast v3, Lrss;

    nop

    goto/32 :goto_1ff

    nop

    nop

    nop

    nop

    nop

    :goto_df
    iget-boolean v3, v4, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->d:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a7

    nop

    nop

    nop

    nop

    :goto_e0
    if-eqz v6, :cond_17

    nop

    nop

    nop

    nop

    goto/32 :goto_306

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_305

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    iget-object v3, v3, Lhxh;->i:Lpdl;

    nop

    goto/32 :goto_1b6

    nop

    nop

    nop

    :goto_e2
    invoke-direct {v15, v13, v9}, Lnak;-><init>(Lprf;Z)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_e3
    iput-boolean v11, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->A:Z

    nop

    goto/32 :goto_29a

    nop

    nop

    nop

    nop

    :goto_e4
    iput v3, v9, Lhvp;->i:I

    nop

    nop

    goto/32 :goto_322

    nop

    nop

    :goto_e5
    iget v6, v6, Lpcg;->e:I

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f1

    nop

    nop

    :goto_e7
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v28

    nop

    goto/32 :goto_1b5

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    new-instance v3, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_1e5

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    if-eqz v3, :cond_18

    nop

    goto/32 :goto_25c

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_2a4

    nop

    nop

    nop

    nop

    :goto_ea
    if-nez v1, :cond_19

    nop

    nop

    nop

    nop

    goto/32 :goto_25c

    nop

    nop

    :cond_19
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    div-float v4, v4, v17

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    goto/16 :goto_327

    nop

    nop

    nop

    nop

    :goto_ed
    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    if-nez v6, :cond_1a

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

    :cond_1a
    goto/32 :goto_289

    nop

    nop

    :goto_ef
    iput-object v3, v14, Lhvp;->p:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_27c

    nop

    nop

    :goto_f0
    if-nez v1, :cond_1b

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    :cond_1b
    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_f1
    float-to-double v5, v6

    nop

    nop

    nop

    goto/32 :goto_2d4

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    mul-float v15, v15, v18

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_f3
    iget-object v5, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->B:Lnac;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_f4
    if-nez v12, :cond_1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_317

    nop

    nop

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_1e6

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    add-int v0, v0, v1

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    invoke-static {v6, v10, v14}, Lhvp;->o(III)I

    move-result v6

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_f7
    int-to-float v1, v1

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_f8
    const/16 v27, 0x0

    nop

    nop

    goto/32 :goto_230

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    invoke-virtual {v3, v4}, Lmzt;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_32b

    nop

    nop

    :goto_fa
    invoke-virtual {v3, v1}, Lpdl;->g(Landroid/graphics/Rect;)V

    goto/32 :goto_20e

    nop

    nop

    :goto_fb
    or-int v15, v1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    :goto_fc
    const/16 v5, 0x10e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23f

    nop

    nop

    nop

    nop

    :goto_fd
    iget-object v6, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->k:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_24d

    nop

    nop

    nop

    nop

    :goto_fe
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_2ef

    nop

    nop

    nop

    nop

    :goto_ff
    invoke-static {v5, v11, v14}, Lhvp;->o(III)I

    move-result v5

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_100
    iget-object v1, v3, Lkbb;->b:Lpog;

    nop

    goto/32 :goto_2dd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_101
    check-cast v15, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_102
    check-cast v5, Landroid/hardware/camera2/params/Face;

    nop

    nop

    nop

    nop

    goto/32 :goto_18c

    nop

    nop

    nop

    nop

    :goto_103
    const/4 v3, 0x1

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

    nop

    :goto_104
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_105
    check-cast v4, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_1db

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_106
    iput-wide v8, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->D:J

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_107
    invoke-static {v5, v4, v13}, Lrrf;->o(ZLjava/lang/String;I)V

    goto/32 :goto_9b

    nop

    nop

    :goto_108
    iget-object v3, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->f:Lhvp;

    nop

    nop

    nop

    nop

    goto/32 :goto_264

    nop

    nop

    nop

    nop

    nop

    :goto_109
    sub-float/2addr v3, v6

    nop

    nop

    nop

    goto/32 :goto_2b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    invoke-interface {v1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_10b
    iput v5, v11, Landroid/graphics/RectF;->top:F

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    :goto_10c
    invoke-virtual {v3}, Llad;->a()Lpcg;

    move-result-object v3

    nop

    nop

    goto/32 :goto_142

    nop

    nop

    nop

    nop

    :goto_10d
    int-to-float v12, v12

    nop

    nop

    goto/32 :goto_1d6

    nop

    nop

    :goto_10e
    if-nez v10, :cond_1d

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    :cond_1d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10f
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_2c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_110
    invoke-virtual {v9, v1, v6}, Lhvp;->k(II)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    :goto_111
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_112
    iget-boolean v1, v9, Lhvp;->k:Z

    nop

    goto/32 :goto_150

    nop

    nop

    nop

    :goto_113
    iget-object v10, v2, Lnib;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_276

    nop

    nop

    nop

    nop

    :goto_114
    if-eq v4, v0, :cond_1e

    nop

    nop

    nop

    goto/32 :goto_1ee

    nop

    nop

    :cond_1e
    goto/32 :goto_2ca

    nop

    nop

    nop

    nop

    :goto_115
    iget-object v1, v0, Lkbn;->c:Lcom/google/android/apps/camera/ui/hotshot/HotshotController;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_116
    const/4 v15, 0x0

    nop

    goto/32 :goto_2fe

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_117
    int-to-float v3, v3

    nop

    goto/32 :goto_28d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_118
    iget-object v2, v1, Lnib;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1e8

    nop

    nop

    nop

    nop

    nop

    :goto_119
    invoke-direct {v5, v4, v3}, Lnar;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_266

    nop

    nop

    nop

    nop

    nop

    :goto_11a
    invoke-interface {v1, v3}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_1ae

    nop

    nop

    :goto_11b
    add-int/lit8 v7, v7, 0x1

    nop

    goto/32 :goto_ec

    nop

    nop

    :goto_11c
    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    if-ne v12, v13, :cond_1f

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    :cond_1f
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11e
    const/16 v13, 0xb4

    nop

    :goto_11f
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_120
    invoke-virtual {v2, v3}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto/32 :goto_25b

    nop

    nop

    :goto_121
    const/4 v1, 0x1

    nop

    nop

    :goto_122
    goto/32 :goto_20f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_123
    if-lt v6, v5, :cond_20

    nop

    nop

    nop

    nop

    goto/32 :goto_221

    nop

    nop

    :cond_20
    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_124
    goto/16 :goto_2d3

    nop

    nop

    nop

    nop

    nop

    :goto_125
    goto/32 :goto_2d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_126
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_127
    goto/16 :goto_2b3

    nop

    nop

    :goto_128
    goto/32 :goto_239

    nop

    nop

    nop

    nop

    nop

    :goto_129
    aget-object v15, v6, v10

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :goto_12a
    float-to-double v7, v3

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    invoke-virtual/range {v9 .. v15}, Lhvp;->f([Lnak;Landroid/graphics/Rect;IIIZ)V

    goto/32 :goto_231

    nop

    nop

    nop

    :goto_12c
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v5

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

    :goto_12d
    const/4 v15, 0x1

    nop

    nop

    :goto_12e
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_12f
    const/4 v4, 0x1

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    :goto_130
    const/16 v10, 0xb4

    nop

    nop

    nop

    nop

    goto/32 :goto_190

    nop

    nop

    :goto_131
    iput-boolean v3, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->A:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_321

    nop

    nop

    nop

    nop

    nop

    :goto_132
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_133
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v13

    nop

    goto/32 :goto_234

    nop

    nop

    :goto_134
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v3

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

    :goto_135
    iget-object v4, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->B:Lnac;

    nop

    goto/32 :goto_242

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_136
    aget v3, v9, v6

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

    :goto_137
    move/from16 v17, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_254

    nop

    nop

    nop

    nop

    :goto_138
    iget-object v14, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->f:Lhvp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_139
    sget-object v4, Lnac;->a:Lnac;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13a
    iget v7, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->y:I

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

    :goto_13b
    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->u()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_31c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_33c

    nop

    nop

    :goto_13d
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_13e
    iget v3, v4, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->f:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_202

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13f
    check-cast v3, Lhxc;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a0

    nop

    nop

    nop

    :goto_140
    const/16 v12, 0x10e

    nop

    nop

    nop

    :goto_141
    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_142
    iget v13, v3, Lpcg;->e:I

    nop

    goto/32 :goto_2bd

    nop

    nop

    nop

    nop

    nop

    :goto_143
    iget-object v4, v3, Lnam;->b:Lrss;

    nop

    nop

    goto/32 :goto_24b

    nop

    nop

    nop

    :goto_144
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_145
    int-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_1bc

    nop

    nop

    :goto_146
    const/4 v10, 0x0

    nop

    :goto_147
    goto/32 :goto_1c1

    nop

    nop

    nop

    nop

    :goto_148
    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    nop

    goto/32 :goto_113

    nop

    nop

    :goto_149
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_14a
    check-cast v4, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;

    nop

    goto/32 :goto_2be

    nop

    nop

    nop

    nop

    :goto_14b
    check-cast v1, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_308

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14c
    goto/16 :goto_1bd

    nop

    nop

    nop

    nop

    :goto_14d
    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    :goto_14e
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v4

    nop

    goto/32 :goto_1ba

    nop

    nop

    nop

    nop

    nop

    :goto_14f
    invoke-interface {v4}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v4

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

    :goto_150
    if-nez v1, :cond_21

    nop

    nop

    nop

    goto/32 :goto_232

    nop

    nop

    nop

    :cond_21
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_151
    iget-object v3, v0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1cb

    nop

    nop

    nop

    nop

    :goto_152
    add-float/2addr v5, v4

    nop

    nop

    goto/32 :goto_339

    nop

    nop

    nop

    :goto_153
    array-length v3, v6

    nop

    nop

    goto/32 :goto_209

    nop

    nop

    :goto_154
    move-object/from16 p0, v4

    nop

    goto/32 :goto_14e

    nop

    nop

    nop

    nop

    :goto_155
    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_2c2

    nop

    nop

    nop

    nop

    nop

    :goto_156
    invoke-static {v5, v13}, Ljava/lang/Math;->max(FF)F

    move-result v5

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    :goto_157
    const/4 v8, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_158
    const/4 v12, 0x0

    nop

    nop

    nop

    :goto_159
    goto/32 :goto_1d5

    nop

    nop

    nop

    nop

    :goto_15a
    div-float v15, v15, v17

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_15b
    move v11, v2

    nop

    nop

    :goto_15c
    goto/32 :goto_28e

    nop

    nop

    nop

    nop

    nop

    :goto_15d
    if-nez v3, :cond_22

    nop

    nop

    nop

    nop

    goto/32 :goto_25c

    nop

    nop

    :cond_22
    goto/32 :goto_31b

    nop

    nop

    nop

    nop

    nop

    :goto_15e
    check-cast v6, [Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1e1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15f
    invoke-virtual {v9, v15}, Lhvp;->a(Z)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_287

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_160
    const v5, 0x7f14037d

    nop

    nop

    nop

    goto/32 :goto_336

    nop

    nop

    :goto_161
    invoke-virtual {v8, v4}, Lmzc;->h(I)V

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_162
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_163
    goto/16 :goto_1af

    nop

    nop

    nop

    :goto_164
    goto/32 :goto_1c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_165
    return-void

    nop

    nop

    :goto_166
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_167
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v14

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    :goto_168
    iget-object v4, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->f:Lhvp;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c2

    nop

    nop

    :goto_169
    iget-object v4, v9, Lhvp;->a:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_27e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16a
    cmp-long v1, v1, v19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_16b
    check-cast v2, Lnib;

    nop

    goto/32 :goto_1f4

    nop

    nop

    nop

    :goto_16c
    iget-object v1, v0, Lkbn;->c:Lcom/google/android/apps/camera/ui/hotshot/HotshotController;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    :goto_16d
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_160

    nop

    nop

    nop

    nop

    :goto_16e
    if-nez v13, :cond_23

    nop

    nop

    goto/32 :goto_29e

    nop

    nop

    nop

    :cond_23
    goto/32 :goto_29d

    nop

    nop

    nop

    nop

    nop

    :goto_16f
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_26e

    nop

    nop

    nop

    :goto_170
    rem-int/lit16 v14, v7, 0xb4

    nop

    goto/32 :goto_cb

    nop

    nop

    :goto_171
    goto/16 :goto_3b

    nop

    nop

    nop

    :goto_172
    goto/32 :goto_30a

    nop

    nop

    nop

    nop

    :goto_173
    cmp-long v3, v3, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_1d4

    nop

    nop

    :goto_174
    const/4 v4, 0x2

    nop

    nop

    nop

    goto/32 :goto_27d

    nop

    nop

    :goto_175
    if-eqz v6, :cond_24

    nop

    nop

    nop

    goto/32 :goto_236

    nop

    nop

    nop

    nop

    nop

    :cond_24
    goto/32 :goto_235

    nop

    nop

    nop

    :goto_176
    iget-object v6, v4, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->l:Ljava/util/List;

    nop

    goto/32 :goto_278

    nop

    nop

    nop

    nop

    nop

    :goto_177
    invoke-virtual {v4, v5}, Lnac;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_178
    goto/16 :goto_1f8

    nop

    :goto_179
    goto/32 :goto_25f

    nop

    nop

    nop

    nop

    nop

    :goto_17a
    rem-int/lit16 v12, v12, 0x168

    nop

    nop

    nop

    goto/32 :goto_29c

    nop

    nop

    nop

    nop

    :goto_17b
    iget-object v3, v0, Lkbn;->e:Lrss;

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_17c
    const/4 v3, 0x1

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_17d
    invoke-interface {v3}, Lj$/util/stream/Stream;->count()J

    move-result-wide v3

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_17e
    invoke-virtual {v1, v3}, Lpoh;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    nop

    :goto_17f
    sget-object v5, Lnac;->a:Lnac;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_177

    nop

    nop

    nop

    nop

    :goto_180
    invoke-virtual {v6}, Lpdl;->f()Z

    move-result v6

    nop

    goto/32 :goto_175

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_181
    goto/16 :goto_ad

    nop

    nop

    nop

    nop

    :goto_182
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_183
    sget-object v3, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2ae

    nop

    nop

    :goto_184
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_185
    if-ne v12, v8, :cond_25

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33d

    nop

    nop

    nop

    :cond_25
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_186
    invoke-static {v5, v11, v14}, Lhvp;->o(III)I

    move-result v5

    nop

    goto/32 :goto_171

    nop

    nop

    nop

    nop

    nop

    :goto_187
    const/4 v5, 0x1

    nop

    :goto_188
    goto/32 :goto_227

    nop

    nop

    nop

    :goto_189
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18a
    iget-object v1, v1, Lnib;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_229

    nop

    nop

    nop

    nop

    nop

    :goto_18b
    int-to-float v13, v13

    nop

    nop

    goto/32 :goto_223

    nop

    nop

    :goto_18c
    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18d
    check-cast v3, Lhoh;

    nop

    nop

    goto/32 :goto_1e9

    nop

    nop

    nop

    nop

    :goto_18e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1ad

    nop

    nop

    nop

    nop

    :goto_18f
    aput v5, v9, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_22a

    nop

    nop

    nop

    nop

    nop

    :goto_190
    if-ne v7, v10, :cond_26

    nop

    nop

    goto/32 :goto_324

    nop

    :cond_26
    goto/32 :goto_21c

    nop

    nop

    nop

    nop

    nop

    :goto_191
    invoke-static {v5, v11, v14}, Lhvp;->o(III)I

    move-result v5

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    :goto_192
    iget-boolean v5, v14, Lhvp;->l:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_193
    if-ne v7, v8, :cond_27

    nop

    nop

    nop

    goto/32 :goto_2ff

    nop

    nop

    :cond_27
    goto/32 :goto_130

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_194
    check-cast v0, Lrss;

    nop

    nop

    goto/32 :goto_184

    nop

    nop

    :goto_195
    iget-object v3, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->F:Landroid/graphics/Rect;

    nop

    goto/32 :goto_1d8

    nop

    nop

    nop

    :goto_196
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    nop

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

    :goto_197
    const-wide/16 v8, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2f1

    nop

    nop

    nop

    nop

    :goto_198
    int-to-float v5, v5

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    :goto_199
    sget-object v4, Lmzt;->d:Lmzt;

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_19a
    const/16 v5, 0x11

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

    :goto_19b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    nop

    goto/32 :goto_2c1

    nop

    nop

    :goto_19c
    if-eqz v13, :cond_28

    nop

    nop

    nop

    goto/32 :goto_1e3

    nop

    :cond_28
    goto/32 :goto_33f

    nop

    nop

    nop

    :goto_19d
    invoke-virtual {v1, v3}, Lpoh;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1b2

    nop

    nop

    :goto_19e
    if-eqz v16, :cond_29

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :cond_29
    goto/32 :goto_101

    nop

    nop

    :goto_19f
    invoke-static {v3}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v3

    nop

    nop

    goto/32 :goto_2d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a0
    iget-object v0, v0, Lkbn;->i:Llad;

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_1a1
    new-instance v5, Lnar;

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    :goto_1a2
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v26

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_1a3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_1a4
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_1d1

    nop

    nop

    nop

    nop

    :goto_1a5
    invoke-static {v5, v12}, Ljava/lang/Math;->max(FF)F

    move-result v5

    nop

    nop

    goto/32 :goto_32e

    nop

    nop

    nop

    :goto_1a6
    invoke-direct {v3, v4}, Lhpi;-><init>(I)V

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a7
    if-nez v3, :cond_2a

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :cond_2a
    goto/32 :goto_13e

    nop

    nop

    nop

    :goto_1a8
    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_1b9

    nop

    nop

    nop

    :goto_1a9
    iget-object v6, v5, Lprf;->c:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_270

    nop

    nop

    nop

    nop

    nop

    :goto_1aa
    goto/16 :goto_25c

    nop

    nop

    nop

    nop

    nop

    :goto_1ab
    goto/32 :goto_168

    nop

    nop

    :goto_1ac
    if-ne v12, v8, :cond_2b

    nop

    nop

    nop

    nop

    goto/32 :goto_172

    nop

    nop

    nop

    nop

    nop

    :cond_2b
    goto/32 :goto_2f5

    nop

    nop

    nop

    nop

    nop

    :goto_1ad
    invoke-virtual {v3, v4}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_285

    nop

    nop

    nop

    nop

    :goto_1ae
    goto/16 :goto_25c

    nop

    nop

    :goto_1af
    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_1b0
    if-nez v5, :cond_2c

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

    :cond_2c
    goto/32 :goto_2ce

    nop

    nop

    nop

    nop

    nop

    :goto_1b1
    array-length v5, v4

    nop

    goto/32 :goto_1c9

    nop

    nop

    nop

    nop

    :goto_1b2
    move-object v11, v1

    nop

    nop

    goto/32 :goto_22b

    nop

    nop

    nop

    nop

    :goto_1b3
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    :goto_1b4
    sget-object v4, Lhmp;->e:Lhmo;

    nop

    nop

    nop

    goto/32 :goto_18d

    nop

    nop

    :goto_1b5
    move-object/from16 v22, v9

    nop

    goto/32 :goto_210

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b6
    check-cast v1, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    :goto_1b7
    invoke-virtual {v13}, Lkyf;->B()Z

    move-result v13

    nop

    nop

    goto/32 :goto_19c

    nop

    nop

    nop

    nop

    nop

    :goto_1b8
    iput-object v3, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->B:Lnac;

    nop

    nop

    nop

    goto/32 :goto_20c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b9
    if-nez v11, :cond_2d

    nop

    goto/32 :goto_25c

    nop

    :cond_2d
    goto/32 :goto_58

    nop

    nop

    nop

    :goto_1ba
    int-to-float v4, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_280

    nop

    nop

    nop

    nop

    :goto_1bb
    cmp-long v4, v4, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26a

    nop

    nop

    nop

    nop

    nop

    :goto_1bc
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    nop

    nop

    :goto_1bd
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1be
    if-nez v4, :cond_2e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :cond_2e
    goto/32 :goto_2e6

    nop

    nop

    nop

    nop

    nop

    :goto_1bf
    iget v12, v10, Landroid/graphics/Rect;->left:I

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

    nop

    :goto_1c0
    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_228

    nop

    nop

    nop

    nop

    :goto_1c1
    iput-object v10, v9, Lhvp;->o:Lprf;

    nop

    nop

    goto/32 :goto_2da

    nop

    nop

    nop

    nop

    nop

    :goto_1c2
    invoke-virtual {v4}, Lhvp;->h()V

    goto/32 :goto_23c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c3
    cmp-long v3, v3, v6

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c4
    const/16 v8, 0x11

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_1c5
    sub-int v6, v10, v6

    nop

    nop

    nop

    goto/32 :goto_191

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c6
    iget-object v13, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->S:Lkyf;

    nop

    nop

    nop

    goto/32 :goto_1b7

    nop

    nop

    :goto_1c7
    int-to-float v5, v5

    nop

    nop

    nop

    goto/32 :goto_20b

    nop

    nop

    nop

    nop

    :goto_1c8
    if-eqz v0, :cond_2f

    nop

    nop

    nop

    goto/32 :goto_32a

    nop

    nop

    nop

    nop

    nop

    :cond_2f
    goto/32 :goto_329

    nop

    nop

    nop

    nop

    nop

    :goto_1c9
    const/4 v6, 0x0

    nop

    :goto_1ca
    goto/32 :goto_123

    nop

    nop

    nop

    nop

    nop

    :goto_1cb
    check-cast v3, Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31d

    nop

    nop

    :goto_1cc
    invoke-virtual {v1, v3}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->d(Lnac;)V

    goto/32 :goto_17c

    nop

    nop

    :goto_1cd
    iget-boolean v1, v9, Lhvp;->j:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_301

    nop

    nop

    :goto_1ce
    if-nez v13, :cond_30

    nop

    nop

    nop

    goto/32 :goto_2f0

    nop

    nop

    :cond_30
    goto/32 :goto_11

    nop

    nop

    :goto_1cf
    const/16 v25, 0x0

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_1d0
    if-nez v7, :cond_31

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2ff

    nop

    nop

    nop

    nop

    :cond_31
    goto/32 :goto_193

    nop

    nop

    nop

    nop

    nop

    :goto_1d1
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31a

    nop

    nop

    nop

    nop

    :goto_1d2
    if-ne v6, v13, :cond_32

    nop

    nop

    nop

    nop

    goto/32 :goto_1dd

    nop

    nop

    :cond_32
    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    :goto_1d3
    aget-object v15, v6, v10

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    :goto_1d4
    if-nez v3, :cond_33

    nop

    nop

    nop

    goto/32 :goto_25c

    nop

    nop

    nop

    nop

    :cond_33
    goto/32 :goto_207

    nop

    nop

    nop

    nop

    :goto_1d5
    iput-object v12, v14, Lhvp;->o:Lprf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    :goto_1d6
    iget v13, v10, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    goto/32 :goto_18b

    nop

    nop

    nop

    nop

    nop

    :goto_1d7
    if-nez v4, :cond_34

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :cond_34
    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d8
    iget-object v6, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->T:Llad;

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

    :goto_1d9
    sget-object v4, Lmzt;->e:Lmzt;

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1da
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_1db
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    :goto_1dc
    goto/16 :goto_188

    nop

    nop

    nop

    nop

    nop

    :goto_1dd
    goto/32 :goto_187

    nop

    nop

    nop

    :goto_1de
    goto/16 :goto_159

    nop

    nop

    :goto_1df
    goto/32 :goto_158

    nop

    nop

    nop

    nop

    nop

    :goto_1e0
    iget-object v2, v9, Lhvp;->b:Landroid/view/View;

    nop

    goto/32 :goto_262

    nop

    nop

    :goto_1e1
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    nop

    nop

    goto/32 :goto_1d7

    nop

    nop

    nop

    :goto_1e2
    goto/16 :goto_25c

    nop

    nop

    :goto_1e3
    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e4
    sget-object v3, Lnac;->f:Lnac;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b8

    nop

    nop

    nop

    :goto_1e5
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_299

    nop

    nop

    nop

    nop

    nop

    :goto_1e6
    if-ne v12, v8, :cond_35

    nop

    goto/32 :goto_317

    nop

    :cond_35
    goto/32 :goto_2de

    nop

    nop

    nop

    :goto_1e7
    iget-object v6, v3, Lhsd;->e:Lpdl;

    nop

    nop

    nop

    goto/32 :goto_180

    nop

    nop

    :goto_1e8
    check-cast v2, [Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_225

    nop

    nop

    nop

    :goto_1e9
    invoke-virtual {v3, v4}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_290

    nop

    nop

    nop

    nop

    nop

    :goto_1ea
    move-object/from16 v4, p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1eb
    invoke-static {v5, v14}, Ljava/lang/Math;->min(FF)F

    move-result v5

    nop

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

    :goto_1ec
    if-nez v12, :cond_36

    nop

    nop

    nop

    nop

    goto/32 :goto_179

    nop

    nop

    nop

    :cond_36
    goto/32 :goto_1ac

    nop

    nop

    :goto_1ed
    goto/16 :goto_15c

    nop

    :goto_1ee
    goto/32 :goto_15b

    nop

    nop

    nop

    nop

    :goto_1ef
    if-nez v1, :cond_37

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    :cond_37
    goto/32 :goto_2ec

    nop

    nop

    nop

    :goto_1f0
    iget-object v3, v2, Lnib;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_268

    nop

    nop

    nop

    nop

    :goto_1f1
    if-nez v1, :cond_38

    nop

    goto/32 :goto_25c

    nop

    nop

    nop

    nop

    nop

    :cond_38
    goto/32 :goto_68

    nop

    nop

    :goto_1f2
    invoke-virtual {v9}, Lhco;->j()Z

    move-result v9

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

    :goto_1f3
    invoke-interface {v4}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_30c

    nop

    nop

    nop

    :goto_1f4
    const-string v4, "Invalid device orientation: %s"

    nop

    nop

    nop

    goto/32 :goto_28a

    nop

    nop

    nop

    nop

    nop

    :goto_1f5
    int-to-float v15, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_154

    nop

    nop

    nop

    nop

    :goto_1f6
    if-nez v4, :cond_39

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :cond_39
    goto/32 :goto_2ea

    nop

    nop

    :goto_1f7
    move/from16 v5, v29

    nop

    nop

    nop

    nop

    nop

    :goto_1f8
    goto/32 :goto_30b

    nop

    nop

    nop

    nop

    nop

    :goto_1f9
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    nop

    goto/32 :goto_1a4

    nop

    nop

    nop

    nop

    nop

    :goto_1fa
    const/4 v1, 0x0

    nop

    nop

    :goto_1fb
    goto/32 :goto_153

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1fc
    if-eq v13, v12, :cond_3a

    nop

    goto/32 :goto_83

    nop

    nop

    :cond_3a
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_1fd
    move-object v15, v3

    nop

    nop

    nop

    nop

    :goto_1fe
    goto/32 :goto_195

    nop

    nop

    nop

    nop

    nop

    :goto_1ff
    invoke-virtual {v3}, Lrss;->c()Ljava/lang/Object;

    move-result-object v3

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

    :goto_200
    move/from16 v19, v7

    nop

    nop

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

    :goto_201
    iget-object v15, v2, Lnib;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_202
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_205

    nop

    nop

    nop

    nop

    nop

    :goto_203
    const v5, 0x7f140180

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_335

    nop

    nop

    nop

    :goto_204
    if-eq v3, v14, :cond_3b

    nop

    nop

    nop

    goto/32 :goto_333

    nop

    nop

    nop

    nop

    nop

    :cond_3b
    goto/32 :goto_28f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_205
    cmpl-float v4, v3, v4

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_206
    invoke-static {v15, v3}, Lhhg;->C(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v23

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    :goto_207
    iget-object v3, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->B:Lnac;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_139

    nop

    nop

    nop

    nop

    :goto_208
    iget-wide v6, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->E:J

    nop

    goto/32 :goto_275

    nop

    nop

    :goto_209
    if-gtz v3, :cond_3c

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :cond_3c
    goto/32 :goto_311

    nop

    nop

    nop

    nop

    :goto_20a
    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->p()V

    goto/32 :goto_138

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20b
    add-float/2addr v5, v15

    nop

    nop

    goto/32 :goto_1eb

    nop

    nop

    nop

    :goto_20c
    goto/16 :goto_25c

    nop

    nop

    nop

    nop

    nop

    :goto_20d
    goto/32 :goto_183

    nop

    nop

    nop

    nop

    nop

    :goto_20e
    iget-object v3, v0, Liof;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20f
    if-lez v3, :cond_3d

    nop

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    nop

    :cond_3d
    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_210
    invoke-direct/range {v22 .. v28}, Lprf;-><init>(ILandroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    goto/32 :goto_269

    nop

    nop

    nop

    nop

    nop

    :goto_211
    sub-float/2addr v5, v4

    nop

    goto/32 :goto_156

    nop

    nop

    :goto_212
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17e

    nop

    nop

    nop

    nop

    :goto_213
    if-eqz v13, :cond_3e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20d

    nop

    nop

    :cond_3e
    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :goto_214
    move v10, v11

    nop

    nop

    nop

    nop

    :goto_215
    goto/32 :goto_292

    nop

    nop

    nop

    nop

    :goto_216
    check-cast v1, Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_252

    nop

    nop

    nop

    nop

    :goto_217
    invoke-static {}, Lmzd;->a()Lmzc;

    move-result-object v8

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

    :goto_218
    check-cast v3, [Lnak;

    nop

    nop

    nop

    goto/32 :goto_19f

    nop

    nop

    nop

    nop

    nop

    :goto_219
    invoke-virtual {v7, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    goto/32 :goto_15f

    nop

    nop

    nop

    :goto_21a
    iget-object v3, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->h:Lnam;

    nop

    nop

    nop

    nop

    goto/32 :goto_2eb

    nop

    nop

    nop

    nop

    :goto_21b
    iget-object v4, v2, Lnib;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21c
    const/16 v12, 0x10e

    nop

    goto/32 :goto_27a

    nop

    nop

    nop

    nop

    :goto_21d
    check-cast v4, [Landroid/hardware/camera2/params/Face;

    nop

    nop

    goto/32 :goto_1b1

    nop

    nop

    nop

    :goto_21e
    iput v4, v11, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    nop

    goto/32 :goto_284

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21f
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_198

    nop

    nop

    nop

    nop

    nop

    :goto_220
    goto/16 :goto_1ca

    nop

    nop

    nop

    :goto_221
    goto/32 :goto_21b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_222
    invoke-interface {v12}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_223
    iget v14, v10, Landroid/graphics/Rect;->right:I

    nop

    goto/32 :goto_249

    nop

    nop

    :goto_224
    array-length v6, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_225
    invoke-static {v2}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v2

    nop

    nop

    goto/32 :goto_274

    nop

    nop

    nop

    :goto_226
    aget-object v6, v8, v6

    nop

    nop

    goto/32 :goto_240

    nop

    nop

    nop

    :goto_227
    invoke-static {v5, v4, v6}, Lrrf;->o(ZLjava/lang/String;I)V

    goto/32 :goto_a2

    nop

    nop

    :goto_228
    int-to-float v10, v10

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_229
    invoke-virtual {v3}, Lrss;->c()Ljava/lang/Object;

    move-result-object v3

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

    :goto_22a
    const/4 v5, 0x1

    nop

    goto/32 :goto_334

    nop

    nop

    nop

    nop

    :goto_22b
    check-cast v11, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_22c
    move v12, v11

    nop

    nop

    goto/32 :goto_2bf

    nop

    nop

    nop

    :goto_22d
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

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

    :goto_22e
    if-nez v3, :cond_3f

    nop

    nop

    nop

    goto/32 :goto_25c

    nop

    nop

    :cond_3f
    goto/32 :goto_1a3

    nop

    nop

    :goto_22f
    const/high16 v5, -0x40800000    # -1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_1f6

    nop

    nop

    nop

    nop

    nop

    :goto_230
    const/16 v22, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1cf

    nop

    nop

    nop

    nop

    :goto_231
    goto/16 :goto_25c

    nop

    nop

    nop

    :goto_232
    goto/32 :goto_1cd

    nop

    nop

    nop

    :goto_233
    if-eq v12, v11, :cond_40

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c0

    nop

    nop

    nop

    :cond_40
    goto/32 :goto_22c

    nop

    nop

    nop

    :goto_234
    if-eqz v13, :cond_41

    nop

    nop

    nop

    nop

    goto/32 :goto_164

    nop

    nop

    nop

    :cond_41
    goto/32 :goto_163

    nop

    nop

    nop

    nop

    :goto_235
    goto/16 :goto_3f

    nop

    nop

    nop

    :goto_236
    goto/32 :goto_267

    nop

    nop

    nop

    nop

    :goto_237
    array-length v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_238
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_1d0

    nop

    nop

    :goto_239
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v3

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

    :goto_23a
    iget-object v4, v3, Lnam;->b:Lrss;

    nop

    goto/32 :goto_256

    nop

    nop

    nop

    nop

    :goto_23b
    new-instance v15, Lnak;

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    :goto_23c
    invoke-virtual {v1, v3}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->d(Lnac;)V

    goto/32 :goto_132

    nop

    nop

    nop

    :goto_23d
    goto/16 :goto_ad

    nop

    nop

    nop

    :goto_23e
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_23f
    if-eq v6, v5, :cond_42

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_304

    nop

    nop

    nop

    :cond_42
    goto/32 :goto_303

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_240
    aget v5, v6, v5

    nop

    nop

    goto/32 :goto_219

    nop

    nop

    nop

    nop

    nop

    :goto_241
    invoke-virtual {v8, v4}, Lmzc;->e(Ljava/lang/String;)V

    goto/32 :goto_307

    nop

    nop

    nop

    nop

    :goto_242
    invoke-virtual {v3, v4}, Lnac;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    goto/32 :goto_197

    nop

    nop

    nop

    :goto_243
    invoke-static {v15}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v4

    nop

    nop

    goto/32 :goto_25e

    nop

    nop

    nop

    :goto_244
    move/from16 v29, v6

    nop

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

    nop

    :goto_245
    aget-object v10, v3, v7

    nop

    nop

    nop

    goto/32 :goto_247

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_246
    if-eq v1, v3, :cond_43

    nop

    nop

    nop

    nop

    goto/32 :goto_2d8

    nop

    nop

    :cond_43
    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_247
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v23

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    :goto_248
    move-object v4, v3

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    nop

    :goto_249
    int-to-float v14, v14

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

    nop

    :goto_24a
    const/4 v11, 0x0

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    :goto_24b
    invoke-virtual {v4}, Lrss;->h()Z

    move-result v4

    nop

    nop

    goto/32 :goto_27b

    nop

    nop

    nop

    nop

    :goto_24c
    move-object/from16 p0, v2

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    :goto_24d
    invoke-interface {v6}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_24e
    invoke-interface {v3}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_24f
    aget-object v10, v3, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_250
    invoke-interface {v3}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    :goto_251
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    goto/32 :goto_16d

    nop

    nop

    nop

    nop

    nop

    :goto_252
    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_253
    move-object v15, v12

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_254
    move/from16 v18, v6

    nop

    nop

    nop

    goto/32 :goto_200

    nop

    nop

    nop

    nop

    nop

    :goto_255
    iget v9, v9, Lprf;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_256
    invoke-virtual {v4}, Lrss;->h()Z

    move-result v4

    nop

    nop

    goto/32 :goto_22f

    nop

    nop

    nop

    nop

    nop

    :goto_257
    move-object/from16 v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_16b

    nop

    nop

    nop

    :goto_258
    invoke-virtual {v1, v3}, Lpoh;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1a8

    nop

    nop

    nop

    nop

    nop

    :goto_259
    invoke-virtual {v3, v4}, Lnam;->a(Landroid/graphics/Rect;)V

    goto/32 :goto_143

    nop

    nop

    nop

    nop

    nop

    :goto_25a
    if-nez v1, :cond_44

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    :cond_44
    goto/32 :goto_16c

    nop

    nop

    :goto_25b
    goto/16 :goto_ad

    nop

    nop

    :goto_25c
    goto/32 :goto_2a1

    nop

    nop

    nop

    nop

    nop

    :goto_25d
    cmp-long v10, v1, v19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25e
    new-instance v5, Lgdm;

    nop

    nop

    goto/32 :goto_1c4

    nop

    nop

    nop

    nop

    nop

    :goto_25f
    invoke-static {v6, v10, v14}, Lhvp;->o(III)I

    move-result v6

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_260
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    nop

    goto/32 :goto_328

    nop

    nop

    nop

    nop

    :goto_261
    move-object/from16 p0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2b9

    nop

    nop

    :goto_262
    iget-object v3, v9, Lhvp;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_2d9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_263
    invoke-virtual {v8, v9}, Lmzc;->c(I)V

    goto/32 :goto_148

    nop

    nop

    nop

    :goto_264
    invoke-virtual {v3}, Lhvp;->g()V

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_265
    invoke-static {v7}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v4

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_266
    invoke-static {v5}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v3

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    :goto_267
    iget-object v5, v4, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->l:Ljava/util/List;

    nop

    goto/32 :goto_1b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_268
    check-cast v3, [Landroid/hardware/camera2/params/Face;

    nop

    goto/32 :goto_224

    nop

    nop

    :goto_269
    aput-object v9, v6, v7

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    :goto_26a
    if-gez v4, :cond_45

    nop

    nop

    goto/32 :goto_25c

    nop

    nop

    nop

    :cond_45
    goto/32 :goto_135

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26b
    iget-object v3, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->n:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_250

    nop

    nop

    nop

    nop

    :goto_26c
    sub-int v5, v11, v5

    nop

    nop

    :goto_26d
    goto/32 :goto_17a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26e
    if-eq v3, v1, :cond_46

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23e

    nop

    nop

    :cond_46
    goto/32 :goto_1e0

    nop

    nop

    nop

    :goto_26f
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_318

    nop

    nop

    :goto_270
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_2e9

    nop

    nop

    nop

    nop

    :goto_271
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_272
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_295

    nop

    nop

    nop

    nop

    nop

    :goto_273
    sget-object v3, Lnac;->a:Lnac;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1cc

    nop

    nop

    nop

    nop

    nop

    :goto_274
    new-instance v3, Lhpi;

    nop

    goto/32 :goto_309

    nop

    nop

    :goto_275
    sub-long/2addr v4, v6

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_276
    new-instance v11, Landroid/graphics/RectF;

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_277
    or-int v20, v9, v4

    nop

    nop

    nop

    goto/32 :goto_243

    nop

    nop

    :goto_278
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    nop

    nop

    goto/32 :goto_331

    nop

    nop

    nop

    nop

    nop

    :goto_279
    if-eqz v13, :cond_47

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e3

    nop

    :cond_47
    goto/32 :goto_2d0

    nop

    nop

    :goto_27a
    if-eq v7, v12, :cond_48

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e3

    nop

    nop

    nop

    nop

    :cond_48
    goto/32 :goto_54

    nop

    nop

    :goto_27b
    iget-object v6, v2, Lnib;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_15e

    nop

    nop

    nop

    nop

    :goto_27c
    iget-object v12, v14, Lhvp;->d:Loyd;

    nop

    nop

    nop

    goto/32 :goto_222

    nop

    nop

    nop

    nop

    :goto_27d
    invoke-direct {v3, v4}, Lhiu;-><init>(I)V

    goto/32 :goto_155

    nop

    nop

    :goto_27e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    goto/32 :goto_271

    nop

    nop

    nop

    nop

    :goto_27f
    iget-object v12, v12, Lnak;->a:Lprf;

    nop

    nop

    nop

    goto/32 :goto_1de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_280
    move/from16 v16, v5

    nop

    nop

    nop

    goto/32 :goto_196

    nop

    nop

    :goto_281
    iget-object v6, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->k:Loyn;

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_282
    iget-object v3, v3, Lnam;->b:Lrss;

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_283
    iget-object v2, v0, Lkbn;->i:Llad;

    nop

    goto/32 :goto_2f4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_284
    iput-object v11, v8, Lmzc;->a:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_33e

    nop

    nop

    nop

    nop

    nop

    :goto_285
    check-cast v3, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_286
    div-float/2addr v1, v3

    nop

    nop

    nop

    goto/32 :goto_1f0

    nop

    nop

    nop

    :goto_287
    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_203

    nop

    nop

    :goto_288
    mul-float/2addr v5, v4

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_289
    if-ne v6, v8, :cond_49

    nop

    nop

    nop

    nop

    goto/32 :goto_1dd

    nop

    nop

    nop

    nop

    nop

    :cond_49
    goto/32 :goto_1d2

    nop

    nop

    nop

    nop

    nop

    :goto_28a
    const-string v5, "Invalid sensor orientation: %s"

    nop

    nop

    nop

    nop

    goto/32 :goto_330

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28b
    iget-object v4, v2, Lnib;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28c
    check-cast v1, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;

    nop

    nop

    goto/32 :goto_2cf

    nop

    nop

    nop

    nop

    :goto_28d
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v10

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28e
    iget-boolean v0, v3, Lhxc;->b:Z

    nop

    nop

    goto/32 :goto_1c8

    nop

    nop

    :goto_28f
    iget-object v2, v9, Lhvp;->b:Landroid/view/View;

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

    :goto_290
    const/16 v4, 0x5dc

    nop

    nop

    goto/32 :goto_18e

    nop

    nop

    nop

    nop

    nop

    :goto_291
    aget-object v12, v15, v11

    nop

    nop

    goto/32 :goto_27f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_292
    if-lt v10, v7, :cond_4a

    nop

    nop

    nop

    goto/32 :goto_33b

    nop

    nop

    :cond_4a
    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_293
    invoke-interface {v4}, Lj$/util/stream/Stream;->count()J

    move-result-wide v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_313

    nop

    nop

    nop

    nop

    :goto_294
    iget-object v1, v0, Lkbn;->h:Lkog;

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_295
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ea

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_296
    iput-wide v8, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->D:J

    nop

    nop

    nop

    goto/32 :goto_1e2

    nop

    nop

    nop

    :goto_297
    invoke-virtual {v2, v3}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto/32 :goto_332

    nop

    nop

    nop

    :goto_298
    if-le v6, v7, :cond_4b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :cond_4b
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_299
    iget-object v4, v2, Lnib;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_21d

    nop

    nop

    :goto_29a
    iget-object v13, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->f:Lhvp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_337

    nop

    nop

    :goto_29b
    new-array v3, v11, [Lnak;

    nop

    goto/32 :goto_1fd

    nop

    nop

    :goto_29c
    const/4 v14, 0x3

    nop

    nop

    nop

    goto/32 :goto_1ec

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29d
    goto/16 :goto_1e3

    nop

    nop

    nop

    nop

    :goto_29e
    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_29f
    iget-object v1, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->c:Landroid/view/accessibility/AccessibilityManager;

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_2a0
    array-length v9, v3

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_2a1
    move-object/from16 p0, v2

    nop

    nop

    nop

    :goto_2a2
    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a3
    const-string v2, ", Sensor orientation: "

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

    :goto_2a4
    iget-object v1, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->g:Loyn;

    nop

    goto/32 :goto_e8

    nop

    nop

    :goto_2a5
    check-cast v4, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_259

    nop

    nop

    nop

    :goto_2a6
    invoke-virtual {v1, v5}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->a(F)Lnac;

    move-result-object v3

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a7
    move-object/from16 v1, p0

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    :goto_2a8
    iget-object v3, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->h:Lnam;

    nop

    nop

    goto/32 :goto_23a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a9
    iget-object v4, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->B:Lnac;

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_2aa
    const/high16 v17, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_15a

    nop

    nop

    nop

    :goto_2ab
    add-int/lit8 v10, v10, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33a

    nop

    nop

    nop

    nop

    :goto_2ac
    move-object/from16 v0, p0

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_2ad
    check-cast v1, [Lnak;

    nop

    nop

    goto/32 :goto_237

    nop

    nop

    :goto_2ae
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    nop

    nop

    goto/32 :goto_15d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2af
    iget-object v1, v0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_216

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b0
    invoke-virtual {v3, v4}, Lnac;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_22e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b1
    if-nez v15, :cond_4c

    nop

    nop

    nop

    nop

    goto/32 :goto_26d

    nop

    nop

    nop

    :cond_4c
    goto/32 :goto_170

    nop

    nop

    nop

    nop

    :goto_2b2
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v10

    nop

    nop

    :goto_2b3
    goto/32 :goto_2fd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b4
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    nop

    goto/32 :goto_2ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b5
    if-gtz v10, :cond_4d

    nop

    nop

    goto/32 :goto_1df

    nop

    nop

    :cond_4d
    goto/32 :goto_291

    nop

    nop

    nop

    nop

    nop

    :goto_2b6
    if-ge v3, v10, :cond_4e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_128

    nop

    :cond_4e
    goto/32 :goto_134

    nop

    nop

    nop

    :goto_2b7
    aget v6, v9, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_2b8
    if-eqz v4, :cond_4f

    nop

    goto/32 :goto_25c

    nop

    :cond_4f
    goto/32 :goto_131

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b9
    move v1, v3

    nop

    goto/32 :goto_181

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2ba
    int-to-float v5, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2bb
    if-eq v12, v8, :cond_50

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_50
    goto/32 :goto_1c5

    nop

    nop

    nop

    :goto_2bc
    if-ne v13, v10, :cond_51

    nop

    goto/32 :goto_2f0

    nop

    :cond_51
    goto/32 :goto_1fc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2bd
    iget-object v3, v0, Lkbn;->d:Lkbb;

    nop

    goto/32 :goto_167

    nop

    nop

    nop

    nop

    nop

    :goto_2be
    iput-object v6, v4, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->l:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_2d6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2bf
    goto/16 :goto_11f

    nop

    nop

    nop

    nop

    nop

    :goto_2c0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2c1
    iput-wide v3, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->D:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    :goto_2c2
    check-cast v2, [Lprf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30d

    nop

    nop

    nop

    nop

    :goto_2c3
    const/4 v5, 0x0

    nop

    goto/32 :goto_1dc

    nop

    nop

    nop

    nop

    nop

    :goto_2c4
    const v1, 0xb

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    :goto_2c5
    if-nez v6, :cond_52

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    :cond_52
    goto/32 :goto_315

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c6
    goto/32 :goto_166

    nop

    :goto_2c7
    goto/32 :goto_2ac

    nop

    nop

    nop

    :goto_2c8
    goto/16 :goto_125

    nop

    nop

    nop

    :goto_2c9
    goto/32 :goto_2f8

    nop

    nop

    nop

    nop

    :goto_2ca
    move v11, v1

    nop

    nop

    goto/32 :goto_1ed

    nop

    nop

    :goto_2cb
    iget-object v7, v9, Lhvp;->d:Loyd;

    nop

    nop

    goto/32 :goto_300

    nop

    nop

    nop

    nop

    nop

    :goto_2cc
    iget-boolean v3, v9, Lhvp;->l:Z

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

    :goto_2cd
    iput v11, v0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->f:I

    nop

    nop

    goto/32 :goto_2ed

    nop

    nop

    nop

    :goto_2ce
    if-eqz v4, :cond_53

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_53
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2cf
    iput v3, v1, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_2d0
    iget-object v13, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->j:Lncn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_2d1
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_2d2
    const/4 v2, 0x1

    nop

    nop

    :goto_2d3
    goto/32 :goto_b2

    nop

    nop

    :goto_2d4
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_2d5
    new-instance v4, Lgdm;

    nop

    nop

    goto/32 :goto_19a

    nop

    nop

    nop

    :goto_2d6
    iget-object v6, v4, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->l:Ljava/util/List;

    nop

    goto/32 :goto_1da

    nop

    nop

    :goto_2d7
    goto/16 :goto_1fb

    nop

    nop

    nop

    :goto_2d8
    goto/32 :goto_1fa

    nop

    nop

    nop

    nop

    :goto_2d9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2da
    iput-object v11, v9, Lhvp;->p:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_2cb

    nop

    nop

    nop

    nop

    :goto_2db
    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/32 :goto_2af

    nop

    nop

    nop

    nop

    :goto_2dc
    check-cast v10, [Lnak;

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2dd
    sget-object v3, Lpog;->a:Lpog;

    nop

    goto/32 :goto_246

    nop

    nop

    :goto_2de
    const/16 v13, 0xb4

    nop

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

    :goto_2df
    invoke-virtual {v3}, Lhsd;->a()Landroid/graphics/Matrix;

    move-result-object v3

    nop

    goto/32 :goto_30e

    nop

    nop

    nop

    :goto_2e0
    goto/16 :goto_3f

    nop

    nop

    nop

    :goto_2e1
    goto/32 :goto_28b

    nop

    nop

    :goto_2e2
    goto/16 :goto_141

    nop

    nop

    nop

    nop

    nop

    :goto_2e3
    goto/32 :goto_116

    nop

    nop

    nop

    nop

    :goto_2e4
    const/4 v5, 0x1

    nop

    :goto_2e5
    goto/32 :goto_107

    nop

    nop

    nop

    :goto_2e6
    if-eqz v2, :cond_54

    nop

    goto/32 :goto_2e1

    nop

    :cond_54
    goto/32 :goto_2e0

    nop

    nop

    nop

    :goto_2e7
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_2e8
    sub-long/2addr v3, v10

    nop

    goto/32 :goto_1c3

    nop

    nop

    :goto_2e9
    iget-object v5, v5, Lprf;->c:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_1f9

    nop

    nop

    nop

    nop

    :goto_2ea
    iget-boolean v4, v3, Lnam;->c:Z

    nop

    nop

    nop

    goto/32 :goto_1be

    nop

    nop

    nop

    :goto_2eb
    iget-object v4, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->l:Loyd;

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

    :goto_2ec
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c5

    nop

    nop

    nop

    :goto_2ed
    invoke-virtual {v0}, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->e()V

    :goto_2ee
    goto/32 :goto_165

    nop

    nop

    :goto_2ef
    goto :goto_2e5

    nop

    nop

    :goto_2f0
    goto/32 :goto_2e4

    nop

    nop

    :goto_2f1
    if-eqz v4, :cond_55

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_182

    nop

    nop

    :cond_55
    goto/32 :goto_2a9

    nop

    nop

    nop

    nop

    nop

    :goto_2f2
    goto/16 :goto_ed

    nop

    nop

    nop

    nop

    nop

    :goto_2f3
    goto/32 :goto_2d1

    nop

    nop

    :goto_2f4
    invoke-virtual {v2}, Llad;->a()Lpcg;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2f5
    const/16 v8, 0xb4

    nop

    nop

    goto/32 :goto_185

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f6
    goto/16 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_2f7
    goto/32 :goto_162

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f8
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f9
    invoke-virtual {v8}, Lmzc;->a()Lmzd;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_272

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2fa
    goto/16 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_2fb
    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    :goto_2fc
    invoke-virtual {v3}, Lhvp;->g()V

    goto/32 :goto_1e4

    nop

    nop

    :goto_2fd
    int-to-float v10, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    :goto_2fe
    goto/16 :goto_12e

    nop

    nop

    nop

    nop

    nop

    :goto_2ff
    goto/32 :goto_323

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_300
    invoke-interface {v7}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v7

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_301
    if-nez v1, :cond_56

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25c

    nop

    nop

    nop

    nop

    nop

    :cond_56
    goto/32 :goto_70

    nop

    nop

    nop

    :goto_302
    iget-object v3, v0, Lkbn;->i:Llad;

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    :goto_303
    goto/16 :goto_1dd

    nop

    nop

    nop

    nop

    nop

    :goto_304
    goto/32 :goto_2c3

    nop

    nop

    :goto_305
    goto/16 :goto_3f

    nop

    nop

    nop

    nop

    :goto_306
    goto/32 :goto_282

    nop

    nop

    nop

    :goto_307
    const-string v4, "halface"

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_308
    iget-object v3, v2, Lnib;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_1ef

    nop

    nop

    nop

    nop

    :goto_309
    const/16 v4, 0x9

    nop

    nop

    nop

    goto/32 :goto_1a6

    nop

    nop

    nop

    nop

    :goto_30a
    sub-int v5, v11, v5

    nop

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

    :goto_30b
    iget-object v7, v9, Lhvp;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_31e

    nop

    nop

    nop

    nop

    :goto_30c
    check-cast v4, Ljava/lang/Boolean;

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

    :goto_30d
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    nop

    :goto_30e
    invoke-virtual {v3, v9}, Landroid/graphics/Matrix;->mapPoints([F)V

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    :goto_30f
    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->r()Z

    move-result v1

    nop

    goto/32 :goto_25a

    nop

    nop

    nop

    :goto_310
    invoke-virtual {v8, v9}, Lmzc;->j(Lmzf;)V

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_311
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_312
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    :goto_313
    long-to-int v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_192

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_314
    if-lez v0, :cond_57

    nop

    nop

    nop

    nop

    goto/32 :goto_2c7

    nop

    nop

    nop

    :cond_57
    goto/32 :goto_2c6

    nop

    :goto_315
    check-cast v3, Landroid/graphics/Rect;

    nop

    goto/32 :goto_189

    nop

    nop

    nop

    :goto_316
    goto/16 :goto_45

    nop

    nop

    :goto_317
    goto/32 :goto_11e

    nop

    nop

    :goto_318
    move-object/from16 v16, v3

    nop

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

    :goto_319
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b6

    nop

    nop

    :goto_31a
    add-int v12, v13, v7

    nop

    nop

    goto/32 :goto_2b1

    nop

    nop

    nop

    nop

    :goto_31b
    iget-object v3, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->n:Loyn;

    nop

    nop

    goto/32 :goto_24e

    nop

    nop

    nop

    nop

    :goto_31c
    if-nez v1, :cond_58

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1af

    nop

    nop

    nop

    :cond_58
    goto/32 :goto_115

    nop

    nop

    nop

    nop

    :goto_31d
    invoke-virtual {v3}, Lrss;->h()Z

    move-result v4

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

    nop

    :goto_31e
    iget-object v8, v9, Lhvp;->c:[[I

    nop

    goto/32 :goto_226

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31f
    array-length v6, v6

    nop

    nop

    goto/32 :goto_341

    nop

    nop

    :goto_320
    iget-boolean v2, v0, Lkbn;->g:Z

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_321
    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->p()V

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    :goto_322
    iput-wide v4, v9, Lhvp;->h:J

    nop

    nop

    nop

    nop

    goto/32 :goto_16f

    nop

    nop

    nop

    :goto_323
    const/16 v10, 0xb4

    nop

    nop

    nop

    nop

    nop

    :goto_324
    goto/32 :goto_140

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_325
    if-eqz v6, :cond_59

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_59
    goto/32 :goto_18

    nop

    nop

    :goto_326
    const/4 v7, 0x0

    nop

    nop

    nop

    :goto_327
    goto/32 :goto_2a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_328
    invoke-static {v10, v1}, Lhhg;->C(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v24

    nop

    nop

    nop

    nop

    goto/32 :goto_24f

    nop

    nop

    nop

    nop

    nop

    :goto_329
    goto/16 :goto_2ee

    nop

    :goto_32a
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_32b
    if-eqz v3, :cond_5a

    nop

    nop

    nop

    goto/32 :goto_25c

    nop

    nop

    nop

    nop

    nop

    :cond_5a
    goto/32 :goto_26b

    nop

    nop

    nop

    :goto_32c
    if-eqz v16, :cond_5b

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    :cond_5b
    goto/32 :goto_281

    nop

    nop

    nop

    nop

    nop

    :goto_32d
    array-length v7, v6

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_32e
    iput v5, v11, Landroid/graphics/RectF;->left:F

    nop

    nop

    nop

    goto/32 :goto_21f

    nop

    nop

    :goto_32f
    invoke-virtual {v14, v10, v4}, Lhvp;->k(II)Z

    move-result v4

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

    :goto_330
    const/16 v8, 0x5a

    nop

    nop

    nop

    goto/32 :goto_24a

    nop

    nop

    :goto_331
    const/4 v7, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_298

    nop

    nop

    :goto_332
    goto/16 :goto_ad

    nop

    nop

    :goto_333
    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_334
    aput v7, v9, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2df

    nop

    nop

    nop

    nop

    nop

    :goto_335
    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_336
    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_297

    nop

    nop

    :goto_337
    invoke-virtual {v13}, Lhvp;->h()V

    :goto_338
    goto/32 :goto_20a

    nop

    nop

    nop

    nop

    nop

    :goto_339
    invoke-static {v5, v10}, Ljava/lang/Math;->min(FF)F

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21e

    nop

    nop

    nop

    nop

    nop

    :goto_33a
    goto/16 :goto_215

    nop

    nop

    :goto_33b
    goto/32 :goto_253

    nop

    nop

    nop

    :goto_33c
    throw v0

    nop

    nop

    nop

    nop

    :goto_33d
    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_33e
    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_161

    nop

    nop

    nop

    nop

    nop

    :goto_33f
    iget-object v13, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->R:Lmzm;

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

    :goto_340
    move v1, v11

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_341
    if-eqz v6, :cond_5c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2fb

    nop

    :cond_5c
    goto/32 :goto_2fa

    nop

    nop

    nop
.end method
