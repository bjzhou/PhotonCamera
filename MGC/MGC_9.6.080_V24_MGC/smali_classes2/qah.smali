.class public final Lqah;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lpxo;

.field public final c:Lqaj;

.field public final d:Lrss;

.field public final e:Lrss;

.field public final f:Lqbn;

.field public final g:Lpwh;

.field public final h:Lpzj;

.field public final i:Lrss;

.field public final j:Ljava/util/concurrent/Executor;

.field public final k:Lqoz;

.field public final l:Lhdn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lpxo;Lqaj;Lhdn;Lqoz;Lrss;Lrss;Lqbn;Lpwh;Lpzj;Lrss;Ljava/util/concurrent/Executor;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p7, p0, Lqah;->e:Lrss;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p9, p0, Lqah;->g:Lpwh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    iput-object p6, p0, Lqah;->d:Lrss;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lqah;->b:Lpxo;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    iput-object p12, p0, Lqah;->j:Ljava/util/concurrent/Executor;

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

    :goto_6
    iput-object p8, p0, Lqah;->f:Lqbn;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p3, p0, Lqah;->c:Lqaj;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Lqah;->a:Landroid/content/Context;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    iput-object p5, p0, Lqah;->k:Lqoz;

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

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p4, p0, Lqah;->l:Lhdn;

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

    :goto_c
    iput-object p10, p0, Lqah;->h:Lpzj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_d
    iput-object p11, p0, Lqah;->i:Lrss;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lsui;
    .locals 4

    goto/32 :goto_16

    nop

    nop

    :goto_0
    sget v0, Lqbq;->a:I

    nop

    nop

    nop

    nop

    :goto_1
    :try_start_0
    iget-object v0, p0, Lqah;->l:Lhdn;

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lqah;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lqah;->i:Lrss;

    nop

    nop

    invoke-static {v1, v2}, Lpuq;->B(Landroid/content/Context;Lrss;)Landroid/net/Uri;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lhdn;->K(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Lpxo;->a()V

    :goto_3
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lqah;->b:Lpxo;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    const/16 v1, 0x436

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

    nop

    :goto_6
    const-string v2, "%s: Failed to release the leases in the android shared storage"

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v0, v1}, Lqbn;->j(I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_1

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lqah;->f:Lqbn;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    goto :goto_3

    nop

    nop

    nop

    nop

    :catch_1
    goto/32 :goto_4

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_14

    nop

    nop

    :goto_d
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    :catch_2
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    :goto_10
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v0, v2, v1}, Lqbq;->g(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_12
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_13
    goto/32 :goto_10

    nop

    :goto_14
    :try_start_1
    iget-object v0, p0, Lqah;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Lqzt;->a:Lrth;

    nop

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    const-string v1, "*.lease"

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    invoke-static {v1, v0, v2, v3}, Lqrf;->h(Ljava/lang/String;Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    nop

    nop

    iget-object v1, p0, Lqah;->l:Lhdn;

    nop

    invoke-virtual {v1, v0}, Lhdn;->G(Landroid/net/Uri;)V

    iget-object v0, p0, Lqah;->f:Lqbn;

    nop

    nop

    nop

    nop

    nop

    const/16 v1, 0x435

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lqbn;->j(I)V
    :try_end_1
    .catch Lraa; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_16
    const v0, 0x13

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_18
    sget-object p0, Lsue;->a:Lsui;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_19
    const-string v1, "SharedFileManager"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop
.end method

.method public final b(Lpwz;Ljava/lang/String;IJLjava/lang/String;Lpww;Lpwl;Lpwo;Lpwp;ILjava/util/List;Ltix;)Lsui;
    .locals 18

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    move-object/from16 v2, p0

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

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move-object/from16 v12, p10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_5
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v1, v1, Lqah;->j:Ljava/util/concurrent/Executor;

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

    nop

    :goto_7
    move-object/from16 v1, p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v15, Lqad;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_9
    move-object/from16 v15, p13

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move-object/from16 v3, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_c
    move-object/from16 v14, p12

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move-object/from16 v17, v15

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    const v1, 0x18

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_f
    move-object v1, v15

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_12
    move-wide/from16 v9, p4

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_13
    move-object/from16 v11, p6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_14
    move-object/from16 v6, p9

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_15
    move-object/from16 v7, p7

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_16
    move-object/from16 v2, v17

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

    nop

    :goto_17
    invoke-direct/range {v1 .. v16}, Lqad;-><init>(Lqah;Lpwz;Ljava/lang/String;Lpwl;Lpwo;Lpww;IJLjava/lang/String;Lpwp;ILjava/util/List;Ltix;I)V

    goto/32 :goto_7

    nop

    nop

    :goto_18
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_19
    move/from16 v8, p3

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

    :goto_1a
    move-object/from16 v5, p8

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1b
    invoke-virtual/range {p0 .. p1}, Lqah;->e(Lpwz;)Lsui;

    move-result-object v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1c
    invoke-static {v0, v2, v1}, Lqrf;->r(Lsui;Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1d
    const/16 v16, 0x0

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

    :goto_1e
    move/from16 v13, p11

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1f
    move-object/from16 v4, p2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method

.method public final c(Lpwz;)Lsui;
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object p1, Lstd;->a:Lstd;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    const v0, 0xe

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v0}, Lqah;->d(Lryy;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0, p1, v1}, Lpzv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p0, v0, p1}, Lqrf;->q(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x1a

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_d
    const/16 v1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v0, Lsbt;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v0, Lpzv;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0, p1}, Lsbt;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method final d(Lryy;)Lsui;
    .locals 4

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v1, p0, p1, v2, v3}, Lpzy;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    :goto_3
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0, p1}, Lqaj;->f(Lryy;)Lsui;

    move-result-object v0

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

    :goto_5
    iget-object v0, p0, Lqah;->c:Lqaj;

    nop

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

    :goto_6
    new-instance v1, Lpzy;

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_7
    iget-object p0, p0, Lqah;->j:Ljava/util/concurrent/Executor;

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

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_9
    invoke-static {v0}, Lqdd;->e(Lsui;)Lqdd;

    move-result-object v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, v1, p0}, Lqdd;->g(Lssx;Ljava/util/concurrent/Executor;)Lqdd;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    const v0, 0x3

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

    nop

    :goto_c
    const/4 v3, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_10
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

    :goto_11
    goto/32 :goto_e

    nop

    :goto_12
    const/4 v2, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method final e(Lpwz;)Lsui;
    .locals 3

    goto/32 :goto_f

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_2
    iget-object v0, p0, Lqah;->c:Lqaj;

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

    :goto_3
    invoke-static {v0, v1, p0}, Lqrf;->r(Lsui;Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    new-instance v1, Lpzq;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    const v1, 0xf

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v1, p1, v2}, Lpzq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {v0, p1}, Lqaj;->e(Lpwz;)Lsui;

    move-result-object v0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    const/16 v2, 0xa

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x5

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lqah;->j:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final f(Lpww;Landroid/net/Uri;)V
    .locals 4

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    :goto_2
    const v1, 0x20

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

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    iget-object v0, p0, Lqah;->l:Lhdn;

    nop

    nop

    invoke-virtual {v0, p2}, Lhdn;->B(Landroid/net/Uri;)J

    move-result-wide v0

    nop

    const-wide/16 v2, 0x0

    nop

    cmp-long p2, v0, v2

    nop

    nop

    nop

    nop

    if-lez p2, :cond_1

    nop

    nop

    nop

    iget-object p0, p0, Lqah;->e:Lrss;

    nop

    nop

    nop

    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    check-cast p0, Lqcy;

    nop

    iget-object p1, p1, Lpww;->c:Ljava/lang/String;

    nop

    invoke-virtual {p0, p1, v0, v1}, Lqcy;->c(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    :goto_9
    goto/32 :goto_1

    nop

    :goto_a
    iget-object v0, p0, Lqah;->e:Lrss;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

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

    nop

    :goto_c
    const v0, 0x1d

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

    :goto_d
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final g(Ljava/util/List;II)Lsui;
    .locals 9

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v1, Lpwk;->a:Lpwk;

    nop

    nop

    :goto_2
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput v2, v1, Lpwz;->f:I

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_4
    if-eq p2, v0, :cond_0

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_7
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    iput v5, v3, Lpwz;->b:I

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v2, Lpxs;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

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

    :goto_b
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_c
    invoke-interface {v0, v3}, Lqaj;->e(Lpwz;)Lsui;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move v6, p2

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_e
    move-object v5, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, p1, p2, p3}, Lqah;->g(Ljava/util/List;II)Lsui;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move-object v1, v8

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

    :goto_12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Lqah;->j:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v2}, Lpxs;->b()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    :cond_2
    goto/32 :goto_45

    nop

    :goto_16
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_17
    invoke-direct/range {v1 .. v7}, Lqaf;-><init>(Lqah;Lpwz;Lpwo;Ljava/util/List;II)V

    goto/32 :goto_13

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    move-object v4, v0

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

    :goto_1a
    iget v5, v3, Lpwz;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_1c
    const v0, 0x15

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1d
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v1, v4, Lpwo;->g:Lpwk;

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

    :goto_1f
    iget v2, v1, Lpwz;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_20
    const v1, 0x11

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_21
    move-object v2, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_22
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_46

    nop

    :goto_24
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_25
    move v7, p3

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_27
    check-cast v3, Lpwz;

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

    :goto_28
    const/4 v1, 0x1

    nop

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

    :goto_29
    check-cast v1, Lpwz;

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_2a
    iput v2, v1, Lpwz;->b:I

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    return-object p0

    nop

    :goto_2c
    goto/32 :goto_24

    nop

    nop

    :goto_2d
    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_2e
    if-eqz v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    move v0, v1

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_31
    check-cast v3, Lpwz;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_32
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    :cond_5
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object v0

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_34
    iget-object v1, v1, Lpwk;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_35
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_36
    move-object v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_37
    or-int/lit8 v2, v2, 0x8

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

    :goto_38
    sget-object v0, Lpwz;->a:Lpwz;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v2, p0, Lqah;->d:Lrss;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    new-instance v8, Lqaf;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_3b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-ne v0, v2, :cond_6

    nop

    goto/32 :goto_6

    nop

    :cond_6
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_3e
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget v0, v4, Lpwo;->f:I

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v0, p0, Lqah;->c:Lqaj;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iput-object v1, v3, Lpwz;->e:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_42
    check-cast v4, Lpwo;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_43
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_44
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_0

    nop

    nop

    :goto_47
    move-object v3, v0

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_48
    return-object p0

    nop

    :goto_49
    goto/32 :goto_23

    nop

    nop

    :goto_4a
    or-int/lit8 v5, v5, 0x4

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

    nop

    :goto_4b
    add-int/lit8 v2, p3, -0x1

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

    :goto_4c
    add-int/2addr p2, v1

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

    :goto_4d
    invoke-static {v0}, La;->D(I)I

    move-result v0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-static {v0, v8, p0}, Lqrf;->r(Lsui;Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    goto/32 :goto_48

    nop

    nop
.end method

.method public final h(ILjava/lang/String;Ljava/lang/String;)Lsui;
    .locals 7

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object p1, Lpwe;->v:Lpwe;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    move-object v2, p2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    iget-object v5, p0, Lqah;->i:Lrss;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_6
    goto/32 :goto_1c

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    :goto_8
    iput-object p1, p0, Ltar;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v4, p0, Lqah;->b:Lpxo;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_b
    move-object v3, p3

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

    :goto_c
    move v1, p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    :goto_e
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_f
    const-string p1, "SharedFileManager"

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_11
    const-string p0, "%s: Failed to get file uri!"

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lqah;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_14
    invoke-static/range {v0 .. v6}, Lpuq;->F(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lpxo;Lrss;Z)Landroid/net/Uri;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_15
    if-eqz p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    :goto_16
    invoke-static {}, Lpwf;->a()Ltar;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Ltar;->c()Lpwf;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x19

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

    :goto_19
    invoke-static {p0, p1}, Lqbq;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v6, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1d
    const v1, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method
