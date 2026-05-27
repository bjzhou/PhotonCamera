.class final Lbkq;
.super Ljava/lang/Object;


# static fields
.field static final a:Ldne;

.field static final b:Ldne;

.field private static final c:Landroid/view/animation/Interpolator;

.field private static d:Lxg;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lbkq;->c:Landroid/view/animation/Interpolator;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "t"

    aput-object v2, v0, v1

    const-string v2, "s"

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v2, "e"

    const/4 v4, 0x2

    aput-object v2, v0, v4

    const/4 v2, 0x3

    const-string v5, "o"

    aput-object v5, v0, v2

    const/4 v2, 0x4

    const-string v5, "i"

    aput-object v5, v0, v2

    const/4 v2, 0x5

    const-string v5, "h"

    aput-object v5, v0, v2

    const/4 v2, 0x6

    const-string v5, "to"

    aput-object v5, v0, v2

    const/4 v2, 0x7

    const-string v5, "ti"

    aput-object v5, v0, v2

    invoke-static {v0}, Ldne;->J([Ljava/lang/String;)Ldne;

    move-result-object v0

    sput-object v0, Lbkq;->a:Ldne;

    new-array v0, v4, [Ljava/lang/String;

    const-string v2, "x"

    aput-object v2, v0, v1

    const-string v1, "y"

    aput-object v1, v0, v3

    invoke-static {v0}, Ldne;->J([Ljava/lang/String;)Ldne;

    move-result-object v0

    sput-object v0, Lbkq;->b:Ldne;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lblh;Lbga;FLble;ZZ)Lblt;
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    if-eqz p4, :cond_17

    if-eqz p5, :cond_12

    invoke-virtual/range {p0 .. p0}, Lblh;->i()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lblh;->o()Z

    move-result v17

    if-eqz v17, :cond_d

    sget-object v6, Lbkq;->a:Ldne;

    invoke-virtual {v0, v6}, Lblh;->r(Ldne;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    move-object/from16 p5, v4

    move-object/from16 v18, v5

    invoke-virtual/range {p0 .. p0}, Lblh;->n()V

    goto :goto_0

    :pswitch_0
    invoke-static {v0, v1}, Lbkp;->c(Lblh;F)Landroid/graphics/PointF;

    move-result-object v5

    goto :goto_0

    :pswitch_1
    invoke-static {v0, v1}, Lbkp;->c(Lblh;F)Landroid/graphics/PointF;

    move-result-object v4

    goto :goto_0

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lblh;->b()I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lblh;->q()I

    move-result v6

    const/4 v3, 0x3

    if-ne v6, v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Lblh;->i()V

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lblh;->o()Z

    move-result v18

    if-eqz v18, :cond_5

    move-object/from16 v18, v5

    sget-object v5, Lbkq;->b:Ldne;

    invoke-virtual {v0, v5}, Lblh;->r(Ldne;)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    move-object v5, v4

    invoke-virtual/range {p0 .. p0}, Lblh;->n()V

    move-object/from16 v5, v18

    goto :goto_1

    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lblh;->q()I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_1

    invoke-virtual/range {p0 .. p0}, Lblh;->a()D

    move-result-wide v5

    double-to-float v14, v5

    move v6, v14

    move-object/from16 v5, v18

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lblh;->h()V

    invoke-virtual/range {p0 .. p0}, Lblh;->a()D

    move-result-wide v5

    double-to-float v6, v5

    invoke-virtual/range {p0 .. p0}, Lblh;->q()I

    move-result v5

    const/4 v14, 0x7

    if-ne v5, v14, :cond_2

    move v14, v6

    invoke-virtual/range {p0 .. p0}, Lblh;->a()D

    move-result-wide v5

    double-to-float v5, v5

    goto :goto_2

    :cond_2
    move v14, v6

    move v5, v14

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lblh;->j()V

    move v6, v14

    move v14, v5

    move-object/from16 v5, v18

    goto :goto_1

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lblh;->q()I

    move-result v3

    const/4 v5, 0x7

    if-ne v3, v5, :cond_3

    move-object v5, v4

    invoke-virtual/range {p0 .. p0}, Lblh;->a()D

    move-result-wide v3

    double-to-float v13, v3

    move-object v4, v5

    move v3, v13

    move-object/from16 v5, v18

    goto :goto_1

    :cond_3
    move-object v5, v4

    invoke-virtual/range {p0 .. p0}, Lblh;->h()V

    invoke-virtual/range {p0 .. p0}, Lblh;->a()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lblh;->q()I

    move-result v4

    const/4 v13, 0x7

    if-ne v4, v13, :cond_4

    move v13, v3

    invoke-virtual/range {p0 .. p0}, Lblh;->a()D

    move-result-wide v3

    double-to-float v3, v3

    goto :goto_3

    :cond_4
    move v13, v3

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lblh;->j()V

    move-object v4, v5

    move-object/from16 v5, v18

    move/from16 v19, v13

    move v13, v3

    move/from16 v3, v19

    goto :goto_1

    :cond_5
    move-object/from16 v18, v5

    move-object v5, v4

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v3, v6}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v13, v14}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual/range {p0 .. p0}, Lblh;->k()V

    move-object v14, v3

    move-object v13, v4

    move-object v4, v5

    move-object/from16 v5, v18

    goto/16 :goto_0

    :cond_6
    move-object/from16 v18, v5

    move-object v5, v4

    invoke-static {v0, v1}, Lbkp;->c(Lblh;F)Landroid/graphics/PointF;

    move-result-object v9

    move-object/from16 v5, v18

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v18, v5

    move-object v5, v4

    invoke-virtual/range {p0 .. p0}, Lblh;->q()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_c

    invoke-virtual/range {p0 .. p0}, Lblh;->i()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lblh;->o()Z

    move-result v12

    if-eqz v12, :cond_b

    sget-object v12, Lbkq;->b:Ldne;

    invoke-virtual {v0, v12}, Lblh;->r(Ldne;)I

    move-result v12

    packed-switch v12, :pswitch_data_2

    move-object/from16 p5, v5

    const/4 v12, 0x7

    invoke-virtual/range {p0 .. p0}, Lblh;->n()V

    goto :goto_4

    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lblh;->q()I

    move-result v4

    const/4 v10, 0x7

    if-ne v4, v10, :cond_7

    move-object/from16 p5, v5

    invoke-virtual/range {p0 .. p0}, Lblh;->a()D

    move-result-wide v4

    double-to-float v10, v4

    move-object/from16 v5, p5

    move v4, v10

    goto :goto_4

    :cond_7
    move-object/from16 p5, v5

    invoke-virtual/range {p0 .. p0}, Lblh;->h()V

    invoke-virtual/range {p0 .. p0}, Lblh;->a()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lblh;->q()I

    move-result v5

    const/4 v10, 0x7

    if-ne v5, v10, :cond_8

    move v10, v4

    invoke-virtual/range {p0 .. p0}, Lblh;->a()D

    move-result-wide v4

    double-to-float v4, v4

    goto :goto_5

    :cond_8
    move v10, v4

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lblh;->j()V

    move-object/from16 v5, p5

    move/from16 v19, v10

    move v10, v4

    move/from16 v4, v19

    goto :goto_4

    :pswitch_8
    move-object/from16 p5, v5

    invoke-virtual/range {p0 .. p0}, Lblh;->q()I

    move-result v3

    const/4 v5, 0x7

    if-ne v3, v5, :cond_9

    invoke-virtual/range {p0 .. p0}, Lblh;->a()D

    move-result-wide v5

    double-to-float v6, v5

    move-object/from16 v5, p5

    move v3, v6

    goto :goto_4

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lblh;->h()V

    invoke-virtual/range {p0 .. p0}, Lblh;->a()D

    move-result-wide v5

    double-to-float v3, v5

    invoke-virtual/range {p0 .. p0}, Lblh;->q()I

    move-result v5

    const/4 v12, 0x7

    if-ne v5, v12, :cond_a

    invoke-virtual/range {p0 .. p0}, Lblh;->a()D

    move-result-wide v5

    double-to-float v5, v5

    move v6, v5

    goto :goto_6

    :cond_a
    move v6, v3

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lblh;->j()V

    move-object/from16 v5, p5

    goto :goto_4

    :cond_b
    move-object/from16 p5, v5

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v12, Landroid/graphics/PointF;

    invoke-direct {v12, v6, v10}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual/range {p0 .. p0}, Lblh;->k()V

    move-object/from16 v4, p5

    move-object v10, v5

    move-object/from16 v5, v18

    goto/16 :goto_0

    :cond_c
    move-object/from16 p5, v5

    invoke-static {v0, v1}, Lbkp;->c(Lblh;F)Landroid/graphics/PointF;

    move-result-object v8

    move-object/from16 v4, p5

    move-object/from16 v5, v18

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 p5, v4

    move-object/from16 v18, v5

    invoke-interface {v2, v0, v1}, Lble;->a(Lblh;F)Ljava/lang/Object;

    move-result-object v16

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 p5, v4

    move-object/from16 v18, v5

    invoke-interface {v2, v0, v1}, Lble;->a(Lblh;F)Ljava/lang/Object;

    move-result-object v11

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 p5, v4

    move-object/from16 v18, v5

    invoke-virtual/range {p0 .. p0}, Lblh;->a()D

    move-result-wide v3

    double-to-float v15, v3

    move-object/from16 v4, p5

    goto/16 :goto_0

    :cond_d
    move-object/from16 p5, v4

    move-object/from16 v18, v5

    invoke-virtual/range {p0 .. p0}, Lblh;->k()V

    if-eqz v7, :cond_e

    sget-object v0, Lbkq;->c:Landroid/view/animation/Interpolator;

    move-object v12, v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    goto :goto_7

    :cond_e
    if-eqz v8, :cond_f

    if-eqz v9, :cond_f

    invoke-static {v8, v9}, Lbkq;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;

    move-result-object v0

    move-object/from16 v12, v16

    const/4 v13, 0x0

    const/4 v14, 0x0

    goto :goto_7

    :cond_f
    if-eqz v10, :cond_10

    if-eqz v12, :cond_10

    if-eqz v13, :cond_10

    if-eqz v14, :cond_10

    invoke-static {v10, v13}, Lbkq;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-static {v12, v14}, Lbkq;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;

    move-result-object v1

    move-object v13, v0

    move-object v14, v1

    move-object/from16 v12, v16

    const/4 v0, 0x0

    goto :goto_7

    :cond_10
    sget-object v0, Lbkq;->c:Landroid/view/animation/Interpolator;

    move-object/from16 v12, v16

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_7
    if-eqz v13, :cond_11

    new-instance v0, Lblt;

    move-object v9, v0

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v15}, Lblt;-><init>(Lbga;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;F)V

    goto :goto_8

    :cond_11
    new-instance v1, Lblt;

    const/4 v2, 0x0

    move-object v9, v1

    move-object/from16 v10, p1

    move-object v13, v0

    move v14, v15

    move-object v15, v2

    invoke-direct/range {v9 .. v15}, Lblt;-><init>(Lbga;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    move-object v0, v1

    :goto_8
    move-object/from16 v4, p5

    iput-object v4, v0, Lblt;->m:Landroid/graphics/PointF;

    move-object/from16 v5, v18

    iput-object v5, v0, Lblt;->n:Landroid/graphics/PointF;

    return-object v0

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lblh;->i()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lblh;->o()Z

    move-result v7

    if-eqz v7, :cond_14

    sget-object v7, Lbkq;->a:Ldne;

    invoke-virtual {v0, v7}, Lblh;->r(Ldne;)I

    move-result v7

    const/high16 v9, 0x3f800000    # 1.0f

    packed-switch v7, :pswitch_data_3

    const/4 v7, 0x1

    invoke-virtual/range {p0 .. p0}, Lblh;->n()V

    goto :goto_9

    :pswitch_c
    invoke-static {v0, v1}, Lbkp;->c(Lblh;F)Landroid/graphics/PointF;

    move-result-object v13

    goto :goto_9

    :pswitch_d
    invoke-static {v0, v1}, Lbkp;->c(Lblh;F)Landroid/graphics/PointF;

    move-result-object v5

    goto :goto_9

    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Lblh;->b()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_13

    const/4 v6, 0x1

    goto :goto_9

    :cond_13
    const/4 v6, 0x0

    goto :goto_9

    :pswitch_f
    const/4 v7, 0x1

    invoke-static {v0, v9}, Lbkp;->c(Lblh;F)Landroid/graphics/PointF;

    move-result-object v4

    goto :goto_9

    :pswitch_10
    const/4 v7, 0x1

    invoke-static {v0, v9}, Lbkp;->c(Lblh;F)Landroid/graphics/PointF;

    move-result-object v3

    goto :goto_9

    :pswitch_11
    const/4 v7, 0x1

    invoke-interface {v2, v0, v1}, Lble;->a(Lblh;F)Ljava/lang/Object;

    move-result-object v17

    goto :goto_9

    :pswitch_12
    const/4 v7, 0x1

    invoke-interface {v2, v0, v1}, Lble;->a(Lblh;F)Ljava/lang/Object;

    move-result-object v8

    goto :goto_9

    :pswitch_13
    const/4 v7, 0x1

    invoke-virtual/range {p0 .. p0}, Lblh;->a()D

    move-result-wide v9

    double-to-float v11, v9

    goto :goto_9

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lblh;->k()V

    if-eqz v6, :cond_15

    sget-object v0, Lbkq;->c:Landroid/view/animation/Interpolator;

    move-object v10, v0

    move-object v9, v8

    goto :goto_b

    :cond_15
    if-eqz v3, :cond_16

    if-eqz v4, :cond_16

    invoke-static {v3, v4}, Lbkq;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;

    move-result-object v0

    goto :goto_a

    :cond_16
    sget-object v0, Lbkq;->c:Landroid/view/animation/Interpolator;

    :goto_a
    move-object v10, v0

    move-object/from16 v9, v17

    :goto_b
    new-instance v0, Lblt;

    const/4 v12, 0x0

    move-object v6, v0

    move-object/from16 v7, p1

    invoke-direct/range {v6 .. v12}, Lblt;-><init>(Lbga;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    iput-object v5, v0, Lblt;->m:Landroid/graphics/PointF;

    iput-object v13, v0, Lblt;->n:Landroid/graphics/PointF;

    return-object v0

    :cond_17
    invoke-interface {v2, v0, v1}, Lble;->a(Lblh;F)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lblt;

    invoke-direct {v1, v0}, Lblt;-><init>(Ljava/lang/Object;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method

.method private static b(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;
    .locals 7

    iget v0, p0, Landroid/graphics/PointF;->x:F

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lbln;->a(FFF)F

    move-result v0

    iput v0, p0, Landroid/graphics/PointF;->x:F

    iget v0, p0, Landroid/graphics/PointF;->y:F

    const/high16 v3, -0x3d380000    # -100.0f

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-static {v0, v3, v4}, Lbln;->a(FFF)F

    move-result v0

    iput v0, p0, Landroid/graphics/PointF;->y:F

    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0, v1, v2}, Lbln;->a(FFF)F

    move-result v0

    iput v0, p1, Landroid/graphics/PointF;->x:F

    iget v0, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v3, v4}, Lbln;->a(FFF)F

    move-result v0

    iput v0, p1, Landroid/graphics/PointF;->y:F

    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    sget-object v5, Lbls;->a:Ljava/lang/ThreadLocal;

    const/4 v5, 0x0

    cmpl-float v6, v0, v5

    if-eqz v6, :cond_0

    const v6, 0x4403c000    # 527.0f

    mul-float v0, v0, v6

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    :goto_0
    cmpl-float v6, v1, v5

    if-eqz v6, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    :cond_1
    cmpl-float v1, v3, v5

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x1f

    int-to-float v0, v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    :cond_2
    cmpl-float v1, v4, v5

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x1f

    int-to-float v0, v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    :cond_3
    const-class v1, Lbkq;

    monitor-enter v1

    :try_start_0
    sget-object v3, Lbkq;->d:Lxg;

    if-nez v3, :cond_4

    new-instance v3, Lxg;

    invoke-direct {v3}, Lxg;-><init>()V

    sput-object v3, Lbkq;->d:Lxg;

    :cond_4
    sget-object v3, Lbkq;->d:Lxg;

    invoke-static {v3, v0}, Lxh;->a(Lxg;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-eqz v3, :cond_7

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    goto :goto_5

    :cond_7
    :goto_3
    :try_start_1
    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v3, p0, Landroid/graphics/PointF;->y:F

    iget v4, p1, Landroid/graphics/PointF;->x:F

    iget v6, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v3, v4, v6}, Lahd;->c(FFFF)Landroid/view/animation/PathInterpolator;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, p0

    goto :goto_4

    :catch_0
    move-exception v1

    const-string v3, "The Path cannot loop back on itself."

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p0, Landroid/graphics/PointF;->x:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v1, p0, v2, p1}, Lahd;->c(FFFF)Landroid/view/animation/PathInterpolator;

    move-result-object p0

    move-object v1, p0

    goto :goto_4

    :cond_8
    new-instance p0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object v1, p0

    :goto_4
    :try_start_2
    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const-class p1, Lbkq;

    monitor-enter p1
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    sget-object v2, Lbkq;->d:Lxg;

    invoke-virtual {v2, v0, p0}, Lxg;->d(ILjava/lang/Object;)V

    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p0

    :goto_5
    return-object v1

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_7

    :goto_6
    throw p0

    :goto_7
    goto :goto_6
.end method
