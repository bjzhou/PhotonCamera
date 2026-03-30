.class public final synthetic Lknx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lssw;


# instance fields
.field public final synthetic a:Lkob;

.field public final synthetic b:Lkbj;

.field public final synthetic c:Lsui;


# direct methods
.method public synthetic constructor <init>(Lkob;Lkbj;Lsui;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object p2, p0, Lknx;->b:Lkbj;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iput-object p1, p0, Lknx;->a:Lkob;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p3, p0, Lknx;->c:Lsui;

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

    :goto_4
    return-void

    nop
.end method


# virtual methods
.method public final a()Lsui;
    .locals 30

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v5, v3, Lkoa;->a:Lkbh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v2, v0, Lknx;->b:Lkbj;

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v3, v3, Lkoa;->b:Lkml;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_4
    const/16 v3, 0xbf5

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, v0, Lkob;->p:Lkoa;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v1, v0, Lknx;->c:Lsui;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    iget-object v3, v3, Lpnx;->a:Ljava/lang/String;

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

    nop

    nop

    :goto_8
    goto/32 :goto_37

    nop

    nop

    :goto_9
    goto/32 :goto_1e

    nop

    nop

    :goto_a
    iget-object v3, v3, Lkbb;->a:Lpnx;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_20

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, v0, Lkoa;->c:Lsui;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    const-string v2, "Cancelling viewfinder due to createTransaction exception"

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

    :goto_e
    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :catch_1
    :goto_10
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_11
    const-string v3, ""

    nop

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

    :goto_12
    iget-object v3, v2, Lkbj;->a:Lkbb;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz v3, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_14
    invoke-interface {v1, v2}, Lsui;->cancel(Z)Z

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_9

    nop

    :goto_16
    iget-object v0, v0, Lknx;->a:Lkob;

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

    :goto_17
    iget-object v4, v3, Lkoa;->d:Ljava/util/concurrent/Future;

    nop

    nop

    :try_start_0
    invoke-interface {v4}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v5

    nop

    if-eqz v5, :cond_e

    nop

    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    check-cast v4, Lnjd;

    nop

    nop

    nop

    nop

    nop

    iget-boolean v4, v4, Lnjd;->e:Z

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto/32 :goto_27

    nop

    nop

    :goto_18
    iget-object v0, v0, Lkob;->p:Lkoa;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_19
    if-lez v0, :cond_1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    :goto_1a
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v1, 0x16

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

    :goto_1c
    if-nez v3, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_2
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {v3}, Lkml;->f()Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1e
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    move-object/from16 v24, v1

    nop

    nop

    :goto_20
    goto/32 :goto_31

    nop

    nop

    :goto_21
    iget-object v4, v2, Lkbj;->b:Lkbh;

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

    :goto_22
    move-object/from16 v24, v1

    nop

    :try_start_1
    iget-object v1, v0, Lkob;->k:Lrss;

    nop

    nop

    move-object/from16 v25, v2

    nop

    nop

    iget-object v2, v0, Lkob;->n:Lrss;

    nop

    nop

    nop

    move-object/from16 v26, v4

    nop

    nop

    nop

    iget-object v4, v0, Lkob;->r:Lfzs;

    nop

    nop

    nop

    nop

    move-object/from16 v18, v4

    nop

    nop

    nop

    nop

    iget-object v4, v0, Lkob;->o:Lgae;

    nop

    nop

    nop

    nop

    move-object/from16 v19, v4

    nop

    nop

    nop

    iget-object v4, v0, Lkob;->b:Lsui;

    nop

    nop

    move-object/from16 v20, v4

    nop

    iget-object v4, v0, Lkob;->s:Lknu;

    nop

    nop

    nop

    move-object/from16 v21, v4

    nop

    iget-object v4, v0, Lkob;->j:Lprz;

    nop

    nop

    nop

    move-object/from16 v22, v4

    nop

    nop

    iget-object v4, v0, Lkob;->t:Ljqb;

    nop

    nop

    nop

    nop

    move-object/from16 v16, v6

    nop

    nop

    nop

    nop

    nop

    move-object v6, v12

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v17, v8

    nop

    nop

    nop

    nop

    move-object v8, v5

    nop

    move-object/from16 v27, v5

    nop

    nop

    nop

    nop

    nop

    move-object v5, v12

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v12, v17

    nop

    nop

    nop

    move-object/from16 v28, v13

    nop

    nop

    move-object/from16 v13, v16

    nop

    nop

    nop

    nop

    move-object/from16 v29, v5

    nop

    nop

    nop

    move-object v5, v14

    nop

    nop

    nop

    nop

    nop

    move-object v14, v15

    nop

    nop

    nop

    move-object v15, v3

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v16, v1

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v17, v2

    nop

    nop

    move-object/from16 v23, v4

    nop

    nop

    nop

    invoke-direct/range {v6 .. v23}, Lkpg;-><init>(Lkbb;Lsui;Ljah;Landroid/util/DisplayMetrics;Lluy;Lqwh;Lnne;Loyd;Lhco;Lrss;Lrss;Lfzs;Lgae;Lsui;Lknu;Lprz;Ljqb;)V

    sget-object v1, Lmkj;->b:Lmkj;

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v1}, Lmkp;->h(Ljava/lang/Enum;)V

    iget-object v1, v5, Lcom/google/android/apps/camera/stats/timing/OneCameraTiming;->a:Lpdf;

    nop

    nop

    const-string v2, "OneCamera#create"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v1, v0, Lkob;->w:Lrkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lrkg;->d()Lpci;

    move-result-object v1

    nop

    nop

    nop

    nop

    iget-object v2, v0, Lkob;->y:Lhwy;

    nop

    nop

    nop

    nop

    iget-object v3, v0, Lkob;->u:Lpoi;

    nop

    nop

    nop

    iget-object v4, v0, Lkob;->v:Lhoh;

    nop

    nop

    nop

    nop

    move-object/from16 v6, v29

    nop

    nop

    iget-object v7, v6, Lkpg;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    const-string v8, "OneCameraDependencies#new"

    nop

    iget-object v9, v2, Lhwy;->d:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-interface {v9, v8}, Lpdf;->f(Ljava/lang/String;)V

    new-instance v8, Lgvg;

    nop

    nop

    move-object/from16 v9, v26

    nop

    nop

    nop

    nop

    invoke-direct {v8, v9}, Lgvg;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    invoke-virtual {v9}, Lpoh;->j()Lpnx;

    move-result-object v10

    nop

    iget-object v11, v2, Lhwy;->c:Ljava/lang/Object;

    nop

    check-cast v11, Lknu;

    nop

    invoke-static {v10, v3, v11, v4}, Llfp;->o(Lpnx;Lpnv;Lknu;Lhoh;)Lkog;

    move-result-object v3

    nop

    iget-object v4, v2, Lhwy;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Lpoh;->l()Lpog;

    move-result-object v10

    nop

    nop

    nop

    nop

    check-cast v4, Lkcd;

    nop

    nop

    nop

    invoke-virtual {v4, v10}, Lkcd;->d(Lpog;)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4}, Lkav;->H(I)Lpby;

    move-result-object v4

    nop

    iget-object v10, v2, Lhwy;->a:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v10, Ljqb;

    nop

    invoke-virtual {v10}, Ljqb;->c()Z

    move-result v10

    nop

    nop

    nop

    nop

    if-eqz v10, :cond_4

    nop

    nop

    nop

    const/4 v11, 0x1

    nop

    nop

    nop

    nop

    sget v10, Lcom/a;->aa:I

    nop

    nop

    nop

    nop

    if-nez v10, :cond_3

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v9, v26

    nop

    nop

    nop

    nop

    invoke-static {v9, v11}, Lcom/a;->zd(Lpnu;Z)Ljava/util/List;

    move-result-object v9

    nop

    nop

    goto :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_3
    const/16 v10, 0x25

    nop

    nop

    move-object/from16 v9, v26

    nop

    nop

    nop

    nop

    invoke-static {v9, v10, v11}, Lkxh;->e(Lpnu;IZ)Ljava/util/List;

    move-result-object v9

    nop

    nop

    nop

    :goto_23
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    nop

    nop

    nop

    if-nez v10, :cond_4

    nop

    invoke-static {v9}, Lolx;->aI(Ljava/util/List;)Lpck;

    move-result-object v13

    nop

    nop

    nop

    goto :goto_24

    nop

    nop

    :cond_4
    move-object/from16 v13, v28

    nop

    :goto_24
    iget v9, v13, Lpck;->a:I

    nop

    nop

    nop

    iget v10, v13, Lpck;->b:I

    nop

    nop

    nop

    nop

    nop

    invoke-static {v9, v10}, Lpby;->k(II)Lpby;

    move-result-object v9

    nop

    nop

    nop

    nop

    invoke-virtual {v9, v4}, Lpby;->m(Lpby;)Z

    move-result v9

    nop

    nop

    nop

    nop

    if-nez v9, :cond_5

    nop

    nop

    invoke-virtual {v4, v13}, Lpby;->e(Lpck;)Landroid/graphics/Rect;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4}, Lpck;->f(Landroid/graphics/Rect;)Lpck;

    move-result-object v13

    nop

    :cond_5
    move-object/from16 v4, v26

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4}, Lcom/a;->zd_fp(Lpnu;)I

    move-result v4

    nop

    invoke-static {v3, v13, v4}, Lkxj;->a(Lpnu;Lpck;I)Lkxj;

    move-result-object v3

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Lkxi; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    new-instance v4, Lgvg;

    nop

    nop

    nop

    nop

    invoke-direct {v4, v3}, Lgvg;-><init>(Ljava/lang/Object;)V

    iget-object v3, v2, Lhwy;->b:Ljava/lang/Object;

    nop

    new-instance v9, Ljiu;

    nop

    nop

    nop

    check-cast v3, Ljip;

    nop

    nop

    nop

    nop

    iget-object v3, v3, Ljip;->a:Ljip;

    nop

    nop

    nop

    invoke-direct {v9, v3, v8, v6, v4}, Ljiu;-><init>(Ljip;Lgvg;Lkpg;Lgvg;)V

    iget-object v3, v2, Lhwy;->d:Ljava/lang/Object;

    nop

    nop

    invoke-interface {v3}, Lpdf;->g()V

    invoke-static {}, Lcom/a;->d_start()V

    sget-object v3, Lnne;->g:Lnne;

    nop

    if-ne v7, v3, :cond_6

    nop

    nop

    nop

    new-instance v2, Ljjd;

    nop

    nop

    iget-object v3, v9, Ljiu;->a:Ljip;

    nop

    iget-object v4, v9, Ljiu;->b:Ljiu;

    nop

    invoke-direct {v2, v3, v4}, Ljjd;-><init>(Ljip;Ljiu;)V

    goto/16 :goto_25

    nop

    nop

    nop

    nop

    :cond_6
    sget-object v3, Lnne;->k:Lnne;

    nop

    if-ne v7, v3, :cond_8

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lhwy;->a:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v2, Ljqb;

    nop

    invoke-virtual {v2}, Ljqb;->c()Z

    move-result v2

    nop

    nop

    nop

    if-eqz v2, :cond_7

    nop

    new-instance v2, Ljix;

    nop

    nop

    iget-object v3, v9, Ljiu;->a:Ljip;

    nop

    iget-object v4, v9, Ljiu;->b:Ljiu;

    nop

    nop

    invoke-direct {v2, v3, v4}, Ljix;-><init>(Ljip;Ljiu;)V

    goto/16 :goto_25

    nop

    nop

    :cond_7
    new-instance v2, Ljjb;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v9, Ljiu;->a:Ljip;

    nop

    iget-object v4, v9, Ljiu;->b:Ljiu;

    nop

    invoke-direct {v2, v3, v4}, Ljjb;-><init>(Ljip;Ljiu;)V

    goto/16 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_8
    move-object v3, v7

    nop

    nop

    nop

    check-cast v3, Lnne;

    nop

    invoke-static {v3}, Ljub;->a(Lnne;)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_9

    nop

    nop

    new-instance v2, Ljja;

    nop

    nop

    nop

    nop

    iget-object v3, v9, Ljiu;->a:Ljip;

    nop

    nop

    iget-object v4, v9, Ljiu;->b:Ljiu;

    nop

    nop

    nop

    invoke-direct {v2, v3, v4}, Ljja;-><init>(Ljip;Ljiu;)V

    goto/16 :goto_25

    nop

    nop

    :cond_9
    sget-object v3, Lnne;->h:Lnne;

    nop

    nop

    if-ne v7, v3, :cond_a

    nop

    nop

    nop

    new-instance v2, Ljiz;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v9, Ljiu;->a:Ljip;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v9, Ljiu;->b:Ljiu;

    nop

    nop

    nop

    nop

    invoke-direct {v2, v3, v4}, Ljiz;-><init>(Ljip;Ljiu;)V

    goto/16 :goto_25

    nop

    :cond_a
    sget-object v3, Lnne;->b:Lnne;

    nop

    nop

    nop

    nop

    nop

    if-ne v7, v3, :cond_b

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lhwy;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v2, Ljqb;

    nop

    nop

    nop

    invoke-virtual {v2}, Ljqb;->c()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_b

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Ljiy;

    nop

    nop

    iget-object v3, v9, Ljiu;->a:Ljip;

    nop

    nop

    nop

    nop

    iget-object v4, v9, Ljiu;->b:Ljiu;

    nop

    invoke-direct {v2, v3, v4}, Ljiy;-><init>(Ljip;Ljiu;)V

    goto :goto_25

    nop

    nop

    nop

    nop

    :cond_b
    sget-object v2, Lnne;->s:Lnne;

    nop

    nop

    nop

    nop

    if-ne v7, v2, :cond_c

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Ljiv;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v9, Ljiu;->a:Ljip;

    nop

    nop

    nop

    nop

    iget-object v4, v9, Ljiu;->b:Ljiu;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, v3, v4}, Ljiv;-><init>(Ljip;Ljiu;)V

    goto :goto_25

    nop

    nop

    :cond_c
    sget-object v2, Lnne;->r:Lnne;

    nop

    if-ne v7, v2, :cond_d

    nop

    nop

    nop

    new-instance v2, Ljiw;

    nop

    nop

    iget-object v3, v9, Ljiu;->a:Ljip;

    nop

    nop

    iget-object v4, v9, Ljiu;->b:Ljiu;

    nop

    nop

    nop

    nop

    invoke-direct {v2, v3, v4}, Ljiw;-><init>(Ljip;Ljiu;)V

    goto :goto_25

    nop

    nop

    :cond_d
    new-instance v2, Ljjc;

    nop

    iget-object v3, v9, Ljiu;->a:Ljip;

    nop

    nop

    iget-object v4, v9, Ljiu;->b:Ljiu;

    nop

    invoke-direct {v2, v3, v4}, Ljjc;-><init>(Ljip;Ljiu;)V

    :goto_25
    invoke-interface {v2}, Lkmm;->a()Lkml;

    move-result-object v2

    nop

    sget-object v3, Lmkj;->c:Lmkj;

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v3}, Lmkp;->h(Ljava/lang/Enum;)V

    iget-object v3, v5, Lcom/google/android/apps/camera/stats/timing/OneCameraTiming;->a:Lpdf;

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lpdf;->g()V

    invoke-interface {v2}, Lkml;->g()Lows;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v1}, Lows;->d(Lpci;)V

    invoke-interface {v2}, Lkml;->g()Lows;

    move-result-object v3

    nop

    new-instance v4, Ljso;

    nop

    nop

    const/16 v6, 0x10

    nop

    nop

    move-object/from16 v7, v27

    nop

    invoke-direct {v4, v7, v6}, Ljso;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Lows;->d(Lpci;)V

    sget-object v3, Lmkj;->d:Lmkj;

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v3}, Lmkp;->h(Ljava/lang/Enum;)V

    iget-object v3, v5, Lcom/google/android/apps/camera/stats/timing/OneCameraTiming;->a:Lpdf;

    nop

    const-string v4, "OneCamera#start"

    nop

    invoke-interface {v3, v4}, Lpdf;->a(Ljava/lang/String;)Lpdh;

    move-result-object v3

    nop

    nop

    nop

    nop

    iput-object v3, v5, Lcom/google/android/apps/camera/stats/timing/OneCameraTiming;->b:Lpdh;

    nop

    invoke-interface {v2}, Lkml;->d()Lsui;

    move-result-object v3

    nop

    nop

    const-class v4, Ljava/lang/Throwable;

    nop

    nop

    nop

    nop

    nop

    new-instance v6, Lkny;

    nop

    nop

    const/4 v8, 0x2

    nop

    nop

    nop

    nop

    invoke-direct {v6, v2, v1, v8}, Lkny;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    sget-object v8, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3, v4, v6, v8}, Lsrv;->j(Lsui;Ljava/lang/Class;Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v3

    nop

    new-instance v4, Lknz;

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    invoke-direct {v4, v1, v5, v2, v6}, Lknz;-><init>(Lpci;Lcom/google/android/apps/camera/stats/timing/OneCameraTiming;Lkml;I)V

    iget-object v1, v0, Lkob;->d:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    invoke-static {v3, v4, v1}, Lsso;->i(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v1

    nop

    nop

    nop

    nop

    move-object/from16 v3, v25

    nop

    nop

    iget-object v3, v3, Lkbj;->b:Lkbh;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lkoa;

    nop

    nop

    nop

    nop

    invoke-direct {v4, v3, v2, v1, v7}, Lkoa;-><init>(Lkbh;Lkml;Lsui;Ljava/util/concurrent/Future;)V

    iput-object v4, v0, Lkob;->p:Lkoa;

    nop

    nop

    nop

    nop
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v0, v0, Lkoa;->c:Lsui;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v4, :cond_e

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_29
    sput-object v3, Lcom/CameraLensesScan;->sActiveCamIDValue:Ljava/lang/String;

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

    nop

    :goto_2a
    invoke-static {v2, v3, v1, v0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_2b
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    move-object/from16 v1, v24

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {v0}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

    move-result-object v0

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-nez v4, :cond_f

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_f
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_30
    const v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    sget-object v1, Lkob;->a:Lsdb;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0, v3}, Lkob;->e(Ljava/lang/String;)V

    :try_start_4
    iget-object v4, v0, Lkob;->i:Ljah;

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    iput-object v5, v4, Ljah;->d:Lnrr;

    nop

    nop

    nop

    iget-object v7, v2, Lkbj;->a:Lkbb;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v0, Lkob;->u:Lpoi;

    nop

    nop

    nop

    nop

    iget-object v5, v7, Lkbb;->a:Lpnx;

    nop

    invoke-virtual {v4, v5}, Lpoi;->f(Lpnx;)Lkog;

    move-result-object v4

    nop

    invoke-interface {v4}, Lpnu;->n()V

    new-instance v5, Lkny;

    nop

    nop

    nop

    nop

    const/4 v15, 0x0

    nop

    nop

    invoke-direct {v5, v2, v4, v15}, Lkny;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v6, v0, Lkob;->c:Lowu;

    nop

    invoke-static {v1, v5, v6}, Lsso;->j(Lsui;Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v5

    nop

    nop

    nop

    iget-object v6, v0, Lkob;->h:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    sget-object v8, Lmkd;->g:Lmkd;

    nop

    sget-object v9, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->a:Lmko;

    nop

    invoke-virtual {v6, v8, v9}, Lmkp;->i(Ljava/lang/Enum;Lmko;)V

    iget-object v6, v0, Lkob;->g:Lmkl;

    nop

    nop

    nop

    nop

    invoke-interface {v6}, Lmkl;->a()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    move-object v14, v6

    nop

    nop

    nop

    check-cast v14, Lcom/google/android/apps/camera/stats/timing/OneCameraTiming;

    nop

    nop

    iget-object v13, v7, Lkbb;->c:Lpck;

    nop

    nop

    nop

    nop

    new-instance v12, Lkpg;

    nop

    nop

    iget-object v9, v0, Lkob;->i:Ljah;

    nop

    nop

    iget-object v10, v0, Lkob;->f:Landroid/util/DisplayMetrics;

    nop

    iget-object v11, v0, Lkob;->q:Lluy;

    nop

    iget-object v8, v0, Lkob;->x:Lqwh;

    nop

    nop

    nop

    iget-object v6, v0, Lkob;->l:Lnne;

    nop

    nop

    nop

    nop

    iget-object v15, v0, Lkob;->e:Lkvy;

    nop

    nop

    nop

    nop

    iget-object v3, v0, Lkob;->m:Lhco;

    nop

    nop
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto/32 :goto_22

    nop

    nop

    :goto_33
    iget-object v3, v0, Lkob;->p:Lkoa;

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

    :goto_34
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :catch_2
    move-exception v0

    nop

    nop

    nop

    :try_start_5
    const-string v1, "Unable to access OneCamera."

    nop

    nop

    nop

    new-instance v2, Ljava/lang/IllegalStateException;

    nop

    nop

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    nop
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_36
    return-object v0

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop
.end method
