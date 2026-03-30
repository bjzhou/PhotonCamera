.class public final Lign;
.super Landroid/view/View;
.source "PG"


# instance fields
.field private final A:Lmrs;

.field private final B:Lmrs;

.field private final C:Landroid/animation/FloatEvaluator;

.field private final D:Llad;

.field private final E:Lmru;

.field private final F:Lhoh;

.field private final G:Lmrs;

.field private final H:Lmrs;

.field public final a:Ljava/util/concurrent/ScheduledExecutorService;

.field public final b:Loyd;

.field public c:Ljava/util/concurrent/ScheduledFuture;

.field public d:I

.field public final e:I

.field private final f:Ligm;

.field private final g:Landroid/graphics/drawable/Drawable;

.field private final h:Landroid/graphics/Paint;

.field private final i:Landroid/graphics/Paint;

.field private final j:Landroid/graphics/Paint;

.field private final k:Landroid/graphics/Paint;

.field private final l:Landroid/graphics/Paint;

.field private final m:I

.field private final n:I

.field private final o:I

.field private final p:I

.field private final q:F

.field private final r:F

.field private final s:F

.field private final t:F

.field private final u:F

.field private final v:F

.field private w:F

.field private x:Z

.field private final y:Lmrs;

.field private final z:Lmrs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ligm;Ljava/util/concurrent/ScheduledExecutorService;Llad;Lhoh;Loyd;)V
    .locals 18

    goto/32 :goto_80

    nop

    nop

    :goto_0
    add-float v9, v6, v6

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

    :goto_1
    invoke-virtual {v4, v9, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_3
    const-wide/16 v10, 0x1f4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v4, v5, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move-object/from16 v1, p6

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move-object/from16 p2, v4

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_8
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v3, Lmrs;

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_c
    iput-object v3, v0, Lign;->A:Lmrs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_d
    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_f
    const/4 v8, 0x0

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    :goto_10
    sget-object v4, Lmrt;->a:Landroid/view/animation/Interpolator;

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

    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v8}, Landroid/animation/FloatEvaluator;-><init>()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object v1, v0, Lign;->F:Lhoh;

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

    :goto_15
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

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

    :goto_16
    iput-object v8, v0, Lign;->i:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    :goto_17
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_47

    nop

    :goto_18
    iput-object v8, v0, Lign;->C:Landroid/animation/FloatEvaluator;

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

    :goto_19
    new-instance v3, Lmrs;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1a
    move-wide/from16 p5, v10

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput v6, v0, Lign;->t:F

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

    :goto_1c
    sget-object v4, Lmrt;->a:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_1d
    iput v4, v0, Lign;->p:I

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

    :goto_1e
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_2e

    nop

    nop

    :goto_1f
    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    sget-object v10, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {v3, v4, v2, v1}, Lmrs;-><init>(Landroid/view/animation/Interpolator;II)V

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_22
    iput-object v3, v0, Lign;->y:Lmrs;

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

    :goto_23
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_24
    const/high16 v10, 0x40000000    # 2.0f

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

    nop

    :goto_25
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_27
    new-instance v8, Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iput v7, v0, Lign;->u:F

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

    :goto_2a
    invoke-direct/range {v11 .. v17}, Lmru;-><init>(Landroid/animation/TypeEvaluator;Landroid/view/animation/Interpolator;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iput-object v1, v0, Lign;->b:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_3f

    nop

    nop

    :goto_2d
    iput-object v1, v0, Lign;->D:Llad;

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    sub-float v5, v7, v5

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_30
    sget-object v4, Lmrt;->b:Landroid/view/animation/Interpolator;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_31
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_8a

    nop

    nop

    :goto_32
    move/from16 p3, v6

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iput v8, v0, Lign;->e:I

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_34
    div-float/2addr v9, v10

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_35
    iput v5, v0, Lign;->w:F

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_36
    const-wide/16 v10, 0x12c

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_38
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

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

    nop

    :goto_39
    iput-object v3, v0, Lign;->E:Lmru;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    move-object/from16 p1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_3b
    move/from16 p3, v9

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

    :goto_3c
    new-instance v3, Lmrs;

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

    :goto_3d
    add-float v9, v6, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_3e
    invoke-static {v8}, Lnnr;->b(F)I

    move-result v8

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_3f
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_40
    move/from16 p4, v5

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

    nop

    :goto_41
    iput-object v3, v0, Lign;->G:Lmrs;

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iput-object v8, v0, Lign;->h:Landroid/graphics/Paint;

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

    :goto_43
    sget-object v4, Lmrt;->a:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_44
    rem-int v0, v0, v1

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

    :goto_45
    iput-object v1, v0, Lign;->f:Ligm;

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_46
    iput-object v3, v0, Lign;->g:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_47
    goto/32 :goto_72

    nop

    :goto_48
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    const v8, 0x7f07072d

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

    :goto_4a
    move-object/from16 p2, v4

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

    :goto_4b
    iput v5, v0, Lign;->q:F

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

    :goto_4c
    new-instance v8, Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    :goto_4d
    const v7, 0x7f07039b

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_5f

    nop

    nop

    :goto_4f
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_50
    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-direct/range {p1 .. p6}, Lmrs;-><init>(Landroid/view/animation/Interpolator;FFJ)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iput v7, v0, Lign;->v:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_54
    const v5, 0x7f060a07

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_55
    move-object v11, v3

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

    nop

    nop

    :goto_56
    move-object/from16 v1, p5

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-direct/range {p1 .. p6}, Lmrs;-><init>(Landroid/view/animation/Interpolator;FFJ)V

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_58
    const v9, 0x7f0803ab

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_59
    iput v4, v0, Lign;->o:I

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

    :goto_5a
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

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

    nop

    nop

    :goto_5b
    invoke-direct {v12}, Landroid/animation/IntEvaluator;-><init>()V

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_5c
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_5d
    invoke-direct {v3, v4, v1, v2}, Lmrs;-><init>(Landroid/view/animation/Interpolator;II)V

    goto/32 :goto_41

    nop

    nop

    :goto_5e
    iput v1, v0, Lign;->m:I

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

    :goto_5f
    iput-object v8, v0, Lign;->j:Landroid/graphics/Paint;

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

    :goto_60
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_61
    const-wide/16 v16, 0x190

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

    :goto_62
    move-wide/from16 p5, v10

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_63
    const-wide/16 v9, 0x1f4

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_64
    sget-object v13, Lmrt;->a:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_65
    const v2, 0x7f060a06

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_66
    move/from16 p4, v9

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    goto/32 :goto_48

    nop

    nop

    :goto_68
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_69
    move-object/from16 v1, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    new-instance v3, Lmrs;

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

    :goto_6c
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

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

    :goto_6d
    new-instance v4, Landroid/graphics/Paint;

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    iput v6, v0, Lign;->s:F

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

    :goto_70
    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    return-void

    nop

    :goto_72
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_73
    move-object/from16 p2, v4

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_74
    const v7, 0x7f0707b2

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

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

    :goto_76
    const v8, 0x7f0700a2

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_77
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_78
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_79
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_7a
    iput-object v3, v0, Lign;->H:Lmrs;

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_7b
    sget-object v4, Lmrt;->c:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_7c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_7d
    move/from16 p3, v5

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_80
    const v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_81
    const v5, 0x7f060a05

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_82
    invoke-virtual {v4, v5, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_83
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_85
    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_86
    move/from16 p3, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_87
    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_88
    new-instance v3, Lmru;

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

    :goto_89
    invoke-direct/range {p1 .. p6}, Lmrs;-><init>(Landroid/view/animation/Interpolator;FFJ)V

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_8b
    move/from16 p4, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_8c
    add-float v9, v5, v7

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_8d
    new-instance v12, Landroid/animation/IntEvaluator;

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_8e
    invoke-direct/range {p1 .. p6}, Lmrs;-><init>(Landroid/view/animation/Interpolator;FFJ)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    new-instance v8, Landroid/animation/FloatEvaluator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_90
    const/16 v4, 0xff

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_91
    sget-object v4, Lmrt;->b:Landroid/view/animation/Interpolator;

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

    :goto_92
    move/from16 p4, v6

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    new-instance v3, Lmrs;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_94
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_95
    const v6, 0x7f070753

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

    :goto_96
    move-object/from16 p1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_97
    const/high16 v8, 0x41f00000    # 30.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_98
    const v7, 0x7f070398

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

    :goto_99
    iput v2, v0, Lign;->n:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    :goto_9a
    new-instance v3, Lmrs;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_9b
    move-wide/from16 p5, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_9c
    move-object/from16 v1, p2

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

    :goto_9d
    iput-object v3, v0, Lign;->z:Lmrs;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_9e
    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    new-instance v8, Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_a0
    iput-object v8, v0, Lign;->k:Landroid/graphics/Paint;

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

    nop

    :goto_a1
    move-object/from16 p2, v4

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    iput-object v3, v0, Lign;->B:Lmrs;

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_a3
    move-object/from16 p1, v3

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

    nop

    :goto_a4
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_a6
    new-instance v8, Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    const v4, 0x7f060a04

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_a8
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_a9
    iput-object v4, v0, Lign;->l:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    :goto_aa
    const/4 v9, 0x1

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    move-object/from16 v1, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    :goto_ad
    sget-object v4, Lmrt;->c:Landroid/view/animation/Interpolator;

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_af
    iput-object v1, v0, Lign;->a:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_7f

    nop

    nop

    :goto_b1
    move-object/from16 p1, v3

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_b2
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_b3
    iput v6, v0, Lign;->r:F

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_85

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 28

    goto/32 :goto_244

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean v2, v1, Ligm;->x:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_257

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v6, v8, v9}, Lmrs;->b(J)Ljava/lang/Integer;

    move-result-object v2

    nop

    goto/32 :goto_2b9

    nop

    nop

    :goto_3
    move-object v8, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_160

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v5, :cond_0

    nop

    goto/32 :goto_223

    nop

    :cond_0
    goto/32 :goto_222

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v5, v0, Lign;->h:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz v5, :cond_1

    nop

    nop

    nop

    goto/32 :goto_20d

    nop

    :cond_1
    goto/32 :goto_20c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v4, v0, Lign;->o:I

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_8
    sub-long v8, v3, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_268

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget v5, v1, Ligm;->i:I

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

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lign;->getHeight()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_295

    nop

    nop

    nop

    :goto_b
    const/4 v5, 0x0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_c
    if-gez v2, :cond_2

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1b8

    nop

    nop

    nop

    nop

    :goto_d
    sub-long v21, v21, v25

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

    nop

    nop

    :goto_e
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c5

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    :goto_11
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_259

    nop

    nop

    :goto_12
    invoke-virtual {v6}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_260

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v5, v8, v9}, Lmrs;->b(J)Ljava/lang/Integer;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v2, v1, Ligm;->v:Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_170

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_253

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_27e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v2, v2, Ligm;->r:Ljava/lang/Long;

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v5, :cond_3

    nop

    goto/32 :goto_291

    nop

    :cond_3
    goto/32 :goto_56

    nop

    nop

    :goto_19
    const-wide/16 v3, 0x0

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

    :goto_1a
    add-int v0, v0, v1

    nop

    goto/32 :goto_2c1

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_250

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-int/2addr v4, v5

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_1d
    invoke-static {v2, v5}, Lucd;->e(FF)F

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_254

    nop

    nop

    nop

    :goto_1e
    if-nez v5, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_1e6

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1be

    nop

    nop

    nop

    :goto_1f
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    nop

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    :goto_20
    if-nez v1, :cond_5

    nop

    goto/32 :goto_1b7

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1ba

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v1}, Ligm;->a()D

    move-result-wide v3

    nop

    :goto_22
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_23
    neg-double v3, v3

    nop

    nop

    nop

    goto/32 :goto_1d9

    nop

    nop

    :goto_24
    div-double/2addr v5, v8

    nop

    goto/32 :goto_15b

    nop

    nop

    :goto_25
    div-float/2addr v6, v14

    nop

    nop

    nop

    goto/32 :goto_1bb

    nop

    nop

    :goto_26
    if-gtz v6, :cond_6

    nop

    goto/32 :goto_261

    nop

    :cond_6
    goto/32 :goto_281

    nop

    nop

    :goto_27
    int-to-float v5, v5

    nop

    nop

    nop

    goto/32 :goto_1a4

    nop

    nop

    :goto_28
    const/4 v5, 0x1

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    :goto_29
    add-double/2addr v8, v12

    nop

    nop

    nop

    goto/32 :goto_293

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/16 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    move-object/from16 v1, p1

    nop

    nop

    goto/32 :goto_2a9

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    cmpg-double v2, v23, v17

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    :goto_2e
    invoke-interface {v2}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v2

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

    :goto_2f
    iget-wide v12, v1, Liew;->a:D

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

    :goto_30
    iget-boolean v6, v0, Lign;->x:Z

    nop

    nop

    nop

    goto/32 :goto_15f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    sub-int v1, v13, v1

    nop

    goto/32 :goto_18a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v2, v1, Ligm;->F:Lkjj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e5

    nop

    nop

    nop

    :goto_33
    if-nez v2, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_291

    nop

    nop

    :cond_7
    goto/32 :goto_18

    nop

    nop

    :goto_34
    cmpg-double v1, v1, v4

    nop

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

    :goto_35
    invoke-virtual/range {p0 .. p0}, Lign;->getHeight()I

    move-result v6

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const-wide v17, 0x3fe199999999999aL    # 0.55

    nop

    nop

    goto/32 :goto_189

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-lez v2, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    :cond_8
    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_38
    iput-boolean v2, v1, Ligm;->p:Z

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    :goto_39
    add-int/2addr v10, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_221

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    int-to-double v14, v6

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    :goto_3b
    if-nez v2, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2af

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_25c

    nop

    nop

    :goto_3c
    invoke-virtual {v1}, Ligr;->ordinal()I

    move-result v1

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v6, v0, Lign;->G:Lmrs;

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    :goto_3e
    add-double/2addr v3, v5

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    :goto_40
    if-nez v1, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_275

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_297

    nop

    nop

    :goto_41
    invoke-virtual {v8, v6}, Lowu;->c(Ljava/lang/Runnable;)V

    :goto_42
    goto/32 :goto_121

    nop

    nop

    :goto_43
    invoke-virtual {v1}, Ligm;->a()D

    move-result-wide v3

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

    :goto_44
    invoke-virtual {v2}, Llad;->a()Lpcg;

    move-result-object v2

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const/high16 v3, 0x40000000    # 2.0f

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

    :goto_46
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    goto/32 :goto_23f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    sub-double/2addr v4, v12

    nop

    nop

    nop

    goto/32 :goto_26f

    nop

    nop

    nop

    nop

    nop

    :goto_48
    move-wide/from16 v23, v12

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_1ff

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    if-eqz v2, :cond_b

    nop

    goto/32 :goto_165

    nop

    nop

    :cond_b
    goto/32 :goto_cf

    nop

    nop

    nop

    :goto_4b
    const/16 v14, 0xe

    nop

    goto/32 :goto_240

    nop

    nop

    :goto_4c
    if-nez v9, :cond_c

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_1ce

    nop

    nop

    nop

    :goto_4d
    if-lez v1, :cond_d

    nop

    goto/32 :goto_2bb

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_1a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    :goto_4f
    if-nez v9, :cond_e

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_e
    goto/32 :goto_171

    nop

    nop

    nop

    :goto_50
    iget-object v1, v0, Lign;->i:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_1fb

    nop

    nop

    nop

    nop

    :goto_51
    sub-double/2addr v8, v3

    nop

    :goto_52
    goto/32 :goto_242

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    if-eqz v8, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15c

    nop

    :cond_f
    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    nop

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    move-object/from16 v6, v19

    nop

    goto/32 :goto_162

    nop

    nop

    nop

    nop

    nop

    :goto_56
    const/4 v2, 0x1

    nop

    goto/32 :goto_290

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget-wide v4, v1, Liew;->a:D

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :goto_58
    goto/16 :goto_14e

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_14d

    nop

    nop

    :goto_5a
    iget v2, v2, Lpcg;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/32 :goto_156

    nop

    nop

    nop

    :goto_5c
    invoke-virtual/range {p0 .. p0}, Lign;->getHeight()I

    move-result v2

    nop

    goto/32 :goto_1f6

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    check-cast v9, Ljava/lang/Boolean;

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_5e
    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    nop

    nop

    goto/32 :goto_177

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    goto/16 :goto_3f

    nop

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_206

    nop

    nop

    nop

    :goto_61
    iget-object v2, v0, Lign;->k:Landroid/graphics/Paint;

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    goto/32 :goto_1e4

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_12c

    nop

    nop

    :goto_64
    iget v2, v0, Lign;->r:F

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iget-wide v5, v1, Ligm;->w:D

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_66
    const/high16 v6, 0x42b40000    # 90.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    const/4 v8, 0x1

    nop

    nop

    nop

    goto/32 :goto_26c

    nop

    nop

    nop

    :goto_68
    iget-object v2, v0, Lign;->f:Ligm;

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_69
    iget-boolean v1, v0, Lign;->x:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_2a0

    nop

    nop

    :goto_6a
    div-double/2addr v4, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_21b

    nop

    nop

    nop

    nop

    :goto_6b
    if-nez v2, :cond_10

    nop

    goto/32 :goto_1e1

    nop

    :cond_10
    goto/32 :goto_1c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    iget-object v1, v0, Lign;->f:Ligm;

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_6e
    if-nez v9, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_165

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    iget-boolean v3, v2, Ligs;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    :goto_70
    iget-boolean v8, v1, Ligm;->x:Z

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_71
    invoke-virtual {v1}, Ligm;->i()Z

    move-result v2

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    div-float/2addr v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_298

    nop

    nop

    nop

    :goto_73
    int-to-float v5, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_237

    nop

    nop

    :goto_74
    iget v4, v0, Lign;->q:F

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_75
    goto/16 :goto_83

    nop

    :goto_76
    goto/32 :goto_25a

    nop

    nop

    :goto_77
    sub-float v2, v17, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    :goto_78
    if-eqz v9, :cond_12

    nop

    goto/32 :goto_179

    nop

    nop

    :cond_12
    goto/32 :goto_225

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    iget-object v6, v0, Lign;->B:Lmrs;

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-virtual/range {p0 .. p0}, Lign;->getWidth()I

    move-result v1

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    iget v5, v1, Ligm;->o:I

    nop

    nop

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

    :goto_7c
    invoke-virtual {v2, v3, v4}, Lmrs;->a(J)Ljava/lang/Float;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_286

    nop

    nop

    nop

    :goto_7d
    invoke-virtual/range {p0 .. p0}, Lign;->getWidth()I

    move-result v6

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_7e
    invoke-virtual {v6, v3, v4}, Lmrs;->a(J)Ljava/lang/Float;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    :goto_7f
    iget-object v2, v0, Lign;->l:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    :goto_80
    iget-object v1, v0, Lign;->f:Ligm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    :goto_81
    invoke-virtual/range {p0 .. p0}, Lign;->getWidth()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19b

    nop

    nop

    nop

    nop

    :goto_82
    neg-double v3, v3

    nop

    nop

    nop

    nop

    nop

    :goto_83
    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    double-to-float v1, v5

    nop

    nop

    goto/32 :goto_213

    nop

    nop

    :goto_85
    invoke-virtual {v1}, Ligm;->a()D

    move-result-wide v3

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_86
    sget-object v2, Lmrt;->a:Landroid/view/animation/Interpolator;

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

    :goto_87
    iget-wide v1, v1, Ligm;->n:D

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

    :goto_88
    const/high16 v16, 0x42700000    # 60.0f

    nop

    goto/32 :goto_155

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    check-cast v2, Ligs;

    nop

    nop

    nop

    goto/32 :goto_280

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    add-int/lit8 v8, v8, 0x1

    nop

    goto/32 :goto_1fc

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    goto/16 :goto_52

    nop

    nop

    nop

    nop

    :goto_8c
    goto/32 :goto_1af

    nop

    nop

    :goto_8d
    iget-boolean v2, v8, Ligs;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_8e
    goto/16 :goto_c9

    nop

    nop

    nop

    :goto_8f
    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :goto_90
    iget v2, v0, Lign;->n:I

    nop

    nop

    nop

    goto/32 :goto_1f4

    nop

    nop

    :goto_91
    iget-object v6, v0, Lign;->b:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_26a

    nop

    nop

    nop

    nop

    :goto_92
    if-nez v5, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    :cond_13
    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    add-double/2addr v4, v1

    nop

    goto/32 :goto_238

    nop

    nop

    nop

    :goto_94
    const/4 v8, 0x0

    nop

    nop

    :goto_95
    goto/32 :goto_18d

    nop

    nop

    nop

    nop

    nop

    :goto_96
    add-double/2addr v8, v12

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_97
    if-ne v1, v2, :cond_14

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

    :cond_14
    goto/32 :goto_288

    nop

    nop

    nop

    :goto_98
    iget-object v6, v0, Lign;->C:Landroid/animation/FloatEvaluator;

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_99
    invoke-virtual {v1, v2}, Ligm;->c(I)V

    goto/32 :goto_22c

    nop

    nop

    nop

    :goto_9a
    iget-object v8, v8, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_292

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v21

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    div-float/2addr v2, v6

    nop

    nop

    nop

    goto/32 :goto_2ad

    nop

    nop

    :goto_9d
    iget-object v1, v0, Lign;->f:Ligm;

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    :goto_9e
    if-lt v8, v9, :cond_15

    nop

    nop

    nop

    nop

    goto/32 :goto_1fd

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_21f

    nop

    nop

    nop

    :goto_9f
    invoke-virtual {v9, v15, v3, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/32 :goto_b4

    nop

    nop

    :goto_a0
    move-object/from16 v6, p1

    nop

    goto/32 :goto_1c9

    nop

    nop

    nop

    :goto_a1
    div-float/2addr v5, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    :goto_a2
    if-gt v12, v1, :cond_16

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_21d

    nop

    nop

    :goto_a3
    sub-int v6, v11, v2

    nop

    nop

    nop

    goto/32 :goto_2a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_a5
    iget-object v2, v0, Lign;->D:Llad;

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_a6
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_a7
    iget v2, v0, Lign;->t:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_176

    nop

    nop

    :goto_a8
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    :goto_a9
    invoke-virtual {v1, v2, v6, v6, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto/32 :goto_104

    nop

    nop

    :goto_aa
    div-float/2addr v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1d7

    nop

    nop

    nop

    :goto_ab
    cmpg-double v5, v5, v8

    nop

    nop

    goto/32 :goto_169

    nop

    nop

    nop

    nop

    :goto_ac
    iget-object v9, v2, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2b8

    nop

    nop

    :goto_ad
    double-to-float v2, v5

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    :goto_ae
    sub-long v8, v3, v8

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_af
    iget-object v2, v1, Ligm;->b:Lptw;

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_b0
    int-to-float v6, v6

    nop

    nop

    goto/32 :goto_183

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29b

    nop

    nop

    :goto_b2
    const-wide v17, -0x4056666666666666L    # -0.05

    nop

    nop

    goto/32 :goto_1aa

    nop

    nop

    nop

    :goto_b3
    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    iget v1, v0, Lign;->q:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    const-wide v3, -0x4006de04abbbd2e8L    # -1.5707963267948966

    nop

    goto/32 :goto_1dd

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    div-float/2addr v5, v14

    nop

    nop

    nop

    goto/32 :goto_24f

    nop

    nop

    nop

    :goto_b7
    cmpg-double v1, v1, v4

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    move v3, v5

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

    :goto_b9
    if-gez v2, :cond_17

    nop

    nop

    nop

    goto/32 :goto_15c

    nop

    nop

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_1b1

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    iget-object v2, v0, Lign;->D:Llad;

    nop

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    :goto_bb
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_bc
    goto/32 :goto_1d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    mul-double/2addr v2, v12

    nop

    nop

    nop

    goto/32 :goto_2ae

    nop

    nop

    nop

    nop

    nop

    :goto_be
    sub-double/2addr v2, v12

    nop

    nop

    nop

    goto/32 :goto_2aa

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    iget v1, v0, Lign;->s:F

    nop

    nop

    nop

    goto/32 :goto_173

    nop

    nop

    nop

    :goto_c0
    const/high16 v14, 0x40000000    # 2.0f

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

    :goto_c1
    goto/16 :goto_1b3

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    goto/32 :goto_1b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    if-nez v2, :cond_18

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

    :cond_18
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    iget-object v2, v1, Ligm;->G:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    :goto_c6
    iget-wide v1, v1, Ligm;->n:D

    nop

    nop

    goto/32 :goto_278

    nop

    nop

    nop

    nop

    :goto_c7
    if-nez v2, :cond_19

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_92

    nop

    nop

    :goto_c8
    const/4 v2, 0x0

    nop

    nop

    nop

    :goto_c9
    goto/32 :goto_264

    nop

    nop

    nop

    nop

    :goto_ca
    iget v1, v0, Lign;->w:F

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_cb
    invoke-virtual/range {p0 .. p0}, Lign;->getWidth()I

    move-result v1

    nop

    nop

    goto/32 :goto_2a7

    nop

    nop

    nop

    :goto_cc
    iget-object v5, v0, Lign;->l:Landroid/graphics/Paint;

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

    :goto_cd
    invoke-virtual/range {p0 .. p0}, Lign;->getWidth()I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_27c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

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

    :goto_cf
    iget-object v9, v1, Ligm;->b:Lptw;

    nop

    nop

    nop

    goto/32 :goto_25d

    nop

    nop

    nop

    nop

    :goto_d0
    iget-object v2, v0, Lign;->f:Ligm;

    nop

    nop

    goto/32 :goto_21e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    iget v9, v1, Liew;->c:F

    nop

    nop

    nop

    goto/32 :goto_1f1

    nop

    nop

    :goto_d2
    if-lez v2, :cond_1a

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_1d4

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_d4
    move-object/from16 v6, v19

    nop

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    :goto_d5
    iget v3, v0, Lign;->o:I

    nop

    goto/32 :goto_198

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    goto/16 :goto_248

    nop

    nop

    nop

    :goto_d7
    goto/32 :goto_1f3

    nop

    nop

    nop

    nop

    :goto_d8
    iget v1, v0, Lign;->q:F

    nop

    nop

    nop

    goto/32 :goto_16c

    nop

    nop

    nop

    nop

    :goto_d9
    iput-object v9, v1, Ligm;->r:Ljava/lang/Long;

    nop

    nop

    goto/32 :goto_164

    nop

    nop

    nop

    :goto_da
    iget-object v2, v2, Ligm;->z:Ljava/lang/Long;

    nop

    nop

    goto/32 :goto_2bc

    nop

    nop

    nop

    :goto_db
    iget v1, v0, Lign;->s:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_185

    nop

    nop

    nop

    nop

    :goto_dc
    add-double/2addr v3, v12

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_dd
    int-to-double v14, v6

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    :goto_de
    iget-object v8, v8, Lifn;->e:Lowu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_df
    move-object/from16 v1, p1

    nop

    nop

    goto/32 :goto_262

    nop

    nop

    nop

    :goto_e0
    move-wide/from16 v23, v8

    nop

    goto/32 :goto_1a1

    nop

    nop

    :goto_e1
    invoke-virtual/range {p0 .. p0}, Lign;->getHeight()I

    move-result v2

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

    :goto_e2
    iget-object v1, v0, Lign;->f:Ligm;

    nop

    nop

    goto/32 :goto_187

    nop

    nop

    :goto_e3
    iput-object v9, v1, Ligm;->q:Ljava/lang/Long;

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    move-object/from16 v1, p1

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    :goto_e5
    int-to-double v12, v11

    nop

    nop

    nop

    goto/32 :goto_174

    nop

    nop

    nop

    :goto_e6
    invoke-virtual/range {p0 .. p0}, Lign;->getWidth()I

    move-result v1

    nop

    goto/32 :goto_1d5

    nop

    nop

    nop

    :goto_e7
    int-to-double v4, v4

    nop

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

    nop

    :goto_e8
    invoke-virtual {v1, v2, v5}, Ligm;->e(ZZ)V

    goto/32 :goto_15d

    nop

    nop

    nop

    :goto_e9
    if-gez v2, :cond_1b

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    :cond_1b
    goto/32 :goto_36

    nop

    nop

    :goto_ea
    if-nez v2, :cond_1c

    nop

    nop

    nop

    goto/32 :goto_15c

    nop

    :cond_1c
    goto/32 :goto_140

    nop

    nop

    :goto_eb
    invoke-direct {v6, v2, v8, v9}, Lfgu;-><init>(ZLjava/lang/Object;I)V

    goto/32 :goto_1a3

    nop

    nop

    :goto_ec
    iget-object v2, v0, Lign;->j:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    if-eqz v9, :cond_1d

    nop

    goto/32 :goto_2bf

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_2be

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    sget-object v2, Ligr;->a:Ligr;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_ef
    iget v3, v0, Lign;->u:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_f0
    move-object/from16 v19, v4

    nop

    nop

    nop

    goto/32 :goto_234

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    invoke-virtual {v9, v15, v3, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    nop

    goto/32 :goto_15e

    nop

    nop

    :goto_f4
    div-double v3, v3, v17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    :goto_f5
    invoke-virtual {v1}, Ligm;->i()Z

    move-result v1

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

    :goto_f6
    add-double/2addr v3, v12

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_f7
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    :goto_f8
    if-gt v1, v2, :cond_1e

    nop

    nop

    goto/32 :goto_22d

    nop

    nop

    :cond_1e
    goto/32 :goto_255

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

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

    :goto_fa
    div-float/2addr v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b4

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    sub-long/2addr v3, v8

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_fc
    add-float/2addr v2, v5

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_fd
    iget v5, v1, Ligm;->o:I

    nop

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

    :goto_fe
    iget-object v2, v1, Ligm;->e:Loyd;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_ff
    invoke-virtual/range {p0 .. p0}, Lign;->getWidth()I

    move-result v4

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

    nop

    :goto_100
    int-to-float v5, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_17a

    nop

    nop

    :goto_101
    iget-wide v12, v1, Liew;->a:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_102
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    nop

    :goto_103
    cmpl-double v2, v23, v12

    nop

    goto/32 :goto_1ca

    nop

    nop

    nop

    nop

    :goto_104
    iget-object v1, v0, Lign;->i:Landroid/graphics/Paint;

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_105
    if-nez v3, :cond_1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1da

    nop

    nop

    nop

    nop

    :cond_1f
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_106
    if-eq v6, v3, :cond_20

    nop

    nop

    nop

    goto/32 :goto_1a6

    nop

    nop

    :cond_20
    goto/32 :goto_6f

    nop

    nop

    :goto_107
    const/4 v4, 0x2

    nop

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    nop

    nop

    :goto_108
    neg-double v3, v3

    nop

    :goto_109
    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    new-instance v9, Ldtv;

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_10b
    invoke-direct/range {v22 .. v27}, Liew;-><init>(DDF)V

    goto/32 :goto_d0

    nop

    nop

    nop

    :goto_10c
    invoke-virtual/range {p0 .. p0}, Lign;->getHeight()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_181

    nop

    nop

    :goto_10d
    float-to-double v5, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_18f

    nop

    nop

    :goto_10e
    float-to-int v12, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b0

    nop

    nop

    nop

    nop

    :goto_10f
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    goto/32 :goto_28c

    nop

    nop

    :goto_110
    invoke-virtual {v1, v2}, Ligm;->c(I)V

    :goto_111
    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    :goto_112
    int-to-double v4, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_245

    nop

    nop

    :goto_113
    mul-double/2addr v12, v14

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_114
    div-float/2addr v1, v2

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_115
    invoke-virtual {v2, v8, v9}, Lmrs;->a(J)Ljava/lang/Float;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_2a8

    nop

    nop

    nop

    nop

    nop

    :goto_116
    const v5, -0x4175c28f    # -0.27f

    nop

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    :goto_117
    add-double/2addr v5, v12

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_118
    iput-object v8, v1, Ligm;->r:Ljava/lang/Long;

    nop

    nop

    nop

    goto/32 :goto_178

    nop

    nop

    nop

    :goto_119
    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11a
    invoke-virtual {v9, v1, v2, v5, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/32 :goto_2a6

    nop

    nop

    nop

    nop

    :goto_11b
    neg-double v8, v8

    nop

    nop

    nop

    goto/32 :goto_299

    nop

    nop

    :goto_11c
    invoke-virtual/range {p0 .. p0}, Lign;->getHeight()I

    move-result v1

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_11d
    if-eq v1, v2, :cond_21

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19d

    nop

    nop

    :cond_21
    goto/32 :goto_66

    nop

    nop

    nop

    :goto_11e
    if-nez v2, :cond_22

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_22
    goto/32 :goto_224

    nop

    nop

    :goto_11f
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_120
    sub-int/2addr v13, v1

    nop

    nop

    nop

    goto/32 :goto_22b

    nop

    nop

    nop

    nop

    nop

    :goto_121
    iput-boolean v2, v1, Ligm;->s:Z

    nop

    nop

    goto/32 :goto_15a

    nop

    nop

    :goto_122
    iput-boolean v5, v1, Ligm;->t:Z

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_123
    invoke-virtual {v2}, Llad;->a()Lpcg;

    move-result-object v2

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    nop

    :goto_124
    goto/16 :goto_c2

    nop

    nop

    nop

    :goto_125
    goto/32 :goto_24c

    nop

    nop

    nop

    nop

    nop

    :goto_126
    if-lez v0, :cond_23

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :cond_23
    goto/32 :goto_62

    nop

    :goto_127
    move-wide v6, v3

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

    :goto_128
    if-eq v2, v6, :cond_24

    nop

    nop

    nop

    goto/32 :goto_1e6

    nop

    :cond_24
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_129
    iget v2, v2, Lpcg;->e:I

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_12a
    iget v1, v1, Liew;->c:F

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    int-to-long v5, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_227

    nop

    nop

    :goto_12c
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_205

    nop

    nop

    nop

    nop

    :goto_12d
    if-eqz v2, :cond_25

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d3

    nop

    nop

    nop

    nop

    :cond_25
    goto/32 :goto_c5

    nop

    nop

    :goto_12e
    invoke-virtual {v2, v3, v4}, Lmru;->c(J)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    :goto_12f
    mul-double/2addr v12, v14

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_130
    iget-object v4, v0, Lign;->i:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_21a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_131
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_201

    nop

    nop

    nop

    :goto_132
    if-nez v6, :cond_26

    nop

    goto/32 :goto_215

    nop

    nop

    nop

    :cond_26
    goto/32 :goto_182

    nop

    nop

    nop

    nop

    nop

    :goto_133
    div-int/2addr v1, v2

    nop

    goto/32 :goto_16d

    nop

    nop

    nop

    nop

    :goto_134
    invoke-virtual {v1}, Ligm;->i()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_135
    if-nez v2, :cond_27

    nop

    nop

    nop

    goto/32 :goto_261

    nop

    nop

    nop

    nop

    nop

    :cond_27
    goto/32 :goto_1db

    nop

    nop

    nop

    :goto_136
    int-to-float v1, v12

    nop

    goto/32 :goto_17e

    nop

    nop

    nop

    nop

    :goto_137
    goto/16 :goto_21c

    nop

    :goto_138
    goto/32 :goto_172

    nop

    nop

    nop

    nop

    :goto_139
    if-eqz v6, :cond_28

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :cond_28
    goto/32 :goto_235

    nop

    nop

    nop

    nop

    nop

    :goto_13a
    int-to-double v4, v4

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13b
    goto/16 :goto_158

    nop

    nop

    nop

    nop

    :goto_13c
    goto/32 :goto_157

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13d
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_19f

    nop

    nop

    nop

    nop

    :goto_13e
    sub-double/2addr v3, v5

    nop

    nop

    nop

    :goto_13f
    goto/32 :goto_243

    nop

    nop

    nop

    :goto_140
    sub-long v5, v21, v5

    nop

    nop

    goto/32 :goto_14a

    nop

    nop

    :goto_141
    if-nez v3, :cond_29

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    :cond_29
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_142
    sget-object v3, Lnbh;->c:Lnbh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    :goto_143
    check-cast v2, Ljava/lang/Number;

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

    :goto_144
    int-to-double v1, v12

    nop

    goto/32 :goto_296

    nop

    nop

    nop

    nop

    :goto_145
    new-instance v1, Liew;

    nop

    goto/32 :goto_1a0

    nop

    nop

    nop

    nop

    :goto_146
    iget-wide v3, v1, Ligm;->l:D

    nop

    nop

    goto/32 :goto_214

    nop

    nop

    nop

    nop

    :goto_147
    const/high16 v2, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    :goto_148
    div-int/2addr v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_267

    nop

    nop

    nop

    :goto_149
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    goto/32 :goto_2c2

    nop

    nop

    nop

    nop

    :goto_14a
    iget v2, v1, Ligm;->A:I

    nop

    nop

    nop

    goto/32 :goto_1cc

    nop

    nop

    :goto_14b
    invoke-virtual {v6, v9, v4, v5}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v4

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/32 :goto_289

    nop

    nop

    nop

    nop

    :goto_14d
    move-wide/from16 v25, v21

    nop

    :goto_14e
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14f
    iget-object v5, v0, Lign;->G:Lmrs;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_150
    add-float v4, v3, v2

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    :goto_151
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_239

    nop

    nop

    :goto_152
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_153
    iget-boolean v6, v2, Ligs;->c:Z

    nop

    goto/32 :goto_282

    nop

    nop

    nop

    nop

    :goto_154
    add-float v4, v15, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_208

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_155
    const-wide/high16 v17, 0x404e000000000000L    # 60.0

    nop

    nop

    nop

    nop

    goto/32 :goto_28a

    nop

    nop

    nop

    nop

    :goto_156
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/32 :goto_209

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_157
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_158
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_159
    int-to-float v15, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_1e9

    nop

    nop

    :goto_15a
    iget-boolean v2, v1, Ligm;->p:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_15b
    invoke-virtual {v1, v5, v6}, Ligm;->f(D)V

    :goto_15c
    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    :goto_15d
    iget-boolean v2, v1, Ligm;->u:Z

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

    :goto_15e
    float-to-int v13, v2

    nop

    nop

    goto/32 :goto_199

    nop

    nop

    :goto_15f
    mul-double/2addr v2, v4

    nop

    nop

    nop

    goto/32 :goto_1df

    nop

    nop

    :goto_160
    check-cast v8, Ligs;

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_161
    move-wide v8, v3

    nop

    goto/32 :goto_1a5

    nop

    nop

    nop

    :goto_162
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_163
    iget v5, v1, Ligm;->i:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    :goto_164
    iput-object v8, v1, Ligm;->q:Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    :goto_165
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_166
    invoke-virtual {v5, v8, v9}, Lmrs;->b(J)Ljava/lang/Integer;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_2b2

    nop

    nop

    nop

    :goto_167
    invoke-virtual/range {p0 .. p0}, Lign;->getWidth()I

    move-result v4

    nop

    nop

    goto/32 :goto_1d0

    nop

    nop

    nop

    :goto_168
    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_169
    if-lez v5, :cond_2a

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    :cond_2a
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_16a
    if-ne v1, v2, :cond_2b

    nop

    nop

    goto/32 :goto_180

    nop

    nop

    :cond_2b
    goto/32 :goto_236

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16b
    iget-boolean v3, v2, Ligs;->c:Z

    nop

    nop

    nop

    goto/32 :goto_141

    nop

    nop

    :goto_16c
    iget v2, v0, Lign;->s:F

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

    :goto_16d
    if-gt v13, v1, :cond_2c

    nop

    nop

    nop

    nop

    goto/32 :goto_1de

    nop

    :cond_2c
    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16e
    iget-object v2, v0, Lign;->f:Ligm;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_16f
    iget-wide v2, v1, Liew;->b:D

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

    :goto_170
    if-nez v2, :cond_2d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :cond_2d
    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_171
    invoke-interface {v9}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_172
    invoke-virtual/range {p0 .. p0}, Lign;->getHeight()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25f

    nop

    nop

    nop

    :goto_173
    const/high16 v2, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_174
    sub-double v2, v12, v2

    nop

    :goto_175
    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_176
    div-float/2addr v2, v3

    nop

    goto/32 :goto_d5

    nop

    nop

    :goto_177
    invoke-virtual/range {p0 .. p0}, Lign;->getWidth()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ab

    nop

    nop

    nop

    nop

    nop

    :goto_178
    goto/16 :goto_165

    nop

    nop

    :goto_179
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_17a
    div-float v5, v5, v16

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_17b
    iput v2, v0, Lign;->w:F

    nop

    :goto_17c
    goto/32 :goto_16f

    nop

    nop

    nop

    :goto_17d
    iput-boolean v3, v0, Lign;->x:Z

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_17e
    int-to-float v2, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_17f
    throw v0

    nop

    nop

    nop

    nop

    :goto_180
    goto/32 :goto_24e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_181
    if-lt v1, v2, :cond_2e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    :cond_2e
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_182
    iget-object v6, v2, Ligs;->b:Lnbh;

    nop

    goto/32 :goto_1a8

    nop

    nop

    nop

    nop

    nop

    :goto_183
    div-float v6, v6, v16

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_184
    div-double v3, v3, v17

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    :goto_185
    const/high16 v2, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    :goto_186
    iget v2, v0, Lign;->e:I

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    :goto_187
    iget-boolean v2, v1, Ligm;->m:Z

    nop

    nop

    goto/32 :goto_2b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_188
    iget-object v8, v1, Ligm;->G:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    goto/32 :goto_28f

    nop

    nop

    nop

    nop

    nop

    :goto_189
    cmpg-double v2, v23, v17

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_18a
    invoke-virtual/range {p0 .. p0}, Lign;->getWidth()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2b7

    nop

    nop

    nop

    :goto_18b
    return-void

    nop

    nop

    nop

    nop

    :goto_18c
    goto/32 :goto_232

    nop

    nop

    nop

    :goto_18d
    const/4 v9, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_18e
    invoke-virtual {v9, v6, v15, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto/32 :goto_1f8

    nop

    nop

    nop

    nop

    nop

    :goto_18f
    add-double/2addr v3, v5

    nop

    :goto_190
    goto/32 :goto_161

    nop

    nop

    nop

    nop

    :goto_191
    invoke-direct {v0}, Ltxt;-><init>()V

    goto/32 :goto_17f

    nop

    nop

    nop

    nop

    nop

    :goto_192
    move-wide/from16 v25, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    :goto_193
    const-wide v5, 0x4066800000000000L    # 180.0

    nop

    goto/32 :goto_273

    nop

    nop

    :goto_194
    const v1, 0x16

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_195
    mul-double/2addr v4, v12

    nop

    nop

    nop

    nop

    nop

    :goto_196
    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_197
    sub-float v17, v15, v1

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_198
    invoke-virtual {v1, v2, v6, v6, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto/32 :goto_2b4

    nop

    nop

    :goto_199
    iget-object v2, v0, Lign;->C:Landroid/animation/FloatEvaluator;

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19a
    invoke-virtual {v2, v1, v3, v4}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v14

    nop

    nop

    nop

    goto/32 :goto_1c7

    nop

    nop

    nop

    nop

    nop

    :goto_19b
    const/4 v9, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_272

    nop

    nop

    nop

    nop

    nop

    :goto_19c
    goto/16 :goto_253

    nop

    nop

    nop

    :goto_19d
    goto/32 :goto_1c8

    nop

    nop

    :goto_19e
    invoke-virtual {v2, v9}, Lowu;->c(Ljava/lang/Runnable;)V

    goto/32 :goto_1f2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19f
    iget-object v2, v0, Lign;->j:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_22a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a0
    move-object/from16 v22, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_192

    nop

    nop

    :goto_1a1
    goto/16 :goto_49

    nop

    nop

    :goto_1a2
    goto/32 :goto_142

    nop

    nop

    :goto_1a3
    check-cast v8, Lifn;

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a4
    div-float v5, v5, v16

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_1a5
    goto/16 :goto_52

    nop

    nop

    :goto_1a6
    goto/32 :goto_16b

    nop

    nop

    nop

    nop

    :goto_1a7
    iget-boolean v2, v1, Ligm;->x:Z

    nop

    nop

    goto/32 :goto_1f9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a8
    sget-object v15, Lnbh;->b:Lnbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_1a9
    iget-object v1, v0, Lign;->i:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_1aa
    cmpg-double v2, v3, v17

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1ab
    div-int/2addr v1, v2

    nop

    nop

    goto/32 :goto_1ac

    nop

    nop

    nop

    :goto_1ac
    sub-int/2addr v12, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    nop

    nop

    :goto_1ad
    iget v4, v0, Lign;->d:I

    nop

    goto/32 :goto_13a

    nop

    nop

    :goto_1ae
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1af
    div-double v8, v8, v17

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b0
    iget-object v4, v0, Lign;->C:Landroid/animation/FloatEvaluator;

    nop

    goto/32 :goto_25e

    nop

    nop

    nop

    nop

    :goto_1b1
    iget-boolean v2, v1, Ligm;->y:Z

    nop

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    :goto_1b2
    const/4 v2, 0x1

    nop

    :goto_1b3
    goto/32 :goto_229

    nop

    nop

    nop

    :goto_1b4
    iget v2, v0, Lign;->q:F

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b5
    iget-object v2, v2, Lifn;->e:Lowu;

    nop

    nop

    nop

    goto/32 :goto_19e

    nop

    nop

    nop

    nop

    nop

    :goto_1b6
    goto/16 :goto_253

    nop

    nop

    nop

    :goto_1b7
    goto/32 :goto_202

    nop

    nop

    nop

    nop

    :goto_1b8
    const-wide v17, 0x3fa999999999999aL    # 0.05

    nop

    goto/32 :goto_1d1

    nop

    nop

    nop

    nop

    :goto_1b9
    neg-float v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_1ba
    double-to-float v6, v7

    nop

    nop

    nop

    goto/32 :goto_1b6

    nop

    nop

    :goto_1bb
    float-to-double v3, v6

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1bc
    move-object v9, v6

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :goto_1bd
    const/4 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_1be
    iget-boolean v6, v1, Ligm;->t:Z

    nop

    goto/32 :goto_258

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1bf
    const-wide v21, 0x400921fb54442d18L    # Math.PI

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_1c0
    if-nez v1, :cond_2f

    nop

    goto/32 :goto_18c

    nop

    nop

    nop

    nop

    nop

    :cond_2f
    goto/32 :goto_11c

    nop

    nop

    nop

    :goto_1c1
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_1c2
    goto/32 :goto_1fa

    nop

    nop

    nop

    :goto_1c3
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_285

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c4
    iget-object v5, v0, Lign;->h:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_217

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c5
    div-int/2addr v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b3

    nop

    nop

    nop

    :goto_1c6
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    :goto_1c7
    iget-object v1, v0, Lign;->j:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_1e7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c8
    new-instance v0, Ltxt;

    nop

    goto/32 :goto_191

    nop

    nop

    nop

    nop

    :goto_1c9
    invoke-virtual {v6, v1, v15, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    :goto_1ca
    if-gez v2, :cond_30

    nop

    nop

    nop

    goto/32 :goto_261

    nop

    nop

    nop

    :cond_30
    goto/32 :goto_23d

    nop

    nop

    :goto_1cb
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    nop

    nop

    goto/32 :goto_1c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1cc
    int-to-double v8, v2

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

    :goto_1cd
    sub-int v3, v12, v3

    nop

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

    :goto_1ce
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    :goto_1cf
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_24b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d0
    int-to-double v4, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1d1
    cmpg-double v2, v3, v17

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

    :goto_1d2
    iput-boolean v2, v1, Ligm;->y:Z

    nop

    nop

    nop

    nop

    :goto_1d3
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d4
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_1d5
    div-int/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_193

    nop

    nop

    nop

    nop

    :goto_1d6
    iget-object v2, v0, Lign;->y:Lmrs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d7
    iget-object v6, v0, Lign;->i:Landroid/graphics/Paint;

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

    :goto_1d8
    invoke-virtual {v2, v8, v9}, Lmrs;->a(J)Ljava/lang/Float;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_203

    nop

    nop

    nop

    nop

    :goto_1d9
    goto/16 :goto_22

    nop

    nop

    nop

    nop

    :goto_1da
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1db
    const-wide v17, 0x3fdccccccccccccdL    # 0.45

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1dc
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_220

    nop

    nop

    :goto_1dd
    goto/16 :goto_21c

    nop

    nop

    :goto_1de
    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    :goto_1df
    if-nez v6, :cond_31

    nop

    goto/32 :goto_2ab

    nop

    nop

    nop

    :cond_31
    goto/32 :goto_112

    nop

    nop

    nop

    :goto_1e0
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1e1
    goto/32 :goto_68

    nop

    nop

    nop

    :goto_1e2
    iget v5, v0, Lign;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1e3
    return-void

    nop

    :goto_1e4
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e5
    invoke-virtual {v2}, Lkjj;->d()V

    :goto_1e6
    goto/32 :goto_122

    nop

    nop

    nop

    :goto_1e7
    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_231

    nop

    nop

    nop

    nop

    nop

    :goto_1e8
    if-nez v1, :cond_32

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

    :cond_32
    goto/32 :goto_251

    nop

    nop

    :goto_1e9
    iget v1, v0, Lign;->s:F

    nop

    goto/32 :goto_147

    nop

    nop

    nop

    :goto_1ea
    if-eqz v2, :cond_33

    nop

    nop

    goto/32 :goto_266

    nop

    nop

    nop

    nop

    :cond_33
    goto/32 :goto_265

    nop

    nop

    nop

    nop

    :goto_1eb
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_1d6

    nop

    nop

    nop

    nop

    :goto_1ec
    sget-object v2, Lhmr;->h:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_28b

    nop

    nop

    nop

    :goto_1ed
    int-to-double v12, v6

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

    :goto_1ee
    if-ne v2, v8, :cond_34

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

    :cond_34
    goto/32 :goto_188

    nop

    nop

    nop

    nop

    nop

    :goto_1ef
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    nop

    nop

    goto/32 :goto_1c3

    nop

    nop

    nop

    :goto_1f0
    iget-object v1, v0, Lign;->F:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_1ec

    nop

    nop

    nop

    :goto_1f1
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

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

    :goto_1f2
    const/4 v2, 0x1

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

    :goto_1f3
    sget-object v2, Lmrt;->a:Landroid/view/animation/Interpolator;

    nop

    nop

    goto/32 :goto_247

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f4
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_2ba

    nop

    nop

    nop

    :goto_1f5
    div-float/2addr v2, v3

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1f6
    int-to-double v2, v2

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    :goto_1f7
    move/from16 v17, v5

    nop

    goto/32 :goto_207

    nop

    nop

    nop

    :goto_1f8
    iget-object v0, v0, Lign;->g:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_212

    nop

    nop

    :goto_1f9
    if-nez v2, :cond_35

    nop

    nop

    nop

    nop

    goto/32 :goto_29d

    nop

    nop

    nop

    nop

    nop

    :cond_35
    goto/32 :goto_27b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1fa
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    :goto_1fb
    iget v2, v0, Lign;->m:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_210

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1fc
    goto/16 :goto_95

    nop

    nop

    nop

    :goto_1fd
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1fe
    invoke-virtual {v1}, Ligm;->a()D

    move-result-wide v8

    nop

    goto/32 :goto_11b

    nop

    nop

    :goto_1ff
    iget-wide v5, v1, Ligm;->n:D

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_200
    invoke-virtual {v1, v4, v6, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/32 :goto_10f

    nop

    nop

    nop

    :goto_201
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_25b

    nop

    nop

    :goto_202
    invoke-static/range {v20 .. v20}, Ligs;->c(Ligs;)Ligr;

    move-result-object v1

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    :goto_203
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_204
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v6

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_205
    move-object/from16 v7, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_206
    div-double v3, v3, v21

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_207
    move-object/from16 v20, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_271

    nop

    nop

    :goto_208
    move-object/from16 v1, p1

    nop

    goto/32 :goto_24a

    nop

    nop

    nop

    nop

    nop

    :goto_209
    iget v1, v0, Lign;->q:F

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_20a
    invoke-virtual/range {p0 .. p0}, Lign;->getHeight()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ed

    nop

    nop

    nop

    :goto_20b
    if-nez v9, :cond_36

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_36
    goto/32 :goto_2a2

    nop

    nop

    nop

    :goto_20c
    goto/16 :goto_190

    nop

    :goto_20d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_20e
    int-to-double v4, v1

    nop

    goto/32 :goto_2b6

    nop

    nop

    nop

    :goto_20f
    iget-object v2, v2, Ligm;->q:Ljava/lang/Long;

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    :goto_210
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_211
    goto/32 :goto_9d

    nop

    nop

    :goto_212
    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/32 :goto_14c

    nop

    nop

    nop

    :goto_213
    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v27

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    nop

    nop

    :goto_214
    goto/16 :goto_109

    nop

    nop

    nop

    :goto_215
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_216
    move-object/from16 v19, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_249

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_217
    iget-object v6, v0, Lign;->H:Lmrs;

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

    :goto_218
    iget v2, v1, Ligm;->B:I

    nop

    nop

    nop

    :goto_219
    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    :goto_21a
    sub-float v17, v15, v2

    nop

    nop

    nop

    goto/32 :goto_283

    nop

    nop

    :goto_21b
    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    nop

    nop

    nop

    nop

    :goto_21c
    goto/32 :goto_e6

    nop

    nop

    nop

    :goto_21d
    div-double v3, v3, v21

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    nop

    goto/32 :goto_20f

    nop

    nop

    nop

    :goto_21f
    const/16 v9, 0x8

    nop

    nop

    nop

    goto/32 :goto_26e

    nop

    nop

    :goto_220
    invoke-virtual {v4, v5, v2, v3}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v2

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

    :goto_221
    add-int/2addr v11, v2

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

    :goto_222
    goto/16 :goto_13f

    nop

    nop

    nop

    nop

    :goto_223
    goto/32 :goto_163

    nop

    nop

    nop

    nop

    nop

    :goto_224
    iget v8, v1, Ligm;->o:I

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_225
    if-nez v2, :cond_37

    nop

    nop

    nop

    goto/32 :goto_179

    nop

    :cond_37
    goto/32 :goto_28e

    nop

    nop

    nop

    nop

    :goto_226
    if-gtz v1, :cond_38

    nop

    nop

    nop

    nop

    goto/32 :goto_29f

    nop

    nop

    nop

    :cond_38
    goto/32 :goto_29e

    nop

    nop

    nop

    nop

    :goto_227
    cmp-long v2, v21, v5

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

    :goto_228
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    nop

    goto/32 :goto_1eb

    nop

    nop

    :goto_229
    iget-boolean v8, v1, Ligm;->s:Z

    nop

    nop

    goto/32 :goto_277

    nop

    nop

    nop

    :goto_22a
    iget-object v5, v0, Lign;->H:Lmrs;

    nop

    nop

    nop

    nop

    goto/32 :goto_166

    nop

    nop

    nop

    nop

    :goto_22b
    int-to-double v4, v13

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :goto_22c
    goto/16 :goto_111

    nop

    nop

    :goto_22d
    goto/32 :goto_27a

    nop

    nop

    nop

    nop

    nop

    :goto_22e
    move/from16 v3, v17

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

    :goto_22f
    invoke-virtual {v1}, Ligm;->a()D

    move-result-wide v8

    nop

    nop

    nop

    :goto_230
    goto/32 :goto_27f

    nop

    nop

    :goto_231
    const/high16 v3, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_1f5

    nop

    nop

    nop

    nop

    :goto_232
    iget-object v1, v0, Lign;->g:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_186

    nop

    nop

    :goto_233
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1dc

    nop

    nop

    nop

    :goto_234
    move/from16 v4, v17

    nop

    goto/32 :goto_1f7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_235
    div-double v8, v8, v17

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_236
    const/4 v2, 0x3

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    :goto_237
    iget-object v4, v0, Lign;->i:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_197

    nop

    nop

    :goto_238
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    nop

    nop

    goto/32 :goto_1ad

    nop

    nop

    :goto_239
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    :goto_23a
    goto/32 :goto_16e

    nop

    nop

    nop

    nop

    nop

    :goto_23b
    check-cast v2, Lifn;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b5

    nop

    nop

    :goto_23c
    sget-object v2, Lmrt;->a:Landroid/view/animation/Interpolator;

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

    nop

    :goto_23d
    const-wide/high16 v5, -0x4020000000000000L    # -0.5

    nop

    nop

    nop

    nop

    goto/32 :goto_27d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23e
    invoke-virtual/range {p0 .. p0}, Lign;->getHeight()I

    move-result v1

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    :goto_23f
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_240
    invoke-direct {v9, v2, v8, v14}, Ldtv;-><init>(Ljava/lang/Object;II)V

    goto/32 :goto_23b

    nop

    nop

    :goto_241
    iget-object v9, v9, Lifn;->T:Lkbf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20b

    nop

    nop

    nop

    :goto_242
    iget-wide v3, v1, Ligm;->l:D

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_243
    move-wide v8, v3

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    nop

    :goto_244
    const v0, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_194

    nop

    nop

    nop

    :goto_245
    sub-double/2addr v4, v2

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_246
    long-to-double v5, v5

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

    :goto_247
    sget-object v2, Lmrt;->d:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    :goto_248
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_249
    move/from16 v4, v17

    nop

    goto/32 :goto_294

    nop

    nop

    :goto_24a
    move v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2b1

    nop

    nop

    nop

    nop

    nop

    :goto_24b
    iget-object v2, v0, Lign;->z:Lmrs;

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    :goto_24c
    const/4 v2, 0x0

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

    :goto_24d
    add-float v3, v15, v1

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

    :goto_24e
    const/high16 v6, -0x3d4c0000    # -90.0f

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_24f
    float-to-double v5, v5

    nop

    nop

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

    :goto_250
    iget-object v4, v0, Lign;->j:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_251
    iput-boolean v8, v0, Lign;->x:Z

    nop

    goto/32 :goto_269

    nop

    nop

    nop

    :goto_252
    const/4 v6, 0x0

    nop

    :goto_253
    goto/32 :goto_18e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_254
    const v6, 0x3f07ae14    # 0.53f

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    :goto_255
    iget-boolean v1, v0, Lign;->x:Z

    nop

    nop

    goto/32 :goto_2a3

    nop

    nop

    nop

    :goto_256
    iget-object v6, v0, Lign;->i:Landroid/graphics/Paint;

    nop

    goto/32 :goto_24d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_257
    if-nez v2, :cond_39

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    :cond_39
    goto/32 :goto_23c

    nop

    nop

    nop

    nop

    nop

    :goto_258
    if-eqz v6, :cond_3a

    nop

    goto/32 :goto_1e6

    nop

    nop

    nop

    :cond_3a
    goto/32 :goto_284

    nop

    nop

    nop

    :goto_259
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    nop

    goto/32 :goto_19a

    nop

    nop

    :goto_25a
    invoke-virtual {v1}, Ligm;->a()D

    move-result-wide v3

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_25b
    iget-object v2, v0, Lign;->E:Lmru;

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

    :goto_25c
    iget-wide v2, v1, Liew;->a:D

    nop

    nop

    nop

    nop

    goto/32 :goto_20a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    :goto_25e
    iget v5, v1, Liew;->c:F

    nop

    nop

    nop

    nop

    goto/32 :goto_233

    nop

    nop

    :goto_25f
    div-int/2addr v1, v2

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_260
    invoke-virtual {v5, v2}, Lkjj;->g(Landroid/os/VibrationEffect;)V

    :goto_261
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_262
    move v2, v3

    nop

    goto/32 :goto_22e

    nop

    nop

    :goto_263
    div-double v3, v3, v17

    nop

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    :goto_264
    iget-boolean v9, v1, Ligm;->p:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1bd

    nop

    nop

    :goto_265
    goto/16 :goto_15c

    nop

    nop

    nop

    nop

    nop

    :goto_266
    goto/32 :goto_af

    nop

    nop

    :goto_267
    sub-int v4, v10, v2

    nop

    goto/32 :goto_1e2

    nop

    nop

    :goto_268
    invoke-virtual {v6, v8, v9}, Lmrs;->b(J)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_228

    nop

    nop

    nop

    nop

    :goto_269
    iget-object v1, v0, Lign;->f:Ligm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26a
    invoke-interface {v6}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v6

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

    :goto_26b
    if-nez v4, :cond_3b

    nop

    nop

    goto/32 :goto_270

    nop

    nop

    nop

    nop

    :cond_3b
    goto/32 :goto_167

    nop

    nop

    nop

    nop

    :goto_26c
    const/4 v3, 0x0

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

    nop

    :goto_26d
    invoke-static {v2, v6}, Lucd;->f(FF)F

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_204

    nop

    nop

    nop

    nop

    :goto_26e
    invoke-virtual {v6, v9, v2}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IF)Landroid/os/VibrationEffect$Composition;

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_26f
    goto/16 :goto_196

    nop

    nop

    nop

    nop

    nop

    :goto_270
    goto/32 :goto_57

    nop

    nop

    nop

    :goto_271
    move-wide v7, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_272
    div-int/lit8 v10, v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_273
    mul-double/2addr v3, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1bf

    nop

    nop

    nop

    nop

    nop

    :goto_274
    goto/16 :goto_253

    nop

    nop

    nop

    :goto_275
    goto/32 :goto_252

    nop

    nop

    nop

    nop

    :goto_276
    invoke-virtual {v9, v15, v3, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/32 :goto_ca

    nop

    nop

    nop

    :goto_277
    const/16 v9, 0x8

    nop

    nop

    nop

    goto/32 :goto_1ee

    nop

    nop

    nop

    :goto_278
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    nop

    nop

    nop

    goto/32 :goto_168

    nop

    nop

    :goto_279
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/32 :goto_149

    nop

    nop

    nop

    nop

    :goto_27a
    invoke-virtual/range {p0 .. p0}, Lign;->getWidth()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    :goto_27b
    iget v2, v1, Ligm;->C:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29c

    nop

    nop

    nop

    nop

    :goto_27c
    int-to-double v12, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_195

    nop

    nop

    nop

    :goto_27d
    add-double v5, v23, v5

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

    :goto_27e
    const/high16 v6, 0x43340000    # 180.0f

    nop

    goto/32 :goto_274

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27f
    iget v6, v1, Ligm;->o:I

    nop

    nop

    goto/32 :goto_139

    nop

    nop

    :goto_280
    iget-boolean v6, v1, Ligm;->D:Z

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_281
    iget-object v5, v1, Ligm;->F:Lkjj;

    nop

    goto/32 :goto_2bd

    nop

    nop

    nop

    nop

    :goto_282
    if-nez v6, :cond_3c

    nop

    nop

    goto/32 :goto_29a

    nop

    :cond_3c
    goto/32 :goto_1fe

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_283
    sub-float v2, v15, v1

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

    :goto_284
    iget-object v2, v2, Ligs;->b:Lnbh;

    nop

    nop

    goto/32 :goto_2c0

    nop

    nop

    :goto_285
    iget-object v2, v0, Lign;->A:Lmrs;

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_286
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    nop

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

    nop

    :goto_287
    iget-object v2, v2, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    :goto_288
    const/4 v2, 0x2

    nop

    goto/32 :goto_16a

    nop

    nop

    :goto_289
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    goto/32 :goto_1e3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28a
    if-eq v6, v15, :cond_3d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a2

    nop

    :cond_3d
    goto/32 :goto_153

    nop

    nop

    nop

    nop

    :goto_28b
    invoke-virtual {v1, v2}, Lhoh;->p(Lhmn;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e8

    nop

    nop

    nop

    nop

    nop

    :goto_28c
    iget-object v1, v0, Lign;->f:Ligm;

    nop

    nop

    nop

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28d
    iget-boolean v4, v8, Ligs;->c:Z

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

    nop

    :goto_28e
    iget-object v9, v1, Ligm;->b:Lptw;

    nop

    nop

    goto/32 :goto_1cb

    nop

    nop

    nop

    nop

    :goto_28f
    if-nez v8, :cond_3e

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :cond_3e
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_290
    goto/16 :goto_1c2

    nop

    nop

    nop

    :goto_291
    goto/32 :goto_1c1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_292
    new-instance v6, Lfgu;

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_293
    iget v6, v1, Ligm;->i:I

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

    :goto_294
    move/from16 v17, v5

    nop

    nop

    goto/32 :goto_1bc

    nop

    nop

    nop

    nop

    :goto_295
    div-int/lit8 v11, v1, 0x2

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_296
    invoke-static {v1, v2, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

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

    :goto_297
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_298
    iget v2, v0, Lign;->r:F

    nop

    nop

    nop

    goto/32 :goto_256

    nop

    nop

    nop

    nop

    :goto_299
    goto/16 :goto_230

    nop

    :goto_29a
    goto/32 :goto_22f

    nop

    nop

    nop

    nop

    nop

    :goto_29b
    div-int/2addr v1, v2

    nop

    goto/32 :goto_120

    nop

    nop

    :goto_29c
    goto/16 :goto_219

    nop

    nop

    :goto_29d
    goto/32 :goto_218

    nop

    nop

    nop

    nop

    nop

    :goto_29e
    goto/16 :goto_18c

    nop

    nop

    nop

    nop

    :goto_29f
    goto/32 :goto_18b

    nop

    nop

    nop

    :goto_2a0
    if-nez v1, :cond_3f

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

    nop

    :cond_3f
    goto/32 :goto_17d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a1
    iput v1, v0, Lign;->d:I

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_2a2
    invoke-virtual {v9}, Lkbf;->b()Loyd;

    move-result-object v9

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a3
    if-eqz v1, :cond_40

    nop

    nop

    nop

    goto/32 :goto_22d

    nop

    :cond_40
    goto/32 :goto_1f0

    nop

    nop

    nop

    :goto_2a4
    add-int/2addr v10, v2

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

    :goto_2a5
    double-to-float v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b9

    nop

    nop

    nop

    :goto_2a6
    iget-object v1, v0, Lign;->f:Ligm;

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

    :goto_2a7
    div-int/lit8 v1, v1, 0x4

    nop

    goto/32 :goto_2a1

    nop

    nop

    nop

    nop

    :goto_2a8
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    nop

    :goto_2a9
    move v3, v5

    nop

    nop

    goto/32 :goto_216

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2aa
    goto/16 :goto_175

    nop

    nop

    nop

    :goto_2ab
    goto/32 :goto_28d

    nop

    nop

    nop

    :goto_2ac
    iget-object v2, v0, Lign;->h:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_276

    nop

    nop

    nop

    :goto_2ad
    cmpl-float v6, v2, v5

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

    :goto_2ae
    goto/16 :goto_175

    nop

    nop

    nop

    :goto_2af
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b0
    add-float v3, v15, v1

    nop

    nop

    goto/32 :goto_154

    nop

    nop

    :goto_2b1
    move/from16 v3, v17

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_2b2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e0

    nop

    nop

    nop

    nop

    :goto_2b3
    if-eq v12, v1, :cond_41

    nop

    nop

    nop

    nop

    goto/32 :goto_138

    nop

    nop

    nop

    nop

    :cond_41
    goto/32 :goto_23e

    nop

    nop

    nop

    :goto_2b4
    invoke-virtual/range {p0 .. p0}, Lign;->getWidth()I

    move-result v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2b5
    invoke-virtual {v1, v2}, Ligm;->h(Z)V

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b6
    int-to-double v6, v3

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_2b7
    div-int/2addr v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1cd

    nop

    nop

    :goto_2b8
    check-cast v9, Lifn;

    nop

    nop

    goto/32 :goto_241

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b9
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1cf

    nop

    nop

    nop

    :goto_2ba
    goto/16 :goto_211

    nop

    :goto_2bb
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_2bc
    if-nez v2, :cond_42

    nop

    nop

    goto/32 :goto_17c

    nop

    nop

    :cond_42
    goto/32 :goto_cc

    nop

    nop

    nop

    :goto_2bd
    const v6, 0x3e4ccccd    # 0.2f

    nop

    nop

    nop

    goto/32 :goto_26d

    nop

    nop

    nop

    nop

    nop

    :goto_2be
    goto/16 :goto_2b

    nop

    nop

    :goto_2bf
    goto/32 :goto_287

    nop

    nop

    nop

    nop

    nop

    :goto_2c0
    sget-object v6, Lnbh;->a:Lnbh;

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    :goto_2c1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    :goto_2c2
    iget-object v1, v0, Lign;->f:Ligm;

    nop

    goto/32 :goto_87

    nop

    nop
.end method
