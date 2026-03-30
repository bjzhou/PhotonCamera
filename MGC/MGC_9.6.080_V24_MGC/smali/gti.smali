.class public final Lgti;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lpbf;

.field public final b:Lpbf;

.field public c:Lpag;

.field public d:Lpag;

.field public e:Lpau;

.field public f:Lpau;

.field public g:Lrss;

.field public final h:Ljava/util/Map;

.field public final i:Ljava/util/Map;

.field public j:Lppp;

.field public k:Z

.field public l:Z

.field public m:Lpbd;

.field public n:Lpbd;


# direct methods
.method public constructor <init>(Lpbf;Lpbf;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/util/HashMap;

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Lgti;->h:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iput-object v0, p0, Lgti;->g:Lrss;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lgti;->a:Lpbf;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v0, p0, Lgti;->i:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p2, p0, Lgti;->b:Lpbf;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static final a(Lpbf;Ljava/lang/String;)Lpau;
    .locals 2

    goto/32 :goto_17

    nop

    nop

    :goto_0
    iget-object v1, p0, Lpbf;->d:Lozm;

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

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    :goto_2
    invoke-direct {v1, v0, p0, p1}, Lpau;-><init>(Ljava/util/Set;Landroid/os/Handler;Lrss;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

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

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_15

    nop

    nop

    :goto_6
    iget-object v1, p0, Lpbf;->c:Lozj;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_8
    const v1, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    sget-object v1, Lpaj;->a:Lpaj;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_c
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_f
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lpbf;->i:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_11
    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_12
    iget-object v1, p0, Lpbf;->o:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_13
    sget-object v1, Lpaj;->b:Lpaj;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v0, Ljava/util/HashSet;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_16
    invoke-static {p1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p1

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

    :goto_17
    const v0, 0x6

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_18
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_2
    goto/32 :goto_4

    nop

    :goto_19
    sget-object v1, Lpaj;->c:Lpaj;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance v1, Lpau;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop
.end method

.method public static final b(Lpbf;Lpau;)Lpag;
    .locals 5

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    new-array v1, v1, [Lsui;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0xf

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

    :goto_3
    new-instance v0, Lpaa;

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

    :goto_4
    invoke-virtual {p0}, Lpbf;->r()Lsui;

    move-result-object v2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    :goto_7
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v1, v2, p0}, Lsso;->i(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_9
    const/4 v4, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_a
    const v0, 0x11

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_c
    aput-object v2, v1, v3

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

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

    nop

    :goto_e
    new-instance v2, Ligz;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    iget-object v3, p0, Lpbf;->s:Lsui;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget-object p0, Lstd;->a:Lstd;

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

    :goto_11
    aput-object v3, v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_12
    invoke-direct {v2, p0, p1, v3, v4}, Ligz;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_15
    invoke-direct {v0, p0}, Lpaa;-><init>(Lsui;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v1, 0x2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_17
    invoke-static {v1}, Lsgj;->L([Lsui;)Lsui;

    move-result-object v1

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

    nop

    :goto_18
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_13

    nop

    nop
.end method

.method public static final c(Lpbf;Lpag;Lpau;Loyn;Loyn;Lpaq;Ljava/lang/String;)Lpbd;
    .locals 17

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v4, v0, Lpbf;->g:I

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v16

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_4
    move-object/from16 v11, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v6}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object v7

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_7
    const v1, 0xd

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static/range {p6 .. p6}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v15

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    iget v3, v0, Lpbf;->f:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v2, v0, Lpbf;->e:Lozz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_c
    iget-object v10, v0, Lpbf;->b:Lpdf;

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

    nop

    :goto_d
    new-instance v16, Lpbd;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    move-object/from16 v0, v16

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

    :goto_f
    move-object/from16 v12, p4

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

    nop

    :goto_10
    move-object/from16 v9, p2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    iget-boolean v13, v0, Lpbf;->q:Z

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_13
    iget-object v6, v0, Lpbf;->t:Landroid/view/Surface;

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

    :goto_14
    iget-object v6, v0, Lpbf;->u:Landroid/media/MediaCodec$Callback;

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

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_2

    nop

    nop

    :goto_17
    goto/32 :goto_12

    nop

    nop

    :goto_18
    move-object/from16 v14, p5

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_19
    invoke-direct/range {v0 .. v15}, Lpbd;-><init>(Lozm;Lozz;IIILpag;Lrss;Lrss;Lpau;Lpdf;Loyn;Loyn;ZLpaq;Lrss;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v1, v0, Lpbf;->d:Lozm;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1b
    iget v5, v0, Lpbf;->h:I

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1c
    invoke-static {v6}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object v8

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    move-object/from16 v6, p1

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

    nop

    :goto_1e
    const v0, 0x12

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method
