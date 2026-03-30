.class public final synthetic Lidy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lidz;

.field public final synthetic b:Liec;

.field public final synthetic c:Lpck;


# direct methods
.method public synthetic constructor <init>(Lidz;Liec;Lpck;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lidy;->c:Lpck;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lidy;->a:Lidz;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iput-object p2, p0, Lidy;->b:Liec;

    nop

    goto/32 :goto_0

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

    nop
.end method


# virtual methods
.method public final run()V
    .locals 19

    goto/32 :goto_a7

    nop

    nop

    :goto_0
    invoke-virtual {v10}, Lieu;->c()I

    move-result v10

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

    :goto_1
    invoke-virtual {v3}, Lieu;->c()I

    move-result v3

    nop

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

    :goto_2
    iget-object v1, v0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->h:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_3
    add-int/2addr v3, v5

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v6, v5, v7, v8}, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->b(FFJ)Landroid/animation/ValueAnimator;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_1b4

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v3, v1, Lidz;->j:Lieu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_6
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    goto/32 :goto_86

    nop

    nop

    :goto_7
    float-to-int v7, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_8
    check-cast v12, Lsol;

    nop

    goto/32 :goto_237

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput v3, v10, Lsol;->b:I

    nop

    nop

    nop

    goto/32 :goto_18f

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v10, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1f8

    nop

    :cond_0
    goto/32 :goto_1f7

    nop

    nop

    nop

    :goto_b
    sub-int/2addr v5, v3

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

    :goto_c
    aput-object v3, v6, v1

    nop

    nop

    goto/32 :goto_1f6

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v7, Landroid/graphics/RectF;

    nop

    goto/32 :goto_198

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v2, v1, Lidz;->f:Loyd;

    nop

    nop

    goto/32 :goto_24f

    nop

    nop

    nop

    nop

    :goto_f
    add-int/2addr v5, v2

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

    :goto_10
    if-ne v10, v6, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_19e

    nop

    :cond_1
    goto/32 :goto_1a1

    nop

    nop

    :goto_11
    invoke-virtual {v1, v13, v9, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    :goto_12
    int-to-float v10, v10

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    :goto_13
    move v3, v9

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_14
    goto/16 :goto_1dc

    nop

    :goto_15
    goto/32 :goto_1db

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v5, v2, v14, v11, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_206

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v11}, Ltkb;->o()V

    :goto_18
    goto/32 :goto_142

    nop

    nop

    nop

    :goto_19
    if-lt v5, v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    :cond_2
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    move v3, v7

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0}, Lhsd;->a()Landroid/graphics/Matrix;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_167

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v11, v12}, Llyi;->equals(Ljava/lang/Object;)Z

    move-result v11

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    sget-object v11, Lsol;->a:Lsol;

    nop

    nop

    goto/32 :goto_205

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    float-to-int v2, v2

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_17c

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {v0, v4}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_160

    nop

    nop

    :goto_22
    goto :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_4c

    nop

    nop

    :goto_24
    new-instance v2, Lieq;

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_25
    iget-wide v12, v5, Liec;->c:J

    nop

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

    :goto_26
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_54

    nop

    nop

    :goto_27
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_230

    nop

    nop

    nop

    :goto_28
    iget-object v3, v1, Lidz;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17f

    nop

    nop

    nop

    :goto_29
    sub-int/2addr v5, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1e6

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    add-float v15, v5, v14

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

    :goto_2b
    mul-float/2addr v4, v10

    nop

    nop

    nop

    goto/32 :goto_155

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v2, v1, Lidz;->k:Lrss;

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    :goto_2d
    iput v10, v5, Landroid/graphics/Rect;->top:I

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

    nop

    :goto_2e
    iget v2, v0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->o:I

    nop

    goto/32 :goto_183

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v1, v0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->d:Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_30
    int-to-float v7, v7

    nop

    nop

    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    new-instance v10, Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_1a6

    nop

    nop

    nop

    :goto_32
    new-instance v2, Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_33
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_95

    nop

    nop

    :goto_34
    new-instance v5, Landroid/graphics/Rect;

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v1, v0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->h:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    :goto_36
    throw v0

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_1d1

    nop

    nop

    nop

    :goto_38
    iget v12, v14, Lsol;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b7

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const/4 v7, 0x1

    nop

    nop

    goto/32 :goto_193

    nop

    nop

    nop

    nop

    :goto_3a
    iput v15, v14, Lsol;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    :goto_3b
    add-int/2addr v3, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    :goto_3c
    const/4 v3, 0x0

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const/4 v15, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_246

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    sub-int/2addr v5, v7

    nop

    goto/32 :goto_15d

    nop

    nop

    nop

    nop

    :goto_3f
    iput v10, v13, Lsol;->g:I

    nop

    nop

    goto/32 :goto_1da

    nop

    nop

    :goto_40
    iget-object v5, v0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->q:Landroid/animation/AnimatorSet;

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

    :goto_41
    sget-object v2, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    :goto_42
    add-float/2addr v11, v2

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v3}, Lieu;->c()I

    move-result v3

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const/high16 v6, 0x42b40000    # 90.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget v15, v14, Lsol;->b:I

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_1be

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_1bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v12, v11, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_1ed

    nop

    nop

    nop

    :goto_49
    iget v12, v5, Liec;->g:I

    nop

    nop

    nop

    goto/32 :goto_17d

    nop

    nop

    nop

    :goto_4a
    sub-int/2addr v2, v5

    nop

    goto/32 :goto_21a

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iput v10, v5, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    nop

    goto/32 :goto_232

    nop

    nop

    nop

    :goto_4c
    if-eq v3, v8, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22d

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_15b

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    if-nez v11, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_20d

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget v10, v4, Landroid/graphics/Rect;->right:I

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_4f
    sub-int/2addr v5, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_201

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget-object v12, v5, Liec;->b:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_199

    nop

    nop

    nop

    nop

    :goto_51
    check-cast v2, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    :goto_52
    invoke-direct {v2, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iget-object v1, v0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->c:Landroid/graphics/Path;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_54
    const-wide/16 v2, 0x3e8

    nop

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

    :goto_55
    if-nez v2, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_21f

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_9e

    nop

    nop

    :goto_56
    iget v3, v1, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_57
    iget v4, v5, Landroid/graphics/Rect;->left:I

    nop

    nop

    goto/32 :goto_233

    nop

    nop

    nop

    nop

    :goto_58
    move-object v0, v4

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    div-float/2addr v10, v7

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5a
    throw v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :goto_5b
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_5c
    iget-object v1, v0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->c:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    goto/32 :goto_141

    nop

    nop

    :goto_5d
    iget-object v4, v1, Lidz;->j:Lieu;

    nop

    nop

    goto/32 :goto_210

    nop

    nop

    :goto_5e
    invoke-virtual {v11}, Ltkb;->o()V

    :goto_5f
    goto/32 :goto_158

    nop

    nop

    nop

    :goto_60
    or-int/lit8 v15, v15, 0x8

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    const/4 v6, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_62
    iget-object v11, v1, Lidz;->h:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iput v5, v1, Landroid/graphics/Rect;->right:I

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

    :goto_64
    if-eq v12, v10, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_228

    nop

    :cond_6
    goto/32 :goto_227

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v1}, Lidz;->d()Z

    move-result v3

    nop

    nop

    goto/32 :goto_21d

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iget-object v0, v0, Lhsd;->e:Lpdl;

    nop

    nop

    nop

    nop

    goto/32 :goto_190

    nop

    nop

    :goto_67
    iget-object v12, v11, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v1, v11, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object v1, v0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->f:Landroid/graphics/PathMeasure;

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_6b
    const/high16 v2, 0x43340000    # 180.0f

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

    nop

    :goto_6c
    const/4 v1, 0x2

    nop

    goto/32 :goto_1ad

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-interface {v2}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    iget-object v4, v4, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->h:Landroid/graphics/Rect;

    nop

    goto/32 :goto_147

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto/32 :goto_32

    nop

    nop

    :goto_70
    const/4 v10, 0x4

    nop

    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {v1, v11, v10}, Landroid/graphics/Path;->lineTo(FF)V

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    :goto_72
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

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

    nop

    :goto_73
    invoke-virtual {v0, v2}, Lpdl;->c(Z)V

    goto/32 :goto_1f3

    nop

    nop

    nop

    nop

    nop

    :goto_74
    add-int/2addr v4, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_209

    nop

    nop

    nop

    nop

    nop

    :goto_75
    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_76
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    iget v7, v11, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    if-nez v2, :cond_7

    nop

    nop

    nop

    goto/32 :goto_1f1

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    add-int/lit8 v3, v3, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_195

    nop

    nop

    nop

    :goto_7a
    new-instance v14, Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_1e1

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    const/16 v17, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    :goto_7c
    check-cast v2, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_7d
    if-nez v10, :cond_8

    nop

    goto/32 :goto_19e

    nop

    nop

    :cond_8
    goto/32 :goto_1a7

    nop

    nop

    nop

    :goto_7e
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    iput v5, v1, Landroid/graphics/Rect;->left:I

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

    nop

    :goto_80
    check-cast v14, Lsol;

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_81
    iget-object v10, v5, Liec;->a:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    :goto_82
    iget v4, v11, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    goto/32 :goto_184

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    if-eq v3, v7, :cond_9

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_84
    invoke-virtual {v11}, Lrss;->c()Ljava/lang/Object;

    move-result-object v11

    nop

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

    nop

    :goto_85
    iget v1, v0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->r:I

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_86
    iget-object v1, v0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->c:Landroid/graphics/Path;

    nop

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

    :goto_87
    if-eqz v12, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_14a

    nop

    :cond_a
    goto/32 :goto_149

    nop

    nop

    nop

    nop

    :goto_88
    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    :goto_89
    invoke-virtual {v14, v11}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_8a
    or-int/lit8 v10, v10, 0x10

    nop

    goto/32 :goto_1c3

    nop

    nop

    :goto_8b
    iget v11, v11, Llyi;->h:I

    nop

    :goto_8c
    goto/32 :goto_187

    nop

    nop

    :goto_8d
    mul-float/2addr v2, v3

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_8e
    iget-object v1, v0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->f:Landroid/graphics/PathMeasure;

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

    :goto_8f
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_1ba

    nop

    nop

    nop

    :goto_90
    iget-object v11, v1, Lidz;->a:Lrss;

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    move v2, v4

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_92
    mul-float/2addr v8, v10

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    if-ne v1, v6, :cond_b

    nop

    nop

    nop

    goto/32 :goto_19e

    nop

    nop

    :cond_b
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_94
    iget v1, v1, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    goto/32 :goto_229

    nop

    nop

    nop

    nop

    :goto_95
    iput-object v12, v14, Lsol;->e:Lsok;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_96
    invoke-static {v11, v12}, Lhhg;->V(Lhoh;Llyv;)I

    move-result v11

    nop

    nop

    goto/32 :goto_1cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    move-object v13, v12

    nop

    goto/32 :goto_23b

    nop

    nop

    nop

    :goto_98
    if-eqz v13, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    :cond_c
    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    div-int/2addr v5, v9

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    iget-object v4, v1, Lidz;->j:Lieu;

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_9b
    new-instance v13, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c5

    nop

    nop

    nop

    :goto_9c
    iget v7, v1, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_9d
    const/16 v12, 0xa

    nop

    nop

    goto/32 :goto_166

    nop

    nop

    nop

    :goto_9e
    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    move-result-object v2

    nop

    goto/32 :goto_211

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_1e0

    nop

    nop

    :goto_a0
    if-ne v11, v8, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_19e

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_119

    nop

    nop

    nop

    :goto_a1
    invoke-virtual {v13}, Ltkg;->C()Z

    move-result v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ca

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    invoke-virtual {v11}, Ltkb;->o()V

    :goto_a3
    goto/32 :goto_1b0

    nop

    nop

    nop

    :goto_a4
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    nop

    nop

    nop

    goto/32 :goto_244

    nop

    nop

    :goto_a5
    move v11, v8

    nop

    nop

    goto/32 :goto_20c

    nop

    nop

    :goto_a6
    mul-float/2addr v15, v10

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    const v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_1c6

    nop

    nop

    :goto_a8
    iget-object v0, v1, Lidz;->j:Lieu;

    nop

    nop

    goto/32 :goto_1cb

    nop

    nop

    nop

    nop

    :goto_a9
    iget-object v1, v0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->c:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_219

    nop

    nop

    nop

    nop

    :goto_aa
    goto/16 :goto_b9

    nop

    :goto_ab
    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_ac
    iget-object v12, v5, Liec;->a:Landroid/graphics/RectF;

    nop

    goto/32 :goto_1cd

    nop

    nop

    nop

    :goto_ad
    iget-object v14, v5, Liec;->a:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_1e7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    if-eqz v0, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_161

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_1b1

    nop

    nop

    :goto_af
    invoke-virtual {v2}, Lrss;->h()Z

    move-result v2

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_b0
    int-to-float v5, v5

    nop

    nop

    goto/32 :goto_1fa

    nop

    nop

    nop

    nop

    :goto_b1
    move-object v14, v13

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    iget v7, v1, Landroid/graphics/Rect;->top:I

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_b3
    div-float/2addr v7, v8

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_b4
    invoke-virtual {v1, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/32 :goto_125

    nop

    nop

    nop

    :goto_b5
    iget-object v13, v11, Ltkb;->b:Ltkg;

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

    :goto_b6
    iget-object v11, v1, Lidz;->h:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    :goto_b7
    const/4 v6, 0x3

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    move v2, v4

    nop

    nop

    nop

    :goto_b9
    goto/32 :goto_1a4

    nop

    nop

    nop

    :goto_ba
    iget-object v10, v5, Liec;->e:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    iget-object v8, v4, Lhsd;->e:Lpdl;

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    :goto_bc
    invoke-interface {v11}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    nop

    nop

    goto/32 :goto_156

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1df

    nop

    nop

    nop

    nop

    :goto_be
    if-gtz v2, :cond_f

    nop

    nop

    goto/32 :goto_1f1

    nop

    nop

    :cond_f
    goto/32 :goto_1f0

    nop

    nop

    :goto_bf
    move-object v0, v4

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    if-eq v12, v8, :cond_10

    nop

    goto/32 :goto_f3

    nop

    :cond_10
    goto/32 :goto_221

    nop

    nop

    :goto_c1
    iget-object v2, v0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->c:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    :goto_c2
    invoke-virtual {v1, v2, v4}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    invoke-virtual {v0, v5, v6, v2, v3}, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->b(FFJ)Landroid/animation/ValueAnimator;

    move-result-object v2

    nop

    goto/32 :goto_1a2

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    goto/32 :goto_1a9

    nop

    nop

    :goto_c5
    iget v11, v5, Liec;->h:I

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    const-wide/16 v2, 0x12c

    nop

    nop

    nop

    goto/32 :goto_1f4

    nop

    nop

    nop

    nop

    :goto_c7
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_191

    nop

    nop

    nop

    nop

    :goto_c8
    iget v12, v13, Lsol;->b:I

    nop

    nop

    nop

    goto/32 :goto_1b2

    nop

    nop

    nop

    nop

    :goto_c9
    int-to-float v7, v7

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    :goto_ca
    iget-object v12, v5, Liec;->a:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_176

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_1d7

    nop

    nop

    nop

    nop

    :goto_cc
    iget v13, v13, Landroid/graphics/RectF;->right:F

    nop

    nop

    nop

    nop

    goto/32 :goto_22e

    nop

    nop

    nop

    :goto_cd
    iput v1, v0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->r:I

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    iget v12, v4, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    sget-object v10, Lhlz;->a:Lhmo;

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

    nop

    :goto_d0
    iget-object v0, v1, Lidz;->j:Lieu;

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    iget v7, v5, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    iget-object v10, v1, Lidz;->q:Lmjv;

    nop

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

    :goto_d3
    move v10, v7

    nop

    nop

    nop

    nop

    :goto_d4
    goto/32 :goto_22b

    nop

    nop

    :goto_d5
    int-to-float v8, v8

    nop

    nop

    goto/32 :goto_236

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    if-nez v11, :cond_11

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

    :cond_11
    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_d7
    invoke-interface {v0, v4}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_22f

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    iget-object v2, v0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->h:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    iget-object v2, v0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->c:Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_24d

    nop

    nop

    nop

    nop

    :goto_da
    if-le v5, v2, :cond_12

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    :cond_12
    :goto_db
    goto/32 :goto_200

    nop

    nop

    nop

    :goto_dc
    goto/16 :goto_121

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_de
    iget v7, v0, Lpck;->a:I

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

    :goto_df
    if-nez v3, :cond_13

    nop

    goto/32 :goto_24b

    nop

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_1aa

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    invoke-virtual {v4, v0}, Lpdl;->b(Lpck;)V

    :goto_e1
    goto/32 :goto_151

    nop

    nop

    :goto_e2
    invoke-virtual {v1}, Lidz;->d()Z

    move-result v10

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_e3
    sub-int/2addr v5, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_24c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    iget-object v10, v1, Lidz;->j:Lieu;

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    :goto_e5
    iget v10, v10, Landroid/graphics/RectF;->left:F

    nop

    nop

    nop

    nop

    goto/32 :goto_238

    nop

    nop

    nop

    nop

    :goto_e6
    check-cast v4, Ljava/lang/Long;

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    iget v4, v4, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :goto_e8
    new-instance v1, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    :goto_e9
    iput v12, v14, Lsol;->f:I

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    iget v5, v1, Landroid/graphics/Rect;->right:I

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

    nop

    :goto_eb
    const/16 v11, 0x15

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

    :goto_ec
    iget v5, v1, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_1b3

    nop

    nop

    nop

    :goto_ed
    iget-object v10, v0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->c:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_ee
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    goto/32 :goto_16c

    nop

    nop

    nop

    nop

    :goto_ef
    iget-object v1, v0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->h:Landroid/graphics/Rect;

    nop

    goto/32 :goto_1c0

    nop

    nop

    :goto_f0
    float-to-int v14, v14

    nop

    nop

    nop

    goto/32 :goto_243

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    invoke-direct {v2, v0}, Liep;-><init>(Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;)V

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_f2
    goto/16 :goto_d4

    nop

    nop

    nop

    :goto_f3
    goto/32 :goto_d3

    nop

    nop

    :goto_f4
    div-int/2addr v3, v9

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    :goto_f5
    iget-object v1, v0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->c:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_1d6

    nop

    nop

    nop

    :goto_f6
    iput v13, v12, Lsol;->b:I

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_181

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    invoke-virtual {v0}, Lieu;->b()V

    goto/32 :goto_1bb

    nop

    nop

    :goto_f9
    int-to-float v10, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_fa
    iget-object v1, v0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->h:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_194

    nop

    nop

    :goto_fb
    const/high16 v9, -0x3d4c0000    # -90.0f

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_fc
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_de

    nop

    nop

    :goto_fd
    move v3, v4

    nop

    :goto_fe
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_ff
    iget-object v1, v1, Lpdl;->a:Landroid/graphics/RectF;

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    :goto_100
    if-nez v10, :cond_14

    nop

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_1d5

    nop

    nop

    :goto_101
    iget-object v1, v0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->c:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    :goto_102
    iget v3, v1, Landroid/graphics/Rect;->left:I

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

    :goto_103
    const/4 v1, 0x1

    nop

    goto/32 :goto_165

    nop

    nop

    nop

    nop

    nop

    :goto_104
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_15f

    nop

    nop

    nop

    :goto_105
    iget-object v1, v0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->c:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_106
    iget v5, v1, Landroid/graphics/Rect;->top:I

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

    :goto_107
    long-to-float v12, v12

    nop

    nop

    nop

    goto/32 :goto_234

    nop

    nop

    nop

    nop

    :goto_108
    iget v13, v12, Lsol;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_20e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_109
    new-array v6, v6, [Landroid/animation/Animator;

    nop

    nop

    nop

    goto/32 :goto_239

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    check-cast v11, Lidx;

    nop

    nop

    goto/32 :goto_207

    nop

    nop

    nop

    :goto_10b
    check-cast v13, Lsol;

    nop

    nop

    goto/32 :goto_220

    nop

    nop

    nop

    :goto_10c
    goto/16 :goto_fe

    nop

    :goto_10d
    goto/32 :goto_fd

    nop

    nop

    nop

    :goto_10e
    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    :goto_10f
    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    :goto_110
    iput v3, v1, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    :goto_111
    const/high16 v11, 0x41f00000    # 30.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_225

    nop

    nop

    :goto_112
    int-to-float v3, v3

    nop

    nop

    goto/32 :goto_235

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_113
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_114
    const/high16 v5, 0x430c0000    # 140.0f

    nop

    goto/32 :goto_1d8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_115
    iget v2, v1, Lidz;->l:F

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    :goto_116
    const v3, 0x406a1cac    # 3.658f

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

    :goto_117
    invoke-virtual {v8}, Lpdl;->a()Landroid/graphics/Matrix;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_118
    invoke-virtual {v7, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_119
    if-ne v11, v7, :cond_15

    nop

    goto/32 :goto_19e

    nop

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_11a
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_215

    nop

    nop

    nop

    nop

    nop

    :goto_11b
    sub-int/2addr v10, v12

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

    :goto_11c
    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    invoke-virtual {v1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/32 :goto_1c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11e
    check-cast v10, Liea;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_11f
    iget v12, v5, Liec;->f:I

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

    nop

    :goto_120
    throw v4

    nop

    :goto_121
    goto/32 :goto_23e

    nop

    nop

    nop

    :goto_122
    int-to-float v8, v8

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_123
    iput-object v2, v1, Lidz;->k:Lrss;

    nop

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    nop

    :goto_124
    iget-object v1, v0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->c:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_1ab

    nop

    nop

    nop

    nop

    nop

    :goto_125
    iget-object v1, v0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->i:Landroid/graphics/Rect;

    nop

    goto/32 :goto_1a0

    nop

    nop

    nop

    nop

    :goto_126
    iget-object v2, v1, Lidz;->g:Loyd;

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

    nop

    :goto_127
    iget-object v1, v0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->c:Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_128
    iget v3, v5, Liec;->h:I

    nop

    goto/32 :goto_18e

    nop

    nop

    nop

    nop

    nop

    :goto_129
    const/4 v1, 0x2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_12a
    invoke-virtual {v10}, Lieu;->b()V

    goto/32 :goto_131

    nop

    nop

    nop

    nop

    :goto_12b
    invoke-virtual {v1, v3, v2, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    :goto_12c
    iget-object v12, v1, Lidz;->o:Llyv;

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12d
    iget-object v2, v1, Lidz;->b:Lhco;

    nop

    nop

    goto/32 :goto_21c

    nop

    nop

    nop

    nop

    :goto_12e
    iput v12, v14, Lsol;->b:I

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

    :goto_12f
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    :goto_130
    move-object v14, v13

    nop

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    nop

    :goto_131
    goto/16 :goto_180

    nop

    nop

    nop

    nop

    :goto_132
    goto/32 :goto_1de

    nop

    nop

    :goto_133
    check-cast v14, Lsol;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_134
    const v6, 0x3f733333    # 0.95f

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    :goto_135
    invoke-interface {v11}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v11

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

    :goto_136
    new-instance v11, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    :goto_137
    iget-object v4, v5, Liec;->e:Landroid/graphics/Rect;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_138
    add-int/2addr v5, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_139
    goto/16 :goto_1b

    nop

    nop

    nop

    :goto_13a
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_13b
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_13c
    if-eqz v13, :cond_16

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    :cond_16
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_13d
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    :goto_13e
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v7

    nop

    nop

    goto/32 :goto_1ae

    nop

    nop

    nop

    nop

    nop

    :goto_13f
    new-instance v7, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20b

    nop

    nop

    nop

    :goto_140
    iget-object v10, v1, Lidz;->j:Lieu;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_141
    new-instance v5, Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_142
    iget-object v13, v11, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    :goto_143
    invoke-virtual {v14, v4, v7}, Landroid/graphics/RectF;->offset(FF)V

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_144
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_1eb

    nop

    nop

    nop

    nop

    nop

    :goto_145
    iget v3, v10, Lsol;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1ac

    nop

    nop

    :goto_146
    move-object/from16 v18, v3

    nop

    nop

    nop

    goto/32 :goto_213

    nop

    nop

    nop

    nop

    :goto_147
    invoke-virtual {v7, v4}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    :goto_148
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_149
    invoke-virtual {v11}, Ltkb;->o()V

    :goto_14a
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14b
    iget v8, v0, Lpck;->b:I

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    :goto_14c
    add-int/2addr v5, v3

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_14d
    iget-object v0, v1, Lidz;->j:Lieu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_168

    nop

    nop

    nop

    nop

    :goto_14e
    add-float/2addr v11, v5

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14f
    invoke-virtual {v10, v8, v1}, Landroid/graphics/Path;->moveTo(FF)V

    goto/32 :goto_53

    nop

    nop

    :goto_150
    add-int/lit8 v10, v10, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_151
    iget-object v0, v1, Lidz;->j:Lieu;

    nop

    goto/32 :goto_250

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_152
    goto/16 :goto_1fd

    nop

    nop

    nop

    nop

    nop

    :goto_153
    goto/32 :goto_1b6

    nop

    nop

    nop

    :goto_154
    int-to-float v8, v8

    nop

    nop

    nop

    goto/32 :goto_14f

    nop

    nop

    :goto_155
    mul-float/2addr v7, v10

    nop

    nop

    nop

    goto/32 :goto_20f

    nop

    nop

    nop

    nop

    :goto_156
    check-cast v11, Llyi;

    nop

    nop

    nop

    nop

    goto/32 :goto_204

    nop

    nop

    nop

    nop

    :goto_157
    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    nop

    goto/32 :goto_175

    nop

    nop

    nop

    nop

    nop

    :goto_158
    iget-object v13, v11, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_159
    iget v7, v1, Landroid/graphics/Rect;->top:I

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15a
    if-eq v3, v9, :cond_17

    nop

    goto/32 :goto_13a

    nop

    :cond_17
    goto/32 :goto_17e

    nop

    nop

    :goto_15b
    move v3, v10

    nop

    goto/32 :goto_22c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15c
    invoke-virtual {v1, v5, v14}, Landroid/graphics/Path;->lineTo(FF)V

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    :goto_15d
    if-gt v3, v2, :cond_18

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    :cond_18
    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_15e
    iget-object v0, v0, Lieu;->c:Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_15f
    if-gtz v7, :cond_19

    nop

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

    :cond_19
    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_160
    goto/16 :goto_e1

    nop

    nop

    nop

    :goto_161
    goto/32 :goto_1e8

    nop

    nop

    nop

    nop

    :goto_162
    div-int/2addr v3, v9

    nop

    nop

    goto/32 :goto_16b

    nop

    nop

    nop

    :goto_163
    iget v5, v1, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_164
    if-eq v12, v9, :cond_1a

    nop

    nop

    goto/32 :goto_16a

    nop

    nop

    :cond_1a
    goto/32 :goto_19c

    nop

    nop

    :goto_165
    aput-object v2, v6, v1

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    nop

    :goto_166
    invoke-virtual {v11, v12}, Lkyf;->D(I)V

    goto/32 :goto_1b9

    nop

    nop

    :goto_167
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto/32 :goto_24e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_168
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_15e

    nop

    nop

    nop

    :goto_169
    goto/16 :goto_d4

    nop

    :goto_16a
    goto/32 :goto_64

    nop

    nop

    nop

    :goto_16b
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    nop

    goto/32 :goto_138

    nop

    nop

    :goto_16c
    add-int/2addr v3, v2

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16d
    goto/16 :goto_10f

    nop

    nop

    nop

    nop

    :goto_16e
    goto/32 :goto_214

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16f
    iget-object v13, v5, Liec;->a:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_170
    const/4 v1, 0x6

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    :goto_171
    invoke-virtual {v1, v2, v12}, Landroid/graphics/Path;->lineTo(FF)V

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_172
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_240

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_173
    iget-object v1, v0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->d:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    :goto_174
    int-to-float v15, v15

    nop

    nop

    goto/32 :goto_1a5

    nop

    nop

    nop

    nop

    :goto_175
    iput v1, v0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->m:F

    nop

    nop

    goto/32 :goto_173

    nop

    nop

    nop

    nop

    :goto_176
    invoke-static {v12}, Lhhg;->R(Landroid/graphics/RectF;)Lsok;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    :goto_177
    invoke-virtual {v11}, Ltkb;->o()V

    :goto_178
    goto/32 :goto_188

    nop

    nop

    nop

    :goto_179
    goto/16 :goto_20

    nop

    :goto_17a
    goto/32 :goto_189

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17b
    check-cast v10, Lsol;

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_17c
    iget v3, v1, Landroid/graphics/Rect;->right:I

    nop

    nop

    goto/32 :goto_185

    nop

    nop

    nop

    :goto_17d
    if-nez v12, :cond_1b

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_1b
    goto/32 :goto_164

    nop

    nop

    nop

    :goto_17e
    move v3, v8

    nop

    nop

    nop

    goto/32 :goto_139

    nop

    nop

    nop

    nop

    nop

    :goto_17f
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    nop

    nop

    :goto_180
    goto/32 :goto_18b

    nop

    nop

    nop

    nop

    nop

    :goto_181
    rem-int v0, v0, v1

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

    :goto_182
    iget-object v10, v11, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_17b

    nop

    nop

    nop

    nop

    :goto_183
    if-eqz v2, :cond_1c

    nop

    nop

    goto/32 :goto_17a

    nop

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_21b

    nop

    nop

    nop

    :goto_184
    int-to-float v4, v4

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_185
    iget v5, v1, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    goto/32 :goto_1ff

    nop

    nop

    nop

    :goto_186
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    :goto_187
    invoke-interface {v10, v11}, Liea;->b(I)V

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_188
    iget-object v12, v11, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_189
    int-to-float v2, v2

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

    nop

    :goto_18a
    invoke-virtual {v13}, Ltkg;->C()Z

    move-result v13

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_18b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    :goto_18c
    sub-int/2addr v5, v3

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

    :goto_18d
    invoke-direct {v3, v2, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_18e
    if-nez v3, :cond_1d

    nop

    nop

    goto/32 :goto_23d

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_1c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18f
    invoke-virtual {v11}, Ltkb;->i()Ltkg;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    nop

    nop

    :goto_190
    invoke-virtual {v0, v2}, Lpdl;->d(I)V

    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    :goto_191
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_203

    nop

    nop

    :goto_192
    invoke-virtual {v12}, Ltkg;->C()Z

    move-result v10

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_193
    if-eq v3, v6, :cond_1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_128

    nop

    nop

    nop

    :goto_194
    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_195
    iput v3, v10, Lsol;->h:I

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    :goto_196
    iget-object v0, v0, Lieu;->c:Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;

    nop

    nop

    nop

    nop

    goto/32 :goto_222

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_197
    if-eqz v12, :cond_1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_178

    nop

    nop

    :cond_1f
    goto/32 :goto_177

    nop

    nop

    :goto_198
    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    :goto_199
    invoke-static {v12}, Lhhg;->R(Landroid/graphics/RectF;)Lsok;

    move-result-object v12

    nop

    goto/32 :goto_248

    nop

    nop

    :goto_19a
    check-cast v11, Llyi;

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_19b
    iget-object v4, v4, Lhsd;->e:Lpdl;

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    :goto_19c
    move v10, v9

    nop

    nop

    nop

    goto/32 :goto_169

    nop

    nop

    :goto_19d
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :goto_19e
    goto/32 :goto_1e9

    nop

    nop

    nop

    nop

    nop

    :goto_19f
    iput v3, v1, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_152

    nop

    nop

    :goto_1a0
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/32 :goto_e8

    nop

    nop

    :goto_1a1
    if-eq v10, v9, :cond_20

    nop

    nop

    nop

    nop

    goto/32 :goto_1e3

    nop

    nop

    nop

    :cond_20
    goto/32 :goto_1e2

    nop

    nop

    nop

    :goto_1a2
    const-wide/16 v7, 0x32

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1a3
    iget-object v11, v1, Lidz;->n:Lkyf;

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_1a4
    iget v5, v1, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_18c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a5
    iget v8, v11, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a6
    invoke-direct {v10, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    goto/32 :goto_1af

    nop

    nop

    nop

    nop

    nop

    :goto_1a7
    iget-object v0, v0, Lidy;->c:Lpck;

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

    :goto_1a8
    iget-object v1, v0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->c:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_171

    nop

    nop

    nop

    nop

    :goto_1a9
    iput-object v5, v0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->q:Landroid/animation/AnimatorSet;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_1aa
    iget-object v5, v0, Lidy;->b:Liec;

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_1ab
    int-to-float v2, v2

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_1ac
    or-int/lit8 v3, v3, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1ad
    new-array v2, v1, [F

    nop

    fill-array-data v2, :array_0

    goto/32 :goto_217

    nop

    nop

    nop

    nop

    nop

    :goto_1ae
    if-lez v7, :cond_21

    nop

    goto/32 :goto_1e5

    nop

    nop

    :cond_21
    goto/32 :goto_1e4

    nop

    nop

    nop

    nop

    nop

    :goto_1af
    invoke-virtual {v8, v7, v10}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    goto/32 :goto_6e

    nop

    nop

    :goto_1b0
    iget-object v13, v11, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_b1

    nop

    nop

    :goto_1b1
    sget-object v0, Lieu;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1b2
    or-int/2addr v12, v9

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

    :goto_1b3
    sub-int/2addr v5, v3

    nop

    nop

    goto/32 :goto_1fc

    nop

    nop

    nop

    nop

    nop

    :goto_1b4
    new-instance v5, Landroid/animation/AnimatorSet;

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b5
    iput v10, v5, Landroid/graphics/Rect;->left:I

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

    nop

    :goto_1b6
    sub-int/2addr v3, v5

    nop

    goto/32 :goto_162

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b7
    or-int/2addr v12, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    :goto_1b8
    int-to-float v10, v3

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    :goto_1b9
    iget-object v11, v1, Lidz;->p:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    :goto_1ba
    new-instance v2, Liep;

    nop

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    :goto_1bb
    return-void

    nop

    nop

    nop

    nop

    :goto_1bc
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1bd
    const/4 v2, 0x1

    nop

    :goto_1be
    goto/32 :goto_196

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1bf
    iget-object v0, v0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->q:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_19d

    nop

    nop

    nop

    :goto_1c0
    iget v2, v1, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_1dd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c1
    const/4 v8, 0x3

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

    :goto_1c2
    if-ne v3, v7, :cond_22

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    :cond_22
    goto/32 :goto_dc

    nop

    nop

    :goto_1c3
    iput v10, v13, Lsol;->b:I

    nop

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

    :goto_1c4
    iget-object v4, v1, Lidz;->k:Lrss;

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_1c5
    const/high16 v14, -0x3e100000    # -30.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_1c6
    const v1, 0x19

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

    :goto_1c7
    iget-object v1, v0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->j:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    :goto_1c8
    invoke-virtual {v7, v5}, Lpdl;->g(Landroid/graphics/Rect;)V

    goto/32 :goto_241

    nop

    nop

    :goto_1c9
    sub-int v3, v2, v3

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    :goto_1ca
    if-eqz v13, :cond_23

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_23
    goto/32 :goto_17

    nop

    nop

    :goto_1cb
    invoke-virtual {v0}, Lieu;->a()V

    goto/32 :goto_23c

    nop

    nop

    :goto_1cc
    if-eq v11, v9, :cond_24

    nop

    nop

    nop

    goto/32 :goto_20d

    nop

    nop

    nop

    :cond_24
    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_1cd
    iget v12, v12, Landroid/graphics/RectF;->top:F

    nop

    goto/32 :goto_212

    nop

    nop

    :goto_1ce
    const/16 v16, 0x0

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_1cf
    iput v12, v13, Lsol;->b:I

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    :goto_1d0
    const/4 v9, 0x2

    nop

    nop

    goto/32 :goto_1fb

    nop

    nop

    nop

    nop

    :goto_1d1
    move-object v0, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_24a

    nop

    nop

    nop

    nop

    :goto_1d2
    const/4 v13, 0x0

    nop

    goto/32 :goto_218

    nop

    nop

    :goto_1d3
    int-to-float v7, v7

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    :goto_1d4
    invoke-static {v3, v10}, Lhhg;->V(Lhoh;Llyv;)I

    move-result v3

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_1d5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d6
    invoke-virtual {v1, v8, v10}, Landroid/graphics/Path;->lineTo(FF)V

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_1d7
    iget-object v0, v0, Lieu;->c:Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;

    nop

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

    nop

    :goto_1d8
    cmpl-float v2, v2, v5

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    :goto_1d9
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1da
    iget v10, v13, Lsol;->b:I

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_1db
    throw v4

    nop

    nop

    :goto_1dc
    goto/32 :goto_23f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1dd
    iget v3, v1, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_163

    nop

    nop

    nop

    nop

    :goto_1de
    iget-object v3, v1, Lidz;->p:Lhoh;

    nop

    nop

    goto/32 :goto_202

    nop

    nop

    :goto_1df
    invoke-direct {v2, v0, v5, v3}, Lieq;-><init>(Landroid/view/View;I[B)V

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_1e0
    iget-object v1, v0, Lidy;->a:Lidz;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e1
    iget v15, v11, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_174

    nop

    nop

    nop

    :goto_1e2
    goto/16 :goto_19e

    nop

    nop

    nop

    nop

    nop

    :goto_1e3
    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    :goto_1e4
    goto/16 :goto_148

    nop

    :goto_1e5
    goto/32 :goto_1f2

    nop

    nop

    nop

    nop

    nop

    :goto_1e6
    iput v5, v1, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    :goto_1e7
    iget v14, v14, Landroid/graphics/RectF;->bottom:F

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

    nop

    :goto_1e8
    iget-object v4, v4, Lieu;->c:Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;

    nop

    goto/32 :goto_19b

    nop

    nop

    nop

    nop

    nop

    :goto_1e9
    return-void

    nop

    :goto_1ea
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1eb
    iget-object v2, v0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->h:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_1ec
    if-nez v7, :cond_25

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_148

    nop

    :cond_25
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1ed
    invoke-virtual {v12}, Ltkg;->C()Z

    move-result v12

    nop

    nop

    nop

    nop

    goto/32 :goto_197

    nop

    nop

    nop

    nop

    :goto_1ee
    invoke-direct {v13, v15, v10, v5, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ef
    sub-int/2addr v3, v5

    nop

    goto/32 :goto_20a

    nop

    nop

    :goto_1f0
    goto/16 :goto_47

    nop

    nop

    :goto_1f1
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f2
    iget-object v7, v4, Lhsd;->e:Lpdl;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f3
    iget-object v0, v1, Lidz;->j:Lieu;

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f4
    const/high16 v5, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    :goto_1f5
    invoke-virtual {v7}, Lpdl;->f()Z

    move-result v7

    nop

    nop

    goto/32 :goto_1ec

    nop

    nop

    nop

    :goto_1f6
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto/32 :goto_1bf

    nop

    nop

    :goto_1f7
    invoke-virtual {v11}, Ltkb;->o()V

    :goto_1f8
    goto/32 :goto_182

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f9
    iget v10, v4, Landroid/graphics/Rect;->top:I

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1fa
    const/high16 v11, -0x3e900000    # -15.0f

    nop

    nop

    nop

    goto/32 :goto_14e

    nop

    nop

    nop

    nop

    nop

    :goto_1fb
    if-eq v3, v8, :cond_26

    nop

    nop

    goto/32 :goto_1dc

    nop

    nop

    nop

    :cond_26
    goto/32 :goto_65

    nop

    nop

    :goto_1fc
    iput v5, v1, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    nop

    :goto_1fd
    goto/32 :goto_23a

    nop

    nop

    nop

    nop

    :goto_1fe
    sub-int/2addr v7, v3

    nop

    nop

    goto/32 :goto_22a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ff
    sub-int/2addr v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_200
    if-lez v2, :cond_27

    nop

    nop

    goto/32 :goto_16e

    nop

    :cond_27
    goto/32 :goto_16d

    nop

    nop

    nop

    :goto_201
    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    goto/32 :goto_1fe

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_202
    iget-object v10, v1, Lidz;->o:Llyv;

    nop

    nop

    nop

    goto/32 :goto_1d4

    nop

    nop

    nop

    :goto_203
    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto/32 :goto_1d9

    nop

    nop

    nop

    nop

    :goto_204
    sget-object v12, Llyi;->a:Llyi;

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

    :goto_205
    invoke-virtual {v11}, Ltkg;->m()Ltkb;

    move-result-object v11

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_206
    invoke-virtual {v1, v5, v6, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto/32 :goto_1a8

    nop

    nop

    nop

    nop

    nop

    :goto_207
    invoke-virtual {v11}, Lidx;->d()V

    goto/32 :goto_1a3

    nop

    nop

    nop

    nop

    nop

    :goto_208
    const-string v4, "viewfinderSize is null"

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

    :goto_209
    iput v4, v5, Landroid/graphics/Rect;->bottom:I

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

    :goto_20a
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

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

    nop

    nop

    :goto_20b
    invoke-direct {v7, v15, v14, v5, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_172

    nop

    nop

    nop

    :goto_20c
    goto/16 :goto_8c

    nop

    nop

    nop

    :goto_20d
    goto/32 :goto_62

    nop

    nop

    :goto_20e
    or-int/2addr v13, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    :goto_20f
    invoke-direct {v14, v15, v8, v4, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_210
    iget-object v4, v4, Lieu;->c:Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    :goto_211
    invoke-virtual {v2}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c4

    nop

    nop

    :goto_212
    float-to-int v12, v12

    nop

    nop

    goto/32 :goto_16f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_213
    check-cast v18, Lsol;

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    :goto_214
    if-lt v3, v2, :cond_28

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    :cond_28
    goto/32 :goto_1c9

    nop

    nop

    nop

    nop

    nop

    :goto_215
    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    :goto_216
    if-lez v0, :cond_29

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    :cond_29
    goto/32 :goto_75

    nop

    :goto_217
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_218
    const/4 v14, 0x0

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

    nop

    :goto_219
    new-instance v3, Landroid/graphics/RectF;

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

    nop

    nop

    :goto_21a
    div-int/2addr v2, v9

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_21b
    const/16 v2, 0x1b7

    nop

    goto/32 :goto_179

    nop

    nop

    nop

    nop

    :goto_21c
    invoke-virtual {v2}, Lhco;->j()Z

    move-result v2

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

    :goto_21d
    if-eqz v3, :cond_2a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1bc

    nop

    nop

    :cond_2a
    goto/32 :goto_d0

    nop

    nop

    :goto_21e
    if-gtz v2, :cond_2b

    nop

    nop

    nop

    nop

    goto/32 :goto_19e

    nop

    nop

    nop

    :cond_2b
    :goto_21f
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_220
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_223

    nop

    nop

    nop

    nop

    nop

    :goto_221
    move v10, v8

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    :goto_222
    iget-object v0, v0, Lhsd;->e:Lpdl;

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_223
    iput-object v12, v13, Lsol;->d:Lsok;

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_224
    add-int/2addr v8, v2

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    :goto_225
    add-float v12, v10, v11

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_226
    const/4 v12, 0x0

    nop

    goto/32 :goto_1d2

    nop

    nop

    :goto_227
    goto/16 :goto_d4

    nop

    nop

    :goto_228
    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_229
    int-to-float v1, v1

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

    :goto_22a
    div-int/lit8 v8, v5, 0x2

    nop

    nop

    nop

    goto/32 :goto_224

    nop

    nop

    nop

    nop

    :goto_22b
    invoke-virtual {v13}, Ltkg;->C()Z

    move-result v12

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_22c
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_22d
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_22e
    float-to-int v13, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_22f
    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_208

    nop

    nop

    nop

    :goto_230
    const/16 v4, 0x582

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_231
    invoke-virtual {v13}, Ltkg;->C()Z

    move-result v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    :goto_232
    iget v10, v4, Landroid/graphics/Rect;->right:I

    nop

    goto/32 :goto_ce

    nop

    nop

    :goto_233
    int-to-float v4, v4

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    :goto_234
    div-float/2addr v10, v12

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

    :goto_235
    add-float/2addr v14, v3

    nop

    goto/32 :goto_15c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_236
    iget v10, v4, Landroid/graphics/Rect;->left:I

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

    :goto_237
    iput v6, v12, Lsol;->c:I

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    :goto_238
    float-to-int v10, v10

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_239
    aput-object v1, v6, v4

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    :goto_23a
    iget v3, v1, Landroid/graphics/Rect;->right:I

    nop

    nop

    goto/32 :goto_242

    nop

    nop

    nop

    nop

    nop

    :goto_23b
    check-cast v13, Lsol;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_150

    nop

    nop

    nop

    :goto_23c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_23d
    goto/32 :goto_120

    nop

    nop

    :goto_23e
    iget-object v3, v1, Lidz;->j:Lieu;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_23f
    new-instance v3, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_186

    nop

    nop

    nop

    :goto_240
    invoke-virtual {v1, v7, v5, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_241
    iget-object v7, v4, Lhsd;->e:Lpdl;

    nop

    goto/32 :goto_1f5

    nop

    nop

    :goto_242
    iget v5, v1, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    goto/32 :goto_1ef

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_243
    invoke-direct {v11, v10, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_244
    cmp-long v2, v2, v4

    nop

    nop

    nop

    goto/32 :goto_21e

    nop

    nop

    :goto_245
    if-nez v3, :cond_2c

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :cond_2c
    goto/32 :goto_1c1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_246
    invoke-virtual/range {v10 .. v18}, Lmjv;->v(ILspo;Lspb;Lsjq;Lsqe;Lslp;Lsoj;Lsol;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_247
    sub-int/2addr v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_19f

    nop

    nop

    nop

    nop

    nop

    :goto_248
    iget-object v13, v11, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_231

    nop

    nop

    nop

    nop

    :goto_249
    if-eqz v2, :cond_2d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    :cond_2d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24a
    throw v0

    nop

    nop

    :goto_24b
    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24c
    if-lt v3, v5, :cond_2e

    nop

    goto/32 :goto_153

    nop

    nop

    nop

    nop

    nop

    :cond_2e
    goto/32 :goto_b

    nop

    nop

    :goto_24d
    invoke-virtual {v1, v2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    goto/32 :goto_170

    nop

    nop

    nop

    :goto_24e
    iget-object v1, v0, Lhsd;->e:Lpdl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    :goto_24f
    invoke-interface {v2}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_250
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_249

    nop

    nop

    nop

    nop

    nop
.end method
