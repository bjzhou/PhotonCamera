.class public final synthetic Liqi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Liqk;

.field public final synthetic b:Lprw;

.field public final synthetic c:Lpro;

.field public final synthetic d:Lcom/google/googlex/gcam/CyclopsParameters;

.field public final synthetic e:Lioy;

.field public final synthetic f:Llko;


# direct methods
.method public synthetic constructor <init>(Liqk;Lprw;Lpro;Lcom/google/googlex/gcam/CyclopsParameters;Llko;Lioy;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p4, p0, Liqi;->d:Lcom/google/googlex/gcam/CyclopsParameters;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Liqi;->a:Liqk;

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

    :goto_3
    iput-object p3, p0, Liqi;->c:Lpro;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Liqi;->b:Lprw;

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

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p6, p0, Liqi;->e:Lioy;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    iput-object p5, p0, Liqi;->f:Llko;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 19

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_1
    div-float/2addr v4, v5

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

    :goto_2
    check-cast v3, Lkmq;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    move-object/from16 v11, v16

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-interface {v0, v11}, Lscz;->s(Ljava/lang/String;)V

    invoke-virtual {v13, v14, v1}, Liqk;->a(Llko;Lioy;)V

    return-void

    nop

    nop

    nop

    :cond_0
    move-object/from16 v11, v16

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Linb;->a()I

    move-result v3

    nop

    iput v3, v0, Liqj;->c:I

    nop

    nop

    nop

    nop

    iget-object v0, v13, Liqk;->c:Likv;

    nop

    invoke-interface {v0, v10}, Likv;->q(Linb;)V

    iget-object v3, v13, Liqk;->c:Likv;

    nop

    sget-object v8, Lsxd;->h:Lsxd;

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    move-object v4, v10

    nop

    nop

    move-object v5, v15

    nop

    move-object v7, v2

    nop

    nop

    nop

    move-object/from16 v9, p1

    nop

    nop

    invoke-interface/range {v3 .. v9}, Likv;->C(Linb;Lpnx;ILpro;Lsxd;Lprw;)V

    iget-object v0, v13, Liqk;->c:Likv;

    nop

    new-instance v2, Lcom/google/googlex/gcam/BurstSpec;

    nop

    nop

    invoke-direct {v2}, Lcom/google/googlex/gcam/BurstSpec;-><init>()V

    invoke-interface {v0, v10, v2}, Likv;->x(Linb;Lcom/google/googlex/gcam/BurstSpec;)Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    iget-object v0, v13, Liqk;->c:Likv;

    nop

    invoke-interface {v0, v10}, Likv;->y(Linb;)Z

    move-result v0

    nop

    nop

    nop

    if-nez v0, :cond_1

    nop

    nop

    nop

    goto :goto_4

    nop

    nop

    nop

    nop

    :cond_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :goto_4
    sget-object v0, Liqk;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    const/16 v2, 0x727

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    const-string v2, "Unable to end secondary HDR+ shot."

    nop

    invoke-interface {v0, v2}, Lscz;->s(Ljava/lang/String;)V

    invoke-virtual {v13, v14, v1}, Liqk;->a(Llko;Lioy;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lpfi; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    :goto_6
    iget-object v2, v0, Liqi;->c:Lpro;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_7
    move-object/from16 v16, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_8
    invoke-direct {v4, v3}, Lkmp;-><init>(Lkmq;)V

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v1, v3, v0}, Lpck;-><init>(II)V

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_a
    cmp-long v6, v4, v8

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_b
    iget-object v6, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_c
    float-to-int v6, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_d
    invoke-static {v10, v11, v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->IntVector_size(JLcom/google/googlex/gcam/IntVector;)J

    move-result-wide v10

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_e
    iput v8, v6, Liqm;->e:I

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v13, v14, v1}, Liqk;->a(Llko;Lioy;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_10
    iget v5, v12, Liqm;->b:I

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    :goto_12
    iget-object v5, v4, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_9b

    nop

    nop

    :goto_16
    const v0, 0x14

    nop

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

    :goto_17
    invoke-direct {v9, v0, v1, v3, v4}, Llko;-><init>(Lkmq;Llxa;Lktq;Lktr;)V

    :try_start_1
    new-instance v0, Liqj;

    nop

    nop

    nop

    move-object v3, v0

    nop

    nop

    nop

    move-object v4, v13

    nop

    nop

    move-object v5, v14

    nop

    nop

    nop

    move-object v6, v2

    nop

    nop

    move-object/from16 v8, v18

    nop

    nop

    nop

    nop

    nop

    invoke-direct/range {v3 .. v8}, Liqj;-><init>(Liqk;Llko;Lpro;Lcom/google/googlex/gcam/CyclopsParameters;Lioy;)V

    iget-object v3, v13, Liqk;->f:Liof;

    nop

    nop

    nop

    invoke-interface {v1}, Llxa;->j()Llxm;

    move-result-object v1

    nop

    nop

    nop

    invoke-virtual {v3, v1}, Liof;->c(Llxm;)Linc;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Linc;->e(Lilp;)V

    iget-object v3, v13, Liqk;->c:Likv;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v13, Liqk;->b:Lpnv;

    nop

    move-object/from16 v15, v17

    nop

    nop

    nop

    invoke-interface {v1, v15}, Lpnv;->a(Lpnx;)Lpnu;

    move-result-object v1

    nop

    nop

    iget-object v4, v13, Liqk;->e:Lkxj;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v4}, Lijg;->a(Lpnu;Lkxj;)Lcom/google/googlex/gcam/PostviewParams;

    move-result-object v6

    nop

    nop

    nop

    sget-object v7, Lkvu;->b:Lkvu;

    nop

    nop
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lpfi; {:try_start_1 .. :try_end_1} :catch_1

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sub-int/2addr v10, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v5}, Liyl;->n(Landroid/graphics/Rect;)Liqo;

    move-result-object v5

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

    :goto_1b
    invoke-interface {v3}, Lpnu;->i()Landroid/graphics/Rect;

    move-result-object v3

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    sget-object v1, Liqo;->a:Liqo;

    nop

    :goto_1d
    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    move-object v12, v6

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-int/lit8 v10, v10, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v10

    nop

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

    nop

    :goto_21
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v11

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    :goto_22
    div-float/2addr v1, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_23
    check-cast v6, Liqm;

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_24
    iget v4, v1, Liqo;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_25
    move-object/from16 v17, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_26
    check-cast v2, Limo;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_27
    invoke-interface {v2}, Lpro;->b()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    :goto_28
    if-eqz v6, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v15, v0, Liqi;->b:Lprw;

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v4}, Lcom/google/googlex/gcam/PixelRect;->a()I

    move-result v6

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    :goto_2b
    move-object/from16 v18, v12

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_2c
    return-void

    nop

    nop

    :goto_2d
    goto/32 :goto_13

    nop

    nop

    :goto_2e
    div-int/lit8 v10, v10, 0x2

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_2f
    int-to-float v5, v5

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_30
    iget v14, v4, Landroid/graphics/Rect;->top:I

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v4}, Ltkb;->o()V

    :goto_32
    goto/32 :goto_63

    nop

    nop

    nop

    :goto_33
    int-to-float v6, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v4}, Lkmp;->a()Lkmq;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    :goto_35
    int-to-float v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget v1, v4, Landroid/graphics/Rect;->left:I

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    :goto_37
    invoke-static {v8, v9, v6, v10}, Lcom/google/googlex/gcam/GcamModuleJNI;->IntVector_get(JLcom/google/googlex/gcam/IntVector;I)I

    move-result v6

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const/4 v10, 0x0

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

    :goto_39
    if-eqz v8, :cond_4

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

    :cond_4
    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :goto_3a
    iget-wide v8, v6, Lcom/google/googlex/gcam/IntVector;->a:J

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget v9, v0, Landroid/graphics/Rect;->right:I

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    new-instance v0, Landroid/graphics/Rect;

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

    :goto_3d
    iput v9, v5, Liqm;->f:I

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v4}, Lcom/google/googlex/gcam/PixelRect;->d()I

    move-result v4

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    :goto_3f
    new-instance v4, Lkmp;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_40
    goto/16 :goto_58

    nop

    nop

    nop

    nop

    :catch_1
    move-exception v0

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

    :goto_41
    check-cast v4, Liqm;

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_d7

    nop

    nop

    :goto_44
    goto/32 :goto_97

    nop

    nop

    :goto_45
    move-object/from16 v11, v16

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_47
    goto/16 :goto_bc

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    :goto_49
    add-int/2addr v9, v11

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    :goto_4b
    move-object/from16 p1, v15

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    add-int/2addr v12, v10

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/32 :goto_eb

    nop

    nop

    nop

    :goto_4e
    add-int/2addr v6, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_4f
    sget-object v4, Liqm;->a:Liqm;

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    new-instance v1, Lpck;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_51
    new-instance v15, Landroid/graphics/Rect;

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

    :goto_52
    invoke-interface {v2, v8}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_53
    check-cast v8, [Landroid/hardware/camera2/params/Face;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v11

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    :goto_55
    iget-object v7, v0, Liqi;->d:Lcom/google/googlex/gcam/CyclopsParameters;

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

    :goto_56
    iget-object v1, v13, Liqk;->d:Liql;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_57
    move-object/from16 v1, v18

    nop

    nop

    :goto_58
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_59
    iget-object v5, v4, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    :goto_5a
    if-gtz v6, :cond_5

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-direct {v1, v4, v6, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {v4}, Ltkg;->m()Ltkb;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_5d
    if-lt v10, v9, :cond_6

    nop

    nop

    goto/32 :goto_bf

    nop

    :cond_6
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    goto :goto_58

    nop

    nop

    :catch_2
    move-exception v0

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_5f
    div-float/2addr v8, v6

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_60
    if-eqz v5, :cond_7

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-static {v1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v1

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_62
    invoke-direct {v0, v4, v5, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_63
    iget-object v6, v4, Ltkb;->b:Ltkg;

    nop

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

    :goto_64
    iput-object v5, v6, Liqm;->c:Liqo;

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iget v12, v4, Landroid/graphics/Rect;->right:I

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    :goto_66
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_64

    nop

    nop

    :goto_67
    add-int/2addr v4, v11

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    :goto_68
    if-lez v0, :cond_8

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_14

    nop

    :goto_69
    float-to-int v12, v12

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_6a
    int-to-float v9, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_6b
    move-object v4, v15

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_6c
    float-to-int v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_6d
    aget-object v9, v8, v10

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    iget-object v3, v14, Llko;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    :goto_6f
    iget-wide v10, v6, Lcom/google/googlex/gcam/IntVector;->a:J

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_70
    invoke-virtual {v2}, Lscs;->c()Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_71
    check-cast v5, Liqm;

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_72
    sget-object v2, Liqk;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_73
    move-object/from16 v11, v16

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_74
    invoke-interface {v4, v14}, Lpnv;->a(Lpnx;)Lpnu;

    move-result-object v3

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_75
    move-object v6, v8

    nop

    nop

    :goto_76
    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    const/16 v3, 0x728

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_78
    iget v6, v0, Landroid/graphics/Rect;->top:I

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

    :goto_79
    if-eqz v6, :cond_9

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_7a
    const/4 v1, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_7b
    const-string v1, "Unable to create secondary HDR+ shot."

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    :goto_7c
    div-float/2addr v10, v3

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_7d
    invoke-static {v4, v5, v7}, Lcom/google/googlex/gcam/GcamModuleJNI;->CyclopsParameters_trigger_roi_get(JLcom/google/googlex/gcam/CyclopsParameters;)J

    move-result-wide v4

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

    :goto_7e
    iget-object v6, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_7f
    iget-object v6, v4, Ltkb;->b:Ltkg;

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

    nop

    :goto_80
    cmp-long v6, v10, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_81
    int-to-float v3, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    :goto_82
    if-eq v11, v6, :cond_a

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_83
    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_84
    iget-object v3, v14, Llko;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    :goto_85
    invoke-virtual {v4, v1}, Lkmp;->j(Lpck;)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

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

    nop

    :goto_87
    int-to-float v4, v4

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_88
    iput-object v1, v4, Lkmp;->d:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_89
    iget-object v14, v0, Liqi;->f:Llko;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    move-object v5, v9

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    int-to-float v8, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_8d
    iput v5, v12, Liqm;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    div-float/2addr v14, v6

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    :goto_90
    invoke-direct {v6, v4, v5, v10}, Lcom/google/googlex/gcam/PixelRect;-><init>(JZ)V

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    iget-object v13, v0, Liqi;->a:Liqk;

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_92
    if-eqz v6, :cond_b

    nop

    goto/32 :goto_76

    nop

    nop

    :cond_b
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_93
    float-to-int v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    :goto_94
    if-eqz v1, :cond_c

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    const/4 v11, 0x1

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_96
    div-float/2addr v12, v6

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    :goto_97
    const/4 v10, 0x0

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    div-int/lit8 v11, v11, 0x2

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_99
    invoke-static {v3}, Lpnx;->b(Ljava/lang/String;)Lpnx;

    move-result-object v14

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_9b
    move-object/from16 v0, p0

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

    :goto_9c
    invoke-static {v11, v3, v2, v0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_f

    nop

    nop

    :goto_9d
    array-length v9, v8

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    or-int/lit8 v5, v5, 0x2

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

    nop

    :goto_9f
    div-float/2addr v6, v8

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    const v1, 0x1b

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

    :goto_a1
    sget-object v6, Landroid/hardware/camera2/CaptureResult;->CONTROL_ZOOM_RATIO:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    iget v5, v1, Liqo;->c:I

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v8

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_a4
    float-to-int v9, v9

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    int-to-float v8, v8

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    iget-wide v4, v7, Lcom/google/googlex/gcam/CyclopsParameters;->a:J

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-virtual {v4}, Ltkb;->o()V

    :goto_a8
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-virtual {v7}, Lcom/google/googlex/gcam/CyclopsParameters;->b()Lcom/google/googlex/gcam/IntVector;

    move-result-object v6

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_aa
    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    :goto_ab
    new-instance v4, Landroid/graphics/Rect;

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

    :goto_ac
    iget-object v1, v1, Liqn;->b:Liqo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_ad
    iput-object v5, v6, Liqm;->g:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :goto_ae
    move-object/from16 v1, v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    :goto_af
    iget-object v4, v13, Liqk;->b:Lpnv;

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_b0
    iget v1, v1, Liqo;->e:I

    nop

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

    :goto_b1
    const/high16 v8, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_b2
    move-object v12, v1

    nop

    nop

    :try_start_2
    invoke-interface/range {v3 .. v12}, Likv;->H(Lpnx;Llko;Lcom/google/googlex/gcam/PostviewParams;Lkvu;Lpro;IIZLioy;)Linb;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    if-nez v10, :cond_0

    nop

    nop

    nop

    sget-object v0, Liqk;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    const/16 v2, 0x729

    nop

    nop

    invoke-interface {v0, v2}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    check-cast v0, Lscz;

    nop

    nop
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lpfi; {:try_start_2 .. :try_end_2} :catch_2

    goto/32 :goto_3

    nop

    nop

    :goto_b3
    invoke-virtual {v4}, Ltkb;->i()Ltkg;

    move-result-object v4

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    invoke-interface {v1, v4}, Liql;->a(Liqm;)Liqn;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_b5
    iget v5, v6, Liqm;->b:I

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_b7
    invoke-virtual {v4}, Ltkb;->o()V

    :goto_b8
    goto/32 :goto_59

    nop

    nop

    :goto_b9
    div-float/2addr v9, v11

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    const/4 v4, 0x0

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_bb
    move-object v4, v6

    nop

    nop

    nop

    nop

    :goto_bc
    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    :goto_bd
    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    :goto_be
    goto :goto_cc

    nop

    nop

    :goto_bf
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    iget v4, v0, Landroid/graphics/Rect;->left:I

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

    :goto_c1
    invoke-virtual {v4}, Ltkb;->o()V

    :goto_c2
    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    const/4 v10, -0x1

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_c4
    if-eqz v5, :cond_d

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_c5
    invoke-virtual {v4}, Lcom/google/googlex/gcam/PixelRect;->b()I

    move-result v10

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_c6
    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v6

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_c7
    goto :goto_bf

    nop

    :goto_c8
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    iget-object v6, v4, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_ca
    int-to-float v12, v12

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

    :goto_cb
    new-array v8, v10, [Landroid/hardware/camera2/params/Face;

    nop

    nop

    :goto_cc
    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_cd
    move-object v8, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    :goto_ce
    invoke-direct {v5, v6, v11, v10, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_cf
    iget-object v1, v14, Llko;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_d0
    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v11

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_d1
    move-object v6, v5

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    const-wide/16 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d3
    new-instance v1, Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    :goto_d4
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    div-float/2addr v4, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    const/4 v6, -0x2

    nop

    nop

    nop

    nop

    :goto_d7
    goto/32 :goto_ec

    nop

    nop

    :goto_d8
    or-int/lit8 v5, v5, 0x1

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    new-instance v9, Llko;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_da
    sub-int/2addr v11, v8

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_db
    iget-object v6, v4, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v8

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_dd
    check-cast v6, Liqm;

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    :goto_de
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_df
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    div-float/2addr v9, v6

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_e1
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

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

    nop

    nop

    :goto_e2
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_e3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    check-cast v6, Liqm;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    invoke-interface {v2, v6}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    :goto_e6
    invoke-virtual {v4}, Lcom/google/googlex/gcam/PixelRect;->c()I

    move-result v11

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    :goto_e7
    iget v6, v1, Liqo;->d:I

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    int-to-float v10, v12

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_e9
    if-eqz v6, :cond_e

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

    :cond_e
    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    :goto_ea
    float-to-int v8, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    :goto_eb
    invoke-virtual {v7}, Lcom/google/googlex/gcam/CyclopsParameters;->b()Lcom/google/googlex/gcam/IntVector;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_ec
    sget-object v8, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_ed
    move-object/from16 v2, p1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_ee
    int-to-float v14, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_ef
    iget-object v4, v14, Llko;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_f0
    new-instance v5, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_f1
    move v9, v1

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_f2
    iput v5, v6, Liqm;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    :goto_f3
    const/4 v10, 0x0

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    if-eqz v6, :cond_f

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    check-cast v12, Liqm;

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

    :goto_f6
    check-cast v6, Ljava/lang/Float;

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

    :goto_f7
    invoke-virtual {v4}, Ltkb;->o()V

    :goto_f8
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_f9
    iget-object v12, v0, Liqi;->e:Lioy;

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_fa
    new-instance v6, Lcom/google/googlex/gcam/PixelRect;

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_fb
    int-to-float v11, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    :goto_fc
    invoke-direct {v15, v1, v6, v12, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_fd
    int-to-float v9, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    :goto_fe
    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    iput-object v5, v12, Liqm;->d:Liqo;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_100
    invoke-static {v15}, Liyl;->n(Landroid/graphics/Rect;)Liqo;

    move-result-object v5

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
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method
