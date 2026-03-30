.class final Lddm;
.super Luar;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field a:I

.field final synthetic b:Lucs;

.field final synthetic c:Lbpv;

.field final synthetic d:Leaw;

.field final synthetic e:Lddn;

.field final synthetic f:Landroid/view/View;

.field private synthetic g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lucs;Lbpv;Leaw;Lddn;Landroid/view/View;Ltzy;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p4, p0, Lddm;->e:Lddn;

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

    :goto_2
    iput-object p1, p0, Lddm;->b:Lucs;

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

    :goto_3
    invoke-direct {p0, p1, p6}, Luar;-><init>(ILtzy;)V

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iput-object p5, p0, Lddm;->f:Landroid/view/View;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lddm;->c:Lbpv;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p3, p0, Lddm;->d:Leaw;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p1, 0x2

    nop

    goto/32 :goto_3

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lddm;->bX(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    check-cast p2, Ltzy;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1, p2}, Lual;->c(Ljava/lang/Object;Ltzy;)Ltzy;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    check-cast p0, Lddm;

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

    :goto_4
    sget-object p1, Ltyg;->a:Ltyg;

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

    nop

    :goto_5
    return-object p0

    nop

    nop

    :goto_6
    check-cast p1, Lufs;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final bX(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    goto/32 :goto_3

    nop

    nop

    :goto_0
    goto/16 :goto_2a

    nop

    nop

    :goto_1
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v2, Lufs;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x4

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    const v1, 0x11

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_5
    goto/32 :goto_22

    nop

    nop

    :goto_6
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v4, v1, Lddm;->b:Lucs;

    nop

    iget-object v4, v4, Lucs;->a:Ljava/lang/Object;

    nop

    nop

    check-cast v4, Ldby;

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v1, Lddm;->f:Landroid/view/View;

    nop

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    nop

    nop

    sget-object v13, Lddq;->a:Ljava/util/Map;

    nop

    nop

    nop

    monitor-enter v13

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    sget-object v14, Lddq;->a:Ljava/util/Map;

    nop

    nop

    nop

    invoke-interface {v14, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    const/4 v15, 0x0

    nop

    if-nez v6, :cond_0

    nop

    nop

    nop

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    nop

    const-string v6, "animator_duration_scale"

    nop

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    const/4 v6, -0x1

    nop

    nop

    nop

    nop

    nop

    const/4 v9, 0x6

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6, v15, v3, v9}, Lufv;->o(IILubk;I)Luis;

    move-result-object v10

    nop

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    new-instance v9, Lddp;

    nop

    nop

    nop

    nop

    invoke-direct {v9, v10, v6}, Lddp;-><init>(Luis;Landroid/os/Handler;)V

    new-instance v12, Lddo;

    nop

    nop

    const/16 v16, 0x0

    nop

    nop

    nop

    move-object v6, v12

    nop

    move-object v11, v5

    nop

    nop

    nop

    nop

    move-object v15, v12

    nop

    nop

    move-object/from16 v12, v16

    nop

    nop

    invoke-direct/range {v6 .. v12}, Lddo;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lddp;Luis;Landroid/content/Context;Ltzy;)V

    new-instance v6, Lujj;

    nop

    invoke-direct {v6, v15}, Lujj;-><init>(Lubo;)V

    new-instance v7, Lumx;

    nop

    nop

    nop

    nop

    nop

    new-instance v8, Luhs;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v8}, Luhs;-><init>()V

    sget-object v9, Luge;->a:Lufp;

    nop

    nop

    nop

    sget-object v9, Lunp;->a:Luhj;

    nop

    nop

    nop

    invoke-static {v8, v9}, Lrkm;->B(Luab;Luad;)Luad;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v7, v8}, Lumx;-><init>(Luad;)V

    sget v8, Luky;->a:I

    nop

    nop

    nop

    nop

    sget-object v8, Lukx;->a:Luky;

    nop

    nop

    nop

    nop

    new-instance v8, Lule;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v8}, Lule;-><init>()V

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    nop

    nop

    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    sget-object v10, Landroidx/viewpager2/widget/jY/lIiWb;->NEwkzKtRtGI:Ljava/lang/String;

    nop

    nop

    nop

    const/high16 v11, 0x3f800000    # 1.0f

    nop

    nop

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v9

    nop

    nop

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    nop

    nop

    nop

    invoke-static {v6, v7, v8, v9}, Lucg;->y(Lujp;Lufs;Luky;Ljava/lang/Object;)Lulf;

    move-result-object v6

    nop

    nop

    nop

    nop

    invoke-interface {v14, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v6, Lulf;

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v13

    nop

    nop

    invoke-interface {v6}, Lulf;->b()Ljava/lang/Object;

    move-result-object v5

    nop

    check-cast v5, Ljava/lang/Number;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    nop

    nop

    nop

    invoke-virtual {v4, v5}, Ldby;->b(F)V

    new-instance v5, Lddl;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v5, v6, v4, v3}, Lddl;-><init>(Lulf;Ldby;Ltzy;)V

    const/4 v4, 0x3

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    invoke-static {v2, v3, v6, v5, v4}, Lucd;->x(Lufs;Luad;ILubo;I)Lugy;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto :goto_c

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    monitor-exit v13

    nop

    nop

    nop

    throw v0

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v1, v1, Lddm;->e:Lddn;

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

    :goto_8
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_21

    nop

    :goto_9
    invoke-static {v2}, Luch;->I(Lugy;)V

    :goto_a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_b
    move-object v2, v3

    nop

    nop

    nop

    :goto_c
    :try_start_3
    iget-object v4, v1, Lddm;->c:Lbpv;

    nop

    iput-object v2, v1, Lddm;->g:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    iput v5, v1, Lddm;->a:I

    nop

    new-instance v5, Lbpt;

    nop

    nop

    invoke-direct {v5, v4, v3}, Lbpt;-><init>(Lbpv;Ltzy;)V

    invoke-interface/range {p0 .. p0}, Ltzy;->r()Luad;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6}, Lbnt;->a(Luad;)Lbns;

    move-result-object v6

    nop

    iget-object v7, v4, Lbpv;->b:Lblb;

    nop

    nop

    nop

    new-instance v8, Lbpr;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v8, v4, v5, v6, v3}, Lbpr;-><init>(Lbpv;Lubp;Lbns;Ltzy;)V

    invoke-static {v7, v8, v1}, Lucd;->s(Luad;Lubo;Ltzy;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    sget-object v4, Luag;->a:Luag;

    nop

    nop

    nop

    nop

    if-eq v3, v4, :cond_3

    nop

    nop

    nop

    sget-object v3, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    :cond_3
    if-eq v3, v4, :cond_4

    nop

    nop

    sget-object v3, Ltyg;->a:Ltyg;

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
    goto/32 :goto_24

    nop

    nop

    :goto_d
    throw v0

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    iget v2, v1, Lddm;->a:I

    nop

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

    :goto_10
    if-nez v2, :cond_5

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_11
    iget-object v0, v1, Lddm;->g:Ljava/lang/Object;

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_12
    move-object/from16 v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1}, Lear;->c(Leav;)V

    goto/32 :goto_2c

    nop

    nop

    :goto_14
    goto/16 :goto_1b

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, v1, Lddm;->d:Leaw;

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

    :goto_16
    move-object v2, v0

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

    :goto_17
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_18
    iget-object v2, v1, Lddm;->d:Leaw;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_19
    iget-object v1, v1, Lddm;->e:Lddn;

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1a
    return-object v0

    nop

    nop

    :goto_1b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v2, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_6
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v2, :cond_7

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_7
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static/range {p1 .. p1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_2b

    nop

    nop

    :goto_1f
    check-cast v2, Lugy;

    nop

    nop

    :try_start_4
    invoke-static/range {p1 .. p1}, Lrgw;->ak(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_e

    nop

    :goto_22
    goto/32 :goto_12

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-eq v3, v0, :cond_8

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {v2}, Luch;->I(Lugy;)V

    :goto_26
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_27
    sget-object v0, Luag;->a:Luag;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_28
    invoke-interface {v2}, Leaw;->getLifecycle()Lear;

    move-result-object v2

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_29
    move-object v2, v3

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v2, v1, Lddm;->g:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2c
    sget-object v0, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-interface {v0}, Leaw;->getLifecycle()Lear;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v2, v1}, Lear;->c(Leav;)V

    goto/32 :goto_d

    nop

    nop
.end method

.method public final c(Ljava/lang/Object;Ltzy;)Ltzy;
    .locals 8

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_a

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v2, p0, Lddm;->c:Lbpv;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    :goto_4
    iget-object v4, p0, Lddm;->e:Lddn;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct/range {v0 .. v6}, Lddm;-><init>(Lucs;Lbpv;Leaw;Lddn;Landroid/view/View;Ltzy;)V

    goto/32 :goto_12

    nop

    nop

    :goto_6
    move-object v6, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x5

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8
    new-instance v7, Lddm;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_9
    return-object v7

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_c
    move-object v0, v7

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_d
    add-int v0, v0, v1

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

    nop

    :goto_e
    iget-object v5, p0, Lddm;->f:Landroid/view/View;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

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

    :goto_10
    const v1, 0x14

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v3, p0, Lddm;->d:Leaw;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_12
    iput-object p1, v7, Lddm;->g:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v1, p0, Lddm;->b:Lucs;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method
