.class public final Lbkf;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ldne;

.field private static final b:Ldne;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "a"

    aput-object v2, v0, v1

    const-string v2, "p"

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, 0x2

    const-string v4, "s"

    aput-object v4, v0, v2

    const/4 v2, 0x3

    const-string v4, "rz"

    aput-object v4, v0, v2

    const/4 v2, 0x4

    const-string v4, "r"

    aput-object v4, v0, v2

    const/4 v2, 0x5

    const-string v4, "o"

    aput-object v4, v0, v2

    const/4 v2, 0x6

    const-string v4, "so"

    aput-object v4, v0, v2

    const/4 v2, 0x7

    const-string v4, "eo"

    aput-object v4, v0, v2

    const/16 v2, 0x8

    const-string v4, "sk"

    aput-object v4, v0, v2

    const/16 v2, 0x9

    const-string v4, "sa"

    aput-object v4, v0, v2

    invoke-static {v0}, Ldne;->J([Ljava/lang/String;)Ldne;

    move-result-object v0

    sput-object v0, Lbkf;->a:Ldne;

    new-array v0, v3, [Ljava/lang/String;

    const-string v2, "k"

    aput-object v2, v0, v1

    invoke-static {v0}, Ldne;->J([Ljava/lang/String;)Ldne;

    move-result-object v0

    sput-object v0, Lbkf;->b:Ldne;

    return-void
.end method

.method public static a(Lblh;Lbga;)Lbiy;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p0 .. p0}, Lblh;->q()I

    move-result v9

    const/4 v11, 0x3

    if-ne v9, v11, :cond_0

    invoke-virtual/range {p0 .. p0}, Lblh;->i()V

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lblh;->o()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    sget-object v2, Lbkf;->a:Ldne;

    invoke-virtual {v0, v2}, Lblh;->r(Ldne;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move-object/from16 v27, v7

    invoke-virtual/range {p0 .. p0}, Lblh;->m()V

    invoke-virtual/range {p0 .. p0}, Lblh;->n()V

    const/4 v11, 0x3

    goto :goto_0

    :pswitch_0
    invoke-static {v0, v8, v6}, Lbze;->P(Lblh;Lbga;Z)Lbip;

    move-result-object v7

    goto :goto_0

    :pswitch_1
    invoke-static {v0, v8, v6}, Lbze;->P(Lblh;Lbga;Z)Lbip;

    move-result-object v15

    goto :goto_0

    :pswitch_2
    invoke-static {v0, v8, v6}, Lbze;->P(Lblh;Lbga;Z)Lbip;

    move-result-object v23

    goto :goto_0

    :pswitch_3
    invoke-static {v0, v8, v6}, Lbze;->P(Lblh;Lbga;Z)Lbip;

    move-result-object v22

    goto :goto_0

    :pswitch_4
    invoke-static/range {p0 .. p1}, Lbze;->R(Lblh;Lbga;)Lbir;

    move-result-object v21

    goto :goto_0

    :pswitch_5
    const-string v1, "Lottie doesn\'t support 3D layers."

    invoke-virtual {v8, v1}, Lbga;->d(Ljava/lang/String;)V

    :pswitch_6
    invoke-static {v0, v8, v6}, Lbze;->P(Lblh;Lbga;Z)Lbip;

    move-result-object v5

    iget-object v1, v5, Lbja;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v6, v5, Lbja;->a:Ljava/util/List;

    new-instance v4, Lblt;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget v1, v8, Lbga;->i:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object v1, v4

    move-object/from16 v2, p1

    move-object/from16 v3, v16

    move-object v10, v4

    move-object/from16 v4, v16

    move-object v11, v5

    move-object/from16 v5, v17

    move-object/from16 v26, v6

    move/from16 v6, v18

    move-object/from16 v27, v7

    move-object/from16 v7, v19

    invoke-direct/range {v1 .. v7}, Lblt;-><init>(Lbga;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    move-object/from16 v1, v26

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v11

    goto :goto_1

    :cond_1
    move-object v11, v5

    move-object/from16 v27, v7

    iget-object v1, v11, Lbja;->a:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lblt;

    iget-object v1, v1, Lblt;->b:Ljava/lang/Object;

    if-nez v1, :cond_2

    iget-object v10, v11, Lbja;->a:Ljava/util/List;

    new-instance v7, Lblt;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v17, 0x0

    iget v1, v8, Lbga;->i:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    move-object v1, v7

    move-object/from16 v2, p1

    move-object v3, v4

    move/from16 v6, v17

    move-object/from16 v17, v11

    move-object v11, v7

    move-object/from16 v7, v18

    invoke-direct/range {v1 .. v7}, Lblt;-><init>(Lbga;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    const/4 v2, 0x0

    invoke-interface {v10, v2, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move-object/from16 v17, v11

    :goto_1
    move-object/from16 v1, v17

    move-object/from16 v7, v27

    const/4 v11, 0x3

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v27, v7

    new-instance v14, Lbiu;

    sget-object v2, Lbkj;->f:Lbkj;

    invoke-static {v0, v8, v2}, Lbze;->U(Lblh;Lbga;Lble;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v14, v2}, Lbiu;-><init>(Ljava/util/List;)V

    const/4 v11, 0x3

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v27, v7

    invoke-static/range {p0 .. p1}, Lbkd;->b(Lblh;Lbga;)Lbiz;

    move-result-object v13

    const/4 v11, 0x3

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v27, v7

    invoke-virtual/range {p0 .. p0}, Lblh;->i()V

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lblh;->o()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lbkf;->b:Ldne;

    invoke-virtual {v0, v2}, Lblh;->r(Ldne;)I

    move-result v2

    packed-switch v2, :pswitch_data_1

    invoke-virtual/range {p0 .. p0}, Lblh;->m()V

    invoke-virtual/range {p0 .. p0}, Lblh;->n()V

    goto :goto_2

    :pswitch_a
    invoke-static/range {p0 .. p1}, Lbkd;->a(Lblh;Lbga;)Lbis;

    move-result-object v12

    goto :goto_2

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lblh;->k()V

    move-object/from16 v7, v27

    const/4 v11, 0x3

    goto/16 :goto_0

    :cond_4
    move-object/from16 v27, v7

    const/4 v2, 0x0

    const/4 v4, 0x3

    if-ne v9, v4, :cond_5

    invoke-virtual/range {p0 .. p0}, Lblh;->k()V

    :cond_5
    if-eqz v12, :cond_7

    invoke-virtual {v12}, Lbis;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v12, Lbis;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblt;

    iget-object v0, v0, Lblt;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v17, 0x0

    goto :goto_3

    :cond_6
    move-object/from16 v17, v12

    goto :goto_3

    :cond_7
    const/16 v17, 0x0

    :goto_3
    if-eqz v13, :cond_9

    instance-of v0, v13, Lbiw;

    if-nez v0, :cond_8

    invoke-interface {v13}, Lbiz;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v13}, Lbiz;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblt;

    iget-object v0, v0, Lblt;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v18, 0x0

    goto :goto_4

    :cond_8
    move-object/from16 v18, v13

    goto :goto_4

    :cond_9
    const/16 v18, 0x0

    :goto_4
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lbja;->c()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v1, Lbja;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblt;

    iget-object v0, v0, Lblt;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_b

    const/4 v1, 0x0

    goto :goto_5

    :cond_a
    const/4 v1, 0x0

    :cond_b
    :goto_5
    if-eqz v14, :cond_d

    invoke-virtual {v14}, Lbja;->c()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v14, Lbja;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblt;

    iget-object v0, v0, Lblt;->b:Ljava/lang/Object;

    check-cast v0, Lblu;

    iget v4, v0, Lblu;->a:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_c

    iget v0, v0, Lblu;->b:F

    cmpl-float v0, v0, v5

    if-nez v0, :cond_c

    const/16 v19, 0x0

    goto :goto_6

    :cond_c
    move-object/from16 v19, v14

    goto :goto_6

    :cond_d
    const/16 v19, 0x0

    :goto_6
    if-eqz v15, :cond_f

    invoke-virtual {v15}, Lbja;->c()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v15, Lbja;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblt;

    iget-object v0, v0, Lblt;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_e

    const/16 v24, 0x0

    goto :goto_7

    :cond_e
    move-object/from16 v24, v15

    goto :goto_7

    :cond_f
    const/16 v24, 0x0

    :goto_7
    move-object/from16 v7, v27

    if-eqz v7, :cond_11

    invoke-virtual {v7}, Lbja;->c()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v7, Lbja;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblt;

    iget-object v0, v0, Lblt;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_10

    goto :goto_8

    :cond_10
    move-object/from16 v25, v7

    goto :goto_9

    :cond_11
    :goto_8
    const/16 v25, 0x0

    :goto_9
    new-instance v0, Lbiy;

    move-object/from16 v16, v0

    move-object/from16 v20, v1

    invoke-direct/range {v16 .. v25}, Lbiy;-><init>(Lbis;Lbiz;Lbiu;Lbip;Lbir;Lbip;Lbip;Lbip;Lbip;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
    .end packed-switch
.end method
