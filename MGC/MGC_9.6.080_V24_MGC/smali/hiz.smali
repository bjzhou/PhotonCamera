.class public final Lhiz;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:Landroid/graphics/Paint;

.field public final f:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

.field public final g:Ljava/util/function/BooleanSupplier;

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Lhtc;

.field public l:Lhtc;

.field public final m:Liof;

.field public final n:Liof;

.field public final o:Liof;

.field public final p:Liof;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/coach/CameraCoachHudView;Ljava/util/function/BooleanSupplier;)V
    .locals 16

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_0
    move-object/from16 v3, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_1
    invoke-static {v6}, Lnnr;->b(F)I

    move-result v15

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

    :goto_2
    iput-boolean v3, v0, Lhiz;->i:Z

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    int-to-float v9, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v14, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_1f

    nop

    nop

    :goto_5
    iput v2, v0, Lhiz;->b:F

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    int-to-float v15, v15

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v1, v12, v13, v3}, Liof;-><init>(Ljava/lang/Object;Ljava/lang/Object;[C)V

    goto/32 :goto_84

    nop

    nop

    :goto_a
    int-to-float v2, v2

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_b
    int-to-float v5, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_c
    const/high16 v13, 0x40000000    # 2.0f

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

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    :goto_e
    iget v5, v5, Landroid/util/DisplayMetrics;->scaledDensity:F

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

    :goto_f
    sget-object v12, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v6}, Lnnr;->b(F)I

    move-result v2

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

    :goto_11
    new-instance v4, Landroid/graphics/Paint;

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v4, v9, v1, v10, v11}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto/32 :goto_14

    nop

    nop

    :goto_13
    invoke-static {v3}, Lnnr;->b(F)I

    move-result v3

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_14
    new-instance v9, Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_15
    invoke-static {v6}, Lnnr;->b(F)I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_16
    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_17
    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_18
    invoke-static {v1}, Lnnr;->b(F)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/high16 v3, 0x40800000    # 4.0f

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1a
    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_71

    nop

    :goto_1d
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object v1, v0, Lhiz;->o:Liof;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_1f
    sget-object v13, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iput-boolean v3, v0, Lhiz;->h:Z

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

    :goto_22
    invoke-virtual {v14, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_36

    nop

    nop

    :goto_23
    int-to-float v12, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_24
    invoke-static {v13}, Lnnr;->b(F)I

    move-result v13

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_25
    int-to-float v5, v5

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_26
    invoke-virtual {v13, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v12, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_29
    new-instance v1, Liof;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_2b
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_43

    nop

    nop

    :goto_2c
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    int-to-float v3, v3

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_2e
    int-to-float v13, v13

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_2f
    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_28

    nop

    nop

    :goto_30
    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    int-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_32
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_33
    int-to-float v7, v7

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_34
    int-to-float v2, v2

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

    nop

    :goto_35
    invoke-static {v2}, Lnnr;->b(F)I

    move-result v3

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v14, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_39
    mul-float/2addr v5, v15

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const v1, 0x17

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_3b
    int-to-float v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_3c
    invoke-virtual {v13, v5, v1, v2, v11}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto/32 :goto_7a

    nop

    nop

    :goto_3d
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    new-instance v1, Liof;

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_41
    iput-object v1, v0, Lhiz;->n:Liof;

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v9, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_38

    nop

    nop

    :goto_43
    const/high16 v1, 0x40400000    # 3.0f

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v13, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    move-object/from16 v4, p2

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

    :goto_46
    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_6a

    nop

    nop

    :goto_48
    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_9f

    nop

    nop

    :goto_49
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    new-instance v14, Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_4b
    const/4 v5, -0x1

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_77

    nop

    nop

    :goto_4d
    iput v3, v0, Lhiz;->d:F

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

    :goto_4e
    new-instance v1, Landroid/graphics/Paint;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-static {v6}, Lnnr;->b(F)I

    move-result v13

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

    :goto_50
    invoke-static {v6}, Lnnr;->b(F)I

    move-result v7

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

    nop

    :goto_51
    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    const/4 v3, 0x0

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v14, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_ab

    nop

    nop

    :goto_55
    mul-float/2addr v3, v15

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

    :goto_56
    iget v3, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v13, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iput-object v3, v0, Lhiz;->f:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

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

    nop

    nop

    :goto_5a
    int-to-float v14, v14

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5b
    const-string v10, "#FDD663"

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    :goto_5c
    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    int-to-float v2, v2

    nop

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

    :goto_5e
    invoke-static {v13}, Lnnr;->b(F)I

    move-result v14

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_60
    invoke-virtual {v9, v12, v1, v13, v11}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-direct {v1, v4, v13, v3}, Liof;-><init>(Ljava/lang/Object;Ljava/lang/Object;[C)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_63
    iput-object v1, v0, Lhiz;->m:Liof;

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

    :goto_64
    int-to-float v14, v14

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

    nop

    :goto_65
    int-to-float v13, v13

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iput-object v4, v0, Lhiz;->g:Ljava/util/function/BooleanSupplier;

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

    :goto_67
    invoke-virtual {v12, v14, v1, v15, v11}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v14, v13, v1, v15, v11}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_69
    int-to-float v13, v13

    nop

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

    :goto_6a
    invoke-static {v6}, Lnnr;->b(F)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_6b
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_6c
    iput-object v1, v0, Lhiz;->e:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    const/high16 v11, -0x1000000

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

    :goto_6e
    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_6f
    invoke-static {v2}, Lnnr;->b(F)I

    move-result v12

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

    :goto_70
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_71
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_72
    new-instance v1, Liof;

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_73
    const/high16 v6, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_75
    const/16 v8, 0xff

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_78
    invoke-static {v2}, Lnnr;->b(F)I

    move-result v2

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_79
    const/4 v7, 0x1

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_7a
    new-instance v2, Landroid/graphics/Paint;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_6b

    nop

    nop

    :goto_7c
    int-to-float v10, v10

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-static {v2}, Lnnr;->b(F)I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7e
    invoke-static {v2}, Lnnr;->b(F)I

    move-result v13

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_80
    invoke-virtual {v13, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_81
    iput v2, v0, Lhiz;->c:F

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_82
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_83
    int-to-float v0, v0

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_84
    iput-object v1, v0, Lhiz;->p:Liof;

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_85
    invoke-static {v2}, Lnnr;->b(F)I

    move-result v14

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_86
    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_87
    sget-object v14, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

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

    :goto_88
    invoke-virtual {v12, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_76

    nop

    nop

    :goto_89
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-direct {v1, v9, v2, v3}, Liof;-><init>(Ljava/lang/Object;Ljava/lang/Object;[C)V

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-static {v6}, Lnnr;->b(F)I

    move-result v5

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_8c
    move-object/from16 v0, p0

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    iput v1, v0, Lhiz;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_8e
    new-instance v1, Liof;

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_90
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_91
    invoke-virtual {v2, v3, v1, v5, v11}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_92
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_93
    const v0, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_94
    sget-object v12, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    int-to-float v12, v12

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_96
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_97
    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_98
    const/high16 v2, 0x42540000    # 53.0f

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_99
    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_9a
    new-instance v13, Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_9b
    invoke-static {v6}, Lnnr;->b(F)I

    move-result v15

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_9c
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    sget-object v9, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_9e
    new-instance v12, Landroid/graphics/Paint;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_9f
    invoke-virtual {v12, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_a0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    int-to-float v15, v15

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_a2
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    const/high16 v2, 0x40800000    # 4.0f

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_a5
    invoke-static {v2}, Lnnr;->b(F)I

    move-result v9

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

    nop

    :goto_a6
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

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

    :goto_a7
    invoke-direct {v1, v14, v2, v3}, Liof;-><init>(Ljava/lang/Object;Ljava/lang/Object;[C)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-static {v6}, Lnnr;->b(F)I

    move-result v12

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_a9
    iput-boolean v3, v0, Lhiz;->j:Z

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    const/high16 v15, 0x41600000    # 14.0f

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_ab
    sget-object v13, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    invoke-virtual {v13, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_ae
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_af
    invoke-static {v1}, Lnnr;->b(F)I

    move-result v1

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

    nop

    :goto_b0
    invoke-virtual {v14, v13}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto/32 :goto_7e

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 2

    goto/32 :goto_10

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_1
    goto/32 :goto_13

    nop

    nop

    :goto_2
    const/4 v1, 0x0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x13

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    if-nez v0, :cond_1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Lhiz;->l:Lhtc;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->invalidate()V

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    iput-boolean v1, p0, Lhiz;->j:Z

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

    :goto_e
    iput-object v0, p0, Lhiz;->k:Lhtc;

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

    :goto_f
    iget-boolean v0, p0, Lhiz;->h:Z

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_11
    iget-object p0, p0, Lhiz;->f:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_14
    iput-boolean v1, p0, Lhiz;->h:Z

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method
