.class public final Lbks;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:I

.field private static final b:Ldne;

.field private static final c:Ldne;

.field private static final d:Ldne;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "nm"

    aput-object v2, v0, v1

    const-string v3, "ind"

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const-string v3, "refId"

    const/4 v5, 0x2

    aput-object v3, v0, v5

    const/4 v3, 0x3

    const-string v6, "ty"

    aput-object v6, v0, v3

    const/4 v3, 0x4

    const-string v6, "parent"

    aput-object v6, v0, v3

    const/4 v3, 0x5

    const-string v6, "sw"

    aput-object v6, v0, v3

    const/4 v3, 0x6

    const-string v6, "sh"

    aput-object v6, v0, v3

    const/4 v3, 0x7

    const-string v6, "sc"

    aput-object v6, v0, v3

    const/16 v3, 0x8

    const-string v6, "ks"

    aput-object v6, v0, v3

    const/16 v3, 0x9

    const-string v6, "tt"

    aput-object v6, v0, v3

    const/16 v3, 0xa

    const-string v6, "masksProperties"

    aput-object v6, v0, v3

    const/16 v3, 0xb

    const-string v6, "shapes"

    aput-object v6, v0, v3

    const/16 v3, 0xc

    const-string v6, "t"

    aput-object v6, v0, v3

    const/16 v3, 0xd

    const-string v6, "ef"

    aput-object v6, v0, v3

    const/16 v3, 0xe

    const-string v6, "sr"

    aput-object v6, v0, v3

    const/16 v3, 0xf

    const-string v6, "st"

    aput-object v6, v0, v3

    const/16 v3, 0x10

    const-string v6, "w"

    aput-object v6, v0, v3

    const/16 v3, 0x11

    const-string v6, "h"

    aput-object v6, v0, v3

    const/16 v3, 0x12

    const-string v6, "ip"

    aput-object v6, v0, v3

    const/16 v3, 0x13

    const-string v6, "op"

    aput-object v6, v0, v3

    const/16 v3, 0x14

    const-string v6, "tm"

    aput-object v6, v0, v3

    const/16 v3, 0x15

    const-string v6, "cl"

    aput-object v6, v0, v3

    const/16 v3, 0x16

    const-string v6, "hd"

    aput-object v6, v0, v3

    invoke-static {v0}, Ldne;->J([Ljava/lang/String;)Ldne;

    move-result-object v0

    sput-object v0, Lbks;->b:Ldne;

    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "d"

    aput-object v3, v0, v1

    const-string v3, "a"

    aput-object v3, v0, v4

    invoke-static {v0}, Ldne;->J([Ljava/lang/String;)Ldne;

    move-result-object v0

    sput-object v0, Lbks;->c:Ldne;

    new-array v0, v4, [Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ldne;->J([Ljava/lang/String;)Ldne;

    move-result-object v0

    sput-object v0, Lbks;->d:Ldne;

    return-void
.end method

.method public static a(Lblh;Lbga;)Lbjt;
    .locals 41

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lblh;->i()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    const-wide/16 v4, -0x1

    const-wide/16 v13, 0x0

    const-string v6, "UNSET"

    move-object/from16 v20, v1

    move-object/from16 v21, v20

    move-object/from16 v31, v21

    move-object/from16 v32, v31

    move-object/from16 v34, v32

    move-wide/from16 v18, v4

    move-wide v14, v13

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/high16 v27, 0x3f800000    # 1.0f

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v33, 0x1

    const/16 v35, 0x0

    move-object v13, v6

    move-object/from16 v6, v34

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lblh;->o()Z

    move-result v4

    if-eqz v4, :cond_11

    sget-object v4, Lbks;->b:Ldne;

    invoke-virtual {v0, v4}, Lblh;->r(Ldne;)I

    move-result v4

    const/4 v5, 0x6

    packed-switch v4, :pswitch_data_0

    invoke-virtual/range {p0 .. p0}, Lblh;->m()V

    invoke-virtual/range {p0 .. p0}, Lblh;->n()V

    goto/16 :goto_e

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lblh;->p()Z

    move-result v35

    goto :goto_0

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lblh;->g()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :pswitch_2
    invoke-static {v0, v7, v3}, Lbze;->P(Lblh;Lbga;Z)Lbip;

    move-result-object v34

    goto :goto_0

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lblh;->a()D

    move-result-wide v4

    double-to-float v4, v4

    move/from16 v25, v4

    goto :goto_0

    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lblh;->a()D

    move-result-wide v4

    double-to-float v4, v4

    move/from16 v16, v4

    goto :goto_0

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lblh;->b()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lbls;->a()F

    move-result v5

    mul-float v4, v4, v5

    float-to-int v4, v4

    move/from16 v30, v4

    goto :goto_0

    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lblh;->b()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lbls;->a()F

    move-result v5

    mul-float v4, v4, v5

    float-to-int v4, v4

    move/from16 v29, v4

    goto :goto_0

    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lblh;->a()D

    move-result-wide v4

    double-to-float v4, v4

    move/from16 v28, v4

    goto :goto_0

    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lblh;->a()D

    move-result-wide v4

    double-to-float v4, v4

    move/from16 v27, v4

    goto :goto_0

    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lblh;->h()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lblh;->o()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual/range {p0 .. p0}, Lblh;->i()V

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lblh;->o()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lbks;->d:Ldne;

    invoke-virtual {v0, v5}, Lblh;->r(Ldne;)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    invoke-virtual/range {p0 .. p0}, Lblh;->m()V

    invoke-virtual/range {p0 .. p0}, Lblh;->n()V

    goto :goto_2

    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lblh;->g()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lblh;->k()V

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lblh;->j()V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Lottie doesn\'t support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lbga;->d(Ljava/lang/String;)V

    goto/16 :goto_e

    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lblh;->i()V

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lblh;->o()Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lbks;->c:Ldne;

    invoke-virtual {v0, v4}, Lblh;->r(Ldne;)I

    move-result v4

    packed-switch v4, :pswitch_data_2

    invoke-virtual/range {p0 .. p0}, Lblh;->m()V

    invoke-virtual/range {p0 .. p0}, Lblh;->n()V

    const/4 v3, 0x0

    const/4 v9, 0x0

    goto :goto_3

    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lblh;->h()V

    invoke-virtual/range {p0 .. p0}, Lblh;->o()Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lbke;->a:Ldne;

    invoke-virtual/range {p0 .. p0}, Lblh;->i()V

    move-object v4, v1

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lblh;->o()Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lbke;->a:Ldne;

    invoke-virtual {v0, v5}, Lblh;->r(Ldne;)I

    move-result v5

    packed-switch v5, :pswitch_data_3

    invoke-virtual/range {p0 .. p0}, Lblh;->m()V

    invoke-virtual/range {p0 .. p0}, Lblh;->n()V

    const/4 v3, 0x0

    const/4 v9, 0x0

    goto :goto_4

    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lblh;->i()V

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    move-object v12, v5

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lblh;->o()Z

    move-result v32

    if-eqz v32, :cond_2

    sget-object v9, Lbke;->b:Ldne;

    invoke-virtual {v0, v9}, Lblh;->r(Ldne;)I

    move-result v9

    packed-switch v9, :pswitch_data_4

    invoke-virtual/range {p0 .. p0}, Lblh;->m()V

    invoke-virtual/range {p0 .. p0}, Lblh;->n()V

    const/4 v9, 0x0

    goto :goto_5

    :pswitch_e
    invoke-static/range {p0 .. p1}, Lbze;->O(Lblh;Lbga;)Lbip;

    move-result-object v12

    const/4 v9, 0x0

    goto :goto_5

    :pswitch_f
    invoke-static/range {p0 .. p1}, Lbze;->O(Lblh;Lbga;)Lbip;

    move-result-object v3

    const/4 v9, 0x0

    goto :goto_5

    :pswitch_10
    invoke-static/range {p0 .. p1}, Lbze;->N(Lblh;Lbga;)Lbio;

    move-result-object v5

    const/4 v9, 0x0

    goto :goto_5

    :pswitch_11
    invoke-static/range {p0 .. p1}, Lbze;->N(Lblh;Lbga;)Lbio;

    move-result-object v4

    const/4 v9, 0x0

    goto :goto_5

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lblh;->k()V

    new-instance v9, Lcvm;

    invoke-direct {v9, v4, v5, v3, v12}, Lcvm;-><init>(Lbio;Lbio;Lbip;Lbip;)V

    move-object v4, v9

    const/4 v3, 0x0

    const/4 v9, 0x0

    goto :goto_4

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lblh;->k()V

    if-nez v4, :cond_4

    new-instance v3, Lcvm;

    invoke-direct {v3, v1, v1, v1, v1}, Lcvm;-><init>(Lbio;Lbio;Lbip;Lbip;)V

    move-object/from16 v32, v3

    goto :goto_6

    :cond_4
    move-object/from16 v32, v4

    :cond_5
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lblh;->o()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Lblh;->n()V

    goto :goto_6

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lblh;->j()V

    const/4 v3, 0x0

    const/4 v9, 0x0

    goto/16 :goto_3

    :pswitch_12
    new-instance v3, Lbix;

    sget-object v4, Lbki;->a:Lbki;

    invoke-static {v0, v7, v4}, Lbze;->U(Lblh;Lbga;Lble;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lbix;-><init>(Ljava/util/List;)V

    move-object/from16 v31, v3

    const/4 v3, 0x0

    const/4 v9, 0x0

    goto/16 :goto_3

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lblh;->k()V

    const/4 v3, 0x0

    const/4 v9, 0x0

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Lblh;->h()V

    :cond_8
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lblh;->o()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static/range {p0 .. p1}, Lbkh;->a(Lblh;Lbga;)Lbjc;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lblh;->j()V

    goto/16 :goto_e

    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Lblh;->h()V

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lblh;->o()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual/range {p0 .. p0}, Lblh;->i()V

    move-object v4, v1

    move-object v5, v4

    const/4 v3, 0x0

    const/4 v9, 0x0

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lblh;->o()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-virtual/range {p0 .. p0}, Lblh;->f()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v37

    const/16 v38, 0x3

    const/16 v39, 0x2

    const/16 v40, -0x1

    sparse-switch v37, :sswitch_data_0

    :cond_a
    goto :goto_a

    :sswitch_0
    const-string v1, "mode"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    goto :goto_b

    :sswitch_1
    const-string v1, "inv"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x3

    goto :goto_b

    :sswitch_2
    const-string v1, "pt"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :sswitch_3
    const-string v1, "o"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x2

    goto :goto_b

    :goto_a
    const/4 v1, -0x1

    :goto_b
    packed-switch v1, :pswitch_data_5

    invoke-virtual/range {p0 .. p0}, Lblh;->n()V

    const/4 v1, 0x0

    goto :goto_9

    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Lblh;->p()Z

    move-result v9

    const/4 v1, 0x0

    goto :goto_9

    :pswitch_16
    invoke-static/range {p0 .. p1}, Lbze;->R(Lblh;Lbga;)Lbir;

    move-result-object v5

    const/4 v1, 0x0

    goto :goto_9

    :pswitch_17
    invoke-static/range {p0 .. p1}, Lbze;->T(Lblh;Lbga;)Lbiv;

    move-result-object v4

    const/4 v1, 0x0

    goto :goto_9

    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Lblh;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    :cond_b
    goto :goto_c

    :sswitch_4
    const-string v3, "s"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v40, 0x1

    goto :goto_c

    :sswitch_5
    const-string v3, "n"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v40, 0x2

    goto :goto_c

    :sswitch_6
    const-string v3, "i"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v40, 0x3

    goto :goto_c

    :sswitch_7
    const-string v3, "a"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v40, 0x0

    :goto_c
    packed-switch v40, :pswitch_data_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown mask mode "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Defaulting to Add."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbll;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v3, 0x1

    goto/16 :goto_9

    :pswitch_19
    const-string v1, "Animation contains intersect masks. They are not supported but will be treated like add masks."

    invoke-virtual {v7, v1}, Lbga;->d(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v3, 0x3

    goto/16 :goto_9

    :pswitch_1a
    const/4 v3, 0x4

    const/4 v1, 0x0

    goto/16 :goto_9

    :pswitch_1b
    const/4 v1, 0x0

    const/4 v3, 0x2

    goto/16 :goto_9

    :pswitch_1c
    const/4 v1, 0x0

    const/4 v3, 0x1

    goto/16 :goto_9

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lblh;->k()V

    new-instance v1, Ljgt;

    invoke-direct {v1, v3, v4, v5, v9}, Ljgt;-><init>(ILbiv;Lbir;Z)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    goto/16 :goto_8

    :cond_d
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v7, v1}, Lbga;->e(I)V

    invoke-virtual/range {p0 .. p0}, Lblh;->j()V

    const/4 v1, 0x0

    goto/16 :goto_e

    :pswitch_1d
    invoke-virtual/range {p0 .. p0}, Lblh;->b()I

    move-result v1

    invoke-static {}, Lbze;->V()[I

    if-lt v1, v5, :cond_e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported matte type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lbga;->d(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto/16 :goto_e

    :cond_e
    invoke-static {}, Lbze;->V()[I

    move-result-object v3

    aget v33, v3, v1

    add-int/lit8 v1, v33, -0x1

    if-eqz v33, :cond_f

    packed-switch v1, :pswitch_data_7

    goto :goto_d

    :pswitch_1e
    const-string v1, "Unsupported matte type: Luma Inverted"

    invoke-virtual {v7, v1}, Lbga;->d(Ljava/lang/String;)V

    goto :goto_d

    :pswitch_1f
    const-string v1, "Unsupported matte type: Luma"

    invoke-virtual {v7, v1}, Lbga;->d(Ljava/lang/String;)V

    :goto_d
    invoke-virtual {v7, v2}, Lbga;->e(I)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_f
    const/4 v1, 0x0

    throw v1

    :pswitch_20
    invoke-static/range {p0 .. p1}, Lbkf;->a(Lblh;Lbga;)Lbiy;

    move-result-object v21

    const/4 v3, 0x0

    const/4 v9, 0x0

    goto/16 :goto_0

    :pswitch_21
    invoke-virtual/range {p0 .. p0}, Lblh;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v24

    const/4 v3, 0x0

    const/4 v9, 0x0

    goto/16 :goto_0

    :pswitch_22
    invoke-virtual/range {p0 .. p0}, Lblh;->b()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lbls;->a()F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    move/from16 v23, v3

    const/4 v3, 0x0

    const/4 v9, 0x0

    goto/16 :goto_0

    :pswitch_23
    invoke-virtual/range {p0 .. p0}, Lblh;->b()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lbls;->a()F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    move/from16 v22, v3

    const/4 v3, 0x0

    const/4 v9, 0x0

    goto/16 :goto_0

    :pswitch_24
    invoke-virtual/range {p0 .. p0}, Lblh;->b()I

    move-result v3

    int-to-long v3, v3

    move-wide/from16 v18, v3

    const/4 v3, 0x0

    const/4 v9, 0x0

    goto/16 :goto_0

    :pswitch_25
    invoke-virtual/range {p0 .. p0}, Lblh;->b()I

    move-result v3

    const/4 v4, 0x7

    if-ge v3, v5, :cond_10

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    aget v17, v4, v3

    const/4 v3, 0x0

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_10
    const/4 v3, 0x0

    const/4 v9, 0x0

    const/16 v17, 0x7

    goto/16 :goto_0

    :pswitch_26
    invoke-virtual/range {p0 .. p0}, Lblh;->g()Ljava/lang/String;

    move-result-object v20

    const/4 v3, 0x0

    const/4 v9, 0x0

    goto/16 :goto_0

    :pswitch_27
    invoke-virtual/range {p0 .. p0}, Lblh;->b()I

    move-result v3

    int-to-long v14, v3

    const/4 v3, 0x0

    const/4 v9, 0x0

    goto/16 :goto_0

    :pswitch_28
    invoke-virtual/range {p0 .. p0}, Lblh;->g()Ljava/lang/String;

    move-result-object v13

    const/4 v3, 0x0

    const/4 v9, 0x0

    goto/16 :goto_0

    :goto_e
    const/4 v3, 0x0

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lblh;->k()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    cmpl-float v1, v16, v0

    if-lez v1, :cond_12

    new-instance v9, Lblt;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v26

    move-object v0, v9

    move-object/from16 v1, p1

    move-object v2, v11

    move-object v3, v11

    move-object/from16 v37, v10

    move-object v10, v6

    move-object/from16 v6, v26

    invoke-direct/range {v0 .. v6}, Lblt;-><init>(Lbga;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_12
    move-object/from16 v37, v10

    move-object v10, v6

    :goto_f
    const/4 v0, 0x0

    cmpl-float v0, v25, v0

    if-gtz v0, :cond_13

    iget v0, v7, Lbga;->i:F

    move/from16 v25, v0

    :cond_13
    new-instance v9, Lblt;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object v0, v9

    move-object/from16 v1, p1

    move-object v2, v3

    move/from16 v5, v16

    invoke-direct/range {v0 .. v6}, Lblt;-><init>(Lbga;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lblt;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object v0, v9

    move-object v2, v11

    move-object v3, v11

    move/from16 v5, v25

    invoke-direct/range {v0 .. v6}, Lblt;-><init>(Lbga;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, ".ai"

    invoke-virtual {v13, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "ai"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_14
    const-string v0, "Convert your Illustrator layers to shape layers."

    invoke-virtual {v7, v0}, Lbga;->d(Ljava/lang/String;)V

    :cond_15
    new-instance v36, Lbjt;

    move-object/from16 v0, v36

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object v1, v8

    move-object/from16 v2, p1

    move-object v3, v13

    move-wide v4, v14

    move/from16 v6, v17

    move-wide/from16 v7, v18

    move-object/from16 v9, v20

    move-object/from16 v10, v37

    move-object/from16 v11, v21

    move-object/from16 v21, v12

    move/from16 v12, v22

    move/from16 v13, v23

    move/from16 v14, v24

    move/from16 v15, v27

    move/from16 v16, v28

    move/from16 v17, v29

    move/from16 v18, v30

    move-object/from16 v19, v31

    move-object/from16 v20, v32

    move/from16 v22, v33

    move-object/from16 v23, v34

    move/from16 v24, v35

    invoke-direct/range {v0 .. v26}, Lbjt;-><init>(Ljava/util/List;Lbga;Ljava/lang/String;JIJLjava/lang/String;Ljava/util/List;Lbiy;IIIFFIILbix;Lcvm;Ljava/util/List;ILbip;Z[B[B)V

    return-object v36

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1d
        :pswitch_14
        :pswitch_13
        :pswitch_b
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
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

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_12
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x6f -> :sswitch_3
        0xe04 -> :sswitch_2
        0x197f1 -> :sswitch_1
        0x3339a3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x61 -> :sswitch_7
        0x69 -> :sswitch_6
        0x6e -> :sswitch_5
        0x73 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x3
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method
